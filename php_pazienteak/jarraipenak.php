<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';

$paziente_id = $_SESSION['erabiltzaile_id'];
$mezua = '';
$errorea = '';

// Dokumentu berria igo (pazientea)
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['action']) && $_POST['action'] === 'gehitu_dokumentua') {
    $j_id = intval($_POST['jarraipen_id'] ?? 0);
    $d_izena = trim($_POST['dokumentu_izena'] ?? '');
    $d_desk = trim($_POST['deskribapena'] ?? '');
    $pdf = $_FILES['pdf_fitxategia'] ?? null;

    if (!$j_id || !$d_izena || !$pdf || $pdf['error'] !== UPLOAD_ERR_OK) {
        $errorea = "Mesedez, bete beharrezko eremu guztiak eta aukeratu PDF bat.";
    } else {
        $ext = strtolower(pathinfo($pdf['name'], PATHINFO_EXTENSION));
        if ($ext !== 'pdf') {
            $errorea = "PDF fitxategiak bakarrik onartzen dira.";
        } else {
            $pdf_dir = '../paziente_dokumentuak/';
            if (!is_dir($pdf_dir)) mkdir($pdf_dir, 0777, true);

            $timestamp = date('Ymd_His');
            $garbi_izena = preg_replace('/[^a-zA-Z0-9._-]/', '_', $d_izena);
            $dest_name = "dok_jarraipena_{$j_id}_{$timestamp}_{$garbi_izena}.pdf";

            if (move_uploaded_file($pdf['tmp_name'], $pdf_dir . $dest_name)) {
                $stmtInsert = $pdo->prepare("INSERT INTO dokumentuak (jarraipena_id, fitxategi_izena, bidea_zerbitzarian, dokumentu_izena, deskribapena) VALUES (?, ?, ?, ?, ?)");
                $stmtInsert->execute([$j_id, $dest_name, 'paziente_dokumentuak/' . $dest_name, $d_izena, $d_desk]);
                $mezua = "Dokumentu berria ondo gorde da.";
            } else {
                $errorea = "Errorea fitxategia gorde bitartean.";
            }
        }
    }
}

// --- PAGINAZIO LOGIKA ---

// PAGINAZIOA
$orria = isset($_GET['orria']) ? (int)$_GET['orria'] : 1;
if ($orria < 1) $orria = 1;
$limitea = 10;
$desplazamendua = ($orria - 1) * $limitea;

// Guztira zenbat erregistro dauden jakiteko
$stmtCount = $pdo->prepare("SELECT COUNT(*) FROM jarraipenak WHERE paziente_id = ?");
$stmtCount->execute([$paziente_id]);
$guztira = $stmtCount->fetchColumn();
$orri_kopurua = ceil($guztira / $limitea);


// Lortu jarraipenak (eta dokumentu infoa: dok_id, dokumentu_izena, deskribapena)
$sql = "SELECT j.*, d.id as dok_id, d.dokumentu_izena, d.deskribapena
    FROM jarraipenak j
    LEFT JOIN dokumentuak d ON j.id = d.jarraipena_id
    WHERE j.paziente_id = :pid
    ORDER BY j.erregistro_data DESC
    LIMIT :limit OFFSET :offset";
$stmtN = $pdo->prepare($sql);
$stmtN->bindValue(':pid', $paziente_id, PDO::PARAM_INT);
$stmtN->bindValue(':limit', $limitea, PDO::PARAM_INT);
$stmtN->bindValue(':offset', $desplazamendua, PDO::PARAM_INT);
$stmtN->execute();
$jarraipenak = $stmtN->fetchAll(PDO::FETCH_ASSOC);

$orri_izenburua = "Jarraipenen historiala - GOsasun";
$uneko_orria = "jarraipenak";
$css_pertsonalizatua = "pazienteak.css,dokumentuak.css";
$js_gehigarria = ["jarraipenak.js"];

include_once '../php_orri_includeak/paziente_goiburua.php';
?>

