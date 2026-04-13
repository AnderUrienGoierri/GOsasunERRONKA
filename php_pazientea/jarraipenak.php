<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';

$paziente_id = $_SESSION['erabiltzaile_id'];

// Lortu neurketen historia (pultsua eta altuera barne)
$stmtjarraipenak = $pdo->prepare("SELECT erregistro_data, tentsio_sistolikoa, tentsio_diastolikoa, pisua_kg, altuera, pultsua_ppm, oharrak FROM jarraipenak WHERE paziente_id = ? ORDER BY erregistro_data DESC");
$stmtjarraipenak->execute([$paziente_id]);
$jarraipenak = $stmtjarraipenak->fetchAll(PDO::FETCH_ASSOC);

$orri_izenburua = "Nire jarraipenak - GOsasun";
$uneko_orria = "jarraipenak";
$css_pertsonalizatua = "pazienteak.css";

include_once '../php_includeak/paziente_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2><img src="../img/svg/clipboard-pen.svg" alt="" class="ikono-ertaina marjina-esk-5"> Neurketen Historiala</h2>
            <p>Hemen zure osasun datuen jarraipena ikusi dezakezu. jarraipenak kanpoko gailu bidez inportatzen dira.</p>
        </div>

        <div class="txartel-klinikoa">
            <h3><img src="../img/svg/line-chart.svg" alt="" class="ikono-1_5rem marjina-esk-10"> Azken jarraipenak</h3>
            
            <?php if (count($jarraipenak) > 0): ?>
                <div class="korritze-horizontala">
                    <table class="neurketa-taula">
                        <thead>
                            <tr>
                                <th><?php echo $itzulpenak->dashboard_pazientea->data_taula; ?></th>
                                <th><?php echo $itzulpenak->dashboard_pazientea->tentsioa; ?></th>
                                <th><?php echo $itzulpenak->dashboard_pazientea->pultsua; ?></th>
                                <th><?php echo $itzulpenak->dashboard_pazientea->altuera; ?></th>
                                <th><?php echo $itzulpenak->dashboard_pazientea->pisua; ?></th>
                                <th><?php echo $itzulpenak->dashboard_pazientea->oharrak; ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($jarraipenak as $n): ?>
                                <tr>
                                    <td><strong><?php echo date('Y/m/d', strtotime($n['erregistro_data'])); ?></strong><br><small><?php echo date('H:i', strtotime($n['erregistro_data'])); ?></small></td>
                                    <td><?php echo ($n['tentsio_sistolikoa'] && $n['tentsio_diastolikoa']) ? $n['tentsio_sistolikoa'] . '/' . $n['tentsio_diastolikoa'] : '-'; ?></td>
                                    <td><?php echo $n['pultsua_ppm'] ? $n['pultsua_ppm'] . ' ppm' : '-'; ?></td>
                                    <td><?php echo $n['altuera'] ? $n['altuera'] . ' cm' : '-'; ?></td>
                                    <td><?php echo $n['pisua_kg'] ? $n['pisua_kg'] . ' kg' : '-'; ?></td>
                                    <td class="testu-gris-iluna"><?php echo htmlspecialchars($n['oharrak'] ?? '-'); ?></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            <?php else: ?>
                <div class="zerrenda-hutsa">
                    <img src="../img/svg/clipboard-list.svg" alt="" class="ikono-handia-48 marjina-behe-15 opazitatea-50">
                    <p>Oraindik ez duzu neurketarik erregistratuta.</p>
                </div>
            <?php endif; ?>
        </div>
        
        <div class="marjina-goi-30 testua-erdian">
            <a href="index.php" class="botoia botoi-ertza">Itzuli Panelera</a>
        </div>
    </main>

<?php include_once '../php_includeak/paziente_footer.php'; ?>
