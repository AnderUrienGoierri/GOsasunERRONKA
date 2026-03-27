<?php
session_start();
$bide_absolutua = '../';
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
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
            <img src="../<?php echo htmlspecialchars($erabiltzaile_datuak['irudia'] ?? 'img/lehenetsia_harrera.png'); ?>" alt="Zure profila" class="profil-irudia-80">
            <div>
                <h1 class="izenburu-nagusia">Ongi etorri, <?php echo htmlspecialchars($erabiltzaile_datuak['izena']); ?>!</h1>
                <p class="azpititulu-grisa">Atari honetatik gure zentroko pazienteak, medikuak, hitzorduak eta kanpoko mezuak kudeatu ditzakezu.</p>
            </div>
        </section>

        <section class="menu-sareta">
            <a href="pazienteak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/users.svg" alt="Pazienteak" class="ikono-handia-48"></div>
                <h3>Pazienteak</h3>
                <p>Sortu, editatu edo ezabatu pazienteak eta egiaztatu alta/baja egoera.</p>
            </a>
            
            <a href="medikuak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/stethoscope.svg" alt="Medikuak" class="ikono-handia-48"></div>
                <h3>Medikuak</h3>
                <p>Zentroko medikuen zerrenda eta kudeaketa orokorra.</p>
            </a>

            <a href="hitzorduak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/calendar-days.svg" alt="Hitzorduak" class="ikono-handia-48"></div>
                <h3>Hitzorduak</h3>
                <p>Ikusi medikuen agendak eta erreserbatu hitzordu berriak.</p>
            </a>

            <a href="mezuak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/mail.svg" alt="Mezuak" class="ikono-handia-48"></div>
                <h3>Mezuak</h3>
                <p>Kudeatu webgunetik jasotako mezuak eta herritarren zalantzak.</p>
            </a>

            <a href="kanpoko_mezuak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/globe.svg" alt="Kanpoko Mezuak" class="ikono-handia-48"></div>
                <h3>Kanpoko Mezuak</h3>
                <p>Irakurri eta erantzun webgune publikotik datozen kontsultei.</p>
            </a>

            <a href="harrerako_langileak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/user-cog.svg" alt="Harrerako Langileak" class="ikono-handia-48"></div>
                <h3>Harrerako Langileak</h3>
                <p>Kudeatu harrerako langileen zerrenda eta baimenak.</p>
            </a>
            
            <a href="ezarpenak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/settings.svg" alt="Ezarpenak" class="ikono-handia-48"></div>
                <h3>Ezarpenak</h3>
                <p>Konfiguratu sistemaren izena, hitzordu mugak eta ordutegiak XML bidez.</p>
            </a>

            <a href="../php_laguntzaileak/logout.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/log-out.svg" alt="Saioa Itxi" class="ikono-handia-48"></div>
                <h3>Saioa Itxi</h3>
                <p>Amaitu saioa modu seguruan.</p>
            </a>
        </section>
    </main>

<?php
include_once '../php_includeak/harrera_footer.php';
?>



