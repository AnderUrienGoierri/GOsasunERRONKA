<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$mezua = '';
$errorea = '';

// Kudeatu pazientearen ezabatzea
if (isset($_GET['delete_id'])) {
    try {
        $pdo->beginTransaction();
        $pid = $_GET['delete_id'];
        
        // Erabiltzailea ezabatu (on delete cascade denez, pazientea ere badoa)
        $stmt = $pdo->prepare("DELETE FROM Erabiltzaileak WHERE id = ?");
        $stmt->execute([$pid]);
        
        $pdo->commit();
        $mezua = "Pazientea arrakastaz ezabatu da.";
    } catch (PDOException $e) {
        $pdo->rollBack();
        $errorea = "Errorea ezabatzean: " . $e->getMessage();
    }
}

// Pazienteen zerrenda lortu
$stmt = $pdo->prepare("SELECT * FROM V_Pazientea ORDER BY abizenak ASC");
$stmt->execute();
$pazienteak = $stmt->fetchAll(PDO::FETCH_ASSOC);

$orri_izenburua = "Pazienteak Kudeatu - GOsasun";
$uneko_orria = "pazienteak";
$css_pertsonalizatua = "pazienteak.css";

include_once '../php_orri_includeak/harrera_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/svg/users.svg" alt="" class="ikono-ertaina marjina-esk-5"> Pazienteen Kudeaketa</h2>
                <p>Sortu, editatu edo ezabatu zentroko paziente guztiak.</p>
            </div>
        </div>

        <?php if ($mezua): ?>
            <div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($mezua); ?></div>
        <?php endif; ?>
        <?php if ($errorea): ?>
            <div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div>
        <?php endif; ?>

        <div class="flex-tartea-20">
            <a href="paziente_sortu.php" class="botoi-sortu marjina-behe-0" >+ Paziente Berria</a>
            <input type="text" id="bilaketaPazienteak" class="inprimaki-kontrola bilaketa-barra gehienezko-zabalera-300" placeholder="Bilatu izena edo abizena..." >
        </div>

        <div class="kutxa-zuria-itzala marjina-behe-20 padding-15">
            <div class="testu-lodia marjina-behe-10">Zutabeak Erakutsi/Ezkutatu:</div>
            <div class="flex-sareta-5">
                <label><input type="checkbox" checked onchange="toggleColumn(3, this, 'pazienteTaula')"> Argazkia</label>
                <label><input type="checkbox" checked onchange="toggleColumn(4, this, 'pazienteTaula')"> Email</label>
                <label><input type="checkbox" checked onchange="toggleColumn(5, this, 'pazienteTaula')"> NAN</label>
                <label><input type="checkbox" checked onchange="toggleColumn(6, this, 'pazienteTaula')"> Sexua</label>
                <label><input type="checkbox" checked onchange="toggleColumn(7, this, 'pazienteTaula')"> Jaiotze Data</label>
                <label><input type="checkbox" checked onchange="toggleColumn(8, this, 'pazienteTaula')"> Telefonoa</label>
                <label><input type="checkbox" checked onchange="toggleColumn(9, this, 'pazienteTaula')"> Helbidea</label>
                <label><input type="checkbox" checked onchange="toggleColumn(10, this, 'pazienteTaula')"> P.K.</label>
                <label><input type="checkbox" checked onchange="toggleColumn(11, this, 'pazienteTaula')"> Herria</label>
                <label><input type="checkbox" checked onchange="toggleColumn(12, this, 'pazienteTaula')"> O.T.</label>
                <label><input type="checkbox" checked onchange="toggleColumn(13, this, 'pazienteTaula')"> Egoera</label>
            </div>
        </div>

        <div class="taula-inguratzailea">
            <table class="erabiltzaile-taula" id="pazienteTaula">
                <thead>
                    <tr>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(0)">ID <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(1)">Izena/Abizenak <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th>Ekintzak</th>
                        <th>Argazkia</th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(4)">Email <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(5)">NAN <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(6)">Sexua <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(7)">Jaiotze Data <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(8)">Telefonoa <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(9)">Helbidea <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(10)">P.K. <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(11)">Herria <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(12)">O.T. <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(13)">Egoera <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($pazienteak as $p): ?>
                        <tr>
                            <td class="identifikadorea">#<?php echo $p['paziente_id']; ?></td>
                            <td>
                                <strong><a href="paziente_fitxa.php?id=<?php echo $p['paziente_id']; ?>" class="esteka-nagusia"><?php echo htmlspecialchars($p['abizenak'] . ', ' . $p['izena']); ?></a></strong>
                            </td>
                            <td>
                                <div class="taula-ekintzak">
                                    <a href="paziente_fitxa.php?id=<?php echo $p['paziente_id']; ?>" class="botoi-ikonoa" title="Ikusi Fitxa"><img src="../img/svg/eye.svg" alt="" class="ikono-ertaina"></a>
                                    <a href="hitzorduak.php?filter_paziente_id=<?php echo $p['paziente_id']; ?>" class="botoi-ikonoa hitzordu-botoia" title="Hitzorduak"><img src="../img/svg/calendar-days.svg" alt="" class="ikono-ertaina"></a>
                                    <a href="paziente_editatu.php?id=<?php echo $p['paziente_id']; ?>" class="botoi-ikonoa editatu-botoia" title="Editatu"><img src="../img/svg/pencil.svg" alt="" class="ikono-ertaina"></a>
                                    <a href="pazienteak.php?delete_id=<?php echo $p['paziente_id']; ?>" class="botoi-ikonoa ezabatu-botoia" onclick="return confirm('Ziur zaude paziente hau eta bere datu guztiak ezabatu nahi dituzula?');" title="Ezabatu"><img src="../img/svg/trash-2.svg" alt="" class="ikono-ertaina"></a>
                                </div>
                            </td>
                            <td class="zabalera-50">
                                <?php 
                                $irudia_bide = htmlspecialchars($p['irudia'] ?? 'img/lehenetsia_pazientea.png');
                                if (strpos($irudia_bide, 'img/') === 0 && strpos($irudia_bide, 'img/png/') === false && strpos($irudia_bide, 'img/svg/') === false) {
                                    $irudia_bide = str_replace('img/', 'img/png/', $irudia_bide);
                                }
                                ?>
                                <img src="../<?php echo $irudia_bide; ?>" 
                                     alt="ID" class="irudia-txikia">
                            </td>
                            <td><small><?php echo htmlspecialchars($p['email']); ?></small></td>
                            <td><?php echo htmlspecialchars($p['nan']); ?></td>
                            <td><?php echo htmlspecialchars($p['sexua'] ?? '-'); ?></td>
                            <td><?php echo htmlspecialchars($p['jaiotze_data'] ?? '-'); ?></td>
                            <td><?php echo htmlspecialchars($p['telefonoa'] ?? '-'); ?></td>
                            <td><?php echo htmlspecialchars($p['helbidea'] ?? '-'); ?></td>
                            <td><?php echo htmlspecialchars($p['posta_kodea'] ?? '-'); ?></td>
                            <td><?php echo htmlspecialchars($p['herria'] ?? '-'); ?></td>
                            <td>
                                <?php $odol = $p['odol_taldea'] ?? '-'; ?>
                                <span class="etiketa"><?php echo htmlspecialchars($odol); ?></span>
                            </td>
                            <td>
                                <?php $egoera = $p['egoera_klinikoa'] ?? 'Alta'; ?>
                                <span class="egoera-<?php echo strtolower($egoera); ?>">
                                    <?php echo $egoera; ?>
                                </span>
                            </td>
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
<?php $js_gehigarria = ['harrera_pazienteak.js'];
include_once '../php_orri_includeak/harrera_footer.php';
?>


