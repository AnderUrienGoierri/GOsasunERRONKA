<?php
// dokumentua_xehetasunak.php: Jarraipen bati lotutako dokumentuak ikusteko orria
$bide_absolutua = '../';
session_start();

if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$paziente_id = $_SESSION['erabiltzaile_id'];
$j_id = $_GET['id'] ?? null;

if (!$j_id) {
    header("Location: jarraipenak.php");
    exit;
}

// Lortu jarraipenaren data (informatzeko)
try {
    $stmtJ = $pdo->prepare("SELECT erregistro_data FROM jarraipenak WHERE id = ? AND paciente_id = ?");
    $stmtJ->execute([$j_id, $paziente_id]);
    $jarraipena = $stmtJ->fetch();
} catch (PDOException $e) {
    // Fail silently or handle
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
$css_pertsonalizatua = 'dokumentuak.css';
include_once '../php_orri_includeak/paziente_goiburua.php';
?>

<main class="panel-nagusia">
    <div class="orri-goiburua">
        <div>
            <h2><img src="../img/svg/file-text.svg" alt="" class="ikono-ertaina marjina-esk-5"> Lotutako Dokumentuak</h2>
            <p><?php echo $jarraipena ? date('Y/m/d H:i', strtotime($jarraipena['erregistro_data'])) : ''; ?>ko neurketari lotutako agiriak.</p>
        </div>
        <a href="jarraipenak.php" class="botoia botoi-ertza">Atzera</a>
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
                                    <a href="dokumentua_editatu.php?id=<?php echo $d['id']; ?>" class="botoi-ikonoa editatu-botoia" title="Editatu">
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
            <a href="dokumentua_igo.php?jarraipen_id=<?php echo $j_id; ?>" class="botoia botoi-nagusia">+ Dokumentu Berria Gehitu</a>
        </div>
    </div>
</main>

<?php include_once '../php_orri_includeak/paziente_footer.php'; ?>
