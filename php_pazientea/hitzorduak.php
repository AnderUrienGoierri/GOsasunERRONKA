<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$paziente_id = $_SESSION['erabiltzaile_id'];
$mezua = '';
$errorea = '';

// 1. Kudeatu hitzordu ekintzak (Sortu, Editatu, Ezabatu)
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['sortu_hitzordua']) || isset($_POST['editatu_hitzordua'])) {
        $h_id = $_POST['hitzordu_id'] ?? null;
        $p_id = $paziente_id;
        $m_id = $_POST['mediku_id'];
        $data = $_POST['data'];
        $h_ordua = $_POST['hasiera_ordua'];
        $b_ordua = $_POST['bukaera_ordua'];
        $arrazoia = $_POST['arrazoia'];

        if ($m_id && $data && $h_ordua && $b_ordua) {
            try {
                // Egiaztatu medikuak ez duela gatazkarik
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
                        $stmt = $pdo->prepare("UPDATE Hitzorduak SET mediku_id = ?, data = ?, hasiera_ordua = ?, bukaera_ordua = ?, arrazoia = ? WHERE hitzordu_id = ? AND paziente_id = ? AND egoera = 'Zain'");
                        $stmt->execute([$m_id, $data, $h_ordua, $b_ordua, $arrazoia, $h_id, $p_id]);
                        $mezua = "Hitzordua aldatu da.";
                    } else {
                        $stm_sartu = $pdo->prepare("INSERT INTO Hitzorduak (paziente_id, mediku_id, data, hasiera_ordua, bukaera_ordua, arrazoia, egoera) VALUES (?, ?, ?, ?, ?, ?, 'Zain')");
                        $stm_sartu->execute([$p_id, $m_id, $data, $h_ordua, $b_ordua, $arrazoia]);
                        $mezua = "Hitzordua sortu da.";
                    }
                } else {
                    $errorea = "Medikuak badu hitzordu bat ordu tarte horretan.";
                }
            } catch (PDOException $e) {
                $errorea = "Errorea: " . $e->getMessage();
            }
        }
    } elseif (isset($_POST['ezeztatu_hitzordu_id']) || isset($_POST['ezabatu_hitzordua'])) {
        $h_id = $_POST['ezeztatu_hitzordu_id'] ?? $_POST['hitzordu_id_delete'];
        try {
            $stmt = $pdo->prepare("UPDATE Hitzorduak SET egoera = 'Ezeztatuta' WHERE hitzordu_id = ? AND paziente_id = ? AND egoera = 'Zain'");
            $stmt->execute([$h_id, $paziente_id]);
            $mezua = "Hitzordua ezeztatu da.";
        } catch (PDOException $e) {
            $errorea = "Errorea ezeztatzean.";
        }
    }
}

