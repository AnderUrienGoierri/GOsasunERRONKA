<?php
// PHP fitxategia: jaso_datuak.php
// HELBURUKO KARPETA: xml_bezero_neurketak/ karpeta

// GARRANTZITSUA: Erroreak agertu daitezen baimendu behar dugu!
ini_set('display_errors', 1);
error_reporting(E_ALL);

// Bide absolutua erabiliko dugu inolako dudarik ez egoteko
// Orain proiektuaren bide erlatiboa erabiltzen dugu
$karpeta = __DIR__ . "/../xml_bezero_neurketak/";

// Karpeta existitzen ote den begiratu eta bestela sortzen saiatu
if (!file_exists($karpeta)) {
    if (!mkdir($karpeta, 0777, true)) {
        http_response_code(500);
        die("ERROREA PHP-n: Ezin izan da karpeta sortu bide honetan: " . $karpeta);
    }
}

// C# aplikaziotik datuak irakurri
$xmlEdukia = file_get_contents('php://input');

$fitxIzena = isset($_SERVER['HTTP_X_FILE_NAME']) ? $_SERVER['HTTP_X_FILE_NAME'] : 'datuak_'.time().'.xml';

if (!empty($xmlEdukia)) {
    $bideaOsoa = $karpeta . basename($fitxIzena);
    
    // GordeXML-a fitxategian, baimenak begiratuz
    $emaitza = file_put_contents($bideaOsoa, $xmlEdukia);
    
    if ($emaitza !== false) {
        http_response_code(200);
        echo "ONDO GORDEA! Leku honetan -> " . escapeshellarg($bideaOsoa);
    } else {
        http_response_code(500);
        echo "ERROREA PHP-n: Karpeta aurkitu da baina Apache/PHP-k ez dauka IDAZTEKO BAIMENIK karpeta honetan: " . $karpeta;
    }
} else {
    http_response_code(400);
    echo "ERROREA PHP-n: Ez da daturik jaso sarean zehar (xml tukia edo POST hutsa).";
}
?>
