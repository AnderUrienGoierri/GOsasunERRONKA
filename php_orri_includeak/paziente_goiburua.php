<?php
// Badaezpada, sesioa hasita ez badago
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

require_once __DIR__ . '/konfigurazioa_kargatu.php';
require_once __DIR__ . '/estiloak_kargatu.php';
require_once __DIR__ . '/hizkuntza_kargatu.php';
require_once __DIR__ . '/../php_orri_laguntzaileak/DB_konexioa.php';

// Erabiltzailearen izena lortu
$u_izena = "";
$u_abizena = "";
if (isset($_SESSION['erabiltzaile_id'])) {
    $stmtU = $pdo->prepare("SELECT izena, abizenak FROM v_pazientea WHERE paziente_id = ?");
    $stmtU->execute([$_SESSION['erabiltzaile_id']]);
    $user_datuak = $stmtU->fetch(PDO::FETCH_ASSOC);
    if ($user_datuak) {
        $u_izena = $user_datuak['izena'];
        $u_abizena = $user_datuak['abizenak'];
    }
}

// Erabiltzailearen konfigurazioa kargatu (pertsonala bada lehenetsi)
$konf = kargatuKonfigurazioa(false);
$hizkuntza_def = $konf['hizkuntza'];
$kolore_nagusia_def = $konf['kolore_nagusia'];
$bigarren_kolorea_def = $konf['bigarren_kolorea'];
$footer_kolorea_def = $konf['footer_kolorea'];
$gaia_def = $konf['gaia'];

$itzulpenak = kargatuItzulpenak($hizkuntza_def);
// Abisu irakurri gabeak detektatu (cookie bidez, abisuak.php orrian soilik sortutako abisuak erabiliz)
$abisu_irakurri_gabe = false;
$paziente_id = $_SESSION['erabiltzaile_id'] ?? null;
if ($paziente_id && isset($_SESSION['abisuak'][$paziente_id])) {
    $cookie_name = 'abisuak_irakurrita_' . $paziente_id;
    $abisuak_irakurrita = [];
    if (isset($_COOKIE[$cookie_name])) {
        $abisuak_irakurrita = json_decode($_COOKIE[$cookie_name], true) ?: [];
    }
    foreach ($_SESSION['abisuak'][$paziente_id] as $abisu) {
        if ((empty($abisu['irakurrita']) || $abisu['irakurrita'] == 0) && (!isset($abisu['uniq']) || !in_array($abisu['uniq'], $abisuak_irakurrita))) {
            $abisu_irakurri_gabe = true;
            break;
        }
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
    <link rel="shortcut icon" href="<?php echo $bide_absolutua; ?>img/png/GOsasun_logoa.png">
    <!-- CSS -->
    <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/estilo_orokorrak.css">
    <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/goiburua.css">
    <?php
        $orri_izena = basename($_SERVER['PHP_SELF'], '.php');
        if (isset($css_pertsonalizatua)) {
            $css_fitxategia = $css_pertsonalizatua;
        } else {
            // Try [role]_[page].css or [page].css
            $css_fitxategia = "pazientea_" . $orri_izena . ".css";
            if (!file_exists(__DIR__ . "/../css/" . $css_fitxategia)) {
                $css_fitxategia = $orri_izena . ".css";
            }
        }

        // Only print if file exists
        if (file_exists(__DIR__ . "/../css/" . $css_fitxategia)) {
            echo '<link rel="stylesheet" href="' . $bide_absolutua . 'css/' . $css_fitxategia . '">';
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
                <span class="logo-etiketa"><?php echo $itzulpenak->rolak->pazientea; ?> | <?php echo htmlspecialchars($u_izena . " " . $u_abizena); ?></span>
            </a>
        </div>
        <div class="mugikorreko-ikonoak">
            <a href="ezarpenak.php" class="ezarpenak-botoia-mugikorra" aria-label="Ireki ezarpenak"><img src="<?php echo $bide_absolutua; ?>img/svg/settings.svg" alt=""></a>
            <button class="menu-botoia" aria-label="Ireki menua"><img src="<?php echo $bide_absolutua; ?>img/svg/list.svg" alt=""></button>
        </div>
        <ul class="nabigazio-estekak">
            <li><a href="index.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'index') ? 'class="aktiboa"' : ''; ?>><?php echo $itzulpenak->menua_pazientea->hasiera; ?></a></li>
            <li><a href="datuak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'datuak') ? 'class="aktiboa"' : ''; ?>><?php echo $itzulpenak->menua_pazientea->datuak; ?></a></li>
            <li><a href="jarraipenak.php" id="nav-jarraipenak" <?php echo (isset($uneko_orria) && $uneko_orria === 'jarraipenak') ? 'class="aktiboa"' : ''; ?>><?php echo $itzulpenak->menua_pazientea->jarraipenak; ?></a></li>
            <li><a href="grafikak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'grafikak') ? 'class="aktiboa"' : ''; ?>><?php echo $itzulpenak->menua_pazientea->grafikak; ?></a></li>
            <li><a href="hitzorduak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'hitzorduak') ? 'class="aktiboa"' : ''; ?>><?php echo $itzulpenak->menua_pazientea->hitzorduak; ?></a></li>
            <li><a href="errezetak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'errezetak') ? 'class="aktiboa"' : ''; ?>><?php echo $itzulpenak->menua_pazientea->errezetak; ?></a></li>
            <li><a href="dokumentuak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'dokumentuak') ? 'class="aktiboa"' : ''; ?>><?php echo $itzulpenak->menua_pazientea->dokumentuak; ?></a></li>
            <li><a href="ezarpenak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'ezarpenak') ? 'class="aktiboa"' : ''; ?>><img src="<?php echo $bide_absolutua; ?>img/svg/settings.svg" alt=""> <?php echo $itzulpenak->menua->ezarpenak; ?></a></li>
            <li><a href="<?php echo $bide_absolutua; ?>php_orri_laguntzaileak/logout.php" class="botoia botoi-ertza arrisku-kolorea" ><?php echo $itzulpenak->erabiltzaile_panela->saioa_itxi; ?></a></li>
        </ul>
    </header>
