<?php
session_start();
if (!isset($_SESSION['rol_id'])) {
    http_response_code(403);
    echo json_encode(['error' => 'Baimenik ez']);
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['pdf'])) {
    $karga_karpeta = dirname(__DIR__) . '/pdf_pdf_txostenak/';
    // Create directory if it doesn't exist
    if (!is_dir($karga_karpeta)) {
        mkdir($karga_karpeta, 0777, true);
    }
    
    $erabiltzaile_id = $_SESSION['erabiltzaile_id'] ?? 'Ezezaguna';
    // Optionally a patient ID could be passed if a doctor is saving someone else's report
    $paziente_id = $_POST['paziente_id'] ?? $erabiltzaile_id;
    $data_aldagaia = date('Ymd_His');
    
    $fitxategi_izena = "Grafika_Pazientea_{$paziente_id}_{$data_aldagaia}.pdf";
    $jomuga_bidea = $karga_karpeta . $fitxategi_izena;
    
    if (move_uploaded_file($_FILES['pdf']['tmp_name'], $jomuga_bidea)) {
        echo json_encode([
            'success' => true, 
            'url' => 'pdf_txostenak/' . $fitxategi_izena,
            'msg' => 'PDF txostena behar bezala gorde da!',
            'filename' => $fitxategi_izena
        ]);
    } else {
        http_response_code(500);
        echo json_encode(['error' => 'Errorea fitxategia zerbitzarian gordetzean']);
    }
} else {
    http_response_code(400);
    echo json_encode(['error' => 'Eskaera okerra. PDF fitxategia falta da.']);
}
?>

