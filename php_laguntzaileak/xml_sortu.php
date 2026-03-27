<?php
session_start();
require_once 'DB_konexioa.php';

header('Content-Type: application/json');

if (!isset($_SESSION['rol_id'])) {
    http_response_code(403);
    echo json_encode(['error' => 'Baimenik ez']);
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $erab_id = $_SESSION['erabiltzaile_id'];
    $rol = $_SESSION['rol_izena']; // 'Pazientea' edo 'Medikua'
    
    // Noren datuak aterako ditugu?
    // Pazientea bada, bere datuak soilik. Medikua bada, 'paziente_id' POST bidez jaso beharko du.
    $jomuga_paziente_id = null;
    
    if ($rol === 'Pazientea') {
        $jomuga_paziente_id = $erab_id;
    } else if ($rol === 'Medikua') {
        if (!isset($_POST['paziente_id']) || empty($_POST['paziente_id'])) {
            http_response_code(400);
            echo json_encode(['error' => 'Pazientea aukeratu behar da.']);
            exit;
        }
        $jomuga_paziente_id = $_POST['paziente_id'];
        
        // Segurtasun egiaztapena: Medikuak paziente hori badu bere zerrendan?
        $baimen_stmt = $pdo->prepare("SELECT 1 FROM Mediku_Paziente WHERE mediku_id = ? AND paziente_id = ?");
        $baimen_stmt->execute([$erab_id, $jomuga_paziente_id]);
        if (!$baimen_stmt->fetchColumn()) {
            http_response_code(403);
            echo json_encode(['error' => 'Ez duzu baimenik paziente honen datuak esportatzeko.']);
            exit;
        }
    } else {
        http_response_code(403);
        echo json_encode(['error' => 'Rol honek ezin du ekintza hau burutu.']);
        exit;
    }
    
    // Datak jaso (aukerakoak izan daitezke, baina normalean ezarriko dira)
    $hasiera_data = $_POST['hasiera_data'] ?? '1900-01-01';
    $bukaera_data = $_POST['bukaera_data'] ?? date('Y-m-d');
    
    if (empty($hasiera_data)) $hasiera_data = '1900-01-01';
    if (empty($bukaera_data)) $bukaera_data = date('Y-m-d');

    try {
        // Lortu pazientearen datu pertsonalak XML goibururako
        $paz_stmt = $pdo->prepare("SELECT izena, abizenak, nan FROM Pazienteak WHERE paziente_id = ?");
        $paz_stmt->execute([$jomuga_paziente_id]);
        $paziente_info = $paz_stmt->fetch(PDO::FETCH_ASSOC);
        
        // Lortu neurketak tarte horretan
        $neurketak_stmt = $pdo->prepare("
            SELECT DATE(erregistro_data) AS data, TIME(erregistro_data) AS ordua, glukosa_mg_dl, tentsio_sistolikoa, tentsio_diastolikoa, pisua_kg, altuera, sintomak 
            FROM Neurketak 
            WHERE paziente_id = ? AND DATE(erregistro_data) BETWEEN ? AND ?
            ORDER BY erregistro_data ASC
        ");
        $neurketak_stmt->execute([$jomuga_paziente_id, $hasiera_data, $bukaera_data]);
        $neurketak_emaitzak = $neurketak_stmt->fetchAll(PDO::FETCH_ASSOC);
        
        if (count($neurketak_emaitzak) === 0) {
            echo json_encode(['error' => 'Ez da neurketarik aurkitu epe horretan.']);
            exit;
        }
        
        // XML Egitura sortzen
        $xml = new DOMDocument('1.0', 'UTF-8');
        $xml->formatOutput = true;
        
        $root = $xml->createElement('Txostena');
        $xml->appendChild($root);
        
        // Paziente_Datuak Node
        $paz_node = $xml->createElement('Paziente_Datuak');
        $paz_node->appendChild($xml->createElement('Izena', htmlspecialchars($paziente_info['izena'])));
        $paz_node->appendChild($xml->createElement('Abizenak', htmlspecialchars($paziente_info['abizenak'])));
        $paz_node->appendChild($xml->createElement('NAN', htmlspecialchars($paziente_info['nan'])));
        $paz_node->appendChild($xml->createElement('Esportazio_Data', date('Y-m-d H:i:s')));
        $paz_node->appendChild($xml->createElement('Data_Tartea', "$hasiera_data - $bukaera_data"));
        $root->appendChild($paz_node);
        
        // Neurketak Node
        $neurketak_node = $xml->createElement('Neurketak');
        foreach ($neurketak_emaitzak as $n) {
            $neurketa_node = $xml->createElement('Neurketa');
            
            $neurketa_node->appendChild($xml->createElement('Data', $n['data']));
            $neurketa_node->appendChild($xml->createElement('Ordua', $n['ordua']));
            
            if ($n['pisua_kg'] !== null) $neurketa_node->appendChild($xml->createElement('Pisua_kg', $n['pisua_kg']));
            if ($n['altuera'] !== null) $neurketa_node->appendChild($xml->createElement('Altuera_m', $n['altuera']));
            if ($n['glukosa_mg_dl'] !== null) $neurketa_node->appendChild($xml->createElement('Glukosa_mg_dl', $n['glukosa_mg_dl']));
            
            if ($n['tentsio_sistolikoa'] !== null && $n['tentsio_diastolikoa'] !== null) {
                $tentsio_node = $xml->createElement('Tentsio_Arteriala');
                $tentsio_node->appendChild($xml->createElement('Sistolikoa', $n['tentsio_sistolikoa']));
                $tentsio_node->appendChild($xml->createElement('Diastolikoa', $n['tentsio_diastolikoa']));
                $neurketa_node->appendChild($tentsio_node);
            }
            
            if (!empty($n['sintomak'])) {
                $neurketa_node->appendChild($xml->createElement('Sintomak', htmlspecialchars($n['sintomak'])));
            }
            
            $neurketak_node->appendChild($neurketa_node);
        }
        $root->appendChild($neurketak_node);
        
        // Fitxategia Gorde
        $xmlDir = dirname(__DIR__) . '/xml_bezero_neurketak/';
        if (!is_dir($xmlDir)) mkdir($xmlDir, 0777, true);
        
        $fitxategi_izena = "Neurketak_{$jomuga_paziente_id}_" . date('Ymd_His') . ".xml";
        $jomuga_bidea = $xmlDir . $fitxategi_izena;
        
        $xml->save($jomuga_bidea);
        
        echo json_encode([
            'success' => true,
            'url' => 'xml_bezero_neurketak/' . $fitxategi_izena,
            'msg' => 'XML txostena arrastaka gorde da!'
        ]);
        
    } catch (Exception $e) {
        http_response_code(500);
        echo json_encode(['error' => 'Errorea zerbitzarian: ' . $e->getMessage()]);
    }
} else {
    http_response_code(400);
    echo json_encode(['error' => 'Eskaera ez da baliozkoa.']);
}
?>

