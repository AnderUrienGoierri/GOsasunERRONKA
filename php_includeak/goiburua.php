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
        $css_fitxategia = $orri_izena . ".css";
    ?>
    <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/<?php echo $css_fitxategia; ?>">
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <header>
        <nav class="nabigazio-barra">
            <div class="logoa">
                <a href="<?php echo $bide_absolutua; ?>index.php">
                    <img src="<?php echo $bide_absolutua; ?>img/GOsasun_logoa.png" alt="GOsasun" class="logo-irudia">
                </a>
            </div>
            <button class="menu-botoia" aria-label="Ireki menua">☰</button>
            <ul class="nabigazio-estekak">
                <li><a href="<?php echo $bide_absolutua; ?>index.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'index') ? 'class="aktiboa"' : ''; ?>>Hasiera</a></li>
                <li><a href="<?php echo $bide_absolutua; ?>php_hasiera/kontaktua.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'kontaktua') ? 'class="aktiboa"' : ''; ?>>Kontaktua</a></li>
                <li><a href="<?php echo $bide_absolutua; ?>php_hasiera/login.php" class="botoia botoi-nagusia">Saioa Hasi</a></li>
            </ul>
        </nav>
    </header>

