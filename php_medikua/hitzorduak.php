<?php
$base_path = '../';
session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Medikua') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$mediku_id = $_SESSION['erabiltzaile_id'];
$msg = '';
$error = '';

// 1. Lortu esleitutako pazienteen zerrenda
$stmtP = $pdo->prepare("SELECT p.paziente_id, p.izena, p.abizenak, p.nan 
                       FROM Pazienteak p
                       JOIN Mediku_Paziente mp ON p.paziente_id = mp.paziente_id
                       WHERE mp.mediku_id = ?
                       ORDER BY p.abizenak ASC");
$stmtP->execute([$mediku_id]);
$pazienteak = $stmtP->fetchAll(PDO::FETCH_ASSOC);

// 2. Kudeatu hitzordu ekintzak
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['sortu_hitzordua']) || isset($_POST['editatu_hitzordua'])) {
        $h_id = $_POST['hitzordu_id'] ?? null;
        $p_id = $_POST['paziente_id'];
        $m_id = $mediku_id; // Medikua bere buruarentzat bakarrik
        $data = $_POST['data'];
        $h_ordua = $_POST['hasiera_ordua'];
        $b_ordua = $_POST['bukaera_ordua'];
        $arrazoia = $_POST['arrazoia'];
        $egoera = $_POST['egoera'] ?? 'Zain';

        if ($p_id && $data && $h_ordua && $b_ordua) {
            try {
                $sqlCheck = "SELECT COUNT(*) FROM Hitzorduak WHERE mediku_id = ? AND data = ? AND 
                             ((hasiera_ordua < ? AND bukaera_ordua > ?) OR (hasiera_ordua < ? AND bukaera_ordua > ?))";
                $paramsCheck = [$m_id, $data, $b_ordua, $h_ordua, $b_ordua, $h_ordua];
                
                if ($h_id) {
                    $sqlCheck .= " AND hitzordu_id != ?";
                    $paramsCheck[] = $h_id;
                }

                $stmtCheck = $pdo->prepare($sqlCheck);
                $stmtCheck->execute($paramsCheck);
                
                if ($stmtCheck->fetchColumn() == 0) {
                    if ($h_id) {
                        $stmt = $pdo->prepare("UPDATE Hitzorduak SET paziente_id = ?, data = ?, hasiera_ordua = ?, bukaera_ordua = ?, arrazoia = ?, egoera = ? WHERE hitzordu_id = ? AND mediku_id = ?");
                        $stmt->execute([$p_id, $data, $h_ordua, $b_ordua, $arrazoia, $egoera, $h_id, $m_id]);
                        $msg = "Hitzordua aldatu da.";
                    } else {
                        $stmtInsert = $pdo->prepare("INSERT INTO Hitzorduak (paziente_id, mediku_id, data, hasiera_ordua, bukaera_ordua, arrazoia, egoera) VALUES (?, ?, ?, ?, ?, ?, 'Zain')");
                        $stmtInsert->execute([$p_id, $m_id, $data, $h_ordua, $b_ordua, $arrazoia]);
                        $msg = "Hitzordua sortu da.";
                    }
                } else {
                    $error = "Baduzu beste hitzordu bat ordu tarte horretan.";
                }
            } catch (PDOException $e) {
                $error = "Errorea: " . $e->getMessage();
            }
        }
    } elseif (isset($_POST['ezabatu_hitzordua'])) {
        $h_id = $_POST['hitzordu_id_delete'];
        try {
            $stmt = $pdo->prepare("DELETE FROM Hitzorduak WHERE hitzordu_id = ? AND mediku_id = ?");
            $stmt->execute([$h_id, $mediku_id]);
            $msg = "Hitzordua ezabatu da.";
        } catch (PDOException $e) {
            $error = "Errorea ezabatzean.";
        }
    }
}

// 3. Lortu hitzorduak (Zerrenda orokorra edo iragaziak)
$bista = $_GET['bista'] ?? 'hilabetea';
$gaurko_data = date('Y-m-d');

// Egutegiaren logika
$hilabetea = isset($_GET['hilabetea']) ? intval($_GET['hilabetea']) : date('m');
$urtea = isset($_GET['urtea']) ? intval($_GET['urtea']) : date('Y');

