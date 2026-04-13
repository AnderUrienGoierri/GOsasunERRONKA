<?php
session_start();
$bide_absolutua = '../';
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Osasun Langilea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}
?>
<?php
require_once '../php_laguntzaileak/DB_konexioa.php';
$osasun_langile_id = $_SESSION['erabiltzaile_id'];

// Medikuaren datuak lortu
$stmt = $pdo->prepare("SELECT * FROM V_Osasun_Langilea WHERE langile_id = ?");
$stmt->execute([$osasun_langile_id]);
$erabiltzaile_datuak = $stmt->fetch(PDO::FETCH_ASSOC);

// Paziente kopurua lortu
$stmtPaziente = $pdo->prepare("SELECT COUNT(*) as total FROM V_Langile_Pazienteak WHERE langile_id = ?");
$stmtPaziente->execute([$osasun_langile_id]);
$pazienteKopurua = $stmtPaziente->fetchColumn();

// Gaurko hitzordu kopurua
$gaur = date('Y-m-d');
$stmtHitzordu = $pdo->prepare("SELECT COUNT(*) FROM Hitzorduak WHERE osasun_langile_id = ? AND data = ? AND egoera = 'Zain'");
$stmtHitzordu->execute([$osasun_langile_id, $gaur]);
$gaurkoHitzorduak = $stmtHitzordu->fetchColumn();

$orri_izenburua = "Hasiera - GOsasun";
$uneko_orria = "index";
$css_pertsonalizatua = "index_medikua.css";

include_once '../php_includeak/mediku_goiburua.php';
?>

    <main class="panel-nagusia">
        <section class="kaixo-atalak flex-zentratua-20" >
            <?php 
            $irudia_bide = htmlspecialchars($erabiltzaile_datuak['irudia'] ?? 'img/lehenetsia_medikua.png');
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

        <!-- Estatistika Txartelak (Dashboard) -->
        <div class="panel-sareta marjina-behe-30 aginte-panel-sareta">
            <div class="kutxa-zuria-itzala testua-erdian">
                <div class="ikono-kutxa-handia"><img src="../img/svg/users.svg" alt="" class="ikono-ertaina marjina-esk-5"></div>
                <h3 class="zenbaki-handi-urdina"><?php echo $pazienteKopurua; ?></h3>
                <p class="azpititulu-grisa"><?php echo $itzulpenak->dashboard_medikua->paziente_kopurua; ?></p>
                <a href="pazienteak.php" class="botoia botoi-ertza marjina-goi-15 zabalera-osoa"><?php echo $itzulpenak->dashboard_medikua->zerrenda_ikusi; ?></a>
            </div>
            <div class="kutxa-zuria-itzala testua-erdian">
                <div class="ikono-kutxa-handia"><img src="../img/svg/calendar-days.svg" alt="" class="ikono-ertaina marjina-esk-5"></div>
                <h3 class="zenbaki-handi-urdina"><?php echo $gaurkoHitzorduak; ?></h3>
                <p class="azpititulu-grisa"><?php echo $itzulpenak->dashboard_medikua->gaurko_hitzorduak; ?></p>
                <a href="hitzorduak.php" class="botoia botoi-ertza marjina-goi-15 zabalera-osoa"><?php echo $itzulpenak->dashboard_medikua->agenda_kudeatu; ?></a>
            </div>
        </div>

        <h2 class="izenburu-nagusia marjina-behe-20"><img src="../img/svg/zap.svg" alt="" class="ikono-ertaina marjina-esk-5"> <?php echo $itzulpenak->erabiltzaile_panela->ekintza_azkarrak; ?></h2>
        <section class="menu-sareta">
            <a href="pazienteak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/users.svg" alt="Nire Pazienteak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_medikua->pazienteak; ?></h3>
                <p><?php echo $itzulpenak->menua_medikua->pazienteak_testua; ?></p>
            </a>
            <a href="hitzorduak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/calendar-days.svg" alt="Hitzorduak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_medikua->hitzorduak; ?></h3>
                <p><?php echo $itzulpenak->menua_medikua->hitzorduak_testua; ?></p>
            </a>
            <a href="errezetak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/pill.svg" alt="Errezetak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_medikua->errezetak; ?></h3>
                <p><?php echo $itzulpenak->menua_medikua->errezetak_testua; ?></p>
            </a>
            <a href="jarraipenak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/clipboard-pen.svg" alt="jarraipenak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_medikua->jarraipenak; ?></h3>
                <p><?php echo $itzulpenak->menua_medikua->jarraipenak_testua; ?></p>
            </a>
            <a href="grafikak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/line-chart.svg" alt="Grafikak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_medikua->grafikak; ?></h3>
                <p><?php echo $itzulpenak->menua_medikua->grafikak_testua; ?></p>
            </a>

            <a href="abisuak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/bell-ring.svg" alt="Abisuak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_medikua->abisuak; ?></h3>
                <p><?php echo $itzulpenak->menua_medikua->abisuak_testua; ?></p>
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
$js_gehigarria = ["mediku_menua.js"];
include_once '../php_includeak/mediku_footer.php';
?>



