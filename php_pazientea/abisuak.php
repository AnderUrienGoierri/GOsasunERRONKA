<?php
$base_path = '../';
session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$paziente_id = $_SESSION['erabiltzaile_id'];
$msg = '';

// Mark as read logic
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['mark_read_id'])) {
    $abisu_id = $_POST['mark_read_id'];
    $stmt = $pdo->prepare("UPDATE Abisuak SET irakurrita = 1 WHERE abisu_id = ? AND paziente_id = ?");
    $stmt->execute([$abisu_id, $paziente_id]);
    $msg = "Abisua irakurrita markatu da.";
}

// Fetch alerts
$stmt = $pdo->prepare("SELECT * FROM Abisuak WHERE paziente_id = ? ORDER BY irakurrita ASC, data DESC");
$stmt->execute([$paziente_id]);
$abisuak = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>
<?php
$base_path = '../';
$page_title = "Abisuak - GOsasun";
$current_page = "abisuak";
$custom_css = "abisuak.css";

include_once '../php_includeak/paziente_goiburua.php';
?>

    

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2>🔔 Osasun Abisuak</h2>
            <p>Zure neurketen araberako abisu automatikoak.</p>
        </div>

        <?php $base_path = '../';
if ($msg): ?>
            <div class="alerta alerta-arrakasta"><?php $base_path = '../';
echo htmlspecialchars($msg); ?></div>
        <?php $base_path = '../';
endif; ?>

        <div class="abisu-zerrenda">
            <?php $base_path = '../';
if (count($abisuak) > 0): ?>
                <?php $base_path = '../';
foreach ($abisuak as $a): ?>
                    <div class="abisu-txartela <?php $base_path = '../';
echo $a['irakurrita'] ? '' : 'ez-irakurrita'; ?>">
                        <h4>
                            <span>
                                <span class="abisu-mota mota-<?php $base_path = '../';
echo strtolower($a['mota']); ?>"><?php $base_path = '../';
echo htmlspecialchars($a['mota']); ?></span>
                                <?php $base_path = '../';
echo $a['irakurrita'] ? '' : '<span class="testu-arriskua-ezk">● Berria</span>'; ?>
                            </span>
                            <?php $base_path = '../';
if (!$a['irakurrita']): ?>
                                <form method="POST" class="barneko-bistarapena">
                                    <input type="hidden" name="mark_read_id" value="<?php $base_path = '../';
echo $a['abisu_id']; ?>">
                                    <button type="submit" class="irakurri-botoia">Markatu irakurrita gisa</button>
                                </form>
                            <?php $base_path = '../';
endif; ?>
                        </h4>
                        <p><?php $base_path = '../';
echo htmlspecialchars($a['testua']); ?></p>
                        <span class="abisu-data">📅 <?php $base_path = '../';
echo date('Y/m/d H:i', strtotime($a['data'])); ?></span>
                    </div>
                <?php $base_path = '../';
endforeach; ?>
            <?php $base_path = '../';
else: ?>
                <div class="egoera-hutsa kutxa-hutsa-40" >
                    <div class="ikono-handia-3">🎉</div>
                    <h3>Ez duzu abisurik!</h3>
                    <p>Zure neurketa guztiak normaltasunaren barruan daude une honetan.</p>
                </div>
            <?php $base_path = '../';
endif; ?>
        </div>
    </main>

<?php
$base_path = '../';
include_once '../php_includeak/paziente_footer.php';
?>


