<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Medikua') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$mediku_id = $_SESSION['erabiltzaile_id'];

// 1. Lortu esleitutako pazienteen zerrenda
$stmtP = $pdo->prepare("SELECT p.paziente_id, p.izena, p.abizenak, p.nan 
                       FROM Pazienteak p
                       JOIN Mediku_Paziente mp ON p.paziente_id = mp.paziente_id
                       WHERE mp.mediku_id = ?
                       ORDER BY p.abizenak ASC");
$stmtP->execute([$mediku_id]);
$pazienteak = $stmtP->fetchAll(PDO::FETCH_ASSOC);

// 2. Aukeratutako pazientearen neurketak lortu (baldin badago)
$paziente_id_aukera = $_GET['paziente_id'] ?? null;
$neurketak = [];
$paziente_izena = "";

if ($paziente_id_aukera) {
    // Ziurtatu medikuak sarbidea duela
    $stm_egiaztatu = $pdo->prepare("SELECT 1 FROM Mediku_Paziente WHERE mediku_id = ? AND paziente_id = ?");
    $stm_egiaztatu->execute([$mediku_id, $paziente_id_aukera]);
    
    if ($stm_egiaztatu->fetch()) {
        $stmtN = $pdo->prepare("SELECT erregistro_data, glukosa_mg_dl, tentsio_sistolikoa, tentsio_diastolikoa, pisua_kg, altuera, pultsua_ppm, sintomak FROM Neurketak WHERE paziente_id = ? ORDER BY erregistro_data DESC");
        $stmtN->execute([$paziente_id_aukera]);
        $neurketak = $stmtN->fetchAll(PDO::FETCH_ASSOC);
        
        // Lortu pazientearen izena izenbururako
        $stmtI = $pdo->prepare("SELECT izena, abizenak FROM Pazienteak WHERE paziente_id = ?");
        $stmtI->execute([$paziente_id_aukera]);
        $pInfo = $stmtI->fetch();
        $paziente_izena = $pInfo['izena'] . " " . $pInfo['abizenak'];
    }
}

$orri_izenburua = "Pazienteen Neurketak - GOsasun";
$uneko_orria = "neurketak";
$css_pertsonalizatua = "medikua_errezetak.css";

include_once '../php_includeak/mediku_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2><img src="../img/svg/clipboard-pen.svg" alt="" class="ikono-ertaina marjina-esk-5"> Pazienteen Neurketen Historia</h2>
            <p>Hautatu paziente bat bere bizi-seinaleen eta sintomen historiala ikusteko. Neurketak C# aplikazioaren bidez kudeatzen dira.</p>
        </div>

        <div class="inprimaki-edukiontzia form-edukiontzi-zuria">
            <form id="pazienteAukeraForm" action="neurketak.php" method="GET" class="neurketa-inprimakia">
                <div class="inprimaki-taldea marjina-behe-10">
                    <label for="paziente_id" class="etiketa-lodia">Hautatu Pazientea</label>
                    <div class="flex-tartea-10">
                        <select name="paziente_id" id="paziente_id" class="inprimaki-kontrola sarrera-handia" onchange="this.form.submit()">
                            <option value="">-- Hautatu pazientea --</option>
                            <?php foreach ($pazienteak as $p): ?>
                                <option value="<?php echo $p['paziente_id']; ?>" <?php echo ($paziente_id_aukera == $p['paziente_id']) ? 'selected' : ''; ?>>
                                    <?php echo htmlspecialchars($p['abizenak'] . ", " . $p['izena'] . " (" . $p['nan'] . ")"); ?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                        <button type="submit" class="botoia botoi-nagusia">Ikusi</button>
                    </div>
                </div>
            </form>
        </div>

        <?php if ($paziente_id_aukera): ?>
            <div class="txartel-klinikoa">
                <div class="flex-tartea-15 flex-erdia marjina-behe-15">
                    <h3 class="izenburu-urdina marjina-behe-0"><?php echo htmlspecialchars($paziente_izena); ?> -(r)en Neurketak</h3>
                    <a href="paziente_info.php?id=<?php echo $paziente_id_aukera; ?>" class="testu-esteka testu-gris-txikia">Ikusi fitxa osoa</a>
                </div>
                
                <?php if (count($neurketak) > 0): ?>
                    <div class="korritze-horizontala">
                        <table class="neurketa-taula">
                            <thead>
                                <tr>
                                    <th><?php echo $itzulpenak->dashboard_pazientea->data_taula; ?> / Ordua</th>
                                    <th><?php echo $itzulpenak->dashboard_pazientea->glukosa; ?></th>
                                    <th><?php echo $itzulpenak->dashboard_pazientea->tentsioa; ?></th>
                                    <th><?php echo $itzulpenak->dashboard_pazientea->pultsua; ?></th>
                                    <th><?php echo $itzulpenak->dashboard_pazientea->altuera; ?></th>
                                    <th><?php echo $itzulpenak->dashboard_pazientea->pisua; ?></th>
                                    <th><?php echo $itzulpenak->dashboard_pazientea->oharrak; ?></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($neurketak as $n): ?>
                                    <tr>
                                        <td><strong><?php echo date('Y/m/d', strtotime($n['erregistro_data'])); ?></strong><br><small><?php echo date('H:i', strtotime($n['erregistro_data'])); ?></small></td>
                                        <td><?php echo $n['glukosa_mg_dl'] ? $n['glukosa_mg_dl'] . ' mg/dL' : '-'; ?></td>
                                        <td><?php echo ($n['tentsio_sistolikoa'] && $n['tentsio_diastolikoa']) ? $n['tentsio_sistolikoa'] . '/' . $n['tentsio_diastolikoa'] : '-'; ?></td>
                                        <td><?php echo $n['pultsua_ppm'] ? $n['pultsua_ppm'] . ' ppm' : '-'; ?></td>
                                        <td><?php echo $n['altuera'] ? $n['altuera'] . ' cm' : '-'; ?></td>
                                        <td><?php echo $n['pisua_kg'] ? $n['pisua_kg'] . ' kg' : '-'; ?></td>
                                        <td class="testu-gris-iluna"><?php echo htmlspecialchars($n['sintomak'] ?? '-'); ?></td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                <?php else: ?>
                    <p class="zerrenda-hutsa">Ez dago neurketa erregistratuta paziente honentzat.</p>
                <?php endif; ?>
            </div>
        <?php else: ?>
            <div class="testua-erdian hutsartea-50 opazitatea-50">
                <img src="../img/svg/users.svg" alt="" class="ikono-handia-48 marjina-behe-15">
                <p>Hautatu paziente bat bere neurketen historia kargatzeko.</p>
            </div>
<?php endif; ?>
    <!-- JavaScript inclusion removed because form is gone -->
<?php include_once '../php_includeak/mediku_footer.php'; ?>
