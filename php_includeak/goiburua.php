<?php
require_once __DIR__ . '/konfigurazioa_kargatu.php';
require_once __DIR__ . '/estiloak_kargatu.php';
require_once __DIR__ . '/hizkuntza_kargatu.php';

// Orrialde publikoan gaude, globala bakarrik kargatu
$konf = kargatuKonfigurazioa(false);
$itzulpenak = kargatuItzulpenak($konf['hizkuntza']);

$hizkuntza_def = $konf['hizkuntza'];
$kolore_nagusia_def = $konf['kolore_nagusia'];
$bigarren_kolorea_def = $konf['bigarren_kolorea'];
$footer_kolorea_def = $konf['footer_kolorea'];
$gaia_def = $konf['gaia'];

 
$orri_izenburua = "GOsasun - Zure Osasun Ataria";
?>
<!DOCTYPE html>
<html lang="<?php echo htmlspecialchars($hizkuntza_def); ?>">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $orri_izenburua ?? 'GOsasun'; ?></title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="<?php echo $bide_absolutua; ?>img/GOsasun_logoa.png">
    <!-- CSS -->
    <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/estilo_orokorrak.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/goiburua.css">
    <?php
        $orri_izena = basename($_SERVER['PHP_SELF'], '.php');
        $css_fitxategia = $orri_izena . ".css";
    ?>
    <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/<?php echo $css_fitxategia; ?>">
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <?php inprimatuEstiloak($konf); ?>
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
                <li><a href="<?php echo $bide_absolutua; ?>index.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'index') ? 'class="aktiboa"' : ''; ?>><?php echo $itzulpenak->menua->hasiera; ?></a></li>
                <li><a href="<?php echo $bide_absolutua; ?>php_hasiera/kontaktua.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'kontaktua') ? 'class="aktiboa"' : ''; ?>><?php echo $itzulpenak->menua->kontaktua; ?></a></li>
                <?php if (isset($uneko_orria) && ($uneko_orria === 'index' || $uneko_orria === 'kontaktua')): ?>
                <li><a href="#" id="irekiEzarpenakModala"><img src="<?php echo $bide_absolutua; ?>img/settings.svg" alt="" class="ikono-24px-erdian"> <?php echo $itzulpenak->menua->ezarpenak; ?></a></li>
                <?php endif; ?>
                <li><a href="<?php echo $bide_absolutua; ?>php_hasiera/login.php" class="botoia botoi-nagusia"><?php echo $itzulpenak->menua->saioa_hasi; ?></a></li>
            </ul>
        </nav>
    </header>

