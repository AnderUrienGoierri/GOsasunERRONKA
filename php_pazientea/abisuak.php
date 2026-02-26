<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$paziente_id = $_SESSION['erabiltzaile_id'];
$mezua = '';

// Mark as read logic
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['mark_read_id'])) {
    $abisu_id = $_POST['mark_read_id'];
    $stmt = $pdo->prepare("UPDATE Abisuak SET irakurrita = 1 WHERE abisu_id = ? AND paziente_id = ?");
    $stmt->execute([$abisu_id, $paziente_id]);
    $mezua = "Abisua irakurrita markatu da.";
}

// Fetch alerts
$stmt = $pdo->prepare("SELECT * FROM Abisuak WHERE paziente_id = ? ORDER BY irakurrita ASC, data DESC");
$stmt->execute([$paziente_id]);
$abisuak = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>
<?php $orri_izenburua = "Abisuak - GOsasun";
$uneko_orria = "abisuak";
$css_pertsonalizatua = "abisuak.css";

include_once '../php_includeak/paziente_goiburua.php';
?>

    

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2><img src="../img/bell-ring.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; iragazkia: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> Osasun Abisuak</h2>
            <p>Zure neurketen araberako abisu automatikoak.</p>
        </div>

        <?php if ($mezua): ?>
            <div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($mezua); ?></div>
        <?php endif; ?>

        <div class="abisu-zerrenda">
            <?php if (count($abisuak) > 0): ?>
                <?php foreach ($abisuak as $a): ?>
                    <div class="abisu-txartela <?php echo $a['irakurrita'] ? '' : 'ez-irakurrita'; ?>">
                        <h4>
                            <span>
                                <span class="abisu-mota mota-<?php echo strtolower($a['mota']); ?>"><?php echo htmlspecialchars($a['mota']); ?></span>
                                <?php echo $a['irakurrita'] ? '' : '<span class="testu-arriskua-ezk">● Berria</span>'; ?>
                            </span>
                            <?php if (!$a['irakurrita']): ?>
                                <form method="POST" class="barneko-bistarapena">
                                    <input type="hidden" name="mark_read_id" value="<?php echo $a['abisu_id']; ?>">
                                    <button type="submit" class="irakurri-botoia">Markatu irakurrita gisa</button>
                                </form>
                            <?php endif; ?>
                        </h4>
                        <p><?php echo htmlspecialchars($a['testua']); ?></p>
                        <span class="abisu-data"><img src="../img/calendar-days.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; iragazkia: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> <?php echo date('Y/m/d H:i', strtotime($a['data'])); ?></span>
                    </div>
                <?php endforeach; ?>
            <?php else: ?>
                <div class="egoera-hutsa kutxa-hutsa-40" >
                    <div class="ikono-handia-3"><img src="../img/smile.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; iragazkia: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"></div>
                    <h3>Ez duzu abisurik!</h3>
                    <p>Zure neurketa guztiak normaltasunaren barruan daude une honetan.</p>
                </div>
            <?php endif; ?>
        </div>
    </main>

<?php include_once '../php_includeak/paziente_footer.php';
?>