$lehen_egun_timestamp = mktime(0, 0, 0, $hilabetea, 1, $urtea);
$egun_kopurua = date('t', $lehen_egun_timestamp);
$asteko_lehen_eguna = date('N', $lehen_egun_timestamp);
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

$sqlH = "SELECT h.*, p.izena, p.abizenak
         FROM Hitzorduak h
         JOIN Pazienteak p ON h.paziente_id = p.paziente_id
         WHERE h.mediku_id = :mid AND h.data BETWEEN :start AND :end
         ORDER BY h.data ASC, h.hasiera_ordua ASC";

$stmtH = $pdo->prepare($sqlH);
$stmtH->bindParam(':mid', $mediku_id);
$stmtH->bindParam(':start', $hasiera_data);
$stmtH->bindParam(':end', $bukaera_data);
$stmtH->execute();
$hitzorduak = $stmtH->fetchAll(PDO::FETCH_ASSOC);

$hitzorduak_data_arabera = [];
foreach ($hitzorduak as $h) {
    $data_f = date('Y-m-d', strtotime($h['data']));
    if (!isset($hitzorduak_data_arabera[$data_f])) $hitzorduak_data_arabera[$data_f] = [];
    $hitzorduak_data_arabera[$data_f][] = $h;
}

// Estatistikak (Guztiak kontatzeko berriro)
$stmtStats = $pdo->prepare("SELECT COUNT(*) as denera, 
    SUM(CASE WHEN egoera = 'Zain' THEN 1 ELSE 0 END) as zain,
    SUM(CASE WHEN egoera = 'Bukatuta' THEN 1 ELSE 0 END) as bukatuta,
    SUM(CASE WHEN data = :gaur THEN 1 ELSE 0 END) as gaur_kop
    FROM Hitzorduak WHERE mediku_id = :mid");
$stmtStats->execute(['mid' => $mediku_id, 'gaur' => $gaurko_data]);
$stats = $stmtStats->fetch(PDO::FETCH_ASSOC);
$zain_kop = $stats['zain'] ?? 0;
$bukatuta_kop = $stats['bukatuta'] ?? 0;
$gaur_kop = $stats['gaur_kop'] ?? 0;
?>
<?php
$base_path = '../';
$page_title = "Hitzorduak - GOsasun";
$current_page = "hitzorduak";
$custom_css = "hitzorduak.css";

include_once '../php_includeak/mediku_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2>📅 Agenda eta Hitzorduak</h2>
            <button class="botoia botoi-nagusia" onclick="openModal()">+ Hitzordu Berria</button>
        </div>

        <?php $base_path = '../';
if ($msg): ?><div class="alerta alerta-arrakasta"><?php $base_path = '../';
echo $msg; ?></div><?php $base_path = '../';
endif; ?>
        <?php $base_path = '../';
if ($error): ?><div class="alerta alerta-errorea"><?php $base_path = '../';
echo $error; ?></div><?php $base_path = '../';
endif; ?>

        <script>
            const hitzorduakData = <?php $base_path = '../';
echo json_encode($hitzorduak); ?>;
        </script>

        <!-- Laburpen Txartelak -->
        <section class="laburpen-txartelak">
            <div class="itxurazko-txartela">
                <div class="txartel-info">
                    <h4>Gaurko Hitzorduak</h4>
                    <div class="txartel-balioa"><?php $base_path = '../';
echo $gaur_kop; ?></div>
                </div>
                <div class="joera-etiketa joera-igoera">Aktibo</div>
            </div>
            <div class="itxurazko-txartela">
                <div class="txartel-info">
                    <h4>Zain daudenak</h4>
                    <div class="txartel-balioa"><?php $base_path = '../';
echo $zain_kop; ?></div>
                </div>
                <div class="joera-etiketa" style="background:#fff3cd; color:#856404;">Denera</div>
            </div>
            <div class="itxurazko-txartela">
                <div class="txartel-info">
                    <h4>Bukatutakoak</h4>
                    <div class="txartel-balioa"><?php $base_path = '../';
echo $bukatuta_kop; ?></div>
                </div>
                <div class="joera-etiketa joera-igoera">Historia</div>
            </div>
        </section>

        <section class="egutegia-edukiontzia">
            <div class="egutegia-goiburua">
                <div class="egutegia-nabigazioa">
                    <a href="?hilabetea=<?php $base_path = '../';
echo $aurreko_hilabetea; ?>&urtea=<?php $base_path = '../';
echo $aurreko_urtea; ?>" class="botoia botoi-ertza">&lt;</a>
                    <div class="egutegia-titulua"><?php $base_path = '../';
echo $hilabete_izena; ?></div>
                    <a href="?hilabetea=<?php $base_path = '../';
echo $hurrengo_hilabetea; ?>&urtea=<?php $base_path = '../';
echo $hurrengo_urtea; ?>" class="botoia botoi-ertza">&gt;</a>
                    <a href="hitzorduak.php" class="bista-botoia" style="margin-left: 10px;">Gaur</a>
                </div>
                <div class="bista-hautatzailea">
                    <a href="?bista=astea" class="bista-botoia <?php $base_path = '../';
echo $bista === 'astea' ? 'aktiboa' : ''; ?>">Astea</a>
                    <a href="?bista=hilabetea" class="bista-botoia <?php $base_path = '../';
echo $bista === 'hilabetea' ? 'aktiboa' : ''; ?>">Hilabetea</a>
                    <a href="?bista=eguna" class="bista-botoia <?php $base_path = '../';
echo $bista === 'eguna' ? 'aktiboa' : ''; ?>">Eguna</a>
                </div>
            </div>

            <div class="grid-egutegia bista-<?php $base_path = '../';
echo $bista; ?>">
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

                <?php $base_path = '../';
if ($bista === 'hilabetea'): ?>
                    <!-- Egun hutsak -->
                    <?php $base_path = '../';
for($i=1; $i<$asteko_lehen_eguna; $i++): ?>
                        <div class="egun-gelaxka hutsik"></div>
                    <?php $base_path = '../';
endfor; ?>

                    <!-- Egunak -->
                    <?php $base_path = '../';
for($eguna=1; $eguna<=$egun_kopurua; $eguna++): ?>
                        <?php 
                            $base_path = '../';
$d_formatua = sprintf("%04d-%02d-%02d", $urtea, $hilabetea, $eguna);
                            $gaurkoa = ($d_formatua === date('Y-m-d')) ? 'gaurkoa' : '';
                            $eguneko_hitzorduak = $hitzorduak_data_arabera[$d_formatua] ?? [];
                        ?>
                        <div class="egun-gelaxka <?php $base_path = '../';
echo $gaurkoa; ?>">
                            <div class="egun-zenbakia"><?php $base_path = '../';
echo $eguna; ?></div>
                            <div class="eguneko-hitzorduak">
                                <?php $base_path = '../';
foreach ($eguneko_hitzorduak as $h): ?>
                                    <div class="hitzordu-blokea status-<?php $base_path = '../';
echo strtolower($h['egoera']); ?>" 
                                         data-hitzordu-id="<?php $base_path = '../';
echo $h['hitzordu_id']; ?>"
                                         title="<?php $base_path = '../';
echo htmlspecialchars($h['izena'] . " " . $h['abizenak'] . ": " . $h['arrazoia']); ?>"
                                         onclick="viewAppointment(<?php $base_path = '../';
echo $h['hitzordu_id']; ?>)">
                                        <span class="bloke-izenik"><?php $base_path = '../';
