<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';

$mezua = '';
$errorea = '';

// Kudeatu mezua edo errorea (sortu/editatu/ezabatu orrietatik datorrena)
if (isset($_GET['msg'])) {
    $mezua = $_GET['msg'];
}
if (isset($_GET['error'])) {
    $errorea = $_GET['error'];
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
    $errorea = "Errorea datuak eskuratzean: " . $e->getMessage();
}

$orri_izenburua = "Harrerako Langileak - GOsasun";
$uneko_orria = "harrerako_langileak";
$css_pertsonalizatua = "harrerako_langileak.css";

include_once '../php_includeak/harrera_goiburua.php';
?>



    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2><img src="../img/svg/users.svg" alt="" class="ikono-ertaina marjina-esk-5"> Harrerako Langileak</h2>
            <p>Kudeatu zentroko harrerako lantaldea.</p>
        </div>

        <?php if ($mezua): ?>
            <div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($mezua); ?></div>
        <?php endif; ?>
        <?php if ($errorea): ?>
            <div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div>
        <?php endif; ?>

        <div class="flex-tartea-20 marjina-behe-20">
            <a href="harrerako_langile_sortu.php" class="botoia botoi-sortu marjina-behe-0" >+ Langile Berria</a>
            <input type="text" id="bilaketaLangileak" class="inprimaki-kontrola bilaketa-barra" placeholder="Bilatu izena edo abizena...">
        </div>

        <div class="taula-inguratzailea">
            <table class="paziente-taula" id="langileTaula">
                <thead>
                    <tr>
                        <th>Argazkia</th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(1)">ID <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(2)">Izena <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(3)">Emaila <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th>Ekintzak</th>
                    </tr>
                </thead>
                <taula_gorputza>
                    <?php if(!empty($langileak)): ?>
                        <?php foreach ($langileak as $l): ?>
                            <tr>
                                <td class="zabalera-50">
                                    <?php 
                                    $irudia_bide = htmlspecialchars($l['irudia'] ?? 'img/lehenetsia_harrera.png');
                                    if (strpos($irudia_bide, 'img/') === 0 && strpos($irudia_bide, 'img/png/') === false && strpos($irudia_bide, 'img/svg/') === false) {
                                        $irudia_bide = str_replace('img/', 'img/png/', $irudia_bide);
                                    }
                                    ?>
                                    <img src="../<?php echo $irudia_bide; ?>" 
                                         alt="Langilearen argazkia" class="irudia-txikia">
                                </td>
                                <td>#<?php echo $l['langile_id']; ?></td>
                                <td>
                                    <a href="harrerako_langile_fitxa.php?id=<?php echo $l['langile_id']; ?>" class="esteka-langilea">
                                        <strong><?php echo htmlspecialchars($l['abizenak'] . ', ' . $l['izena']); ?></strong>
                                    </a>
                                </td>
                                <td><?php echo htmlspecialchars($l['email']); ?></td>
                                <td>
                                    <div class="taula-ekintzak">
                                        <a href="harrerako_langile_editatu.php?id=<?php echo $l['langile_id']; ?>" class="botoi-ikonoa" title="Editatu"><img src="../img/svg/pencil.svg" alt="" class="ikono-ertaina marjina-esk-5"></a>
                                        <!-- Administratzaile nagusiak bakarrik ezabatu beharko luke normalean, baina baldintzak onartzen badu gehituko dugu. Uneko saioa bera bada ezin du ezabatu -->
                                        <?php if($_SESSION['erabiltzaile_id'] != $l['langile_id']): ?>
                                            <a href="harrerako_langile_ezabatu.php?id=<?php echo $l['langile_id']; ?>" class="botoi-ikonoa" onclick="return confirm('Ziur ezabatu nahi duzula?');" title="Ezabatu"><img src="../img/svg/trash-2.svg" alt="" class="ikono-ertaina marjina-esk-5"></a>
                                        <?php else: ?>
                                            <span class="kolorea-grisa" title="Zure burua ezin duzu ezabatu"><img src="../img/svg/ban.svg" alt="" class="ikono-ertaina-gardena-txikia"></span>
                                        <?php endif; ?>
                                    </div>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    <?php else: ?>
                        <tr><td colspan="5" class="testua-erdian">Ez dago harrerako langilerik erregistratuta.</td></tr>
                    <?php endif; ?>
                </taula_gorputza>
            </table>
        </div>
    </main>

<?php $js_gehigarria = ['harrera_langileak.js'];
include_once '../php_includeak/harrera_footer.php'; 
?>