// 2. Lortu esleitutako medikuen zerrenda
$stmtM = $pdo->prepare("SELECT m.mediku_id, m.izena, m.abizenak, m.espezialitatea 
                       FROM Medikuak m
                       JOIN Mediku_Paziente mp ON m.mediku_id = mp.mediku_id
                       WHERE mp.paziente_id = ?
                       ORDER BY m.abizenak ASC");
$stmtM->execute([$paziente_id]);
$medikuak = $stmtM->fetchAll(PDO::FETCH_ASSOC);

// Lortu hitzorduak (Pazientearenak)
$bista = $_GET['bista'] ?? 'hilabetea';
$gaurko_data = date('Y-m-d');

// Egutegiaren logika (Hilabetea)
$hilabetea = isset($_GET['hilabetea']) ? intval($_GET['hilabetea']) : date('m');
$urtea = isset($_GET['urtea']) ? intval($_GET['urtea']) : date('Y');

$lehen_egun_timestamp = mktime(0, 0, 0, $hilabetea, 1, $urtea);
$egun_kopurua = date('t', $lehen_egun_timestamp);
$asteko_lehen_eguna = date('N', $lehen_egun_timestamp); // 1 (Mon) to 7 (Sun)
$hilabete_izena = date('F Y', $lehen_egun_timestamp);

$aurreko_hilabetea = date('m', strtotime('-1 month', $lehen_egun_timestamp));
$aurreko_urtea = date('Y', strtotime('-1 month', $lehen_egun_timestamp));
$hurrengo_hilabetea = date('m', strtotime('+1 month', $lehen_egun_timestamp));
$hurrengo_urtea = date('Y', strtotime('+1 month', $lehen_egun_timestamp));

$hasiera_data = sprintf("%04d-%02d-01", $urtea, $hilabetea);
$bukaera_data = sprintf("%04d-%02d-%02d", $urtea, $hilabetea, $egun_kopurua);

if ($bista === 'eguna') {
    $hasiera_data = $gaurko_data;
    $bukaera_data = $gaurko_data;
} elseif ($bista === 'astea') {
    $hasiera_data = date('Y-m-d', strtotime('monday this week'));
    $bukaera_data = date('Y-m-d', strtotime('sunday this week'));
}

$stmt = $pdo->prepare("
    SELECT h.hitzordu_id, h.data, h.hasiera_ordua, h.arrazoia, h.egoera, 
           m.izena as mediku_izena, m.abizenak as mediku_abizenak, m.espezialitatea
    FROM Hitzorduak h
    JOIN Medikuak m ON h.mediku_id = m.mediku_id
    WHERE h.paziente_id = :pid AND h.data BETWEEN :start AND :end
    ORDER BY h.data DESC, h.hasiera_ordua DESC
");
$stmt->execute(['pid' => $paziente_id, 'start' => $hasiera_data, 'end' => $bukaera_data]);
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
    FROM Hitzorduak WHERE paziente_id = ?");
$stmtStats->execute([$paziente_id]);
$stats = $stmtStats->fetch(PDO::FETCH_ASSOC);
$zain_kopurua = $stats['zain'] ?? 0;
$ezeztatuta_kopurua = $stats['ezeztatuta'] ?? 0;
$bukatuta_kopurua = $stats['bukatuta'] ?? 0;
$hitzordu_guztiak_kop = $stats['guztira'] ?? 0;

$orri_izenburua = "Nire Hitzorduak - GOsasun";
$uneko_orria = "hitzorduak";
$css_pertsonalizatua = "hitzorduak.css";

include_once '../php_includeak/paziente_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/svg/calendar-days.svg" alt="" class="ikono-ertaina marjina-esk-5"> Nire Hitzorduen Agenda</h2>
                <p>Kudeatu zure hitzorduak eta agenda modu errazean.</p>
            </div>
        </div>

        <div class="flex-tartea-20 marjina-behe-20">
            <button class="botoia botoi-sortu marjina-behe-0" onclick="openModal()">+ Hitzordu Berria</button>
        </div>

        <script>
            const hitzorduakData = <?php echo json_encode($hitzorduak); ?>;
        </script>

        <?php if ($mezua): ?>
            <div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($mezua); ?></div>
        <?php endif; ?>
        <?php if ($errorea): ?>
            <div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div>
        <?php endif; ?>

        <!-- Laburpen Txartelak -->
        <section class="laburpen-txartelak">
            <div class="itxurazko-txartela">
                <div class="txartel-info">
                    <h4>Hitzordu Guztiak</h4>
                    <div class="txartel-balioa"><?php echo $hitzordu_guztiak_kop; ?></div>
                </div>
                <div class="joera-etiketa joera-igoera">+<?php echo $zain_kopurua; ?> berri</div>
            </div>
            <div class="itxurazko-txartela">
                <div class="txartel-info">
                    <h4>Zain daudenak</h4>
                    <div class="txartel-balioa"><?php echo $zain_kopurua; ?></div>
                </div>
                <div class="joera-etiketa abisu-koloreak">Aktibo</div>
            </div>
            <div class="itxurazko-txartela">
                <div class="txartel-info">
                    <h4>Bukatutakoak</h4>
                    <div class="txartel-balioa"><?php echo $bukatuta_kopurua; ?></div>
                </div>
                <div class="joera-etiketa joera-igoera">Historia</div>
            </div>
        </section>

        <section class="egutegia-edukiontzia">
            <div class="egutegia-goiburua">
                <div class="egutegia-nabigazioa">
                    <a href="?hilabetea=<?php echo $aurreko_hilabetea; ?>&urtea=<?php echo $aurreko_urtea; ?>" class="botoia botoi-ertza">&lt;</a>
                    <div class="egutegia-titulua"><?php echo $hilabete_izena; ?></div>
                    <a href="?hilabetea=<?php echo $hurrengo_hilabetea; ?>&urtea=<?php echo $hurrengo_urtea; ?>" class="botoia botoi-ertza">&gt;</a>
                    <a href="hitzorduak.php" class="bista-botoia marjina-ezk-10">Gaur</a>
                </div>
                <div class="bista-hautatzailea">
                    <a href="?bista=astea" class="bista-botoia <?php echo $bista === 'astea' ? 'aktiboa' : ''; ?>">Astea</a>
                    <a href="?bista=hilabetea" class="bista-botoia <?php echo $bista === 'hilabetea' ? 'aktiboa' : ''; ?>">Hilabetea</a>
                    <a href="?bista=eguna" class="bista-botoia <?php echo $bista === 'eguna' ? 'aktiboa' : ''; ?>">Eguna</a>
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
                                         title="Dr. <?php echo htmlspecialchars($h['mediku_abizenak']); ?>"
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
                                    <div class="hitzordu-blokea status-<?php echo strtolower($h['egoera']); ?>">
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
                                    <div class="hitzordu-blokea status-<?php echo strtolower($h['egoera']); ?>">
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

        <div class="agenda-edukiontzia marjina-goi-30">
            <h3><img src="../img/list.svg" alt="" class="ikono-ertaina marjina-esk-5"> Xehetasunak Zerrendan</h3>
            <br>
            <?php if (count($hitzorduak_data_arabera) > 0): ?>
                <?php foreach ($hitzorduak_data_arabera as $data => $hitz_zerrenda): ?>
                    <?php $gaurkoa = ($data === date('Y-m-d')) ? 'gaur-goiburua' : '';
                        $dataIzena = ($data === date('Y-m-d')) ? 'Gaurkoa (' . $data . ')' : $data;
                    ?>
                    <div class="egun-taldea">
                        <h3 class="egun-goiburua <?php echo $gaurkoa; ?>"><?php echo htmlspecialchars($dataIzena); ?></h3>
                        <div class="hitzordu-zerrenda">
                            <?php foreach ($hitz_zerrenda as $h): ?>
                                <div class="hitzordu-txartela <?php echo strtolower($h['egoera']); ?>">
                                    <div class="ordu-tartea">
                                        <?php echo date('H:i', strtotime($h['hasiera_ordua'])); ?>
                                    </div>
                                    <div class="hitzordu-xehetasunak">
                                        <h4>Dr. <?php echo htmlspecialchars($h['mediku_izena'] . ' ' . $h['mediku_abizenak']); ?></h4>
                                        <p class="espezialitatea"><strong><?php echo htmlspecialchars($h['espezialitatea']); ?></strong></p>
                                        <p class="arrazoia"><?php echo htmlspecialchars($h['arrazoia'] ?? 'Arrazoirik gabe'); ?></p>
                                    </div>
                                    <div class="hitzordu-egoera">
                                        <span class="egoera-txapa status-<?php echo strtolower($h['egoera']); ?>">
                                            <?php echo htmlspecialchars($h['egoera']); ?>
                                        </span>
                                    </div>
                                    <div class="hitzordu-ekintzak" onclick="event.stopPropagation();">
                                        <?php if ($h['egoera'] === 'Zain'): ?>
                                            <button class="botoia botoi-nagusia botoi-txikia" onclick="viewAppointment(<?php echo $h['hitzordu_id']; ?>)">Kudeatu</button>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                <?php endforeach; ?>
            <?php else: ?>
                <div class="egoera-hutsa">
                    <div class="ikono-hutsa"><img src="../img/calendar-days.svg" alt="" class="ikono-ertaina marjina-esk-5"></div>
                    <h3>Ez duzu hitzordurik</h3>
                    <p>Ez daukazu hitzordurik gordeta zure historialean.</p>
                </div>
            <?php endif; ?>
        </div>
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
                        <button type="button" id="ezabatu_botoia" class="botoia botoi-ertza arrisku-kolorea ezkutatu" onclick="confirmDelete()">Ezeztatu</button>
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
<?php include_once '../php_includeak/paziente_footer.php';

