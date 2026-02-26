<?php
session_start();
$base_path = '../';
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Medikua') {
    header("Location: ../php_hasiera/login.php");
    exit;
}
?>
<?php
require_once '../php_laguntzaileak/DB_konexioa.php';
$mediku_id = $_SESSION['erabiltzaile_id'];

// Medikuaren datuak lortu
$stmt = $pdo->prepare("SELECT * FROM V_Medikua WHERE mediku_id = ?");
$stmt->execute([$mediku_id]);
$user_data = $stmt->fetch(PDO::FETCH_ASSOC);

// Paziente kopurua lortu
$stmtPaziente = $pdo->prepare("SELECT COUNT(*) as total FROM Mediku_Paziente WHERE mediku_id = ?");
$stmtPaziente->execute([$mediku_id]);
$pazienteKopurua = $stmtPaziente->fetchColumn();

// Gaurko hitzordu kopurua
$gaur = date('Y-m-d');
$stmtHitzordu = $pdo->prepare("SELECT COUNT(*) FROM Hitzorduak WHERE mediku_id = ? AND data = ? AND egoera = 'Zain'");
$stmtHitzordu->execute([$mediku_id, $gaur]);
$gaurkoHitzorduak = $stmtHitzordu->fetchColumn();

$page_title = "Hasiera - GOsasun";
$current_page = "index";
$custom_css = "index_medikua.css";

include_once '../php_includeak/mediku_goiburua.php';
?>

    <main class="panel-nagusia">
        <section class="kaixo-atalak flex-zentratua-20" >
            <img src="../<?php echo htmlspecialchars($user_data['irudia'] ?? 'img/lehenetsia_medikua.png'); ?>" alt="Zure profila" class="profil-irudia-80">
            <div>
                <h1 class="izenburu-nagusia">Zer egin nahi duzu gaur, <?php echo htmlspecialchars($user_data['izena']); ?>?</h1>
                <p class="azpititulu-grisa">Atari honetan zure pazienteak eta hitzorduak gainbegiratu ditzakezu.</p>
            </div>
        </section>

        <!-- Estatistika Txartelak (Dashboard) -->
        <div class="panel-sareta flex-tartea-20 marjina-behe-30" style="display: grid; grid-template-columns: 1fr 1fr; gap: 30px; margin-bottom: 30px;">
            <div class="kutxa-zuria-itzala testua-erdian">
                <div style="font-size: 3rem; margin-bottom: 10px;"><img src="../img/users.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"></div>
                <h3 style="font-size: 2rem; margin: 0; color: var(--primary-color);"><?php echo $pazienteKopurua; ?></h3>
                <p class="azpititulu-grisa">Esleitutako Pazienteak</p>
                <a href="pazienteak.php" class="botoia botoi-ertza marjina-goi-15 zabalera-osoa">Zerrenda Ikusi</a>
            </div>
            <div class="kutxa-zuria-itzala testua-erdian">
                <div style="font-size: 3rem; margin-bottom: 10px;"><img src="../img/calendar-days.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"></div>
                <h3 style="font-size: 2rem; margin: 0; color: var(--primary-color);"><?php echo $gaurkoHitzorduak; ?></h3>
                <p class="azpititulu-grisa">Gaurko Hitzorduak</p>
                <a href="hitzorduak.php" class="botoia botoi-ertza marjina-goi-15 zabalera-osoa">Agenda Kudeatu</a>
            </div>
        </div>

        <h2 class="izenburu-nagusia marjina-behe-20"><img src="../img/zap.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> Ekintza Azkarrak</h2>
        <section class="menu-sareta">
            <a href="pazienteak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/users.svg" alt="Nire Pazienteak" style="width: 48px; height: 48px; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg);"></div>
                <h3>Nire Pazienteak</h3>
                <p>Kudeatu zure pacienteen zerrenda.</p>
            </a>
            <a href="hitzorduak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/calendar-days.svg" alt="Hitzorduak" style="width: 48px; height: 48px; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg);"></div>
                <h3>Hitzorduak</h3>
                <p>Ikusi eta kudeatu zure agenda.</p>
            </a>
            <a href="errezetak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/pill.svg" alt="Errezetak" style="width: 48px; height: 48px; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg);"></div>
                <h3>Errezetak</h3>
                <p>Sortu eta kudeatu pazienteen errezetak.</p>
            </a>
            <a href="grafikak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/line-chart.svg" alt="Grafikak" style="width: 48px; height: 48px; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg);"></div>
                <h3>Grafikak</h3>
                <p>Aztertu pazienteen neurketa bilakaerak.</p>
            </a>
            <a href="mezuak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/mail.svg" alt="Mezuak" style="width: 48px; height: 48px; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg);"></div>
                <h3>Mezuak</h3>
                <p>Komunikatu paziente eta langileekin.</p>
            </a>
            <a href="abisuak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/bell-ring.svg" alt="Abisuak" style="width: 48px; height: 48px; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg);"></div>
                <h3>Abisuak</h3>
                <p>Ikusi pazienteen neurketa-alerta kritikoak.</p>
            </a>
            <a href="../php_laguntzaileak/logout.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/log-out.svg" alt="Saioa Itxi" style="width: 48px; height: 48px; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg);"></div>
                <h3>Saioa Itxi</h3>
                <p>Amaitu saioa modu seguruan.</p>
            </a>
        </section>
    </main>

<?php
$extra_js = ["mediku_menua.js"];
include_once '../php_includeak/mediku_footer.php';
?>