<body data-paziente-id="<?php echo htmlspecialchars($paziente_id); ?>">
    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/svg/clipboard-pen.svg" alt="" class="ikono-ertaina tarte-eskubia"> Jarraipenen Historiala</h2>
                <p>Zure bizi-seinaleen eta sintomen historiala. Jarraipenak eta neurketak kudeatzeko tresna nagusia.</p>
            </div>
        </div>

        <?php if ($mezua): ?><div class="alerta alerta-arrakasta"><?php echo $mezua; ?></div><?php endif; ?>
        <?php if ($errorea): ?><div class="alerta alerta-errorea"><?php echo $errorea; ?></div><?php endif; ?>


        <div class="kutxa-zuria-itzala padding-25">
            <div class="tarte-flex flex-erdia tarte-behea orri-azpiko-marra">
                <div>
                    <h3 class="izenburu-nabarmena marjina-gabea">Zure jarraipen historikoa</h3>
                    <p class="testu-gris-txikia">Zure bizi-seinaleen eta sintomen historiala</p>
                </div>
                <div class="talde-flex">
                    <label class="kurtsorea flex-erdia">
                        <input type="checkbox" id="ikusiEzohikoak" class="tarte-eskubia">
                        <span class="testu-arriskua-ezk-lodia">Ezohikoak soilik</span>
                    </label>
                </div>
            </div>

            <?php if (count($jarraipenak) > 0): ?>
                <div class="korritze-horizontala">
                    <table class="jarraipen-taula">
                        <thead>
                            <tr>
                                <th onclick="ordenatuTaula(0)" class="kurtsorea">Data <img src="../img/svg/sort.svg" alt="" class="ikono-txikia opazitatea-50"></th>
                                <th onclick="ordenatuTaula(1)" class="kurtsorea">Ordua <img src="../img/svg/sort.svg" alt="" class="ikono-txikia opazitatea-50"></th>
                                <th onclick="ordenatuTaula(2)" class="kurtsorea">SIS <img src="../img/svg/sort.svg" alt="" class="ikono-txikia opazitatea-50"></th>
                                <th onclick="ordenatuTaula(3)" class="kurtsorea">DIA <img src="../img/svg/sort.svg" alt="" class="ikono-txikia opazitatea-50"></th>
                                <th onclick="ordenatuTaula(4)" class="kurtsorea">Pultsua <img src="../img/svg/sort.svg" alt="" class="ikono-txikia opazitatea-50"></th>
                                <th onclick="ordenatuTaula(5)" class="kurtsorea">Altuera <img src="../img/svg/sort.svg" alt="" class="ikono-txikia opazitatea-50"></th>
                                <th onclick="ordenatuTaula(6)" class="kurtsorea">Pisua <img src="../img/svg/sort.svg" alt="" class="ikono-txikia opazitatea-50"></th>
                                <th style="min-width: 200px;">Oharrak / Sintomak</th>
                                <th style="min-width: 150px;">Ekintzak</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($jarraipenak as $n): ?>
                                <tr>
                                    <td><strong><?php echo date('Y/m/d', strtotime($n['erregistro_data'])); ?></strong></td>
                                    <td><small><?php echo date('H:i', strtotime($n['erregistro_data'])); ?></small></td>
                                    <td class="zentratu"><?php echo $n['tentsio_sistolikoa'] ?: '-'; ?></td>
                                    <td class="zentratu"><?php echo $n['tentsio_diastolikoa'] ?: '-'; ?></td>
                                    <td class="testu-urdina-lodia zentratu"><?php echo $n['pultsua_ppm'] ? $n['pultsua_ppm'] . ' <small>ppm</small>' : '-'; ?></td>
                                    <td class="zentratu"><?php echo $n['altuera'] ? $n['altuera'] . ' <small>cm</small>' : '-'; ?></td>
                                    <td class="zentratu"><?php echo $n['pisua_kg'] ? $n['pisua_kg'] . ' <small>kg</small>' : '-'; ?></td>
                                    <td class="testu-gris-iluna"><?php echo htmlspecialchars($n['oharrak'] ?? '-'); ?></td>
                                    <td class="ekintza-botoiak">
                                        <!-- Dokumentu berria igo -->
                                        <a href="dokumentua_igo.php?jarraipen_id=<?php echo $n['id']; ?>" class="botoi-ikonoa" title="Dokumentu berria igo">
                                            <img src="../img/svg/clipboard-pen.svg" alt="" class="ikono-ertaina">
                                        </a>
                                        <!-- Lotutako Dokumentuak ikusi -->
                                        <?php if ($n['dok_id']): ?>
                                            <a href="dokumentua_xehetasunak.php?id=<?php echo $n['id']; ?>" class="botoi-ikonoa" title="Lotutako Dokumentuak">
                                                <img src="../img/svg/search.svg" alt="" class="ikono-ertaina">
                                            </a>
                                        <?php else: ?>
                                            <span class="opazitatea-20"><img src="../img/svg/search.svg" alt="" class="ikono-ertaina"></span>
                                        <?php endif; ?>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>

                <!-- PAGINAZIO BOTOIAK -->
                <?php if ($orri_kopurua > 1): ?>
                    <div class="paginazioa flex-zentratu tarte-goia-20 talde-flex">
                        <a href="?orria=<?php echo max(1, $orria - 1); ?>" 
                           class="botoia botoi-ertza-txikia <?php echo ($orria <= 1) ? 'desaktibatuta' : ''; ?>">
                           <img src="../img/svg/chevron-left.svg" alt="" class="ikono-txikia"> Aurrekoak
                        </a>
                        <span class="orrialde-info">Orrialdea: <strong><?php echo $orria; ?></strong> / <?php echo $orri_kopurua; ?></span>
                        <a href="?orria=<?php echo min($orri_kopurua, $orria + 1); ?>" 
                           class="botoia botoi-ertza-txikia <?php echo ($orria >= $orri_kopurua) ? 'desaktibatuta' : ''; ?>">
                           Hurrengoak <img src="../img/svg/chevron-right.svg" alt="" class="ikono-txikia">
                        </a>
                    </div>
                <?php endif; ?>
            <?php else: ?>
                <div class="zentratu hutsartea-50 opazitatea-50">
                    <img src="../img/svg/inbox.svg" alt="" class="ikono-handia-48 tarte-behea">
                    <p>Ez dago neurketa erregistratuta paziente honentzat.</p>
                </div>
            <?php endif; ?>
        </div>

        <div class="marjina-goi-30 testua-erdian">
            <a href="index.php" class="botoia botoi-ertza flex-zentratua"><img src="../img/svg/arrow-left.svg" alt="" class="ikono-txikia marjina-esk-5"> Itzuli Panelera</a>
        </div>

    </main>

    <script src="../js/jarraipenak.js"></script>
<?php include_once '../php_orri_includeak/paziente_footer.php'; ?>
