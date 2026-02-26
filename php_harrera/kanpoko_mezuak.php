<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';

// Lortu mezu guztiak
$stmt = $pdo->query("SELECT * FROM V_Kanpoko_Mezuak ORDER BY bidalketa_data DESC");
$mezuak = $stmt->fetchAll(PDO::FETCH_ASSOC);

$orri_izenburua = "Kanpoko Mezuak - GOsasun";
$uneko_orria = "kanpoko_mezuak";
$css_pertsonalizatua = "mezuak.css";

include_once '../php_includeak/harrera_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2><img src="../img/mail.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> Kanpoko Mezuak</h2>
            <p>Webgune publikoko kontaktua orritik jasotako mezuak.</p>
        </div>

        <div class="mezu-zerrenda-edukiontzia">
            <?php if (count($mezuak) > 0): ?>
                <table class="taula-modernoa">
                    <thead>
                        <tr>
                            <th>Data</th>
                            <th>Izena</th>
                            <th>Email</th>
                            <th>Egoera</th>
                            <th>Ekintzak</th>
                        </tr>
                    </thead>
                    <taula_gorputza>
                        <?php foreach ($mezuak as $m): ?>
                            <tr class="<?php echo $m['irakurrita'] ? '' : 'mezu-berria'; ?>">
                                <td><?php echo date('Y/m/d H:i', strtotime($m['bidalketa_data'])); ?></td>
                                <td><?php echo htmlspecialchars($m['izena']); ?></td>
                                <td><?php echo htmlspecialchars($m['email']); ?></td>
                                <td>
                                    <?php if ($m['erantzuna']): ?>
                                        <span class="egoera-etiketa egoera-erantzunda">Erantzunda</span>
                                    <?php elseif ($m['irakurrita']): ?>
                                        <span class="egoera-etiketa egoera-irakurrita">Irakurrita</span>
                                    <?php else: ?>
                                        <span class="egoera-etiketa egoera-berria">Berria</span>
                                    <?php endif; ?>
                                </td>
                                <td>
                                    <a href="mezu_xehetasuna.php?id=<?php echo $m['mezu_id']; ?>&mota=kanpoko" class="botoia botoi-xehetasuna botoi-txikia">Ikusi / Erantzun</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </taula_gorputza>
                </table>
            <?php else: ?>
                <div class="egoera-hutsa">
                    <div class="ikono-hutsa">📩</div>
                    <h3>Ez dago mezurik</h3>
                    <p>Mementoz ez da kanpoko mezurik jaso.</p>
                </div>
            <?php endif; ?>
        </div>
    </main>

<?php include_once '../php_includeak/harrera_footer.php';
?>


