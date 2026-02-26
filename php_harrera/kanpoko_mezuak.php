<?php
$base_path = '../';
session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';

// Lortu mezu guztiak
$stmt = $pdo->query("SELECT * FROM V_Kanpoko_Mezuak ORDER BY bidalketa_data DESC");
$mezuak = $stmt->fetchAll(PDO::FETCH_ASSOC);

$page_title = "Kanpoko Mezuak - GOsasun";
$current_page = "kanpoko_mezuak";
$custom_css = "mezuak.css";

include_once '../php_includeak/harrera_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2>📧 Kanpoko Mezuak</h2>
            <p>Webgune publikoko kontaktua orritik jasotako mezuak.</p>
        </div>

        <div class="mezu-zerrenda-edukiontzia">
            <?php $base_path = '../';
if (count($mezuak) > 0): ?>
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
                    <tbody>
                        <?php $base_path = '../';
foreach ($mezuak as $m): ?>
                            <tr class="<?php $base_path = '../';
echo $m['irakurrita'] ? '' : 'mezu-berria'; ?>">
                                <td><?php $base_path = '../';
echo date('Y/m/d H:i', strtotime($m['bidalketa_data'])); ?></td>
                                <td><?php $base_path = '../';
echo htmlspecialchars($m['izena']); ?></td>
                                <td><?php $base_path = '../';
echo htmlspecialchars($m['email']); ?></td>
                                <td>
                                    <?php $base_path = '../';
if ($m['erantzuna']): ?>
                                        <span class="egoera-etiketa egoera-erantzunda">Erantzunda</span>
                                    <?php $base_path = '../';
elseif ($m['irakurrita']): ?>
                                        <span class="egoera-etiketa egoera-irakurrita">Irakurrita</span>
                                    <?php $base_path = '../';
else: ?>
                                        <span class="egoera-etiketa egoera-berria">Berria</span>
                                    <?php $base_path = '../';
endif; ?>
                                </td>
                                <td>
                                    <a href="mezu_xehetasuna.php?id=<?php $base_path = '../';
echo $m['mezu_id']; ?>&mota=kanpoko" class="botoia botoi-xehetasuna botoi-txikia">Ikusi / Erantzun</a>
                                </td>
                            </tr>
                        <?php $base_path = '../';
endforeach; ?>
                    </tbody>
                </table>
            <?php $base_path = '../';
else: ?>
                <div class="egoera-hutsa">
                    <div class="ikono-hutsa">📩</div>
                    <h3>Ez dago mezurik</h3>
                    <p>Mementoz ez da kanpoko mezurik jaso.</p>
                </div>
            <?php $base_path = '../';
endif; ?>
        </div>
    </main>

<?php
$base_path = '../';
include_once '../php_includeak/harrera_footer.php';
?>