echo substr($h['hasiera_ordua'], 0, 5); ?></span>
                                        <span class="bloke-mota"><?php $base_path = '../';
echo htmlspecialchars($h['izena'][0] . ". " . $h['abizenak']); ?></span>
                                    </div>
                                <?php $base_path = '../';
endforeach; ?>
                            </div>
                        </div>
                    <?php $base_path = '../';
endfor; ?>
                <?php $base_path = '../';
elseif ($bista === 'astea'): ?>
                    <?php 
                        $base_path = '../';
$hasiera_astea = strtotime('monday this week');
                        for($i=0; $i<7; $i++): 
                            $d_ast = date('Y-m-d', strtotime("+$i days", $hasiera_astea));
                            $gaurkoa = ($d_ast === date('Y-m-d')) ? 'gaurkoa' : '';
                            $eguneko_hitzorduak = $hitzorduak_data_arabera[$d_ast] ?? [];
                    ?>
                        <div class="egun-gelaxka <?php $base_path = '../';
echo $gaurkoa; ?>">
                            <div class="egun-zenbakia"><?php $base_path = '../';
echo date('d', strtotime($d_ast)); ?></div>
                            <div class="eguneko-hitzorduak">
                                <?php $base_path = '../';
foreach ($eguneko_hitzorduak as $h): ?>
                                    <div class="hitzordu-blokea status-<?php $base_path = '../';
