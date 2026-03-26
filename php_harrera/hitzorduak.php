<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$mezua = '';
$errorea = '';

// 1. Lortu mediku eta pazienteen zerrendak (dropdown-ak egiteko)
$medikuak = $pdo->query("SELECT mediku_id, izena, abizenak, espezialitatea FROM Medikuak ORDER BY abizenak ASC")->fetchAll(PDO::FETCH_ASSOC);
$pazienteak = $pdo->query("SELECT paziente_id, izena, abizenak, nan FROM Pazienteak ORDER BY abizenak ASC")->fetchAll(PDO::FETCH_ASSOC);

// 2. Kudeatu hitzordu ekintzak (Sortu, Editatu, Ezabatu)
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['sortu_hitzordua']) || isset($_POST['editatu_hitzordua'])) {
        $h_id = $_POST['hitzordu_id'] ?? null;
        $p_id = $_POST['paziente_id'];
        $m_id = $_POST['mediku_id'];
        $data = $_POST['data'];
        $h_ordua = $_POST['hasiera_ordua'];
        $b_ordua = $_POST['bukaera_ordua'];
        $arrazoia = $_POST['arrazoia'];
        $egoera = $_POST['egoera'] ?? 'Zain';

        if ($p_id && $m_id && $data && $h_ordua && $b_ordua) {
            try {
                // Egiaztatu gatazkak (medikua okupatuta dagoen)
                $kontsulta_egiaztatu = "SELECT COUNT(*) FROM Hitzorduak WHERE mediku_id = ? AND data = ? AND 
                             ((hasiera_ordua < ? AND bukaera_ordua > ?) OR (hasiera_ordua < ? AND bukaera_ordua > ?))";
                $egiaztapen_parametroak = [$m_id, $data, $b_ordua, $h_ordua, $b_ordua, $h_ordua];
                
                if ($h_id) {
                    $kontsulta_egiaztatu .= " AND hitzordu_id != ?";
                    $egiaztapen_parametroak[] = $h_id;
                }

                $stm_egiaztatu = $pdo->prepare($kontsulta_egiaztatu);
                $stm_egiaztatu->execute($egiaztapen_parametroak);
                
                if ($stm_egiaztatu->fetchColumn() == 0) {
                    if ($h_id) {
                        // UPDATE
                        $stmt = $pdo->prepare("UPDATE Hitzorduak SET paziente_id = ?, mediku_id = ?, data = ?, hasiera_ordua = ?, bukaera_ordua = ?, arrazoia = ?, egoera = ? WHERE hitzordu_id = ?");
                        $stmt->execute([$p_id, $m_id, $data, $h_ordua, $b_ordua, $arrazoia, $egoera, $h_id]);
                        $mezua = "Hitzordua arrakastaz aldatu da.";
                    } else {
                        // INSERT
                        $stm_sartu = $pdo->prepare("INSERT INTO Hitzorduak (paziente_id, mediku_id, data, hasiera_ordua, bukaera_ordua, arrazoia, egoera) VALUES (?, ?, ?, ?, ?, ?, 'Zain')");
                        $stm_sartu->execute([$p_id, $m_id, $data, $h_ordua, $b_ordua, $arrazoia]);
                        $mezua = "Hitzordua arrakastaz sortu da.";
                    }
                } else {
                    $errorea = "Mediku honek badu beste hitzordu bat ordu tarte horretan.";
                }
            } catch (PDOException $e) {
                $errorea = "Errorea datu-basean: " . $e->getMessage();
            }
        } else {
            $errorea = "Mesedez, bete eremu guztiak.";
        }
    } elseif (isset($_POST['ezabatu_hitzordua'])) {
        $h_id = $_POST['hitzordu_id_delete'];
        try {
            $stmt = $pdo->prepare("DELETE FROM Hitzorduak WHERE hitzordu_id = ?");
            $stmt->execute([$h_id]);
            $mezua = "Hitzordua ezabatu da.";
        } catch (PDOException $e) {
            $errorea = "Errorea ezeztatzean: " . $e->getMessage();
        }
    }
}

// 3. Lortu hitzorduak (Zerrenda orokorra edo iragaziak)
$filter_mediku_id = $_GET['filter_mediku_id'] ?? '';
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

$sqlH = "SELECT h.*, p.izena as p_izena, p.abizenak as p_abizenak, m.izena as m_izena, m.abizenak as m_abizenak 
        FROM Hitzorduak h
        JOIN Pazienteak p ON h.paziente_id = p.paziente_id
        JOIN Medikuak m ON h.mediku_id = m.mediku_id
        WHERE h.data BETWEEN :start AND :end";

if ($filter_mediku_id) {
    $sqlH .= " AND h.mediku_id = :mid";
}
$sqlH .= " ORDER BY h.data ASC, h.hasiera_ordua ASC";

