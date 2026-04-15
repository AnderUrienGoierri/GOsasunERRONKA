<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$mezua = '';
$errorea = '';

// Ezabatu medikua
if (isset($_GET['delete_id'])) {
    try {
        $mid = $_GET['delete_id'];
        $stmt = $pdo->prepare("DELETE FROM Erabiltzaileak WHERE id = ?");
        $stmt->execute([$mid]);
        $mezua = "Medikua arrakastaz ezabatu da.";
    } catch (PDOException $e) {
        $errorea = "Errorea ezabatzean: " . $e->getMessage();
    }
}

// Langileen zerrenda
$stmt = $pdo->prepare("SELECT * FROM V_Osasun_Langilea ORDER BY abizenak ASC");
$stmt->execute();
$langileak = $stmt->fetchAll(PDO::FETCH_ASSOC);

$orri_izenburua = "Langileak Kudeatu - GOsasun";
$uneko_orria = "medikuak";
$css_pertsonalizatua = 'osasun_langileak.css';

include_once '../php_orri_includeak/harrera_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/svg/users.svg" alt="" class="ikono-ertaina marjina-esk-5"> Osasun Langileen Kudeaketa</h2>
                <p>Sortu, editatu edo ezabatu zentroko osasun langile guztiak.</p>
            </div>
        </div>

        <?php if ($mezua): ?>
            <div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($mezua); ?></div>
        <?php endif; ?>
        <?php if ($errorea): ?>
            <div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div>
        <?php endif; ?>

        <div class="flex-tartea-20">
            <a href="langile_sortu.php" class="botoi-sortu marjina-behe-0">+ Langile Berria</a>
            <input type="text" id="bilaketaMedikuak" class="inprimaki-kontrola bilaketa-barra gehienezko-zabalera-300" placeholder="Bilatu izena edo espezialitatea..." >
        </div>

        <div class="kutxa-zuria-itzala marjina-behe-20 padding-15">
            <div class="testu-lodia marjina-behe-10">Zutabeak Erakutsi/Ezkutatu:</div>
            <div class="flex-sareta-5">
                <label><input type="checkbox" checked onchange="toggleColumn(3, this, 'medikuTaula')"> Argazkia</label>
                <label><input type="checkbox" checked onchange="toggleColumn(4, this, 'medikuTaula')"> Email</label>
                <label><input type="checkbox" checked onchange="toggleColumn(5, this, 'medikuTaula')"> Espezialitatea</label>
                <label><input type="checkbox" checked onchange="toggleColumn(6, this, 'medikuTaula')"> Elkargokide Zkia.</label>
                <label><input type="checkbox" checked onchange="toggleColumn(7, this, 'medikuTaula')"> Telefonoa</label>
                <label><input type="checkbox" checked onchange="toggleColumn(8, this, 'medikuTaula')"> Kontsulta</label>
                <label><input type="checkbox" checked onchange="toggleColumn(9, this, 'medikuTaula')"> Lanaldia</label>
            </div>
        </div>

        <div class="taula-inguratzailea">
            <table class="erabiltzaile-taula" id="medikuTaula">
                <thead>
                    <tr>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(0)">ID <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(1)">Izena <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th>Ekintzak</th>
                        <th>Argazkia</th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(4)">Email <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(5)">Espezialitatea <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(6)">Elkargokide Zkia. <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(7)">Telefonoa <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(8)">Kontsulta <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(9)">Lanaldia <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($langileak as $l): ?>
                        <tr>
                            <td class="identifikadorea">#<?php echo $l['langile_id']; ?></td>
                            <td>
                                <strong><a href="langile_fitxa.php?id=<?php echo $l['langile_id']; ?>" class="esteka-nagusia"><?php echo htmlspecialchars($l['abizenak'] . ', ' . $l['izena']); ?></a></strong>
                            </td>
                            <td>
                                <div class="taula-ekintzak">
                                    <a href="langile_fitxa.php?id=<?php echo $l['langile_id']; ?>" class="botoi-ikonoa" title="Ikusi Fitxa"><img src="../img/svg/eye.svg" alt="" class="ikono-ertaina"></a>
                                    <a href="hitzorduak.php?filter_langile_id=<?php echo $l['langile_id']; ?>" class="botoi-ikonoa hitzordu-botoia" title="Ikusi Agenda"><img src="../img/svg/calendar-days.svg" alt="" class="ikono-ertaina"></a>
                                    <a href="langile_editatu.php?id=<?php echo $l['langile_id']; ?>" class="botoi-ikonoa editatu-botoia" title="Editatu"><img src="../img/svg/pencil.svg" alt="" class="ikono-ertaina"></a>
                                    <a href="osasun_langileak.php?delete_id=<?php echo $l['langile_id']; ?>" class="botoi-ikonoa ezabatu-botoia" onclick="return confirm('Ziur zaude langile hau ezabatu nahi duzula? Ezabatzean bere erabiltzaile kontua ere ezabatuko da.');" title="Ezabatu"><img src="../img/svg/trash-2.svg" alt="" class="ikono-ertaina"></a>
                                </div>
                            </td>
                            <td class="zabalera-50">
                                <?php 
                                $irudia_bide = htmlspecialchars($l['irudia'] ?? 'img/lehenetsia_medikua.png');
                                if (strpos($irudia_bide, 'img/') === 0 && strpos($irudia_bide, 'img/png/') === false && strpos($irudia_bide, 'img/svg/') === false) {
                                    $irudia_bide = str_replace('img/', 'img/png/', $irudia_bide);
                                }
                                ?>
                                <img src="../<?php echo $irudia_bide; ?>" 
                                     alt="Argazkia" class="irudia-txikia">
                            </td>
                            <td><small><?php echo htmlspecialchars($l['email']); ?></small></td>
                            <td><span class="etiketa"><?php echo htmlspecialchars($l['espezialitatea']); ?></span></td>
                            <td><?php echo htmlspecialchars($l['elkargokide_zenbakia']); ?></td>
                            <td><?php echo htmlspecialchars($l['telefonoa'] ?? '-'); ?></td>
                            <td><?php echo htmlspecialchars($l['kontsulta'] ?? '-'); ?></td>
                            <td><?php echo htmlspecialchars($l['lanaldia'] ?? '-'); ?></td>
                        </tr>
                    <?php endforeach; ?>
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
<?php $js_gehigarria = ['harrera_medikuak.js'];
include_once '../php_orri_includeak/harrera_footer.php';
?>


