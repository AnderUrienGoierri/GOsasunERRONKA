<?php
// dokumentuak.php: Harrerako Langileentzako dokumentuak bilatzeko orria
$bide_absolutua = '../';
session_start();

if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$mezua = '';
$errorea = '';

// Kudeatu dokumentua igotzea
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['action']) && $_POST['action'] === 'create') {
    $hautatutako_id = intval($_POST['paziente_id'] ?? 0);
    $titulua = $_POST['dokumentu_izena'] ?? '';
    $desk = $_POST['deskribapena'] ?? '';
    $pdf = $_FILES['pdf'] ?? null;

    if (!$hautatutako_id || !$titulua || !$pdf || $pdf['error'] !== UPLOAD_ERR_OK) {
        $errorea = "Pazientea hautatu, titulu eremua bete eta fitxategia igo behar dituzu.";
    } else {
        $ext = strtolower(pathinfo($pdf['name'], PATHINFO_EXTENSION));
        if ($ext !== 'pdf') {
            $errorea = "Fitxategia PDF formatuan egon behar da halabeharrez.";
        } else {
            $pdf_dir = '../paziente_dokumentuak/';
            if (!is_dir($pdf_dir)) mkdir($pdf_dir, 0777, true);

            $data = date('Ymd');
            $ordua = date('His');
            $garbi_titulua = preg_replace('/[^a-zA-Z0-9._-]/', '_', $titulua);
            $dest_name = "dok_paziente_{$hautatutako_id}_{$data}_{$ordua}_{$garbi_titulua}.pdf";

            if (move_uploaded_file($pdf['tmp_name'], $pdf_dir . $dest_name)) {
                $stmtInsert = $pdo->prepare("INSERT INTO dokumentuak (paziente_id, fitxategi_izena, bidea_zerbitzarian, dokumentu_izena, deskribapena) VALUES (?, ?, ?, ?, ?)");
                $stmtInsert->execute([$hautatutako_id, $dest_name, 'paziente_dokumentuak/' . $dest_name, $titulua, $desk]);
                $mezua = "Dokumentua behar bezala erregistratu da sisteman.";
            } else {
                $errorea = "Errorea fitxategia fisikoan mugitzean zerbitzarira.";
            }
        }
    }
}

// Lortu pazienteen zerrenda hautagarri izateko
$stmtPaz = $pdo->query("SELECT paziente_id, izena, abizenak, nan FROM V_Pazientea ORDER BY abizenak, izena");
$paziente_zerrenda = $stmtPaz->fetchAll(PDO::FETCH_ASSOC);

// Bilaketa eta ordenazio parametroak
$q = isset($_GET['q']) ? $_GET['q'] : '';
$order = isset($_GET['order']) && $_GET['order'] === 'asc' ? 'ASC' : 'DESC';

// SQL eraiki
$sql = "SELECT d.*, p.izena as p_izena, p.abizenak as p_abizenak, p.nan as p_nan 
        FROM dokumentuak d 
        JOIN V_Pazientea p ON d.paziente_id = p.paziente_id";

$params = [];
if ($q) {
    $sql .= " WHERE p.izena LIKE ? OR p.abizenak LIKE ? OR p.nan LIKE ? OR d.dokumentu_izena LIKE ?";
    $params = ["%$q%", "%$q%", "%$q%", "%$q%"];
}

$sql .= " ORDER BY d.igotze_data $order";

$stmt = $pdo->prepare($sql);
$stmt->execute($params);
$dokumentuak = $stmt->fetchAll(PDO::FETCH_ASSOC);

$orri_izenburua = 'Dokumentuak Bilatu - GOsasun';
$uneko_orria = 'dokumentuak';
$css_pertsonalizatua = 'dokumentuak.css';

include_once '../php_orri_includeak/harrera_goiburua.php';
?>

