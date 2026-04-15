<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$mezua = '';
$errorea = '';

// 1. Lortu mediku eta pazienteen zerrendak (dropdown-ak egiteko)
// Medikuen zerrenda kargatu
$medikuak = $pdo->query("
    SELECT ol.id as osasun_langile_id, e.izena, e.abizenak, ol.espezialitatea 
    FROM osasun_langileak ol
    JOIN erabiltzaileak e ON ol.id = e.id 
    ORDER BY e.abizenak ASC
")->fetchAll(PDO::FETCH_ASSOC);

// Pazienteen zerrenda kargatu
$pazienteak = $pdo->query("
    SELECT p.id as paziente_id, e.izena, e.abizenak, e.nan 
    FROM Pazienteak p 
    JOIN erabiltzaileak e ON p.id = e.id 
    ORDER BY e.abizenak ASC
")->fetchAll(PDO::FETCH_ASSOC);

// 2. Kudeatu mezuak eta ezabaketak
if (isset($_GET['delete_id'])) {
    $d_id = $_GET['delete_id'];
    try {
        $stmt_del = $pdo->prepare("DELETE FROM Hitzorduak WHERE id = ?");
        $stmt_del->execute([$d_id]);
        $mezua = "Hitzordua ezabatu da.";
    } catch (PDOException $e) {
        $errorea = "Errorea ezabatzean: " . $e->getMessage();
    }
}
if (isset($_GET['msg'])) {
    $mezua = $_GET['msg'];
}
if (isset($_GET['error'])) {
    $errorea = $_GET['error'];
}

// 3. Lortu hitzorduak (Zerrenda orokorra edo iragaziak)
$filter_mediku_id = $_GET['filter_mediku_id'] ?? '';
$filter_paziente_id = $_GET['filter_paziente_id'] ?? '';
$bista = $_GET['bista'] ?? 'hilabetea';

// Egutegiaren logika
$hilabetea = isset($_GET['hilabetea']) ? intval($_GET['hilabetea']) : date('m');
$urtea = isset($_GET['urtea']) ? intval($_GET['urtea']) : date('Y');
$gaurko_data = date('Y-m-d');

$lehen_egun_timestamp = mktime(0, 0, 0, $hilabetea, 1, $urtea);
$egun_kopurua = date('t', $lehen_egun_timestamp);
$asteko_lehen_eguna = date('N', $lehen_egun_timestamp); // 1 (Mon) to 7 (Sun)
$hilabete_izena = date('M Y', $lehen_egun_timestamp);

$aurreko_hilabetea = date('m', strtotime('-1 month', $lehen_egun_timestamp));
$aurreko_urtea = date('Y', strtotime('-1 month', $lehen_egun_timestamp));
$hurrengo_hilabetea = date('m', strtotime('+1 month', $lehen_egun_timestamp));
$hurrengo_urtea = date('Y', strtotime('+1 month', $lehen_egun_timestamp));

$hasiera_data = sprintf("%04d-%02d-01", $urtea, $hilabetea);
$bukaera_data = sprintf("%04d-%02d-%02d", $urtea, $hilabetea, $egun_kopurua);

// Iragazkiaren arabera data tartea doitu
if ($bista === 'eguna') {
    $hasiera_data = $gaurko_data;
    $bukaera_data = $gaurko_data;
} elseif ($bista === 'astea') {
    $hasiera_data = date('Y-m-d', strtotime('monday this week'));
    $bukaera_data = date('Y-m-d', strtotime('sunday this week'));
}

$sqlH = "SELECT h.*, h.id as hitzordu_id, ep.izena as p_izena, ep.abizenak as p_abizenak, em.izena as m_izena, em.abizenak as m_abizenak 
        FROM Hitzorduak h
        JOIN Pazienteak p ON h.paziente_id = p.id
        JOIN erabiltzaileak ep ON p.id = ep.id
        JOIN osasun_langileak m ON h.osasun_langile_id = m.id
        JOIN erabiltzaileak em ON m.id = em.id
        WHERE h.data BETWEEN :start AND :end";

if ($filter_mediku_id) {
    $sqlH .= " AND h.osasun_langile_id = :mid";
}
if ($filter_paziente_id) {
    $sqlH .= " AND h.paziente_id = :pid";
}
$sqlH .= " ORDER BY h.data ASC, h.hasiera_ordua ASC";

$stmtH = $pdo->prepare($sqlH);
$stmtH->bindParam(':start', $hasiera_data);
$stmtH->bindParam(':end', $bukaera_data);
if ($filter_mediku_id) {
    $stmtH->bindParam(':mid', $filter_mediku_id);
}
if ($filter_paziente_id) {
    $stmtH->bindParam(':pid', $filter_paziente_id);
}
$stmtH->execute();
$hitzorduak = $stmtH->fetchAll(PDO::FETCH_ASSOC);

$hitzorduak_data_arabera = [];
foreach ($hitzorduak as $h) {
    $data_f = date('Y-m-d', strtotime($h['data']));
    if (!isset($hitzorduak_data_arabera[$data_f])) $hitzorduak_data_arabera[$data_f] = [];
    $hitzorduak_data_arabera[$data_f][] = $h;
}


$filter_qs = "";
if ($filter_mediku_id) $filter_qs .= "&filter_mediku_id=" . urlencode($filter_mediku_id);
if ($filter_paziente_id) $filter_qs .= "&filter_paziente_id=" . urlencode($filter_paziente_id);

$orri_izenburua = "Hitzorduak - GOsasun";
$uneko_orria = "hitzorduak";
$css_pertsonalizatua = "hitzorduak.css";

include_once '../php_orri_includeak/harrera_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2 class="izenburu-nagusia">Hitzorduen Egutegia</h2>
                <p class="azpititulu-grisa">Kudeatu klinikako ordutegia eta erregistroak</p>
            </div>
            <div class="flex-taldea-10">
                <a href="hitzordua_sortu.php" class="botoia botoi-nagusia"><img src="../img/svg/plus-circle.svg" alt="" class="ikono-ertaina marjina-esk-5"> Hitzordu Berria</a>
            </div>
        </div>

        <section class="hitzorduak-dashboard">
            <!-- Iragazki Sidebar -->
            <aside class="sidebar-iragazkiak">
                <details id="filterDetailsHarrera" open>
                    <summary class="izenburu-urdina kurtsore-erakuslea marjina-behe-10">Iragazkiak Erakutsi</summary>
                <form action="hitzorduak.php" method="GET" id="filterForm">
                    <input type="hidden" name="bista" value="<?php echo htmlspecialchars($bista); ?>">
                    <input type="hidden" name="hilabetea" value="<?php echo htmlspecialchars($hilabetea); ?>">
                    <input type="hidden" name="urtea" value="<?php echo htmlspecialchars($urtea); ?>">

                    <div class="iragazki-ekintzak marjina-goi-20">
                        <a href="hitzorduak.php" class="testu-botoia">Iragazkiak Garbitu</a>
                    </div>

                    <div class="iragazki-taldea">
                        <h4><img src="../img/svg/user.svg" alt="" class="ikono-txikia"> Osasun-Langilea</h4>
                        <div class="checkbox-zerrenda">
                            <input type="text" class="inprimaki-kontrola marjina-behe-10" placeholder="Bilatu medikua..." onkeyup="filterCheckboxes(this, 'mediku-list')">
                            <div id="mediku-list">
                                <?php foreach ($medikuak as $m): ?>
                                    <label class="iragazki-aukera">
                                        <input type="radio" name="filter_mediku_id" value="<?php echo $m['osasun_langile_id']; ?>"
                                                <?php echo $filter_mediku_id == $m['osasun_langile_id'] ? 'checked' : ''; ?>
                                                onchange="this.form.submit()">
                                        <span>Dr. <?php echo htmlspecialchars($m['abizenak']); ?></span>
                                    </label>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </div>

                    <div class="iragazki-taldea marjina-goi-20">
                        <h4><img src="../img/svg/user.svg" alt="" class="ikono-txikia"> Pazientea</h4>
                        <div class="checkbox-zerrenda">
                            <input type="text" class="inprimaki-kontrola marjina-behe-10" placeholder="Bilatu pazientea..." onkeyup="filterCheckboxes(this, 'paziente-list')">
                            <div id="paziente-list" class="zerrenda-korritzailea">
                                <?php foreach ($pazienteak as $p): ?>
                                    <label class="iragazki-aukera">
                                        <input type="radio" name="filter_paziente_id" value="<?php echo $p['paziente_id']; ?>"
                                                <?php echo $filter_paziente_id == $p['paziente_id'] ? 'checked' : ''; ?>
                                                onchange="this.form.submit()">
                                        <span><?php echo htmlspecialchars($p['abizenak'] . ", " . $p['izena'][0] . "."); ?></span>
                                    </label>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </div>

                </form>
                </details>
                <script>if(window.innerWidth <= 768) document.getElementById('filterDetailsHarrera').removeAttribute('open');</script>
            </aside>

            <div class="egutegia-panel-nagusia">


        <script>
            function filterCheckboxes(input, listId) {
                const filter = input.value.toLowerCase();
                const labels = document.getElementById(listId).getElementsByTagName('label');
                for (let i = 0; i < labels.length; i++) {
                    const txtValue = labels[i].textContent || labels[i].innerText;
                    if (txtValue.toLowerCase().indexOf(filter) > -1) {
                        labels[i].style.display = "";
                    } else {
                        labels[i].style.display = "none";
                    }
                }
            }
            const hitzorduakData = <?php echo json_encode($hitzorduak); ?>;
        </script>

        <?php if ($mezua): ?><div class="alerta alerta-arrakasta"><?php echo $mezua; ?></div><?php endif; ?>
        <?php if ($errorea): ?><div class="alerta alerta-errorea"><?php echo $errorea; ?></div><?php endif; ?>

        <!-- Laburpen Txartelak -->
        <section class="laburpen-txartelak">
            <div class="itxurazko-txartela">
                <div class="txartel-info">
                    <h4>Hitzordu Guztiak</h4>
                    <div class="txartel-balioa"><?php echo count($hitzorduak); ?></div>
                </div>
                <div class="joera-etiketa joera-igoera">+12%</div>
            </div>
            <div class="itxurazko-txartela">
                <div class="txartel-info">
                    <h4>Bertan behera utzitakoak</h4>
                    <div class="txartel-balioa">3</div>
                </div>
                <div class="joera-etiketa">0%</div>
            </div>
            <div class="itxurazko-txartela">
                <div class="txartel-info">
                    <h4>Medikuen erabilgarritasuna</h4>
                    <div class="txartel-balioa">85%</div>
                </div>
                <div class="joera-etiketa joera-beherakada">-5%</div>
            </div>
        </section>

        <section class="egutegia-edukiontzia">
            <div class="egutegia-goiburua">
                <div class="egutegia-nabigazioa">
                    <a href="?hilabetea=<?php echo $aurreko_hilabetea; ?>&urtea=<?php echo $aurreko_urtea; ?><?php echo $filter_qs; ?>" class="botoia botoi-ertza" title="Aurreko hilabetea"><img src="../img/svg/chevron-left.svg" alt="Aurrekoa" class="ikono-txikia"></a>
                    <div class="egutegia-titulua"><?php echo $hilabete_izena; ?></div>
                    <a href="?hilabetea=<?php echo $hurrengo_hilabetea; ?>&urtea=<?php echo $hurrengo_urtea; ?><?php echo $filter_qs; ?>" class="botoia botoi-ertza" title="Hurrengo hilabetea"><img src="../img/svg/chevron-right.svg" alt="Hurrengoa" class="ikono-txikia"></a>
                </div>
                <div class="bista-hautatzailea">
                    <a href="?bista=astea<?php echo $filter_qs; ?>" class="bista-botoia <?php echo $bista === 'astea' ? 'aktiboa' : ''; ?>">Astea</a>
                    <a href="?bista=hilabetea<?php echo $filter_qs; ?>" class="bista-botoia <?php echo $bista === 'hilabetea' ? 'aktiboa' : ''; ?>">Hilabetea</a>
                    <a href="?bista=eguna<?php echo $filter_qs; ?>" class="bista-botoia <?php echo $bista === 'eguna' ? 'aktiboa' : ''; ?>">Eguna</a>
                </div>
            </div>

            <div class="grid-egutegia bista-<?php echo $bista; ?>">
                <!-- Goiburua: Egunak -->
                <div class="grid-goiburua">
                    <div class="grid-th">AST</div>
                    <div class="grid-th">AST</div>
                    <div class="grid-th">AST</div>
                    <div class="grid-th">OST</div>
                    <div class="grid-th">OST</div>
                    <div class="grid-th">LAR</div>
                    <div class="grid-th">IGA</div>
                </div>

                <?php if ($bista === 'hilabetea'): ?>
                    <!-- Egun hutsak -->
                    <?php for($i=1; $i<$asteko_lehen_eguna; $i++): ?>
                        <div class="egun-gelaxka hutsik"></div>
                    <?php endfor; ?>

                    <!-- Egunak -->
                    <?php for($eguna=1; $eguna<=$egun_kopurua; $eguna++): ?>
                        <?php $d_formatua = sprintf("%04d-%02d-%02d", $urtea, $hilabetea, $eguna);
                            $gaurkoa = ($d_formatua === date('Y-m-d')) ? 'gaurkoa' : '';
                            $eguneko_hitzorduak = $hitzorduak_data_arabera[$d_formatua] ?? [];
                        ?>
                        <div class="egun-gelaxka <?php echo $gaurkoa; ?> kurtsore-erakuslea" data-date="<?php echo $d_formatua; ?>">
                            <div class="egun-zenbakia"><?php echo $eguna; ?></div>
                            <div class="eguneko-hitzorduak">
                                <?php foreach ($eguneko_hitzorduak as $h): ?>
                                    <div class="hitzordu-blokea status-<?php echo strtolower($h['egoera']); ?>"
                                        data-hitzordu-id="<?php echo $h['hitzordu_id']; ?>"
                                        title="<?php echo htmlspecialchars($h['p_abizenak'] . ": " . $h['arrazoia']); ?>"
                                        onclick="viewAppointment(<?php echo $h['hitzordu_id']; ?>)">
                                        <span class="bloke-izenik"><?php echo substr($h['hasiera_ordua'], 0, 5); ?></span>
                                        <span class="bloke-mota"><?php echo htmlspecialchars($h['p_izena'][0] . ". " . $h['p_abizenak']); ?></span>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    <?php endfor; ?>
                <?php elseif ($bista === 'astea'): ?>
                    <?php $hasiera_astea = strtotime('monday this week');
                        for($i=0; $i<7; $i++):
                            $d_ast = date('Y-m-d', strtotime("+$i days", $hasiera_astea));
                            $gaurkoa = ($d_ast === date('Y-m-d')) ? 'gaurkoa' : '';
                            $eguneko_hitzorduak = $hitzorduak_data_arabera[$d_ast] ?? [];
                    ?>
                        <div class="egun-gelaxka <?php echo $gaurkoa; ?> kurtsore-erakuslea" data-date="<?php echo $d_ast; ?>">
                            <div class="egun-zenbakia"><?php echo date('d', strtotime($d_ast)); ?></div>
                            <div class="eguneko-hitzorduak">
                                <?php foreach ($eguneko_hitzorduak as $h): ?>
                                    <div class="hitzordu-blokea status-<?php echo strtolower($h['egoera']); ?> kurtsore-erakuslea" 
                                        onclick="viewAppointment(<?php echo $h['hitzordu_id']; ?>)">
                                        <span class="bloke-izenik"><?php echo substr($h['hasiera_ordua'], 0, 5); ?></span>
                                        <span class="bloke-mota"><?php echo htmlspecialchars($h['p_izena'][0] . ". " . $h['p_abizenak']); ?></span>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    <?php endfor; ?>
                <?php else: // eguna ?>
                    <?php for($i=1; $i<=7; $i++):
                            $egun_izena_zenb = date('N', strtotime($gaurko_data));
                            $data_sel = ($i == $egun_izena_zenb) ? $gaurko_data : null;
                            $eguneko_hitzorduak = $data_sel ? ($hitzorduak_data_arabera[$data_sel] ?? []) : [];
                    ?>
                        <div class="egun-gelaxka <?php echo $data_sel ? 'gaurkoa kurtsore-erakuslea' : 'hutsik'; ?>" <?php echo $data_sel ? "data-date='$data_sel'" : ""; ?>>
                            <div class="egun-zenbakia"><?php echo $data_sel ? date('d') : ''; ?></div>
                            <div class="eguneko-hitzorduak">
                                <?php foreach ($eguneko_hitzorduak as $h): ?>
                                    <div class="hitzordu-blokea status-<?php echo strtolower($h['egoera']); ?> kurtsore-erakuslea" 
                                        onclick="viewAppointment(<?php echo $h['hitzordu_id']; ?>)">
                                        <span class="bloke-izenik"><?php echo substr($h['hasiera_ordua'], 0, 5); ?></span>
                                        <span class="bloke-mota"><?php echo htmlspecialchars($h['p_izena'][0] . ". " . $h['p_abizenak']); ?></span>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    <?php endfor; ?>
                <?php endif; ?>
            </div>
        </section>


    </main>

    <script src="../js/hitzorduak_egutegia.js"></script>
<?php include_once '../php_orri_includeak/harrera_footer.php'; ?>
