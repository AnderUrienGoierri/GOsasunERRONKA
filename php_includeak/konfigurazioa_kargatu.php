<?php
// Badaezpada, sesioa hasita ez badago
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

/**
 * Konfigurazioa kargatzen du XML-tik.
 * 
 * @param bool $publikoa True bada, config.xml arrunta bakarrik kargatuko da.
 * @return array Konfigurazioaren balioak.
 */
function kargatuKonfigurazioa($publikoa = false) {
    // Lehenetsitako balioak, estilo eta konfigurazioorokorrak (fitxategia hutsik badoa)
    $konf = [
        'hizkuntza' => 'eu',
        'kolore_nagusia' => '#4361ee',
        'bigarren_kolorea' => '#3f37c9',
        'footer_kolorea' => '#2b2d42',
        'gaia' => 'argia'
    ];
 
    $xml_path = __DIR__ . '/../xml_konfigurazioa/konfigurazio_orokorra.xml';
 
    // Orrialde publikoa ez bada, erabiltzailearen konfigurazioa bilatu
    if (!$publikoa && isset($_SESSION['erabiltzaile_id'])) {
        $user_xml_path = __DIR__ . '/../xml_konfigurazioa/konfig_erabiltzailea_' . $_SESSION['erabiltzaile_id'] . '.xml';
        if (file_exists($user_xml_path)) {
            $xml_path = $user_xml_path;
        }
    }
 
    if (file_exists($xml_path)) {
        $xml_conf = simplexml_load_file($xml_path);
        if ($xml_conf) {
            $konf['hizkuntza'] = (string)$xml_conf->hizkuntza ?: $konf['hizkuntza'];
            $konf['kolore_nagusia'] = (string)$xml_conf->kolore_nagusia ?: $konf['kolore_nagusia'];
            $konf['bigarren_kolorea'] = (string)$xml_conf->bigarren_kolorea ?: $konf['bigarren_kolorea'];
            $konf['footer_kolorea'] = (string)$xml_conf->footer_kolorea ?: $konf['footer_kolorea'];
            $konf['gaia'] = (string)$xml_conf->gaia ?: $konf['gaia'];
        }
    }

    return $konf;
}
?>
