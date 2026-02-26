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

// 2. Lortu medikuaren hitzorduak (errezeta bati lotzeko - hautazkoa)
$gaur = date('Y-m-d');
$stmtH = $pdo->prepare("SELECT hitzordu_id, data, hasiera_ordua, p.izena, p.abizenak 
                        FROM Hitzorduak h
                        JOIN Pazienteak p ON h.paziente_id = p.paziente_id
                        WHERE h.mediku_id = ? 
                        ORDER BY h.data DESC LIMIT 50");
$stmtH->execute([$mediku_id]);
$hitzordu_aukerak = $stmtH->fetchAll(PDO::FETCH_ASSOC);

// 3. Kudeatu errezeta ekintzak
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['gorde_errezeta'])) {
        $e_id = $_POST['errezeta_id'] ?? null;
        $p_id = $_POST['paziente_id'];
        $h_id = !empty($_POST['hitzordu_id']) ? $_POST['hitzordu_id'] : null;
        $i_data = $_POST['igorpen_data'];
        $ir_data = !empty($_POST['iraungitze_data']) ? $_POST['iraungitze_data'] : null;
        $diag = $_POST['diagnostiko_laburra'];
        $aktibo = isset($_POST['aktibo']) ? 1 : 0;
        
        // Fitxategia - hautazkoa oraingoz
        $xml_bidea = null;

        if ($p_id && $i_data && $diag) {
            try {
                if ($e_id) {
                    $stmt = $pdo->prepare("UPDATE Errezetak SET paziente_id = ?, hitzordu_id = ?, igorpen_data = ?, iraungitze_data = ?, diagnostiko_laburra = ?, aktibo = ? WHERE errezeta_id = ? AND mediku_id = ?");
                    $stmt->execute([$p_id, $h_id, $i_data, $ir_data, $diag, $aktibo, $e_id, $mediku_id]);
                    $mezua = "Errezeta arrakastaz aldatu da.";
                } else {
                    $stm_sartu = $pdo->prepare("INSERT INTO Errezetak (mediku_id, paziente_id, hitzordu_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo) VALUES (?, ?, ?, ?, ?, ?, ?)");
                    $stm_sartu->execute([$mediku_id, $p_id, $h_id, $i_data, $ir_data, $diag, $aktibo]);
                    $mezua = "Errezeta arrakastaz sortu da.";
                }
            } catch (PDOException $e) {
                $errorea = "Errorea gertatu da: " . $e->getMessage();
            }
        } else {
            $errorea = "Mesedez, bete ezinbesteko eremu guztiak.";
        }
    } elseif (isset($_POST['ezabatu_errezeta'])) {
        $e_id = $_POST['errezeta_id_delete'];
        try {
            $stmt = $pdo->prepare("DELETE FROM Errezetak WHERE errezeta_id = ? AND mediku_id = ?");
            $stmt->execute([$e_id, $mediku_id]);
            $mezua = "Errezeta ezabatu da.";
        } catch (PDOException $e) {
            $errorea = "Errorea ezabatzean: " . $e->getMessage();
        }
    }
}

// 4. Lortu medikuak sortutako errezeta guztiak
$sql = "SELECT e.*, p.izena, p.abizenak, p.nan 
        FROM Errezetak e
        JOIN Pazienteak p ON e.paziente_id = p.paziente_id
        WHERE e.mediku_id = :mid 
        ORDER BY e.igorpen_data DESC, e.errezeta_id DESC";
$stmtErr = $pdo->prepare($sql);
$stmtErr->execute(['mid' => $mediku_id]);
$errezetak = $stmtErr->fetchAll(PDO::FETCH_ASSOC);

$orri_izenburua = "Errezetak - GOsasun";
$uneko_orria = "errezetak";
$css_pertsonalizatua = "medikua_errezetak.css";

