<?php
session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $form_type = $_POST['form_type'] ?? 'orokorra';
    $ekintza = $_POST['ekintza'] ?? 'gorde';
    $xml_path = "../xml_konfigurazioa/config.xml";

    // 'osasun_zentroa' bada, beti globala (config.xml)
    // 'orokorra' bada eta logeatuta badago, erabiltzailearena
    if ($form_type === 'orokorra' && isset($_SESSION['erabiltzaile_id'])) {
        $xml_path = "../xml_konfigurazioa/config_user_" . $_SESSION['erabiltzaile_id'] . ".xml";
    }

    // Ekintza 'reset' bada, fitxategia ezabatu eta itzuli
    if ($ekintza === 'reset') {
        if (file_exists($xml_path)) {
            unlink($xml_path);
        }
        
        $nondik = $_POST['nondik'] ?? '';
        if (!empty($nondik)) {
            $separatzailea = (strpos($nondik, '?') === false) ? '?' : '&';
            header("Location: " . $nondik . $separatzailea . "ezarpenak_reset=1");
            exit();
        }

        $itzulera = $_POST['itzulera'] ?? 'orokorra';
        if ($itzulera === 'medikua') {
            header("Location: ../php_medikua/ezarpenak.php?ezarpenak_reset=1");
        } elseif ($itzulera === 'pazientea') {
            header("Location: ../php_pazientea/ezarpenak.php?ezarpenak_reset=1");
        } elseif ($itzulera === 'harrera') {
             header("Location: ../php_harrera/ezarpenak.php?ezarpenak_reset=1");
        } else {
            header("Location: ../index.php?ezarpenak_reset=1");
        }
        exit();
    }
    
    // Lehenetsitako balioak (fitxategia hutsik badoa)
    $hizk = 'eu'; $kol_nag = '#4361ee'; $big_kol = '#3f37c9'; $foot_kol = '#2b2d42'; $gaia = 'argia';
    $sis_ize = 'GOsasun'; $hitz_muga = '20'; $ordu_ireki = '08:00'; $ordu_itxi = '20:00'; $mant = 'ez';

    // Dauden balioak irakurri
    if (file_exists($xml_path)) {
        $xml_conf = simplexml_load_file($xml_path);
        if ($xml_conf) {
            $hizk = (string)$xml_conf->hizkuntza ?: $hizk;
            $kol_nag = (string)$xml_conf->kolore_nagusia ?: $kol_nag;
            $big_kol = (string)$xml_conf->bigarren_kolorea ?: $big_kol;
            $foot_kol = (string)$xml_conf->footer_kolorea ?: $foot_kol;
            $gaia = (string)$xml_conf->gaia ?: $gaia;
            
            if (isset($xml_conf->osasun_zentroa)) {
                $sis_ize = (string)$xml_conf->osasun_zentroa->sistema_izena ?: $sis_ize;
                $hitz_muga = (string)$xml_conf->osasun_zentroa->mediku_bakoitzeko_gehienezko_hitzorduak ?: $hitz_muga;
                $ordu_ireki = (string)$xml_conf->osasun_zentroa->ordutegia_ireki ?: $ordu_ireki;
                $ordu_itxi = (string)$xml_conf->osasun_zentroa->ordutegia_itxi ?: $ordu_itxi;
                $mant = (string)$xml_conf->osasun_zentroa->mantenimendu_modua ?: $mant;
            }
        }
    }

    if ($form_type === 'orokorra') {
        $hizk = $_POST['hizkuntza'] ?? $hizk;
        $kol_nag = $_POST['kolore_nagusia'] ?? $kol_nag;
        $big_kol = $_POST['bigarren_kolorea'] ?? $big_kol;
        $foot_kol = $_POST['footer_kolorea'] ?? $foot_kol;
        $gaia = $_POST['gaia'] ?? $gaia;
    } elseif ($form_type === 'osasun_zentroa') {
        $sis_ize = $_POST['sistema_izena'] ?? $sis_ize;
        $hitz_muga = $_POST['hitzordu_muga'] ?? $hitz_muga;
        $ordu_ireki = $_POST['ordutegia_ireki'] ?? $ordu_ireki;
        $ordu_itxi = $_POST['ordutegia_itxi'] ?? $ordu_itxi;
        $mant = isset($_POST['mantenimendua']) ? 'bai' : 'ez';
    }

    $xml = new DOMDocument("1.0", "UTF-8");
    $xml->formatOutput = true;

    $konfigurazioa = $xml->createElement("konfigurazioa");
    $xml->appendChild($konfigurazioa);

    $konfigurazioa->appendChild($xml->createElement("hizkuntza", htmlspecialchars($hizk)));
    $konfigurazioa->appendChild($xml->createElement("kolore_nagusia", htmlspecialchars($kol_nag)));
    $konfigurazioa->appendChild($xml->createElement("bigarren_kolorea", htmlspecialchars($big_kol)));
    $konfigurazioa->appendChild($xml->createElement("footer_kolorea", htmlspecialchars($foot_kol)));
    $konfigurazioa->appendChild($xml->createElement("gaia", htmlspecialchars($gaia)));

    $osasun_ezarpenak = $xml->createElement("osasun_zentroa");
    $osasun_ezarpenak->appendChild($xml->createElement("sistema_izena", htmlspecialchars($sis_ize)));
    $osasun_ezarpenak->appendChild($xml->createElement("mediku_bakoitzeko_gehienezko_hitzorduak", htmlspecialchars($hitz_muga)));
    $osasun_ezarpenak->appendChild($xml->createElement("ordutegia_ireki", htmlspecialchars($ordu_ireki)));
    $osasun_ezarpenak->appendChild($xml->createElement("ordutegia_itxi", htmlspecialchars($ordu_itxi)));
    $osasun_ezarpenak->appendChild($xml->createElement("mantenimendu_modua", htmlspecialchars($mant)));
    
    $konfigurazioa->appendChild($osasun_ezarpenak);

    $xml->save($xml_path);

    $nondik = $_POST['nondik'] ?? '';
    if (!empty($nondik)) {
        $separatzailea = (strpos($nondik, '?') === false) ? '?' : '&';
        header("Location: " . $nondik . $separatzailea . "ezarpenak_gordeta=1");
        exit();
    }

    $itzulera = $_POST['itzulera'] ?? 'orokorra';

    if ($form_type === 'osasun_zentroa') {
        header("Location: ../php_harrera/ezarpenak.php?ezarpenak_gordeta=1");
    } elseif ($itzulera === 'medikua') {
        header("Location: ../php_medikua/ezarpenak.php?ezarpenak_gordeta=1");
    } elseif ($itzulera === 'pazientea') {
        header("Location: ../php_pazientea/ezarpenak.php?ezarpenak_gordeta=1");
    } else {
        header("Location: ../index.php?ezarpenak_gordeta=1");
    }
    exit();
}
?>
