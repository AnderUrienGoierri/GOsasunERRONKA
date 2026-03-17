<?php
session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Debug log
    error_log("Saving configuration. Form type: " . ($_POST['form_type'] ?? 'unknown') . ". Language: " . ($_POST['hizkuntza'] ?? 'not set'));
    
    $debug_log = __DIR__ . "/save_debug.log";
    $log_msg = date('[Y-m-d H:i:s] ') . "POST: " . json_encode($_POST) . "\n";
    file_put_contents($debug_log, $log_msg, FILE_APPEND);
    
    $form_type = $_POST['form_type'] ?? 'orokorra';
    $ekintza = $_POST['ekintza'] ?? 'gorde';
    $xml_path = "../xml_konfigurazioa/konfigurazio_orokorra.xml";

    // 'osasun_zentroa' bada, beti globala (config.xml)
    // 'orokorra' bada eta logeatuta badago, erabiltzailearena
    if ($form_type === 'orokorra' && isset($_SESSION['erabiltzaile_id'])) {
        $xml_path = "../xml_konfigurazioa/konfig_erabiltzailea_" . $_SESSION['erabiltzaile_id'] . ".xml";
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
 
    // Dauden balioak irakurri
    if (file_exists($xml_path)) {
        $xml_conf = simplexml_load_file($xml_path);
        if ($xml_conf) {
            $hizk = (string)$xml_conf->hizkuntza ?: $hizk;
            $kol_nag = (string)$xml_conf->kolore_nagusia ?: $kol_nag;
            $big_kol = (string)$xml_conf->bigarren_kolorea ?: $big_kol;
            $foot_kol = (string)$xml_conf->footer_kolorea ?: $foot_kol;
            $gaia = (string)$xml_conf->gaia ?: $gaia;
        }
    }
 
    if ($form_type === 'orokorra') {
        $hizk = $_POST['hizkuntza'] ?? $hizk;
        $kol_nag = $_POST['kolore_nagusia'] ?? $kol_nag;
        $big_kol = $_POST['bigarren_kolorea'] ?? $big_kol;
        $foot_kol = $_POST['footer_kolorea'] ?? $foot_kol;
        $gaia = $_POST['gaia'] ?? $gaia;
    }
 
    // Log values right before saving
    file_put_contents($debug_log, "FINAL VALUES: " . json_encode(['hizk'=>$hizk, 'path'=>$xml_path]) . "\n", FILE_APPEND);
 
    $xml = new DOMDocument("1.0", "UTF-8");
    $xml->formatOutput = true;
    $root = $xml->createElement("konfigurazioa");
    $xml->appendChild($root);
 
    $root->appendChild($xml->createElement("hizkuntza", $hizk));
    $root->appendChild($xml->createElement("kolore_nagusia", $kol_nag));
    $root->appendChild($xml->createElement("bigarren_kolorea", $big_kol));
    $root->appendChild($xml->createElement("footer_kolorea", $foot_kol));
    $root->appendChild($xml->createElement("gaia", $gaia));

    if ($xml->save($xml_path)) {
        file_put_contents($debug_log, "SAVED SUCCESSFULLY to " . realpath($xml_path) . "\n", FILE_APPEND);
    } else {
        file_put_contents($debug_log, "SAVE FAILED to " . $xml_path . "\n", FILE_APPEND);
    }

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
