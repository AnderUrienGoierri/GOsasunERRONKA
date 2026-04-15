<?php
session_start();
if (!isset($_SESSION['rol_id'])) {
    http_response_code(403);
    echo json_encode(['error' => 'Baimenik ez']);
    exit;
}

require_once 'DB_konexioa.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['pdf'])) {
    // 1. Helburuko karpeta definitu (C:\Apache24-64\htdocs\GOsasun_web\paziente_dokumentuak)
    $karga_karpeta = dirname(__DIR__) . '/paziente_dokumentuak/';
    if (!is_dir($karga_karpeta)) {
        mkdir($karga_karpeta, 0777, true);
    }
    
    $igotzaile_id = $_SESSION['erabiltzaile_id'];
    $paziente_id = $_POST['paziente_id'] ?? $igotzaile_id;
    $txosten_izena = $_POST['txosten_izena'] ?? 'Txostena'; // Default name if not provided
    
    // 2. Fitxategi izena sortu: DOK_paziente_ID[ID]_[YYYYMMDD]_[HHMMSS]_[IZENA].pdf
    $data_aldagaia = date('Ymd_His');
    $garbi_izena = preg_replace('/[^a-zA-Z0-9._-]/', '_', $txosten_izena);
    $fitxategi_izena = "DOK_paziente_ID{$paziente_id}_{$data_aldagaia}_{$garbi_izena}.pdf";
    $jomuga_bidea = $karga_karpeta . $fitxategi_izena;
    
    if (move_uploaded_file($_FILES['pdf']['tmp_name'], $jomuga_bidea)) {
        try {
            $pdo->beginTransaction();

            $jarraipena_id = null;
            $create_jarraipen = isset($_POST['create_jarraipen']) && $_POST['create_jarraipen'] == '1';

            // 3. Historia klinikoan erregistratu (jarraipen berria)
            if ($create_jarraipen) {
                $langile_id = ($_SESSION['rol_izena'] === 'Osasun Langilea') ? $igotzaile_id : null;
                $oharrak = "Sistema: PDF Txostena sortu da - " . $txosten_izena;
                
                $stmtJ = $pdo->prepare("INSERT INTO jarraipenak (paziente_id, osasun_langile_id, oharrak, erregistro_data) VALUES (?, ?, ?, NOW())");
                $stmtJ->execute([$paziente_id, $langile_id, $oharrak]);
                $jarraipena_id = $pdo->lastInsertId();
            }

            // 4. Erregistratu datu-basean dokumentu gisa
            $bide_erlatiboa = 'paziente_dokumentuak/' . $fitxategi_izena;
            $deskribapena = "Sistemak automatikoki sortutako txostena. Igotzailea ID: " . $igotzaile_id;
            
            $stmt = $pdo->prepare("INSERT INTO dokumentuak (paziente_id, jarraipena_id, fitxategi_izena, bidea_zerbitzarian, dokumentu_izena, deskribapena, igotze_data) VALUES (?, ?, ?, ?, ?, ?, NOW())");
            $stmt->execute([$paziente_id, $jarraipena_id, $fitxategi_izena, $bide_erlatiboa, $txosten_izena, $deskribapena]);

            $pdo->commit();

            echo json_encode([
                'success' => true, 
                'url' => $bide_erlatiboa,
                'msg' => 'PDF txostena behar bezala sortu eta gorde da!',
                'filename' => $fitxategi_izena
            ]);
        } catch (PDOException $e) {
            $pdo->rollBack();
            http_response_code(500);
            echo json_encode(['error' => 'Errorea datu-basean erregistratzean: ' . $e->getMessage()]);
        }
    } else {
        http_response_code(500);
        echo json_encode(['error' => 'Errorea fitxategia zerbitzarian gordetzean']);
    }
} else {
    http_response_code(400);
    echo json_encode(['error' => 'Eskaera okerra. PDF fitxategia falta da.']);
}
?>
