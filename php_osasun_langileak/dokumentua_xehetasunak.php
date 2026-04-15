<?php
// dokumentua_xehetasunak.php: Jarraipen bati lotutako dokumentuak ikusteko orria (Osasun Langilea)
$bide_absolutua = '../';
session_start();

if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Osasun Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$osasun_langile_id = $_SESSION['erabiltzaile_id'];
$j_id = $_GET['id'] ?? null;
$paziente_id = $_GET['paziente_id'] ?? null; // Hobeto esplizituki jasotzea

if (!$j_id || !$paziente_id) {
    header("Location: jarraipenak.php");
    exit;
}

// Ziurtatu medikuak sarbidea duela paziente honetara
$stm_egiaztatu = $pdo->prepare("SELECT 1 FROM V_Langile_Pazienteak WHERE langile_id = ? AND paziente_id = ?");
$stm_egiaztatu->execute([$osasun_langile_id, $paziente_id]);
if (!$stm_egiaztatu->fetch()) {
    header("Location: jarraipenak.php?error=" . urlencode("Ez duzu baimenik paziente honen dokumentuak kudeatzeko."));
    exit;
}

// Lortu jarraipenaren data (informatzeko)
try {
    $stmtJ = $pdo->prepare("SELECT erregistro_data FROM jarraipenak WHERE id = ? AND paziente_id = ?");
    $stmtJ->execute([$j_id, $paziente_id]);
    $jarraipena = $stmtJ->fetch();
} catch (PDOException $e) {
    // Fail silently
}

// Lortu dokumentuak
try {
    $stmt = $pdo->prepare("SELECT * FROM dokumentuak WHERE jarraipena_id = ? AND paziente_id = ? ORDER BY igotze_data DESC");
    $stmt->execute([$j_id, $paziente_id]);
    $dokumentuak = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    $errorea = "Errorea dokumentuak lortzean: " . $e->getMessage();
}

$orri_izenburua = 'Lotutako Dokumentuak - GOsasun';
$uneko_orria = 'jarraipenak';
$css_pertsonalizatua = 'osasun_langile_errezetak.css';
include_once '../php_orri_includeak/osasun_langile_goiburua.php';
?>

<main class="panel-nagusia">
    <div class="orri-goiburua">
        <div>
            <h2><img src="../img/svg/file-text.svg" alt="" class="ikono-ertaina marjina-esk-5"> Lotutako Dokumentuak</h2>
            <p><?php echo $jarraipena ? date('Y/m/d H:i', strtotime($jarraipena['erregistro_data'])) : ''; ?>ko neurketari lotutako agiriak.</p>
        </div>
        <a href="jarraipenak.php?paziente_id=<?php echo $paziente_id; ?>" class="botoia botoi-ertza">Atzera</a>
    </div>

    <?php if (isset($errorea)): ?><div class="alerta alerta-errorea"><?php echo $errorea; ?></div><?php endif; ?>

    <div class="txartel-zuria padding-20">
        <?php if (empty($dokumentuak)): ?>
            <div class="zentratu hutsartea-50 opazitatea-50">
                <img src="../img/svg/inbox.svg" alt="" class="ikono-handia-48 tarte-behea">
                <p>Ez dago dokumenturik lotuta neurketa honi.</p>
            </div>
        <?php else: ?>
            <div class="korritze-horizontala">
                <table class="dokumentu-taula">
                    <thead>
                        <tr>
                            <th>Data</th>
                            <th>Izena</th>
                            <th>Deskribapena</th>
                            <th>Ekintzak</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($dokumentuak as $d): ?>
                            <tr>
                                <td><?php echo date('Y/m/d H:i', strtotime($d['igotze_data'])); ?></td>
                                <td><strong><?php echo htmlspecialchars($d['dokumentu_izena']); ?></strong></td>
                                <td><small><?php echo htmlspecialchars($d['deskribapena'] ?: '-'); ?></small></td>
                                <td class="ekintza-botoiak">
                                    <a href="../<?php echo htmlspecialchars($d['bidea_zerbitzarian']); ?>" target="_blank" class="botoi-ikonoa" title="Ikusi PDF">
                                        <img src="../img/svg/eye.svg" alt="" class="ikono-ertaina">
                                    </a>
                                    <!-- Editatzeko aukera medikuak ere izan dezala -->
                                    <a href="dokumentua_editatu.php?id=<?php echo $d['id']; ?>&paziente_id=<?php echo $paziente_id; ?>" class="botoi-ikonoa editatu-botoia" title="Editatu">
                                        <img src="../img/svg/pencil.svg" alt="" class="ikono-ertaina">
                                    </a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        <?php endif; ?>
        
        <div class="marjina-goi-20 testua-erdian">
            <a href="dokumentua_igo.php?paziente_id=<?php echo $paziente_id; ?>&jarraipen_id=<?php echo $j_id; ?>" class="botoia botoi-nagusia">+ Dokumentu Berria Gehitu</a>
        </div>
    </div>
</main>

<?php include_once '../php_orri_includeak/osasun_footer.php'; ?>