echo strtolower($h['egoera']); ?>">
                                        <span class="bloke-izenik"><?php $base_path = '../';
echo substr($h['hasiera_ordua'], 0, 5); ?></span>
                                        <span class="bloke-mota"><?php $base_path = '../';
echo htmlspecialchars($h['izena'][0] . ". " . $h['abizenak']); ?></span>
                                    </div>
                                <?php $base_path = '../';
endforeach; ?>
                            </div>
                        </div>
                    <?php $base_path = '../';
endfor; ?>
                <?php $base_path = '../';
else: // eguna ?>
                    <?php 
                        $base_path = '../';
for($i=1; $i<=7; $i++): 
                            $egun_izena_zenb = date('N', strtotime($gaurko_data));
                            $data_sel = ($i == $egun_izena_zenb) ? $gaurko_data : null;
                            $eguneko_hitzorduak = $data_sel ? ($hitzorduak_data_arabera[$data_sel] ?? []) : [];
                    ?>
                        <div class="egun-gelaxka <?php $base_path = '../';
echo $data_sel ? 'gaurkoa' : 'hutsik'; ?>">
                            <div class="egun-zenbakia"><?php $base_path = '../';
echo $data_sel ? date('d') : ''; ?></div>
                            <div class="eguneko-hitzorduak">
                                <?php $base_path = '../';
foreach ($eguneko_hitzorduak as $h): ?>
                                    <div class="hitzordu-blokea status-<?php $base_path = '../';
echo strtolower($h['egoera']); ?>">
                                        <span class="bloke-izenik"><?php $base_path = '../';
echo substr($h['hasiera_ordua'], 0, 5); ?></span>
                                        <span class="bloke-mota"><?php $base_path = '../';
echo htmlspecialchars($h['izena'][0] . ". " . $h['abizenak']); ?></span>
                                    </div>
                                <?php $base_path = '../';
endforeach; ?>
                            </div>
                        </div>
                    <?php $base_path = '../';
endfor; ?>
                <?php $base_path = '../';
endif; ?>
            </div>
        </section>

        <div class="agenda-edukiontzia marjina-goi-30">
            <h3>📋 Hitzorduen Zerrenda</h3>
            <br>
            <?php $base_path = '../';
if (count($hitzorduak_data_arabera) > 0): ?>
                <?php $base_path = '../';
foreach ($hitzorduak_data_arabera as $data => $hitz_zerrenda): ?>
                    <?php 
                        $base_path = '../';
$gaurkoa = ($data === date('Y-m-d')) ? 'gaur-goiburua' : '';
                        $dataIzena = ($data === date('Y-m-d')) ? 'Gaurkoa (' . $data . ')' : $data;
                    ?>
                    <div class="egun-taldea">
                        <h3 class="egun-goiburua <?php $base_path = '../';
echo $gaurkoa; ?>"><?php $base_path = '../';
echo htmlspecialchars($dataIzena); ?></h3>
                        <div class="hitzordu-zerrenda">
                            <?php $base_path = '../';
foreach ($hitz_zerrenda as $h): ?>
                                <div class="hitzordu-txartela <?php $base_path = '../';
echo strtolower($h['egoera']); ?>">
                                    <div class="ordu-tartea">
                                        <?php $base_path = '../';
echo date('H:i', strtotime($h['hasiera_ordua'])); ?>
                                    </div>
                                    <div class="hitzordu-xehetasunak">
                                        <h4><?php $base_path = '../';
echo htmlspecialchars($h['izena'] . ' ' . $h['abizenak']); ?></h4>
                                        <p class="arrazoia"><?php $base_path = '../';
echo htmlspecialchars($h['arrazoia'] ?? 'Arrazoirik gabe'); ?></p>
                                    </div>
                                    <div class="hitzordu-egoera">
                                        <span class="egoera-txapa status-<?php $base_path = '../';
echo strtolower($h['egoera']); ?>">
                                            <?php $base_path = '../';
