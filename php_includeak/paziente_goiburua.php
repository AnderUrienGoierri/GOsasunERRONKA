<?php
// Badaezpada, sesioa hasita ez badago
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
?>
<!DOCTYPE html>
<html lang="eu">
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
            $css_fitxategia = "pazientea_" . $orri_izena . ".css";
        }
    ?>
    <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/<?php echo $css_fitxategia; ?>">
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body class="<?php echo $body_class ?? 'panel-gorputza'; ?>">
    <header class="panel-goiburua">
        <div class="logoa">
            <a href="index.php" class="logo-esteka">
                <img src="<?php echo $bide_absolutua; ?>img/GOsasun_logoa.png" alt="GOsasun" class="logo-irudia">
                <span class="logo-etiketa">Pazientea</span>
            </a>
        </div>
        <button class="menu-botoia" aria-label="Ireki menua"><img src="<?php echo $bide_absolutua; ?>img/list.svg" alt="" class="ikono-24px"></button>
        <ul class="nabigazio-estekak">
            <li><a href="index.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'index') ? 'class="aktiboa"' : ''; ?>>Hasiera</a></li>
            <li><a href="datuak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'datuak') ? 'class="aktiboa"' : ''; ?>>Nire Datuak</a></li>
            <li><a href="neurketak.php" id="nav-neurketak" <?php echo (isset($uneko_orria) && $uneko_orria === 'neurketak') ? 'class="aktiboa"' : ''; ?>>Neurketak</a></li>
            <li><a href="grafikak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'grafikak') ? 'class="aktiboa"' : ''; ?>>Grafikak</a></li>
            <li><a href="hitzorduak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'hitzorduak') ? 'class="aktiboa"' : ''; ?>>Hitzorduak</a></li>
            <li><a href="errezetak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'errezetak') ? 'class="aktiboa"' : ''; ?>>Errezetak</a></li>
            <li><a href="mezuak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'mezuak') ? 'class="aktiboa"' : ''; ?>>Mezuak</a></li>
            <li><a href="abisuak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'abisuak') ? 'class="aktiboa"' : ''; ?>>Abisuak</a></li>
            <li><a href="<?php echo $bide_absolutua; ?>php_laguntzaileak/logout.php" class="botoia botoi-ertza arrisku-kolorea" >Saioa Itxi</a></li>
            <li id="usb-status-container" class="usb-disconnected" data-tooltip="Konektatu neurketa gailua">
                <img src="<?php echo $bide_absolutua; ?>img/usb.svg" alt="USB" class="usb-icon">
            </li>
        </ul>
    </header>

