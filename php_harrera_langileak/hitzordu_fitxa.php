<?php
$bide_absolutua = '../';
session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';

$hitzordu_id = $_GET['id'] ?? null;
if (!$hitzordu_id) {
    header("Location: hitzorduak.php");
    exit;
}

// Lortu hitzorduaren xehetasunak (Harrerakoek edozein ikus dezakete)
$stmt = $pdo->prepare("
    SELECT h.*, p.izena as p_izena, p.abizenak as p_abizenak, l.izena as l_izena, l.abizenak as l_abizenak, ol.espezialitatea, ol.kontsulta
    FROM Hitzorduak h
    JOIN Erabiltzaileak p ON h.paziente_id = p.id
    JOIN Erabiltzaileak l ON h.osasun_langile_id = l.id
    JOIN Osasun_Langileak ol ON l.id = ol.id
    WHERE h.id = ?
");
$stmt->execute([$hitzordu_id]);
$hitzordua = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$hitzordua) {
    header("Location: hitzorduak.php?error=notfound");
    exit;
}

$orri_izenburua = "Hitzordu Fitxa - GOsasun";
$uneko_orria = "hitzorduak";
$css_pertsonalizatua = "harrerakoa_hitzorduak.css";
include_once '../php_orri_includeak/harrera_goiburua.php';
?>

<main class="panel-nagusia">
    <div class="orri-goiburua">
        <div>
            <h2><img src="../img/svg/calendar-days.svg" alt="" class="ikono-ertaina marjina-esk-5"> Hitzordua</h2>
            <p>Hitzorduaren xehetasunak (Harrera).</p>
        </div>
        <a href="hitzorduak.php"  class="botoia botoi-ertza flex-zentratua"><img src="../img/svg/arrow-left.svg" alt="" class="ikono-txikia marjina-esk-5"> Itzuli</a>
    </div>

    <div class="kutxa-zuria-700">
        <div class="fitxa-gorputza">
            <div class="informazio-taldea">
                <label>Data eta Ordua</label>
                <div class="informazio-balioa testu-lodia">
                    <?php echo date('Y/m/d', strtotime($hitzordua['data'])); ?> - <?php echo substr($hitzordua['hasiera_ordua'], 0, 5); ?>
                </div>
            </div>
            <div class="informazio-taldea">
                <label>Pazientea</label>
                <div class="informazio-balioa">
                    <?php echo htmlspecialchars($hitzordua['p_izena'] . ' ' . $hitzordua['p_abizenak']); ?> 
                </div>
            </div>
            <div class="informazio-taldea">
                <label>Osasun Langilea</label>
                <div class="informazio-balioa">
                    <?php echo htmlspecialchars($hitzordua['l_izena'] . ' ' . $hitzordua['l_abizenak']); ?> 
                    <small>(<?php echo htmlspecialchars($hitzordua['espezialitatea']); ?> - Kontsulta: <?php echo htmlspecialchars($hitzordua['kontsulta']); ?>)</small>
                </div>
            </div>
            <div class="informazio-taldea">
                <label>Egoera</label>
                <div class="informazio-balioa">
                    <span class="egoera-etiketa status-<?php echo strtolower($hitzordua['egoera']); ?>">
                        <?php echo htmlspecialchars($hitzordua['egoera']); ?>
                    </span>
                </div>
            </div>
            <div class="informazio-taldea">
                <label>Arrazoia / Oharrak</label>
                <div class="informazio-balioa">
                    <?php echo htmlspecialchars($hitzordua['arrazoia'] ?: 'Ez dago oharrik.'); ?>
                </div>
            </div>
        </div>
    </div>
</main>

<?php include_once '../php_orri_includeak/harrera_footer.php'; ?>
