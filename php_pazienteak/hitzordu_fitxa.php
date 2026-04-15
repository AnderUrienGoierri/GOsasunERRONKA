<?php
$bide_absolutua = '../';
session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';

$hitzordu_id = $_GET['id'] ?? null;
if (!$hitzordu_id) {
    header("Location: hitzorduak.php");
    exit;
}

// Lortu hitzorduaren xehetasunak
$stmt = $pdo->prepare("
    SELECT h.*, l.izena as l_izena, l.abizenak as l_abizenak, ol.espezialitatea, ol.kontsulta
    FROM Hitzorduak h
    JOIN Erabiltzaileak l ON h.osasun_langile_id = l.id
    JOIN Osasun_Langileak ol ON l.id = ol.id
    WHERE h.id = ? AND h.paziente_id = ?
");
$stmt->execute([$hitzordu_id, $_SESSION['erabiltzaile_id']]);
$hitzordua = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$hitzordua) {
    header("Location: hitzorduak.php?error=notfound");
    exit;
}

$orri_izenburua = "Hitzordu Fitxa - GOsasun";
$uneko_orria = "hitzorduak";
$css_pertsonalizatua = "hitzorduak.css";
include_once '../php_orri_includeak/paziente_goiburua.php';
?>

<main class="panel-nagusia">
    <div class="orri-goiburua">
        <div>
            <h2><img src="../img/svg/calendar-days.svg" alt="" class="ikono-ertaina marjina-esk-5"> Hitzordua</h2>
            <p>Konfirmatutako hitzorduaren xehetasunak.</p>
        </div>
        <a href="hitzorduak.php" class="botoia botoi-ertza flex-zentratua"><img src="../img/svg/arrow-left.svg" alt="" class="ikono-txikia marjina-esk-5"> Itzuli</a>
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
                <label>Osasun Langilea</label>
                <div class="informazio-balioa">
                    <?php echo htmlspecialchars($hitzordua['l_izena'] . ' ' . $hitzordua['l_abizenak']); ?> 
                    <small>(<?php echo htmlspecialchars($hitzordua['espezialitatea']); ?>)</small>
                </div>
            </div>
            <div class="informazio-taldea">
                <label>Kontsulta</label>
                <div class="informazio-balioa">
                    <?php echo htmlspecialchars($hitzordua['kontsulta'] ?? 'Zehaztu gabe'); ?>
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
                    <?php echo isset($hitzordua['arrazoia']) && $hitzordua['arrazoia'] ? htmlspecialchars($hitzordua['arrazoia']) : 'Ez dago oharrik.'; ?>
                </div>
            </div>
        </div>
    </div>
</main>

<?php include_once '../php_orri_includeak/paziente_footer.php'; ?>
