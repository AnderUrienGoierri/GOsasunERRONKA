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
    $stmtU = $pdo->prepare("SELECT izena, abizenak FROM v_osasun_langilea WHERE langile_id = ?");
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
            $css_fitxategia = "medikua_" . $orri_izena . ".css";
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

    <?php
    // ABISUAK EGIAZTATU (HEADERRA GORRIZ JARTZEKO)
    $ba_dago_abisurik = false;
    if (isset($_SESSION['erabiltzaile_id']) && $_SESSION['rol_izena'] === 'Osasun Langilea') {
        $l_id = $_SESSION['erabiltzaile_id'];
        $c_name = 'abisu_irakurrita_jarraipenak';
        $ir_ids = isset($_COOKIE[$c_name]) ? json_decode($_COOKIE[$c_name], true) ?: [] : [];

        $m_data = date('Y-m-d H:i:s', strtotime('-7 days')); // Azken astea bakarrik headerrarentzat
        $st_abs = $pdo->prepare("
            SELECT j.id, j.tentsio_sistolikoa, j.tentsio_diastolikoa, j.pultsua_ppm
            FROM jarraipenak j
            JOIN V_Langile_Pazienteak vlp ON j.paziente_id = vlp.paziente_id
            WHERE vlp.langile_id = ? AND j.erregistro_data >= ?
        ");
        $st_abs->execute([$l_id, $m_data]);
        $neurketak = $st_abs->fetchAll(PDO::FETCH_ASSOC);

        foreach ($neurketak as $n) {
            if (!in_array($n['id'], $ir_ids)) {
                // Thresholds
                if ($n['tentsio_sistolikoa'] > 140 || ($n['tentsio_sistolikoa'] > 0 && $n['tentsio_sistolikoa'] < 90) ||
                    $n['tentsio_diastolikoa'] > 90 || ($n['tentsio_diastolikoa'] > 0 && $n['tentsio_diastolikoa'] < 60) ||
                    ($n['pultsua_ppm'] > 100) || ($n['pultsua_ppm'] > 0 && $n['pultsua_ppm'] < 50)) {
                    $ba_dago_abisurik = true;
                    break;
                }
            }
        }
    }
    ?>

</head>
<body class="<?php echo $body_class ?? 'panel-gorputza'; ?>">
    <header class="panel-goiburua">
        <div class="logoa">
            <a href="index.php" class="logo-esteka">
                <img src="<?php echo $bide_absolutua; ?>img/png/GOsasun_logoa.png" alt="GOsasun" class="logo-irudia">
                <span class="logo-etiketa"><?php echo $itzulpenak->rolak->medikua; ?> | <?php echo htmlspecialchars($u_izena . " " . $u_abizena); ?></span>
            </a>
        </div>
        <div class="mugikorreko-ikonoak">
            <a href="ezarpenak.php" class="ezarpenak-botoia-mugikorra" aria-label="Ireki ezarpenak"><img src="<?php echo $bide_absolutua; ?>img/svg/settings.svg" alt=""></a>
            <button class="menu-botoia" aria-label="Ireki menua"><img src="<?php echo $bide_absolutua; ?>img/svg/list.svg" alt=""></button>
        </div>
        <ul class="nabigazio-estekak">
            <li><a href="index.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'index') ? 'class="aktiboa"' : ''; ?>><?php echo $itzulpenak->menua_medikua->hasiera; ?></a></li>
            <li><a href="pazienteak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'pazienteak') ? 'class="aktiboa"' : ''; ?>><?php echo $itzulpenak->menua_medikua->pazienteak; ?></a></li>
            <li><a href="jarraipenak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'jarraipenak') ? 'class="aktiboa"' : ''; ?>><?php echo $itzulpenak->menua_medikua->jarraipenak; ?></a></li>
            <li><a href="grafikak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'grafikak') ? 'class="aktiboa"' : ''; ?>><?php echo $itzulpenak->menua_medikua->grafikak; ?></a></li>
            <li><a href="dokumentuak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'dokumentuak') ? 'class="aktiboa"' : ''; ?>><?php echo $itzulpenak->menua_medikua->dokumentuak; ?></a></li>
            <li><a href="hitzorduak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'hitzorduak') ? 'class="aktiboa"' : ''; ?>><?php echo $itzulpenak->menua_medikua->hitzorduak; ?></a></li>
            <li><a href="errezetak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'errezetak') ? 'class="aktiboa"' : ''; ?>><?php echo $itzulpenak->menua_medikua->errezetak; ?></a></li>
            <li><a href="ezarpenak.php" <?php echo (isset($uneko_orria) && $uneko_orria === 'ezarpenak') ? 'class="aktiboa"' : ''; ?>><img src="<?php echo $bide_absolutua; ?>img/svg/settings.svg" alt=""> <?php echo $itzulpenak->menua->ezarpenak; ?></a></li>
            <li><a href="<?php echo $bide_absolutua; ?>php_orri_laguntzaileak/logout.php" class="botoia botoi-ertza arrisku-kolorea" ><?php echo $itzulpenak->erabiltzaile_panela->saioa_itxi; ?></a></li>
        </ul>
    </header>

