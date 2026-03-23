<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';

$paziente_id = $_SESSION['erabiltzaile_id'];

// Lortu neurketen historia (pultsua barne)
$stmtNeurketak = $pdo->prepare("SELECT erregistro_data, glukosa_mg_dl, tentsio_sistolikoa, tentsio_diastolikoa, pisua_kg, pultsua_ppm, sintomak FROM Neurketak WHERE paziente_id = ? ORDER BY erregistro_data DESC");
$stmtNeurketak->execute([$paziente_id]);
$neurketak = $stmtNeurketak->fetchAll(PDO::FETCH_ASSOC);

$orri_izenburua = "Nire Neurketak - GOsasun";
$uneko_orria = "neurketak";
$css_pertsonalizatua = "pazienteak.css";

include_once '../php_includeak/paziente_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2><img src="../img/clipboard-pen.svg" alt="" class="ikono-ertaina marjina-esk-5"> Neurketen Historiala</h2>
            <p>Hemen zure osasun datuen jarraipena ikusi dezakezu. Neurketak kanpoko gailu bidez inportatzen dira.</p>
        </div>

        <div class="txartel-klinikoa marjina-goi-20">
            <h3><img src="../img/svg/line-chart.svg" alt="" class="ikono-1_5rem marjina-esk-10"> Azken Neurketak</h3>
            
            <?php if (count($neurketak) > 0): ?>
                <div class="korritze-horizontala">
                    <table class="neurketa-taula">
                        <thead>
                            <tr>
                                <th>Data</th>
                                <th>Glukosa</th>
                                <th>Tentsioa</th>
                                <th>Pultsua</th>
                                <th>Pisua</th>
                                <th>Sintomak / Oharrak</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($neurketak as $n): ?>
                                <tr>
                                    <td><strong><?php echo date('Y/m/d', strtotime($n['erregistro_data'])); ?></strong><br><small><?php echo date('H:i', strtotime($n['erregistro_data'])); ?></small></td>
                                    <td><?php echo $n['glukosa_mg_dl'] ? $n['glukosa_mg_dl'] . ' mg/dL' : '-'; ?></td>
                                    <td><?php echo ($n['tentsio_sistolikoa'] && $n['tentsio_diastolikoa']) ? $n['tentsio_sistolikoa'] . '/' . $n['tentsio_diastolikoa'] : '-'; ?></td>
                                    <td><?php echo $n['pultsua_ppm'] ? $n['pultsua_ppm'] . ' ppm' : '-'; ?></td>
                                    <td><?php echo $n['pisua_kg'] ? $n['pisua_kg'] . ' kg' : '-'; ?></td>
                                    <td class="testu-gris-iluna"><?php echo htmlspecialchars($n['sintomak'] ?? '-'); ?></td>
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
