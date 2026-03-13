<?php
// Badaezpada, sesioa hasita ez badago
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

$hizkuntza_def = "eu";
$kolore_nagusia_def = "#4361ee";
$bigarren_kolorea_def = "#3f37c9";
$footer_kolorea_def = "#2b2d42";
$gaia_def = "argia";

$xml_path = __DIR__ . '/../xml_konfigurazioa/config.xml';
if (file_exists($xml_path)) {
    $xml_conf = simplexml_load_file($xml_path);
    if ($xml_conf) {
        $hizkuntza_def = isset($xml_conf->hizkuntza) ? (string)$xml_conf->hizkuntza : $hizkuntza_def;
        $kolore_nagusia_def = isset($xml_conf->kolore_nagusia) ? (string)$xml_conf->kolore_nagusia : $kolore_nagusia_def;
        $bigarren_kolorea_def = isset($xml_conf->bigarren_kolorea) ? (string)$xml_conf->bigarren_kolorea : $bigarren_kolorea_def;
        $footer_kolorea_def = isset($xml_conf->footer_kolorea) ? (string)$xml_conf->footer_kolorea : $footer_kolorea_def;
        $gaia_def = isset($xml_conf->gaia) ? (string)$xml_conf->gaia : $gaia_def;
    }
}
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
        if (isset($css_pertsonalizatua)) {
            $css_fitxategia = $css_pertsonalizatua;
        } else {
            $css_fitxategia = "medikua_" . $orri_izena . ".css";
        }
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
        echo ".panel-gorputza, .panel-nagusia { background-color: #121212 !important; color: #f0f0f0 !important; }\n";
        echo ".kutxa-zuria, .kaixo-atalak, .menu-txartela, .kutxa-zuria-800, .kutxa-zuria-700, .kuadro-estatistikak, .panel-goiburua {\n";
        echo "    background-color: #1e1e1e !important; color: #f0f0f0 !important; border-color: #333 !important;\n";
        echo "}\n";
        echo "h1, h2, h3, .izenburu-nagusia, .izenburu-iluna, .nabigazio-estekak a {\n";
        echo "    color: #ffffff !important;\n";
        echo "}\n";
        echo ".azpititulua, .testu-gris-txikia, .azpititulu-grisa, .gray-text, .deskribapen-grisa, .logo-etiketa {\n";
        echo "    color: #cccccc !important;\n";
        echo "}\n";
        echo "td, th { color: #f0f0f0 !important; border-color: #333 !important; }\n";
        echo "th { background: #2d2d2d !important; }\n";
        echo ".egoera-hutsa, .kutxa-hutsa-40, .inprimaki-kontrola { background-color: #1e1e1e !important; color: #fff !important; border-color: #555 !important; }\n";
    }
    echo "</style>\n";
    ?>
</head>
<body class="<?php echo $body_class ?? 'panel-gorputza'; ?>">
    <header class="panel-goiburua">
        <div class="logoa">
            <a href="index.php" class="logo-esteka">
                <img src="<?php echo $bide_absolutua; ?>img/GOsasun_logoa.png" alt="GOsasun" class="logo-irudia">
                <span class="logo-etiketa">Medikua</span>
            </a>
        </div>
        <button class="menu-botoia" aria-label="Ireki menua"><img src="<?php echo $bide_absolutua; ?>img/list.svg" alt="" class="ikono-24px"></button>
        <ul class="nabigazio-estekak">
            <li><a href="index.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'index') ? 'class="aktiboa"' : ''; ?>>Hasiera</a></li>
            <li><a href="pazienteak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'pazienteak') ? 'class="aktiboa"' : ''; ?>>Nire Pazienteak</a></li>
            <li><a href="hitzorduak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'hitzorduak') ? 'class="aktiboa"' : ''; ?>>Hitzorduak</a></li>
            <li><a href="errezetak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'errezetak') ? 'class="aktiboa"' : ''; ?>>Errezetak</a></li>
            <li><a href="neurketak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'neurketak') ? 'class="aktiboa"' : ''; ?>>Neurketak</a></li>
            <li><a href="grafikak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'grafikak') ? 'class="aktiboa"' : ''; ?>>Grafikak</a></li>
            <li><a href="mezuak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'mezuak') ? 'class="aktiboa"' : ''; ?>>Mezuak</a></li>
            <li><a href="abisuak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'abisuak') ? 'class="aktiboa"' : ''; ?>>Abisuak</a></li>
            <li><a href="ezarpenak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'ezarpenak') ? 'class="aktiboa"' : ''; ?>><img src="<?php echo $bide_absolutua; ?>img/settings.svg" alt="" class="ikono-24px-erdian" <?php if ($gaia_def == 'iluna') echo 'style="filter: invert(1);"'; ?>> Ezarpenak</a></li>
            <li><a href="<?php echo $bide_absolutua; ?>php_laguntzaileak/logout.php" class="botoia botoi-ertza arrisku-kolorea" >Saioa Itxi</a></li>
        </ul>
    </header>