echo htmlspecialchars($h['egoera']); ?>
                                        </span>
                                    </div>
                                    <div class="hitzordu-ekintzak" onclick="event.stopPropagation();">
                                        <button class="botoia botoi-nagusia botoi-txikia" onclick="viewAppointment(<?php $base_path = '../';
echo $h['hitzordu_id']; ?>)">Kudeatu</button>
                                    </div>
                                </div>
                            <?php $base_path = '../';
endforeach; ?>
                        </div>
                    </div>
                <?php $base_path = '../';
endforeach; ?>
            <?php $base_path = '../';
else: ?>
                <div class="egoera-hutsa">
                    <div class="ikono-hutsa">📅</div>
                    <h3>Ez duzu hitzordurik</h3>
                    <p>Une honetan ez daukazu hitzordurik programatuta.</p>
                </div>
            <?php $base_path = '../';
endif; ?>
        </div>
    </main>

    <!-- Hitzordu Modala -->
    <div id="hitzorduModala" class="modala-inguratzailea">
        <div class="modala-edukia">
            <div class="modala-goiburua">
                <h3 id="modalIzenburua">Hitzordu Berria</h3>
                <span class="itxi-modala" onclick="closeModal()">&times;</span>
            </div>
            <form method="POST" id="hitzorduForm">
                <input type="hidden" name="hitzordu_id" id="modal_hitzordu_id">
                
                <div class="inprimaki-taldea">
                    <label for="paziente_id">Pazientea</label>
                    <select name="paziente_id" id="modal_paziente_id" class="inprimaki-kontrola" required>
                        <option value="">Hautatu pazientea...</option>
                        <?php $base_path = '../';
foreach ($pazienteak as $p): ?>
                            <option value="<?php $base_path = '../';
echo $p['paziente_id']; ?>"><?php $base_path = '../';
echo htmlspecialchars($p['abizenak'] . ", " . $p['izena'] . " (" . $p['nan'] . ")"); ?></option>
                        <?php $base_path = '../';
endforeach; ?>
                    </select>
                </div>

                <div class="sareta-bikoa">
                    <div class="inprimaki-taldea">
                        <label for="data">Data</label>
                        <input type="date" name="data" id="modal_data" class="inprimaki-kontrola" required>
                    </div>
                    <div class="inprimaki-taldea">
                        <label for="egoera">Egoera</label>
                        <select name="egoera" id="modal_egoera" class="inprimaki-kontrola">
                            <option value="Zain">Zain</option>
                            <option value="Bukatuta">Bukatuta</option>
                            <option value="Ezeztatuta">Ezeztatuta</option>
                        </select>
                    </div>
                </div>

                <div class="sareta-bikoa">
                    <div class="inprimaki-taldea">
                        <label for="hasiera_ordua">Hasiera</label>
                        <input type="time" name="hasiera_ordua" id="modal_hasiera_ordua" class="inprimaki-kontrola" required>
                    </div>
                    <div class="inprimaki-taldea">
                        <label for="bukaera_ordua">Bukaera</label>
                        <input type="time" name="bukaera_ordua" id="modal_bukaera_ordua" class="inprimaki-kontrola" required>
                    </div>
                </div>

                <div class="inprimaki-taldea">
                    <label for="arrazoia">Arrazoia</label>
                    <textarea name="arrazoia" id="modal_arrazoia" class="inprimaki-kontrola" rows="3"></textarea>
                </div>

                <div class="flex-tartea-10 marjina-goi-20">
                    <button type="button" id="btnDelete" class="botoia botoi-ertza arrisku-kolorea" style="display:none;" onclick="confirmDelete()">Ezabatu</button>
                    <div class="flex-bat"></div>
                    <button type="button" class="botoia botoi-ertza" onclick="closeModal()">Utzi</button>
                    <button type="submit" name="sortu_hitzordua" id="btnSubmit" class="botoia botoi-nagusia">Gorde</button>
                </div>
            </form>

            <form id="deleteForm" method="POST" style="display:none;">
                <input type="hidden" name="hitzordu_id_delete" id="delete_hitzordu_id">
                <input type="hidden" name="ezabatu_hitzordua" value="1">
            </form>
        </div>
    </div>

    <script src="../js/hitzorduak_egutegia.js"></script>
<?php
$base_path = '../';
$extra_js = ["hitzorduak.js"];
include_once '../php_includeak/mediku_footer.php';
?>


