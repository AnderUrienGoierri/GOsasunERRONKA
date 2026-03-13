<?php
$hizkuntza_def = "eu";
$kolore_nagusia_def = "#4361ee";
$bigarren_kolorea_def = "#3f37c9";
$footer_kolorea_def = "#2b2d42";
$gaia_def = "argia";

// Osasun ezarpenak
$sistema_izena_def = "GOsasun";
$hitzordu_muga_def = "20";
$ordutegia_ireki_def = "08:00";
$ordutegia_itxi_def = "20:00";
$mantenimendua_def = "ez";

$xml_path = __DIR__ . '/../xml_konfigurazioa/config.xml';
if (file_exists($xml_path)) {
    $xml_conf = simplexml_load_file($xml_path);
    if ($xml_conf) {
        $hizkuntza_def = isset($xml_conf->hizkuntza) ? (string)$xml_conf->hizkuntza : $hizkuntza_def;
        $kolore_nagusia_def = isset($xml_conf->kolore_nagusia) ? (string)$xml_conf->kolore_nagusia : $kolore_nagusia_def;
        $bigarren_kolorea_def = isset($xml_conf->bigarren_kolorea) ? (string)$xml_conf->bigarren_kolorea : $bigarren_kolorea_def;
        $footer_kolorea_def = isset($xml_conf->footer_kolorea) ? (string)$xml_conf->footer_kolorea : $footer_kolorea_def;
        $gaia_def = isset($xml_conf->gaia) ? (string)$xml_conf->gaia : $gaia_def;
        
        if (isset($xml_conf->osasun_zentroa)) {
            $sistema_izena_def = isset($xml_conf->osasun_zentroa->sistema_izena) ? (string)$xml_conf->osasun_zentroa->sistema_izena : $sistema_izena_def;
            $hitzordu_muga_def = isset($xml_conf->osasun_zentroa->mediku_bakoitzeko_gehienezko_hitzorduak) ? (string)$xml_conf->osasun_zentroa->mediku_bakoitzeko_gehienezko_hitzorduak : $hitzordu_muga_def;
            $ordutegia_ireki_def = isset($xml_conf->osasun_zentroa->ordutegia_ireki) ? (string)$xml_conf->osasun_zentroa->ordutegia_ireki : $ordutegia_ireki_def;
            $ordutegia_itxi_def = isset($xml_conf->osasun_zentroa->ordutegia_itxi) ? (string)$xml_conf->osasun_zentroa->ordutegia_itxi : $ordutegia_itxi_def;
            $mantenimendua_def = isset($xml_conf->osasun_zentroa->mantenimendu_modua) ? (string)$xml_conf->osasun_zentroa->mantenimendu_modua : $mantenimendua_def;
        }
    }
}

// Bidaliko dugu izenburua konfiguraziotik zuzenean
$orri_izenburua = $sistema_izena_def . " - Zure Osasun Ataria";
?>
<!DOCTYPE html>
<html lang="<?php echo htmlspecialchars($hizkuntza_def); ?>">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $orri_izenburua ?? 'GOsasun'; ?></title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- CSS -->
    <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/estilo_orokorrak.css">
    <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/goiburua.css">
    <?php
        $orri_izena = basename($_SERVER['PHP_SELF'], '.php');
        $css_fitxategia = $orri_izena . ".css";
    ?>
    <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/<?php echo $css_fitxategia; ?>">
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <?php
    echo "<style>\n";
    echo ":root {\n";
    echo "  --primary-color: " . htmlspecialchars($kolore_nagusia_def) . " !important;\n";
    echo "  --secondary-color: " . htmlspecialchars($bigarren_kolorea_def) . " !important;\n";
    echo "  --footer-color: " . htmlspecialchars($footer_kolorea_def) . " !important;\n";
    echo "}\n";
    
    if ($gaia_def == 'iluna') {
        echo "body, main { background-color: #121212 !important; color: #f0f0f0 !important; }\n";
        echo ".portal-txartela, .ezaugarri-txartela, .kutxa-zuria, .kaixo-atalak, .menu-txartela, .kutxa-zuria-800, .kutxa-zuria-700, .kuadro-estatistikak {\n";
        echo "    background-color: #1e1e1e !important; color: #f0f0f0 !important; border-color: #333 !important;\n";
        echo "}\n";
        echo "h1, h2, h3, .portal-info h3, .ezaugarri-txartela h3, .izenburu-nagusia, .izenburu-iluna {\n";
        echo "    color: #ffffff !important;\n";
        echo "}\n";
        echo ".azpititulua, .portal-info p, .ezaugarri-txartela p, .testu-gris-txikia, .azpititulu-grisa, .gray-text, .deskribapen-grisa {\n";
        echo "    color: #cccccc !important;\n";
        echo "}\n";
        echo "td, th { color: #f0f0f0 !important; border-color: #333 !important; }\n";
        echo "th { background: #2d2d2d !important; }\n";
        echo ".egoera-hutsa, .kutxa-hutsa-40, .inprimaki-kontrola { background-color: #1e1e1e !important; color: #fff !important; border-color: #555 !important; }\n";
    }
    echo "</style>\n";
    ?>
</head>
<body>
    <header>
        <nav class="nabigazio-barra">
            <div class="logoa">
                <a href="<?php echo $bide_absolutua; ?>index.php">
                    <img src="<?php echo $bide_absolutua; ?>img/GOsasun_logoa.png" alt="GOsasun" class="logo-irudia">
                </a>
            </div>
            <button class="menu-botoia" aria-label="Ireki menua"><img src="<?php echo $bide_absolutua; ?>img/list.svg" alt="" class="ikono-24px"></button>
            <ul class="nabigazio-estekak">
                <li><a href="<?php echo $bide_absolutua; ?>index.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'index') ? 'class="aktiboa"' : ''; ?>>Hasiera</a></li>
                <li><a href="<?php echo $bide_absolutua; ?>php_hasiera/kontaktua.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'kontaktua') ? 'class="aktiboa"' : ''; ?>>Kontaktua</a></li>
                <li><a href="#" id="irekiEzarpenakModala"><img src="<?php echo $bide_absolutua; ?>img/settings.svg" alt="" class="ikono-24px-erdian" <?php if ($gaia_def == 'iluna') echo 'style="filter: invert(1);"'; ?>> Ezarpenak</a></li>
                <li><a href="<?php echo $bide_absolutua; ?>php_hasiera/login.php" class="botoia botoi-nagusia">Saioa Hasi</a></li>
            </ul>
        </nav>
    </header>

