<?php
/**
 * Hizkuntza kargatzen du XML-tik.
 * 
 * @param string $hizkuntza Hizkuntza kodea (eu, es, en, nl).
 * @return SimpleXMLElement|null Itzulpenen objektua edo null akatsa badago.
 */
function kargatuItzulpenak($hizkuntza) {
    // Ziurtatu hizkuntza baliozkoa dela
    $baliozkoak = ['eu', 'es', 'en', 'nl'];
    if (!in_array($hizkuntza, $baliozkoak)) {
        $hizkuntza = 'eu'; // Lehenetsia
    }

    $bidea = __DIR__ . "/../xml_hizkuntzak/{$hizkuntza}.xml";

    if (file_exists($bidea)) {
        $xml = simplexml_load_file($bidea);
        return $xml;
    }

    return null;
}
?>