<main class="panel-nagusia">
    <div class="orri-goiburua">
        <div>
            <h2><img src="../img/svg/search.svg" alt="" class="ikono-ertaina marjina-esk-5"> Dokumentuen Bilaketa</h2>
            <p>Bilatu pazienteen dokumentuak izen, abizen, NAN edo dokumentuaren tituluaren arabera.</p>
        </div>
    </div>

    <?php if ($mezua): ?><div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($mezua); ?></div><?php endif; ?>
    <?php if ($errorea): ?><div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div><?php endif; ?>

    <details class="marjina-behe-20">
        <summary class="botoia botoi-sortu"><img src="../img/svg/bell-ring.svg" alt="" class="ikono-ertaina marjina-esk-5 ikono-zuria"> Hasi Dokumentu Berria Igotzen</summary>
        <div class="inprimaki-edukiontzia form-edukiontzi-zuria padding-30 marjina-goi-20 kutxa-itzala">
            <h3 class="izenburu-urdina marjina-behe-20"><img src="../img/svg/file-plus.svg" alt="" class="ikono-ertaina marjina-esk-5"> Dokumentuaren xehetasunak</h3>
            <form method="POST" enctype="multipart/form-data">
                <input type="hidden" name="action" value="create">
                
                <div class="sareta-bikoa marjina-behe-15">
                    <div class="inprimaki-taldea">
                        <label for="paziente_id" class="etiketa-lodia">Pazientea <span class="beharrezkoa">*</span></label>
                        <select name="paziente_id" id="paziente_id" required class="inprimaki-kontrola sarrera-handia">
                            <option value="">Hautatu pazientea...</option>
                            <?php foreach ($paziente_zerrenda as $paz): ?>
                                <option value="<?php echo $paz['paziente_id']; ?>">
                                    <?php echo htmlspecialchars($paz['abizenak'] . ', ' . $paz['izena'] . ' - ' . $paz['nan']); ?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="inprimaki-taldea">
                        <label class="etiketa-lodia">PDF fitxategia <span class="beharrezkoa">*</span></label>
                        <input type="file" name="pdf" accept="application/pdf" required class="inprimaki-kontrola sarrera-handia">
                    </div>
                </div>

                <div class="sareta-bikoa marjina-behe-20">
                    <div class="inprimaki-taldea">
                        <label class="etiketa-lodia">Dokumentuaren izena <span class="beharrezkoa">*</span></label>
                        <input type="text" name="dokumentu_izena" required class="inprimaki-kontrola sarrera-handia" placeholder="Adibidez: Urteko Analisia">
                    </div>
                    <div class="inprimaki-taldea">
                        <label class="etiketa-lodia">Deskribapena</label>
                        <input type="text" name="deskribapena" class="inprimaki-kontrola sarrera-handia" placeholder="Oharrak...">
                    </div>
                </div>

                <div class="botoi-taldea">
                    <button type="submit" class="botoia botoi-nagusia"><img src="../img/svg/bell-ring.svg" alt="" class="ikono-ertaina marjina-esk-5 ikono-zuria"> Gorde eta Igo</button>
                </div>
            </form>
        </div>
    </details>

    <div class="bilaketa-eremua">
        <form method="get" class="flex-tartea-10">
            <input type="text" name="q" value="<?php echo htmlspecialchars($q); ?>" placeholder="Bilatu pazientea edo dokumentua..." class="inprimaki-kontrola">
            <button type="submit" class="botoia">Bilatu</button>
            <?php if ($q): ?>
                <a href="dokumentuak.php" class="botoia botoi-ertza">Garbitu</a>
            <?php endif; ?>
        </form>
        <div class="ordenazioa">
            <a href="?q=<?php echo urlencode($q); ?>&order=<?php echo $order === 'DESC' ? 'asc' : 'desc'; ?>" class="botoia botoi-ertza">
                Ordenatu: <?php echo $order === 'DESC' ? 'Berrienak lehenengo' : 'Zaharrenak lehenengo'; ?>
            </a>
        </div>
    </div>

    <div class="korritze-horizontala">
        <table class="dokumentu-taula">
            <thead>
                <tr>
                    <th>Data</th>
                    <th>Pazientea</th>
                    <th>NAN</th>
                    <th>Dokumentua</th>
                    <th>Deskribapena</th>
                    <th>Ekintzak</th>
                </tr>
            </thead>
            <tbody>
                <?php if (empty($dokumentuak)): ?>
                    <tr>
                        <td colspan="6" class="testua-erdian">Ez da dokumenturik aurkitu.</td>
                    </tr>
                <?php else: ?>
                    <?php foreach ($dokumentuak as $d): ?>
                        <tr>
                            <td><?php echo date('Y/m/d H:i', strtotime($d['igotze_data'])); ?></td>
                            <td><strong><?php echo htmlspecialchars($d['p_abizenak'] . ', ' . $d['p_izena']); ?></strong></td>
                            <td><small><?php echo htmlspecialchars($d['p_nan']); ?></small></td>
                            <td><?php echo htmlspecialchars($d['dokumentu_izena'] ?: $d['fitxategi_izena']); ?></td>
                            <td><small><?php echo htmlspecialchars($d['deskribapena'] ?: '-'); ?></small></td>
                            <td class="ekintza-botoiak">
                                <a href="../<?php echo htmlspecialchars($d['bidea_zerbitzarian']); ?>" target="_blank" class="botoi-ikonoa" title="Ikusi / Deskargatu">
                                    <img src="../img/svg/download.svg" alt="" class="ikono-ertaina">
                                </a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                <?php endif; ?>
            </tbody>
        </table>
    </div>
</main>

<?php 
include_once '../php_orri_includeak/harrera_footer.php';
?>