include_once '../php_includeak/mediku_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2><img src="../img/pill.svg" alt="" class="ikono-ertaina marjina-esk-5"> Errezetak eta Diagnostikoak</h2>
            <button class="botoia botoi-nagusia" onclick="openModal()">+ Errezeta Berria</button>
        </div>

        <?php if ($mezua): ?><div class="alerta alerta-arrakasta"><?php echo $mezua; ?></div><?php endif; ?>
        <?php if ($errorea): ?><div class="alerta alerta-errorea"><?php echo $errorea; ?></div><?php endif; ?>

        <script>
            // JS modalak datuak erraz kudeatzeko
            const errezetakData = <?php echo json_encode($errezetak); ?>;
        </script>

        <div class="errezetak-edukiontzia marjina-goi-30">
            <?php if (count($errezetak) > 0): ?>
                <?php foreach ($errezetak as $e): ?>
                    <?php 
                        $gaurH = strtotime(date('Y-m-d'));
                        $iraungitzeaH = $e['iraungitze_data'] ? strtotime($e['iraungitze_data']) : null;
                        
                        if ($e['aktibo'] == 0) {
                            $egoeraKoba = 'baliogabetuta';
                            $egoeraTestua = 'Baliogabetuta';
                        } elseif ($iraungitzeaH && $iraungitzeaH < $gaurH) {
                            $egoeraKoba = 'iraungita';
                            $egoeraTestua = 'Iraungita';
                        } else {
                            $egoeraKoba = 'aktiboa';
                            $egoeraTestua = 'Aktiboa';
                        }
                    ?>
                    <div class="errezeta-txartela">
                        <div class="data-blokea">
                            <div class="hilabetea"><?php echo date('M', strtotime($e['igorpen_data'])); ?></div>
                            <div class="eguna"><?php echo date('d', strtotime($e['igorpen_data'])); ?></div>
                            <div class="urtea"><?php echo date('Y', strtotime($e['igorpen_data'])); ?></div>
                        </div>
                        <div class="errezeta-xehetasunak">
                            <h4><?php echo htmlspecialchars($e['izena'] . ' ' . $e['abizenak']); ?> (<?php echo htmlspecialchars($e['nan']); ?>)</h4>
                            <p class="diagnostikoa"><img src="../img/stethoscope.svg" alt="" class="ikono-ertaina marjina-esk-5"> <?php echo htmlspecialchars($e['diagnostiko_laburra']); ?></p>
                            <?php if ($e['iraungitze_data']): ?>
                                <p class="iraungitzea">Bukaera: <?php echo date('Y/m/d', strtotime($e['iraungitze_data'])); ?></p>
                            <?php else: ?>
                                <p class="iraungitzea">Koadro Kronikoa (Iraungitze gabe)</p>
                            <?php endif; ?>
                        </div>
                        <div class="errezeta-egoera">
                            <span class="egoera-txapa <?php echo $egoeraKoba; ?>">
                                <?php echo $egoeraTestua; ?>
                            </span>
                        </div>
                        <div class="errezeta-ekintzak" onclick="event.stopPropagation();">
                            <button class="botoia botoi-nagusia botoi-txikia" onclick="viewPrescription(<?php echo $e['errezeta_id']; ?>)">Kudeatu</button>
                        </div>
                    </div>
                <?php endforeach; ?>
            <?php else: ?>
                <div class="egoera-hutsa">
                    <div class="ikono-hutsa"><img src="../img/clipboard-pen.svg" alt="" class="ikono-ertaina marjina-esk-5"></div>
                    <h3>Ez dago errezetarik</h3>
                    <p>Oraindik ez duzu errezetarik edo diagnostikorik sortu zure pazienteentzat.</p>
                </div>
            <?php endif; ?>
        </div>
    </main>

    <!-- Errezeta Modala -->
    <div id="errezetaModala" class="modala-inguratzailea">
        <div class="modala-edukia">
            <div class="modala-goiburua">
                <h3 id="modalIzenburua">Errezeta Berria</h3>
                <span class="itxi-modala kurtsore-erakuslea tamaina-1_5rem" onclick="closeModal()">&times;</span>
            </div>
            <div class="padding-20">
                <form method="POST" id="errezetaForm">
                    <input type="hidden" name="errezeta_id" id="modal_errezeta_id">
                    
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
                        <label for="hitzordu_id">Lotutako Hitzordua (Hautazkoa)</label>
                        <select name="hitzordu_id" id="modal_hitzordu_id" class="inprimaki-kontrola">
                            <option value="">Lotu gabe...</option>
                            <?php foreach ($hitzordu_aukerak as $h): ?>
                                <option value="<?php echo $h['hitzordu_id']; ?>">
                                    <?php echo date('Y/m/d H:i', strtotime($h['data'] . ' ' . $h['hasiera_ordua'])); ?> - <?php echo htmlspecialchars($h['abizenak']); ?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                    </div>

                    <div class="sareta-bikoa sareta-bikoa-sareta">
                        <div class="inprimaki-taldea">
                            <label for="igorpen_data">Igorpen Data *</label>
                            <input type="date" name="igorpen_data" id="modal_igorpen_data" class="inprimaki-kontrola" value="<?php echo date('Y-m-d'); ?>" required>
                        </div>
                        <div class="inprimaki-taldea">
                            <label for="iraungitze_data">Iraungitze Data (Hautazkoa)</label>
                            <input type="date" name="iraungitze_data" id="modal_iraungitze_data" class="inprimaki-kontrola">
                        </div>
                    </div>

                    <div class="inprimaki-taldea">
                        <label for="diagnostiko_laburra">Diagnostiko Laburra / Tratamendua *</label>
                        <textarea name="diagnostiko_laburra" id="modal_diagnostikoa" class="inprimaki-kontrola" errenkadak="3" required></textarea>
                    </div>
                    
                    <div class="inprimaki-taldea checkbox-taldea marjina-bertikal-doikuntza">
                        <label class="flex-erdian">
                            <input type="checkbox" name="aktibo" id="modal_aktibo" value="1" checked class="marjina-esk-8"> 
                            <span>Errezeta aktiboa da</span>
                        </label>
                    </div>

                    <div class="flex-tartea-10 flex-tartea-10 marjina-goi-20">
                        <button type="button" id="ezabatu_botoia" class="botoia botoi-ertza arrisku-kolorea ezkutatu" onclick="confirmDelete()">Ezabatu</button>
                        <div class="flex-hazkundea-1"></div>
                        <button type="button" class="botoia botoi-ertza marjina-esk-10" onclick="closeModal()">Utzi</button>
                        <button type="submit" name="gorde_errezeta" id="bidali_botoia" class="botoia botoi-nagusia">Gorde</button>
                    </div>
                </form>

                <form id="deleteForm" method="POST" class="ezkutatu">
                    <input type="hidden" name="errezeta_id_delete" id="delete_errezeta_id">
                    <input type="hidden" name="ezabatu_errezeta" value="1">
                </form>
            </div>
        </div>
    </div>

    <script>
        function openModal(isEdit = false) {
            document.getElementById('errezetaModala').style.display = 'block';
            const title = document.getElementById('modalIzenburua');
            const form = document.getElementById('errezetaForm');
            const ezabatu_botoia = document.getElementById('ezabatu_botoia');
            const bidali_botoia = document.getElementById('bidali_botoia');
            
            if (!isEdit) {
                title.textContent = 'Errezeta Berria';
                form.reset();
                document.getElementById('modal_errezeta_id').value = '';
                document.getElementById('modal_igorpen_data').value = '<?php echo date("Y-m-d"); ?>';
                document.getElementById('modal_aktibo').checked = true;
                ezabatu_botoia.style.display = 'none';
                bidali_botoia.textContent = 'Gorde';
            } else {
                title.textContent = 'Errezeta Editatu';
                ezabatu_botoia.style.display = 'block';
                bidali_botoia.textContent = 'Eguneratu';
            }
        }

        function closeModal() {
            document.getElementById('errezetaModala').style.display = 'none';
        }

        window.onclick = function(event) {
            const modal = document.getElementById('errezetaModala');
            if (event.target == modal) {
                closeModal();
            }
        }

        function viewPrescription(id) {
            const errezeta = errezetakData.find(e => e.errezeta_id == id);
            if (errezeta) {
                openModal(true);
                document.getElementById('modal_errezeta_id').value = errezeta.errezeta_id;
                document.getElementById('modal_paziente_id').value = errezeta.paziente_id;
                document.getElementById('modal_hitzordu_id').value = errezeta.hitzordu_id || '';
                document.getElementById('modal_igorpen_data').value = errezeta.igorpen_data;
                document.getElementById('modal_iraungitze_data').value = errezeta.iraungitze_data || '';
                document.getElementById('modal_diagnostikoa').value = errezeta.diagnostiko_laburra;
                document.getElementById('modal_aktibo').checked = (errezeta.aktibo == 1);
            }
        }

        function confirmDelete() {
            if (confirm('Ziur zaude errezeta hau ezabatu nahi duzula? Ekintza hau ezin da desegin.')) {
                const id = document.getElementById('modal_errezeta_id').value;
                document.getElementById('delete_errezeta_id').value = id;
                document.getElementById('deleteForm').submit();
            }
        }
    </script>
<?php
$js_gehigarria = [];
include_once '../php_includeak/mediku_footer.php';
?>