$stmtH = $pdo->prepare($sqlH);
$stmtH->bindParam(':start', $hasiera_data);
$stmtH->bindParam(':end', $bukaera_data);
if ($filter_mediku_id) {
    $stmtH->bindParam(':mid', $filter_mediku_id);
}
$stmtH->execute();
$hitzorduak = $stmtH->fetchAll(PDO::FETCH_ASSOC);

$hitzorduak_data_arabera = [];
foreach ($hitzorduak as $h) {
    $data_f = date('Y-m-d', strtotime($h['data']));
    if (!isset($hitzorduak_data_arabera[$data_f])) $hitzorduak_data_arabera[$data_f] = [];
    $hitzorduak_data_arabera[$data_f][] = $h;
}

$orri_izenburua = "Hitzorduak - GOsasun";
$uneko_orria = "hitzorduak";
$css_pertsonalizatua = "hitzorduak.css";

include_once '../php_includeak/harrera_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2 class="izenburu-nagusia">Hitzorduen Egutegia</h2>
                <p class="azpititulu-grisa">Kudeatu klinikako ordutegia eta erregistroak</p>
            </div>
        </div>

        <div class="flex-tartea-20 marjina-behe-20">
            <button class="botoia botoi-sortu marjina-behe-0" onclick="openModal()">+ Hitzordu Berria</button>
        </div>

        <script>
            // JS modalak datuak erraz kudeatzeko
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
                    <a href="?hilabetea=<?php echo $aurreko_hilabetea; ?>&urtea=<?php echo $aurreko_urtea; ?>&filter_mediku_id=<?php echo $filter_mediku_id; ?>" class="botoia botoi-ertza">&lt;</a>
                    <div class="egutegia-titulua"><?php echo $hilabete_izena; ?></div>
                    <a href="?hilabetea=<?php echo $hurrengo_hilabetea; ?>&urtea=<?php echo $hurrengo_urtea; ?>&filter_mediku_id=<?php echo $filter_mediku_id; ?>" class="botoia botoi-ertza">&gt;</a>
                    <a href="hitzorduak.php" class="bista-botoia marjina-ezk-10">Gaur</a>
                </div>
                <div class="bista-hautatzailea">
                    <a href="?bista=astea&filter_mediku_id=<?php echo $filter_mediku_id; ?>" class="bista-botoia <?php echo $bista === 'astea' ? 'aktiboa' : ''; ?>">Astea</a>
                    <a href="?bista=hilabetea&filter_mediku_id=<?php echo $filter_mediku_id; ?>" class="bista-botoia <?php echo $bista === 'hilabetea' ? 'aktiboa' : ''; ?>">Hilabetea</a>
                    <a href="?bista=eguna&filter_mediku_id=<?php echo $filter_mediku_id; ?>" class="bista-botoia <?php echo $bista === 'eguna' ? 'aktiboa' : ''; ?>">Eguna</a>
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
                        <div class="egun-gelaxka <?php echo $gaurkoa; ?>">
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
                        <div class="egun-gelaxka <?php echo $gaurkoa; ?>">
                            <div class="egun-zenbakia"><?php echo date('d', strtotime($d_ast)); ?></div>
                            <div class="eguneko-hitzorduak">
                                <?php foreach ($eguneko_hitzorduak as $h): ?>
                                    <div class="hitzordu-blokea status-<?php echo strtolower($h['egoera']); ?>">
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
                        <div class="egun-gelaxka <?php echo $data_sel ? 'gaurkoa' : 'hutsik'; ?>">
                            <div class="egun-zenbakia"><?php echo $data_sel ? date('d') : ''; ?></div>
                            <div class="eguneko-hitzorduak">
                                <?php foreach ($eguneko_hitzorduak as $h): ?>
                                    <div class="hitzordu-blokea status-<?php echo strtolower($h['egoera']); ?>">
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

        <!-- Zerrenda orokorra (behean mantentzen dugu segurtasun gisa momentuz) -->
        <section class="hitzordu-zerrenda marjina-goi-30">
            <div class="flex-tartea-15">
                <h3><img src="../img/svg/list.svg" alt="" class="ikono-ertaina marjina-esk-5"> Hitzordu Guztiak</h3>
                <form method="GET" class="flex-taldea-10">
                    <select name="filter_mediku_id" class="inprimaki-kontrola zabalera-autoa" onchange="this.form.submit()">
                        <option value="">Iragazi medikua...</option>
                        <?php foreach ($medikuak as $m): ?>
                            <option value="<?php echo $m['mediku_id']; ?>" <?php echo $filter_mediku_id == $m['mediku_id'] ? 'selected' : ''; ?>>
                                <?php echo htmlspecialchars($m['abizenak'] . ", " . $m['izena']); ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </form>
            </div>
            <div class="taula-inguratzailea kutxa-txikia">
                <table class="paziente-taula">
                    <thead>
                        <tr>
                            <th>Data/Ordua</th>
                            <th>Medikua</th>
                            <th>Pazientea</th>
                            <th>Egoera</th>
                        </tr>
                    </thead>
                    <taula_gorputza>
                        <?php foreach (array_slice($hitzorduak, 0, 5) as $h): ?>
                            <tr>
                                <td><strong><?php echo date('Y/m/d', strtotime($h['data'])); ?></strong> (<?php echo substr($h['hasiera_ordua'],0,5); ?>)</td>
                                <td><?php echo htmlspecialchars($h['m_abizenak']); ?></td>
                                <td><?php echo htmlspecialchars($h['p_abizenak']); ?></td>
                                <td><span class="egoera-<?php echo strtolower($h['egoera']); ?>"><?php echo $h['egoera']; ?></span></td>
                            </tr>
                        <?php endforeach; ?>
                    </taula_gorputza>
                </table>
            </div>
        </section>
    </main>

    <!-- Hitzordu Modala -->
    <div id="hitzorduModala" class="modala-inguratzailea">
        <div class="modala-edukia">
            <div class="modala-goiburua">
                <h3 id="modalIzenburua">Hitzordu Berria</h3>
                <span class="itxi-modala kurtsore-erakuslea tamaina-1_5rem" onclick="closeModal()">&times;</span>
            </div>
            <div class="padding-20">
                <form method="POST" id="hitzorduForm">
                    <input type="hidden" name="hitzordu_id" id="modal_hitzordu_id">
                    
                    <div class="inprimaki-taldea">
                        <label for="paziente_id">Pazientea *</label>
                        <select name="paziente_id" id="modal_paziente_id" class="inprimaki-kontrola" required>
                            <option value="">Hautatu pazientea...</option>
                            <?php foreach ($pazienteak as $p): ?>
                                <option value="<?php echo $p['paziente_id']; ?>"><?php echo htmlspecialchars($p['abizenak'] . ", " . $p['izena'] . " (" . $p['nan'] . ")"); ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>

                    <div class="inprimaki-taldea">
                        <label for="mediku_id">Medikua *</label>
                        <select name="mediku_id" id="modal_mediku_id" class="inprimaki-kontrola" required>
                            <option value="">Hautatu medikua...</option>
                            <?php foreach ($medikuak as $m): ?>
                                <option value="<?php echo $m['mediku_id']; ?>"><?php echo htmlspecialchars($m['abizenak'] . ", " . $m['izena'] . " - " . $m['espezialitatea']); ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>

                    <div class="sareta-bikoa sareta-bikoa-sareta">
                        <div class="inprimaki-taldea">
                            <label for="data">Data *</label>
                            <input type="date" name="data" id="modal_data" class="inprimaki-kontrola" required>
                        </div>
                        <div class="inprimaki-taldea">
                            <label for="egoera">Egoera *</label>
                            <select name="egoera" id="modal_egoera" class="inprimaki-kontrola">
                                <option value="Zain">Zain</option>
                                <option value="Bukatuta">Bukatuta</option>
                                <option value="Ezeztatuta">Ezeztatuta</option>
                            </select>
                        </div>
                    </div>

                    <div class="sareta-bikoa sareta-bikoa-sareta">
                        <div class="inprimaki-taldea">
                            <label for="hasiera_ordua">Hasiera Ordua *</label>
                            <input type="time" name="hasiera_ordua" id="modal_hasiera_ordua" class="inprimaki-kontrola" required>
                        </div>
                        <div class="inprimaki-taldea">
                            <label for="bukaera_ordua">Bukaera Ordua *</label>
                            <input type="time" name="bukaera_ordua" id="modal_bukaera_ordua" class="inprimaki-kontrola" required>
                        </div>
                    </div>

                    <div class="inprimaki-taldea">
                        <label for="arrazoia">Arrazoia / Oharrak</label>
                        <textarea name="arrazoia" id="modal_arrazoia" class="inprimaki-kontrola" errenkadak="3"></textarea>
                    </div>

                    <div class="flex-tartea-10 flex-tartea-10 marjina-goi-20">
                        <button type="button" id="ezabatu_botoia" class="botoia botoi-ertza arrisku-kolorea ezkutatu" onclick="confirmDelete()">Ezabatu</button>
                        <div class="flex-hazkundea-1"></div>
                        <button type="button" class="botoia botoi-ertza marjina-esk-10" onclick="closeModal()">Utzi</button>
                        <button type="submit" name="sortu_hitzordua" id="bidali_botoia" class="botoia botoi-nagusia">Gorde</button>
                    </div>
                </form>

                <form id="deleteForm" method="POST" class="ezkutatu">
                    <input type="hidden" name="hitzordu_id_delete" id="delete_hitzordu_id">
                    <input type="hidden" name="ezabatu_hitzordua" value="1">
                </form>
            </div>
        </div>
    </div>

    <script src="../js/hitzorduak_egutegia.js"></script>
<?php include_once '../php_includeak/harrera_footer.php';
?>



