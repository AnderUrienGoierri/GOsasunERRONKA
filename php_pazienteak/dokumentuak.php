<?php
// dokumentuak.php: Pazientearen dokumentuak kudeatzeko orria
$bide_absolutua = '../';
session_start();

if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$paziente_id = $_SESSION['erabiltzaile_id'];
$mezua = '';
$errorea = '';

// Kudeatu POST ekintzak (Soilik ezabaketa gelditzen da hemen, besteak orri propioetan daude)
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['action']) && $_POST['action'] === 'delete') {
        $dok_id = intval($_POST['dok_id']);
        try {
            $stmtGet = $pdo->prepare("SELECT bidea_zerbitzarian FROM dokumentuak WHERE id = ? AND paziente_id = ?");
            $stmtGet->execute([$dok_id, $paziente_id]);
            $dok = $stmtGet->fetch();

            if ($dok) {
                if (file_exists('../' . $dok['bidea_zerbitzarian'])) {
                    unlink('../' . $dok['bidea_zerbitzarian']);
                }
                $stmtDel = $pdo->prepare("DELETE FROM dokumentuak WHERE id = ?");
                $stmtDel->execute([$dok_id]);
                $mezua = "Dokumentua ezabatu da.";
            }
        } catch (PDOException $e) {
            $errorea = "Errorea ezabatzean: " . $e->getMessage();
        }
    }
}

// Dokumentuak lortu

$ordenazioa = isset($_GET['order']) && $_GET['order'] === 'asc' ? 'ASC' : 'DESC';
$bilaketa = isset($_GET['q']) ? $_GET['q'] : '';
$ordenatuta = isset($_GET['sort']) ? $_GET['sort'] : 'data';

$sql = "SELECT * FROM dokumentuak WHERE paziente_id = ?";
$params = [$paziente_id];

if ($bilaketa) {
    $sql .= " AND (dokumentu_izena LIKE ? OR deskribapena LIKE ?)";
    $params[] = "%$bilaketa%";
    $params[] = "%$bilaketa%";
}

if ($ordenatuta === 'izena') {
    $sql .= " ORDER BY dokumentu_izena $ordenazioa, igotze_data DESC";
} else {
    $sql .= " ORDER BY igotze_data $ordenazioa, dokumentu_izena ASC";
}

$stmt = $pdo->prepare($sql);
$stmt->execute($params);
$dokumentuak = $stmt->fetchAll(PDO::FETCH_ASSOC);

$orri_izenburua = 'Nire Dokumentuak - GOsasun';
$uneko_orria = 'dokumentuak';
$css_pertsonalizatua = 'dokumentuak.css';
include_once '../php_orri_includeak/paziente_goiburua.php';
?>

<main class="panel-nagusia">
    <div class="orri-goiburua">
        <div>
            <h2><img src="../img/svg/file-text.svg" alt="" class="ikono-ertaina marjina-esk-5"> Dokumentuen Kudeaketa</h2>
            <p>Ikusi, editatu edo ezabatu igotako dokumentu guztiak.</p>
        </div>
        <a href="dokumentua_igo.php" class="botoia botoi-sortu"><img src="../img/svg/plus-circle.svg" alt="" class="ikono-ertaina marjina-esk-5"> Gehitu Dokumentu Berria</a>
    </div>

    <?php if ($mezua): ?><div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($mezua); ?></div><?php endif; ?>
    <?php if ($errorea): ?><div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div><?php endif; ?>

    <div class="bilaketa-eremua">
        <form method="get" action="dokumentuak.php" class="flex-tartea-10">
            <input type="text" name="q" value="<?php echo htmlspecialchars($bilaketa); ?>" placeholder="Bilatu dokumentua..." class="inprimaki-kontrola">
            <button type="submit" class="botoia">Bilatu</button>
            <?php if ($bilaketa): ?>
                <a href="dokumentuak.php" class="botoia botoi-ertza">Garbitu</a>
            <?php endif; ?>
        </form>
    </div>

    <div class="korritze-horizontala">
        <table class="dokumentu-taula">
            <thead>
                <tr>
                    <th>
                        <a href="?q=<?php echo urlencode($bilaketa); ?>&order=<?php echo ($ordenazioa === 'DESC' && $ordenatuta === 'data') ? 'asc' : 'desc'; ?>&sort=data">
                            Data <img src="../img/svg/sort.svg" alt="" class="ikono-txikia opazitatea-50">
                        </a>
                    </th>
                    <th>
                        <a href="?q=<?php echo urlencode($bilaketa); ?>&order=<?php echo ($ordenazioa === 'DESC' && $ordenatuta === 'izena') ? 'asc' : 'desc'; ?>&sort=izena">
                            Izena <img src="../img/svg/sort.svg" alt="" class="ikono-txikia opazitatea-50">
                        </a>
                    </th>
                    <th>Deskribapena</th>
                    <th>Ekintzak</th>
                </tr>
            </thead>
            <tbody>
                <?php if (empty($dokumentuak)): ?>
                    <tr>
                        <td colspan="4" class="testua-erdian">Ez da dokumenturik aurkitu.</td>
                    </tr>
                <?php else: ?>
                    <?php foreach ($dokumentuak as $d): ?>
                        <tr>
                            <td><?php echo date('Y/m/d H:i', strtotime($d['igotze_data'])); ?></td>
                            <td><strong><?php echo htmlspecialchars($d['dokumentu_izena'] ?: $d['fitxategi_izena']); ?></strong></td>
                            <td><?php echo htmlspecialchars($d['deskribapena'] ?: '-'); ?></td>
                            <td class="ekintza-botoiak">
                                <a href="../<?php echo htmlspecialchars($d['bidea_zerbitzarian']); ?>" target="_blank" class="botoi-ikonoa" title="Ikusi PDF">
                                    <img src="../img/svg/eye.svg" alt="" class="ikono-ertaina">
                                </a>
                                <a href="dokumentua_editatu.php?id=<?php echo $d['id']; ?>" class="botoi-ikonoa editatu-botoia" title="Editatu">
                                    <img src="../img/svg/pencil.svg" alt="" class="ikono-ertaina">
                                </a>
                                <button class="botoi-ikonoa ezabatu-botoia" onclick="if(confirm('Ziur zaude dokumentua ezabatu nahi duzula?')) { document.getElementById('delete_dok_id').value = <?php echo $d['id']; ?>; document.getElementById('deleteForm').submit(); }" title="Ezabatu">
                                    <img src="../img/svg/trash-2.svg" alt="" class="ikono-ertaina">
                                </button>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                <?php endif; ?>
            </tbody>
        </table>
    </div>
</main>

<!-- Delete Form (Hidden) -->
<form id="deleteForm" method="post" style="display:none;">
    <input type="hidden" name="action" value="delete">
    <input type="hidden" name="dok_id" id="delete_dok_id">
</form>


<?php include_once '../php_orri_includeak/paziente_footer.php'; ?>
