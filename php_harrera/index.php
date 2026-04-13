<?php
session_start();
$bide_absolutua = '../';
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$langile_id = $_SESSION['erabiltzaile_id'];

// Erabiltzailearen datuak lortu
$stmtH = $pdo->prepare("SELECT * FROM V_Harrera WHERE langile_id = ?");
$stmtH->execute([$langile_id]);
$erabiltzaile_datuak = $stmtH->fetch(PDO::FETCH_ASSOC);

$orri_izenburua = "Harrera Panela - GOsasun";
$uneko_orria = "index";
$css_pertsonalizatua = "index_harrera.css";

include_once '../php_includeak/harrera_goiburua.php';
?>

    <main class="panel-nagusia">
        <section class="kaixo-atalak flex-zentratua-20" >
            <?php 
            $irudia_bide = htmlspecialchars($erabiltzaile_datuak['irudia'] ?? 'img/lehenetsia_harrera.png');
            if (strpos($irudia_bide, 'img/') === 0 && strpos($irudia_bide, 'img/png/') === false && strpos($irudia_bide, 'img/svg/') === false) {
                $irudia_bide = str_replace('img/', 'img/png/', $irudia_bide);
            }
            ?>
            <img src="../<?php echo $irudia_bide; ?>" alt="Zure profila" class="profil-irudia-80">
            <div>
                <h1 class="izenburu-nagusia"><?php echo $itzulpenak->erabiltzaile_panela->kaixo; ?>, <?php echo htmlspecialchars($erabiltzaile_datuak['izena']); ?>?</h1>
                <p class="azpititulu-grisa"><?php echo $itzulpenak->erabiltzaile_panela->langile_laburpena; ?></p>
            </div>
        </section>

        <section class="menu-sareta">
            <a href="pazienteak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/users.svg" alt="Pazienteak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_harrera->pazienteak; ?></h3>
                <p><?php echo $itzulpenak->menua_harrera->pazienteak_testua; ?></p>
            </a>
            
            <a href="medikuak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/stethoscope.svg" alt="osasun_langileak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_harrera->medikuak; ?></h3>
                <p><?php echo $itzulpenak->menua_harrera->medikuak_testua; ?></p>
            </a>

            <a href="hitzorduak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/calendar-days.svg" alt="Hitzorduak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_harrera->hitzorduak; ?></h3>
                <p><?php echo $itzulpenak->menua_harrera->hitzorduak_testua; ?></p>
            </a>

            <a href="mezuak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/mail.svg" alt="Mezuak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_harrera->mezuak; ?></h3>
                <p><?php echo $itzulpenak->menua_harrera->mezuak_testua; ?></p>
            </a>

            <a href="kanpoko_mezuak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/globe.svg" alt="Kanpoko Mezuak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_harrera->kanpoko_mezuak; ?></h3>
                <p><?php echo $itzulpenak->menua_harrera->kanpoko_mezuak_testua; ?></p>
            </a>

            <a href="harrerako_langileak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/user-cog.svg" alt="Harrerako Langileak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_harrera->harrerako_langileak; ?></h3>
                <p><?php echo $itzulpenak->menua_harrera->harrerako_langileak_testua; ?></p>
            </a>
            
            <a href="ezarpenak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/settings.svg" alt="Ezarpenak" class="ikono-handia-48"></div>
                <h3>Ezarpenak</h3>
                <p>Pertsonalizatu webgunearen itxura (hizkuntza, kolorea...).</p>
            </a>

            <a href="../php_laguntzaileak/logout.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/log-out.svg" alt="Saioa Itxi" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->erabiltzaile_panela->saioa_itxi; ?></h3>
                <p><?php echo $itzulpenak->erabiltzaile_panela->saioa_itxi_testua; ?></p>
            </a>
        </section>
    </main>

<?php
include_once '../php_includeak/harrera_footer.php';
?>



