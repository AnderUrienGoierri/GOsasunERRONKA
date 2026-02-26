<?php
$base_path = '../';
session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';

$msg = '';
$error = '';

// Kudeatu mezua edo errorea (sortu/editatu/ezabatu orrietatik datorrena)
if (isset($_GET['msg'])) {
    $msg = $_GET['msg'];
}
if (isset($_GET['error'])) {
    $error = $_GET['error'];
}

// Harrerako langileak eskuratu formalki
try {
    $stmt = $pdo->query("SELECT hl.langile_id, hl.izena, hl.abizenak, hl.irudia, e.email 
                         FROM Harrerako_Langileak hl 
                         JOIN Erabiltzaileak e ON hl.langile_id = e.erabiltzaile_id 
                         WHERE e.aktibo = 1
                         ORDER BY hl.abizenak ASC");
    $langileak = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    $error = "Errorea datuak eskuratzean: " . $e->getMessage();
}

$page_title = "Harrerako Langileak - GOsasun";
$current_page = "harrerako_langileak";
$custom_css = "harrerako_langileak.css";

include_once '../php_includeak/harrera_goiburua.php';
?>



    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2><img src="../img/users.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> Harrerako Langileak</h2>
            <p>Kudeatu zentroko harrerako lantaldea.</p>
        </div>

        <?php $base_path = '../';
if ($msg): ?>
            <div class="alerta alerta-arrakasta"><?php $base_path = '../';
echo htmlspecialchars($msg); ?></div>
        <?php $base_path = '../';
endif; ?>
        <?php $base_path = '../';
if ($error): ?>
            <div class="alerta alerta-errorea"><?php $base_path = '../';
echo htmlspecialchars($error); ?></div>
        <?php $base_path = '../';
endif; ?>

        <div class="flex-tartea-20">
            <a href="harrerako_langile_sortu.php" class="botoia botoi-sortu marjina-behe-0" >+ Langile Berria</a>
            <input type="text" id="bilaketaLangileak" class="inprimaki-kontrola bilaketa-barra" placeholder="Bilatu izena edo abizena...">
        </div>

        <div class="taula-inguratzailea">
            <table class="paziente-taula" id="langileTaula">
                <thead>
                    <tr>
                        <th>Argazkia</th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(1)">ID ↕️</th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(2)">Izena ↕️</th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(3)">Emaila ↕️</th>
                        <th>Ekintzak</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $base_path = '../';
if(!empty($langileak)): ?>
                        <?php $base_path = '../';
foreach ($langileak as $l): ?>
                            <tr>
                                <td class="zabalera-50">
                                    <img src="../<?php $base_path = '../';
echo htmlspecialchars($l['irudia'] ?? 'img/lehenetsia_harrera.png'); ?>" 
                                         alt="Langilearen argazkia" class="irudia-txikia">
                                </td>
                                <td>#<?php $base_path = '../';
echo $l['langile_id']; ?></td>
                                <td>
                                    <strong><?php $base_path = '../';
echo htmlspecialchars($l['abizenak'] . ', ' . $l['izena']); ?></strong>
                                </td>
                                <td><?php $base_path = '../';
echo htmlspecialchars($l['email']); ?></td>
                                <td>
                                    <div class="taula-ekintzak">
                                        <a href="harrerako_langile_editatu.php?id=<?php $base_path = '../';
echo $l['langile_id']; ?>" class="botoi-ikonoa" title="Editatu"><img src="../img/pencil.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"></a>
                                        <!-- Administratzaile nagusiak bakarrik ezabatu beharko luke normalean, baina baldintzak onartzen badu gehituko dugu. Uneko saioa bera bada ezin du ezabatu -->
                                        <?php $base_path = '../';
if($_SESSION['erabiltzaile_id'] != $l['langile_id']): ?>
                                            <a href="harrerako_langile_ezabatu.php?id=<?php $base_path = '../';
echo $l['langile_id']; ?>" class="botoi-ikonoa" onclick="return confirm('Ziur ezabatu nahi duzula?');" title="Ezabatu"><img src="../img/trash-2.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"></a>
                                        <?php $base_path = '../';
else: ?>
                                            <span class="kolorea-grisa" title="Zure burua ezin duzu ezabatu">🚫</span>
                                        <?php $base_path = '../';
endif; ?>
                                    </div>
                                </td>
                            </tr>
                        <?php $base_path = '../';
endforeach; ?>
                    <?php $base_path = '../';
else: ?>
                        <tr><td colspan="5" class="testua-erdian">Ez dago harrerako langilerik erregistratuta.</td></tr>
                    <?php $base_path = '../';
endif; ?>
                </tbody>
            </table>
        </div>
    </main>

<?php 
$base_path = '../';
$extra_js = ['harrera_langileak.js'];
include_once '../php_includeak/harrera_footer.php'; 
?>


