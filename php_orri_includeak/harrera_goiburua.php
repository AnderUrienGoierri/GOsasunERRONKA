<?php
if (!isset($orri_izenburua)) {
    $orri_izenburua = "Harrera - GOsasun";
}

require_once __DIR__ . '/konfigurazioa_kargatu.php';
require_once __DIR__ . '/estiloak_kargatu.php';
require_once __DIR__ . '/hizkuntza_kargatu.php';

// Erabiltzailearen konfigurazioa kargatu (pertsonala bada lehenetsi)
$konf = kargatuKonfigurazioa(false);
$hizkuntza_def = $konf['hizkuntza'];
$kolore_nagusia_def = $konf['kolore_nagusia'];
$bigarren_kolorea_def = $konf['bigarren_kolorea'];
$footer_kolorea_def = $konf['footer_kolorea'];
$gaia_def = $konf['gaia'];

$itzulpenak = kargatuItzulpenak($hizkuntza_def);
?>
<!DOCTYPE html>
<html lang="<?php echo htmlspecialchars($hizkuntza_def); ?>">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><?php echo $orri_izenburua; ?></title>

    <!-- Google-etik deskargatutako estiloak -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="<?php echo $bide_absolutua; ?>img/png/GOsasun_logoa.png">
    <!-- CSS -->
    <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/estilo_orokorrak.css">
    <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/goiburua.css">

    <?php
        $orri_izena = basename($_SERVER['PHP_SELF'], '.php');
        if (isset($css_pertsonalizatua)) {
            $css_fitxategia = $css_pertsonalizatua;
        } else {
            // Saiatu [rolak]_[orria].css edo [orria].css
            $css_fitxategia = "harrera_" . $orri_izena . ".css";
            if (!file_exists(__DIR__ . "/../css/" . $css_fitxategia)) {
                $css_fitxategia = $orri_izena . ".css";
            }
        }

        // Soilik artxiboa existitzen bada inprimatu
        if (file_exists(__DIR__ . "/../css/" . $css_fitxategia)) {
            echo '<link rel="stylesheet" href="' . $bide_absolutua . 'css/' . $css_fitxategia . '?v=1.1">';
        }
    ?>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <?php inprimatuEstiloak($konf); ?>
</head>
<body class="<?php echo $body_class ?? 'panel-gorputza'; ?>">
    <header class="panel-goiburua">
        <div class="logoa">
            <a href="index.php" class="logo-esteka">
                <img src="<?php echo $bide_absolutua; ?>img/png/GOsasun_logoa.png" alt="GOsasun" class="logo-irudia">
                <span class="logo-etiketa"><?php echo $itzulpenak->rolak->harrera; ?></span>
            </a>
        </div>
        <div class="mugikorreko-ikonoak">
            <a href="ezarpenak.php" class="ezarpenak-botoia-mugikorra" aria-label="Ireki ezarpenak"><img src="<?php echo $bide_absolutua; ?>img/svg/settings.svg" alt=""></a>
            <button class="menu-botoia" aria-label="Ireki menua"><img src="<?php echo $bide_absolutua; ?>img/svg/list.svg" alt=""></button>
        </div>
        <ul class="nabigazio-estekak">
            <li><a href="index.php" class="<?php echo ($uneko_orria === 'index') ? 'aktiboa' : ''; ?>"><?php echo $itzulpenak->menua_harrera->hasiera; ?></a></li>
            <li><a href="pazienteak.php" class="<?php echo ($uneko_orria === 'pazienteak') ? 'aktiboa' : ''; ?>"><?php echo $itzulpenak->menua_harrera->pazienteak; ?></a></li>
            <li><a href="osasun_langileak.php" class="<?php echo ($uneko_orria === 'medikuak') ? 'aktiboa' : ''; ?>"><?php echo $itzulpenak->menua_harrera->medikuak; ?></a></li>
            <li><a href="harrerako_langileak.php" class="<?php echo ($uneko_orria === 'harrerako_langileak') ? 'aktiboa' : ''; ?>"><?php echo $itzulpenak->menua_harrera->harrerako_langileak; ?></a></li>
            <li><a href="hitzorduak.php" class="<?php echo ($uneko_orria === 'hitzorduak') ? 'aktiboa' : ''; ?>"><?php echo $itzulpenak->menua_harrera->hitzorduak; ?></a></li>
            <li><a href="dokumentuak.php" class="<?php echo ($uneko_orria === 'dokumentuak') ? 'aktiboa' : ''; ?>"><?php echo $itzulpenak->menua_harrera->dokumentuak; ?></a></li>
            <li><a href="ezarpenak.php" class="<?php echo ($uneko_orria === 'ezarpenak') ? 'aktiboa' : ''; ?>"><img src="<?php echo $bide_absolutua; ?>img/svg/settings.svg" alt=""> <?php echo $itzulpenak->menua->ezarpenak; ?></a></li>
            <li><a href="<?php echo $bide_absolutua; ?>php_orri_laguntzaileak/logout.php" class="botoia botoi-ertza arrisku-kolorea"><?php echo $itzulpenak->erabiltzaile_panela->saioa_itxi; ?></a></li>
        </ul>
    </header>

