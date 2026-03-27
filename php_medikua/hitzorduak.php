<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Medikua') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$mediku_id = $_SESSION['erabiltzaile_id'];
$mezua = '';
$errorea = '';

// 1. Lortu esleitutako pazienteen zerrenda
$stmtP = $pdo->prepare("SELECT p.paziente_id, p.izena, p.abizenak, p.nan 
                       FROM Pazienteak p
                       JOIN Mediku_Paziente mp ON p.paziente_id = mp.paziente_id
                       WHERE mp.mediku_id = ?
                       ORDER BY p.abizenak ASC");
$stmtP->execute([$mediku_id]);
$pazienteak = $stmtP->fetchAll(PDO::FETCH_ASSOC);

// 2. Kudeatu hitzordu ekintzak - MEDIKUARENTZAT EZINDUA (Harrerak soilik kudeatzen ditu)
/* 
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // ... lehenagoko logika ezabatuta baimenak harrerara pasatzean
}
*/

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
<?php $orri_izenburua = "Hitzorduak - GOsasun";
$uneko_orria = "hitzorduak";
$css_pertsonalizatua = "hitzorduak.css";

include_once '../php_includeak/mediku_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/svg/calendar-days.svg" alt="" class="ikono-ertaina marjina-esk-5"> Agenda eta Hitzorduak</h2>
                <p>Ikusi zure eguneroko hitzorduak eta kudeatu zure agenda.</p>
            </div>
            <!-- (+ Hitzordu Berria) Botoia ezabatuta medikuentzat -->
        </div>

        <?php if ($mezua): ?><div class="alerta alerta-arrakasta"><?php echo $mezua; ?></div><?php endif; ?>
        <?php if ($errorea): ?><div class="alerta alerta-errorea"><?php echo $errorea; ?></div><?php endif; ?>

        <script>
            const hitzorduakData = <?php echo json_encode($hitzorduak); ?>;
        </script>

        <!-- Laburpen Txartelak -->
        <section class="laburpen-txartelak">
            <div class="itxurazko-txartela">
                <div class="txartel-info">
                    <h4>Gaurko Hitzorduak</h4>
                    <div class="txartel-balioa"><?php echo $gaur_kop; ?></div>
                </div>
                <div class="joera-etiketa joera-igoera">Aktibo</div>
            </div>
            <div class="itxurazko-txartela">
                <div class="txartel-info">
                    <h4>Zain daudenak</h4>
                    <div class="txartel-balioa"><?php echo $zain_kop; ?></div>
                </div>
                <div class="joera-etiketa abisu-koloreak">Denera</div>
            </div>
            <div class="itxurazko-txartela">
                <div class="txartel-info">
                    <h4>Bukatutakoak</h4>
                    <div class="txartel-balioa"><?php echo $bukatuta_kop; ?></div>
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
                                         title="<?php echo htmlspecialchars($h['izena'] . " " . $h['abizenak'] . ": " . $h['arrazoia']); ?>"
                                         onclick="viewAppointment(<?php echo $h['hitzordu_id']; ?>)">
                                        <span class="bloke-izenik"><?php echo substr($h['hasiera_ordua'], 0, 5); ?></span>
                                        <span class="bloke-mota"><?php echo htmlspecialchars($h['izena'][0] . ". " . $h['abizenak']); ?></span>
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
                                        <span class="bloke-mota"><?php echo htmlspecialchars($h['izena'][0] . ". " . $h['abizenak']); ?></span>
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
                                        <span class="bloke-mota"><?php echo htmlspecialchars($h['izena'][0] . ". " . $h['abizenak']); ?></span>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    <?php endfor; ?>
                <?php endif; ?>
            </div>
        </section>

        <div class="agenda-edukiontzia marjina-goi-30">
            <h3><img src="../img/list.svg" alt="" class="ikono-ertaina marjina-esk-5"> Hitzorduen Zerrenda</h3>
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
                                        <h4><?php echo htmlspecialchars($h['izena'] . ' ' . $h['abizenak']); ?></h4>
                                        <p class="arrazoia"><?php echo htmlspecialchars($h['arrazoia'] ?? 'Arrazoirik gabe'); ?></p>
                                    </div>
                                    <div class="hitzordu-egoera">
                                        <span class="egoera-txapa status-<?php echo strtolower($h['egoera']); ?>">
                                            <?php echo htmlspecialchars($h['egoera']); ?>
                                        </span>
                                    </div>
                                    <div class="hitzordu-ekintzak" onclick="event.stopPropagation();">
                                        <button class="botoia botoi-ertza botoi-txikia" onclick="viewAppointment(<?php echo $h['hitzordu_id']; ?>)">Ikusi Xehetasunak</button>
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
                    <p>Une honetan ez daukazu hitzordurik programatuta.</p>
                </div>
            <?php endif; ?>
        </div>
    </main>

    <!-- Hitzordu Modala (Bakarrik Ikusteko) -->
    <div id="hitzorduModala" class="modala-inguratzailea">
        <div class="modala-edukia">
            <div class="modala-goiburua">
                <h3 id="modalIzenburua">Hitzorduaren Xehetasunak</h3>
                <span class="itxi-modala kurtsore-erakuslea tamaina-1_5rem" onclick="closeModal()">&times;</span>
            </div>
            <div class="padding-20">
                <form method="POST" id="hitzorduForm">
                <input type="hidden" name="hitzordu_id" id="modal_hitzordu_id">
                                <div class="inprimaki-taldea">
                        <label for="paziente_id">Pazientea</label>
                        <select name="paziente_id" id="modal_paziente_id" class="inprimaki-kontrola" disabled>
                        <option value="">Hautatu pazientea...</option>
                        <?php foreach ($pazienteak as $p): ?>
                            <option value="<?php echo $p['paziente_id']; ?>"><?php echo htmlspecialchars($p['abizenak'] . ", " . $p['izena'] . " (" . $p['nan'] . ")"); ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>

                    <div class="sareta-bikoa sareta-bikoa-sareta">
                        <div class="inprimaki-taldea">
                            <label for="data">Data</label>
                            <input type="date" name="data" id="modal_data" class="inprimaki-kontrola" disabled>
                        </div>
                        <div class="inprimaki-taldea">
                            <label for="egoera">Egoera</label>
                        <select name="egoera" id="modal_egoera" class="inprimaki-kontrola" disabled>
                            <option value="Zain">Zain</option>
                            <option value="Bukatuta">Bukatuta</option>
                            <option value="Ezeztatuta">Ezeztatuta</option>
                        </select>
                    </div>
                </div>

                    <div class="sareta-bikoa sareta-bikoa-sareta">
                        <div class="inprimaki-taldea">
                            <label for="hasiera_ordua">Hasiera Ordua</label>
                            <input type="time" name="hasiera_ordua" id="modal_hasiera_ordua" class="inprimaki-kontrola" disabled>
                        </div>
                        <div class="inprimaki-taldea">
                            <label for="bukaera_ordua">Bukaera Ordua</label>
                            <input type="time" name="bukaera_ordua" id="modal_bukaera_ordua" class="inprimaki-kontrola" disabled>
                        </div>
                    </div>

                    <div class="inprimaki-taldea">
                        <label for="arrazoia">Arrazoia / Oharrak</label>
                        <textarea name="arrazoia" id="modal_arrazoia" class="inprimaki-kontrola" errenkadak="3" disabled></textarea>
                    </div>

                    <div class="flex-tartea-10 flex-tartea-10 marjina-goi-20">
                        <div class="flex-hazkundea-1"></div>
                        <button type="button" class="botoia botoi-nagusia" onclick="closeModal()">Itxi</button>
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
<?php $js_gehigarria = ["hitzorduak.js"];
include_once '../php_includeak/mediku_footer.php';


