<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$paziente_id = $_SESSION['erabiltzaile_id'];
$mezua = '';
$errorea = '';

// 1. Kudeatu hitzordu ekintzak (Sortu, Editatu, Ezabatu)
/* COMMENTED OUT FOR READ-ONLY MODE
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // ... Sortu/Editatu/Ezabatu logika desgaituta
}
*/

// 2. Lortu esleitutako medikuen zerrenda (Iragazleentzat)
$stmtM = $pdo->prepare("SELECT langile_id as osasun_langile_id, langile_izena as izena, langile_abizenak as abizenak 
                        FROM V_Langile_Pazienteak
                        WHERE paziente_id = ?
                        ORDER BY langile_abizenak ASC");
$stmtM->execute([$paziente_id]);
$medikuak_iragazki = $stmtM->fetchAll(PDO::FETCH_ASSOC);

// 2b. Lortu espezialitate guztiak
$stmtEsp = $pdo->query("SELECT DISTINCT espezialitatea FROM v_osasun_langilea WHERE espezialitatea IS NOT NULL ORDER BY espezialitatea ASC");
$espezialitateak_iragazki = $stmtEsp->fetchAll(PDO::FETCH_COLUMN);

// 3. Iragazkiak kudeatu
$filtro_medikuak = isset($_GET['medikuak']) ? (array)$_GET['medikuak'] : [];
$filtro_espezialitateak = isset($_GET['espezialitateak']) ? (array)$_GET['espezialitateak'] : [];

// Lortu hitzorduak (Pazientearenak)
$bista = $_GET['bista'] ?? 'hilabetea';
$gaurko_data = date('Y-m-d');

// Egutegiaren logika (Hilabetea)
$hilabetea = isset($_GET['hilabetea']) ? intval($_GET['hilabetea']) : date('m');
$urtea = isset($_GET['urtea']) ? intval($_GET['urtea']) : date('Y');

$lehen_egun_timestamp = mktime(0, 0, 0, $hilabetea, 1, $urtea);
$egun_kopurua = date('t', $lehen_egun_timestamp);
$asteko_lehen_eguna = date('N', $lehen_egun_timestamp); 
$hilabete_izena = date('F Y', $lehen_egun_timestamp);
$aurreko_hilabetea = date('m', strtotime('-1 month', $lehen_egun_timestamp));
$aurreko_urtea = date('Y', strtotime('-1 month', $lehen_egun_timestamp));
$hurrengo_hilabetea = date('m', strtotime('+1 month', $lehen_egun_timestamp));
$hurrengo_urtea = date('Y', strtotime('+1 month', $lehen_egun_timestamp));

if ($bista === 'eguna') {
    $hasiera_data = $gaurko_data;
    $bukaera_data = $gaurko_data;
} elseif ($bista === 'astea') {
    $hasiera_data = date('Y-m-d', strtotime('monday this week'));
    $bukaera_data = date('Y-m-d', strtotime('sunday this week'));
} else {
    $hasiera_data = sprintf("%04d-%02d-01", $urtea, $hilabetea);
    $bukaera_data = sprintf("%04d-%02d-%02d", $urtea, $hilabetea, $egun_kopurua);
}

// SQL Dinamikoa eraiki
$sql_h = "
    SELECT h.id as hitzordu_id, h.data, h.hasiera_ordua, h.arrazoia, h.egoera, 
            m.izena as mediku_izena, m.abizenak as mediku_abizenak, m.espezialitatea
    FROM hitzorduak h
    JOIN v_osasun_langilea m ON h.osasun_langile_id = m.langile_id
    WHERE h.paziente_id = :pid AND h.data BETWEEN :start AND :end
";

$params = ['pid' => $paziente_id, 'start' => $hasiera_data, 'end' => $bukaera_data];

if (!empty($filtro_medikuak)) {
    $placeholders = [];
    foreach ($filtro_medikuak as $idx => $mid) {
        $pname = "mid$idx";
        $placeholders[] = ":$pname";
        $params[$pname] = $mid;
    }
    $sql_h .= " AND h.osasun_langile_id IN (" . implode(',', $placeholders) . ")";
}

if (!empty($filtro_espezialitateak)) {
    $placeholders = [];
    foreach ($filtro_espezialitateak as $idx => $esp) {
        $pname = "esp$idx";
        $placeholders[] = ":$pname";
        $params[$pname] = $esp;
    }
    $sql_h .= " AND m.espezialitatea IN (" . implode(',', $placeholders) . ")";
}

$sql_h .= " ORDER BY h.data DESC, h.hasiera_ordua DESC";

$stmt = $pdo->prepare($sql_h);
$stmt->execute($params);
$hitzorduak = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Eguneko datak antolatzeko array bat 
$hitzorduak_data_arabera = [];
foreach ($hitzorduak as $h) {
    $data_formatua = date('Y-m-d', strtotime($h['data']));
    if (!isset($hitzorduak_data_arabera[$data_formatua])) {
        $hitzorduak_data_arabera[$data_formatua] = [];
    }
    $hitzorduak_data_arabera[$data_formatua][] = $h;
}

// Estatistikak lortu (Guztiak)
$stmtStats = $pdo->prepare("SELECT 
    SUM(CASE WHEN egoera = 'Zain' THEN 1 ELSE 0 END) as zain,
    SUM(CASE WHEN egoera = 'Ezeztatuta' THEN 1 ELSE 0 END) as ezeztatuta,
    SUM(CASE WHEN egoera = 'Bukatuta' THEN 1 ELSE 0 END) as bukatuta,
    COUNT(*) as guztira
    FROM hitzorduak WHERE paziente_id = ?");
$stmtStats->execute([$paziente_id]);
$stats = $stmtStats->fetch(PDO::FETCH_ASSOC);
$zain_kopurua = $stats['zain'] ?? 0;
$ezeztatuta_kopurua = $stats['ezeztatuta'] ?? 0;
$bukatuta_kopurua = $stats['bukatuta'] ?? 0;
$hitzordu_guztiak_kop = $stats['guztira'] ?? 0;

$orri_izenburua = "Nire Hitzorduak - GOsasun";
$uneko_orria = "hitzorduak";
$css_pertsonalizatua = "hitzorduak.css";

include_once '../php_orri_includeak/paziente_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2><img src="../img/svg/calendar-days.svg" alt="" class="ikono-ertaina tarte-eskubia"> Nire Hitzorduen Agenda</h2>
        </div>

        <script>
            const hitzorduakData = <?php echo json_encode($hitzorduak); ?>;
        </script>

        <section class="hitzorduak-dashboard">
            <!-- Iragazki Sidebar -->
            <aside class="sidebar-iragazkiak">
                <details id="filterDetailsPazientea" open>
                    <summary class="izenburu-nabarmena kurtsorea tarte-behea">Iragazkiak Erakutsi</summary>
                <form action="" method="GET" id="filterForm">
                    <input type="hidden" name="bista" value="<?php echo htmlspecialchars($bista); ?>">
                    <input type="hidden" name="hilabetea" value="<?php echo htmlspecialchars($hilabetea); ?>">
                    <input type="hidden" name="urtea" value="<?php echo htmlspecialchars($urtea); ?>">

                    <div class="iragazki-taldea">
                        <h4><img src="../img/svg/stethoscope.svg" alt="" class="ikono-txikia"> Espezialitatea</h4>
                        <div class="checkbox-zerrenda">
                            <?php foreach ($espezialitateak_iragazki as $esp): ?>
                                <label class="iragazki-aukera">
                                    <input type="checkbox" name="espezialitateak[]" value="<?php echo htmlspecialchars($esp); ?>" 
                                            <?php echo in_array($esp, $filtro_espezialitateak) ? 'checked' : ''; ?>
                                            onchange="this.form.submit()">
                                    <span><?php echo htmlspecialchars($esp); ?></span>
                                </label>
                            <?php endforeach; ?>
                        </div>
                    </div>

                    <div class="iragazki-taldea tarte-goia">
                        <h4><img src="../img/svg/user-md.svg" alt="" class="ikono-txikia"> Osasun-Langilea</h4>
                        <div class="checkbox-zerrenda">
                            <?php foreach ($medikuak_iragazki as $m): ?>
                                <label class="iragazki-aukera">
                                    <input type="checkbox" name="medikuak[]" value="<?php echo $m['osasun_langile_id']; ?>"
                                            <?php echo in_array($m['osasun_langile_id'], $filtro_medikuak) ? 'checked' : ''; ?>
                                            onchange="this.form.submit()">
                                    <span>Dr. <?php echo htmlspecialchars($m['abizenak']); ?></span>
                                </label>
                            <?php endforeach; ?>
                        </div>
                    </div>

                    <div class="iragazki-ekintzak tarte-goia">
                        <a href="hitzorduak.php" class="testu-botoia">Iragazkiak Garbitu</a>
                    </div>
                </form>
                </details>
                <script>if(window.innerWidth <= 768) document.getElementById('filterDetailsPazientea').removeAttribute('open');</script>
            </aside>

            <div class="egutegia-panel-nagusia">
                <!-- Laburpen Txartelak -->
                <section class="laburpen-txartelak">
                    <div class="itxurazko-txartela">
                        <div class="txartel-info">
                            <h4>Gaurko Hitzorduak</h4>
                            <div class="txartel-balioa"><?php echo isset($hitzorduak_data_arabera[date('Y-m-d')]) ? count($hitzorduak_data_arabera[date('Y-m-d')]) : 0; ?></div>
                        </div>
                        <div class="joera-etiketa joera-igoera">Aktibo</div>
                    </div>
                    <div class="itxurazko-txartela">
                        <div class="txartel-info">
                            <h4>Zain daudenak</h4>
                            <div class="txartel-balioa"><?php echo $zain_kopurua; ?></div>
                        </div>
                        <div class="joera-etiketa abisu-koloreak">Denera</div>
                    </div>
                    <div class="itxurazko-txartela">
                        <div class="txartel-info">
                            <h4>Bukatutakoak</h4>
                            <div class="txartel-balioa"><?php echo $bukatuta_kopurua; ?></div>
                        </div>
                        <div class="joera-etiketa joera-igoera">Historia</div>
                    </div>
                </section>

                <div class="egutegia-panel-edukiontzia">
                <section class="egutegia-edukiontzia">
                    <div class="egutegia-goiburua">
                        <div class="egutegia-nabigazioa">
                            <a href="?<?php echo http_build_query(array_merge($_GET, ['hilabetea' => $aurreko_hilabetea, 'urtea' => $aurreko_urtea])); ?>" class="botoia botoi-ertza" title="Aurreko hilabetea"><img src="../img/svg/chevron-left.svg" alt="Aurrekoa" class="ikono-txikia"></a>
                            <div class="egutegia-titulua"><?php echo $hilabete_izena; ?></div>
                            <a href="?<?php echo http_build_query(array_merge($_GET, ['hilabetea' => $hurrengo_hilabetea, 'urtea' => $hurrengo_urtea])); ?>" class="botoia botoi-ertza" title="Hurrengo hilabetea"><img src="../img/svg/chevron-right.svg" alt="Hurrengoa" class="ikono-txikia"></a>
                        </div>
                        <div class="bista-hautatzailea">
                            <a href="?<?php echo http_build_query(array_merge($_GET, ['bista' => 'astea'])); ?>" class="bista-botoia <?php echo $bista === 'astea' ? 'aktiboa' : ''; ?>">Astea</a>
                            <a href="?<?php echo http_build_query(array_merge($_GET, ['bista' => 'hilabetea'])); ?>" class="bista-botoia <?php echo $bista === 'hilabetea' ? 'aktiboa' : ''; ?>">Hilabetea</a>
                            <a href="?<?php echo http_build_query(array_merge($_GET, ['bista' => 'eguna'])); ?>" class="bista-botoia <?php echo $bista === 'eguna' ? 'aktiboa' : ''; ?>">Eguna</a>
                        </div>
                    </div>

            <div class="grid-egutegia bista-<?php echo $bista; ?>">
                <!-- Goiburua: Asteko Egunak -->
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
                    <!-- Egun hutsak hilabete hasieran -->
                    <?php for($i=1; $i<$asteko_lehen_eguna; $i++): ?>
                        <div class="egun-gelaxka hutsik"></div>
                    <?php endfor; ?>

                    <!-- Hilabeteko egunak -->
                    <?php for($eguna=1; $eguna<=$egun_kopurua; $eguna++): ?>
                        <?php $data_konparatu = sprintf("%04d-%02d-%02d", $urtea, $hilabetea, $eguna);
                            $gaur = ($data_konparatu === date('Y-m-d')) ? 'gaurkoa' : '';
                            $hitzordu_egunekoak = $hitzorduak_data_arabera[$data_konparatu] ?? [];
                        ?>
                        <div class="egun-gelaxka <?php echo $gaur; ?>">
                            <div class="egun-zenbakia"><?php echo $eguna; ?></div>
                            <div class="eguneko-hitzorduak">
                                <?php foreach ($hitzordu_egunekoak as $h): ?>
                                    <div class="hitzordu-blokea status-<?php echo strtolower($h['egoera']); ?>" 
                                        data-hitzordu-id="<?php echo $h['hitzordu_id']; ?>"
                                        title="Osasun Langilea <?php echo htmlspecialchars($h['mediku_abizenak']); ?>"
                                        onclick="viewAppointment(<?php echo $h['hitzordu_id']; ?>)">
                                        <span class="bloke-izenik"><?php echo date('H:i', strtotime($h['hasiera_ordua'])); ?></span>
                                        <span class="bloke-mota"><?php echo htmlspecialchars($h['mediku_izena'][0] . ". " . $h['mediku_abizenak']); ?></span>
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
                        <div class="egun-gelaxka <?php echo $gaurkoa; ?>">
                            <div class="egun-zenbakia"><?php echo date('d', strtotime($d_ast)); ?></div>
                            <div class="eguneko-hitzorduak">
                                <?php foreach ($eguneko_hitzorduak as $h): ?>
                                    <div class="hitzordu-blokea status-<?php echo strtolower($h['egoera']); ?>" 
                                        onclick="viewAppointment(<?php echo $h['hitzordu_id']; ?>)">
                                        <span class="bloke-izenik"><?php echo date('H:i', strtotime($h['hasiera_ordua'])); ?></span>
                                        <span class="bloke-mota"><?php echo htmlspecialchars($h['mediku_izena'][0] . ". " . $h['mediku_abizenak']); ?></span>
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
                        <div class="egun-gelaxka <?php echo $data_sel ? 'gaurkoa' : 'hutsik'; ?>">
                            <div class="egun-zenbakia"><?php echo $data_sel ? date('d') : ''; ?></div>
                            <div class="eguneko-hitzorduak">
                                <?php foreach ($eguneko_hitzorduak as $h): ?>
                                    <div class="hitzordu-blokea status-<?php echo strtolower($h['egoera']); ?>"
                                        onclick="viewAppointment(<?php echo $h['hitzordu_id']; ?>)">
                                        <span class="bloke-izenik"><?php echo date('H:i', strtotime($h['hasiera_ordua'])); ?></span>
                                        <span class="bloke-mota"><?php echo htmlspecialchars($h['mediku_izena'][0] . ". " . $h['mediku_abizenak']); ?></span>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    <?php endfor; ?>
                <?php endif; ?>
            </div>
            </section>
            </div>


    </main>

    <script src="../js/hitzorduak_egutegia.js"></script>
<?php include_once '../php_orri_includeak/paziente_footer.php'; ?>

