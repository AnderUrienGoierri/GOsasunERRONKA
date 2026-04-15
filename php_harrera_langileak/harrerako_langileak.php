<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';

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
    $stmt = $pdo->query("SELECT * FROM V_Harrera WHERE aktibo = 1 ORDER BY abizenak ASC");
    $langileak = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    $errorea = "Errorea datuak eskuratzean: " . $e->getMessage();
}

$orri_izenburua = "Harrerako Langileak - GOsasun";
$uneko_orria = "harrerako_langileak";
$css_pertsonalizatua = "harrerako_langileak.css";

include_once '../php_orri_includeak/harrera_goiburua.php';
?>



    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/svg/users.svg" alt="" class="ikono-ertaina marjina-esk-5"> Harrerako Langileak</h2>
                <p>Kudeatu zentroko harrerako lantaldea.</p>
            </div>
        </div>

        <?php if ($mezua): ?>
            <div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($mezua); ?></div>
        <?php endif; ?>
        <?php if ($errorea): ?>
            <div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div>
        <?php endif; ?>

        <div class="flex-tartea-20">
            <a href="harrerako_langile_sortu.php" class="botoi-sortu marjina-behe-0">+ Langile Berria</a>
            <input type="text" id="bilaketaLangileak" class="inprimaki-kontrola bilaketa-barra gehienezko-zabalera-300" placeholder="Bilatu izena edo abizena...">
        </div>

        <div class="kutxa-zuria-itzala marjina-behe-20 padding-15">
            <div class="testu-lodia marjina-behe-10">Zutabeak Erakutsi/Ezkutatu:</div>
            <div class="flex-sareta-5">
                <label><input type="checkbox" checked onchange="toggleColumn(3, this, 'langileTaula')"> Argazkia</label>
                <label><input type="checkbox" checked onchange="toggleColumn(4, this, 'langileTaula')"> Email</label>
                <label><input type="checkbox" checked onchange="toggleColumn(5, this, 'langileTaula')"> Jaiotze Data</label>
                <label><input type="checkbox" checked onchange="toggleColumn(6, this, 'langileTaula')"> Txanda</label>
                <label><input type="checkbox" checked onchange="toggleColumn(7, this, 'langileTaula')"> Telefonoa</label>
            </div>
        </div>

        <div class="taula-inguratzailea">
            <table class="erabiltzaile-taula" id="langileTaula">
                <thead>
                    <tr>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(0)">ID <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(1)">Izena/Abizenak <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th>Ekintzak</th>
                        <th>Argazkia</th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(4)">Email <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(5)">Jaiotze Data <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(6)">Txanda <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(7)">Telefonoa <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                    </tr>
                </thead>
                <tbody>
                    <?php if(!empty($langileak)): ?>
                        <?php foreach ($langileak as $l): ?>
                            <tr>
                                <td class="identifikadorea">#<?php echo $l['langile_id']; ?></td>
                                <td>
                                    <a href="harrerako_langile_fitxa.php?id=<?php echo $l['langile_id']; ?>" class="esteka-langilea">
                                        <strong><?php echo htmlspecialchars($l['abizenak'] . ', ' . $l['izena']); ?></strong>
                                    </a>
                                </td>
                                <td>
                                    <div class="taula-ekintzak">
                                        <a href="harrerako_langile_fitxa.php?id=<?php echo $l['langile_id']; ?>" class="botoi-ikonoa" title="Ikusi Fitxa"><img src="../img/svg/eye.svg" alt="" class="ikono-ertaina"></a>
                                        <a href="harrerako_langile_editatu.php?id=<?php echo $l['langile_id']; ?>" class="botoi-ikonoa editatu-botoia" title="Editatu"><img src="../img/svg/pencil.svg" alt="" class="ikono-ertaina"></a>
                                        <?php if($_SESSION['erabiltzaile_id'] != $l['langile_id']): ?>
                                            <a href="harrerako_langile_ezabatu.php?id=<?php echo $l['langile_id']; ?>" class="botoi-ikonoa ezabatu-botoia" onclick="return confirm('Ziur ezabatu nahi duzula?');" title="Ezabatu"><img src="../img/svg/trash-2.svg" alt="" class="ikono-ertaina"></a>
                                        <?php else: ?>
                                            <span class="kolorea-grisa" title="Zure burua ezin duzu ezabatu"><img src="../img/svg/ban.svg" alt="" class="ikono-ertaina opazitatea-50"></span>
                                        <?php endif; ?>
                                    </div>
                                </td>
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
                                <td><?php echo htmlspecialchars($l['email']); ?></td>
                                <td><?php echo htmlspecialchars($l['jaiotze_data'] ?? '-'); ?></td>
                                <td><span class="etiketa"><?php echo htmlspecialchars($l['txanda'] ?? '-'); ?></span></td>
                                <td><?php echo htmlspecialchars($l['telefonoa'] ?? '-'); ?></td>
                            </tr>
                        <?php endforeach; ?>
                    <?php else: ?>
                        <tr><td colspan="5" class="testua-erdian">Ez dago harrerako langilerik erregistratuta.</td></tr>
                    <?php endif; ?>
                </tbody>
            </table>
        </div>
    </main>

    <script>
    function toggleColumn(colIndex, checkbox, tableId) {
        let table = document.getElementById(tableId);
        if (!table) return;
        let trs = table.querySelectorAll('tr');
        trs.forEach(tr => {
            let cells = tr.querySelectorAll('th, td');
            if(cells.length > colIndex) {
                 cells[colIndex].style.display = checkbox.checked ? '' : 'none';
            }
        });
    }
    </script>
<?php $js_gehigarria = ['harrera_langileak.js'];
include_once '../php_orri_includeak/harrera_footer.php';
?>


