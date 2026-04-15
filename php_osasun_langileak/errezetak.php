<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Osasun Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$osasun_langile_id = $_SESSION['erabiltzaile_id'];
$mezua = '';
$errorea = '';

// 1. Lortu medikuaren pazienteen zerrenda
$stmtP = $pdo->prepare("SELECT paziente_id AS id, izena, abizenak, nan 
                       FROM V_Langile_Pazienteak
                       WHERE langile_id = ?
                       ORDER BY abizenak ASC");
$stmtP->execute([$osasun_langile_id]);
$pazienteak = $stmtP->fetchAll(PDO::FETCH_ASSOC);

// 2. Lortu medikuaren hitzorduak (errezeta bati lotzeko - hautazkoa)
$gaur = date('Y-m-d');
$stmtH = $pdo->prepare("SELECT h.id AS hitzordu_id, h.data, h.hasiera_ordua, p.izena, p.abizenak 
                        FROM Hitzorduak h
                        JOIN V_Pazientea p ON h.paziente_id = p.paziente_id
                        WHERE h.osasun_langile_id = ? 
                        ORDER BY h.data DESC LIMIT 50");
$stmtH->execute([$osasun_langile_id]);
$hitzordu_aukerak = $stmtH->fetchAll(PDO::FETCH_ASSOC);

// 2b. Lortu botiken zerrenda
$stmtB = $pdo->query("SELECT id AS botika_id, izena FROM Botikak ORDER BY izena ASC");
$botikak_aukerak = $stmtB->fetchAll(PDO::FETCH_ASSOC);

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
                    $stmt = $pdo->prepare("UPDATE errezetak SET paziente_id = ?, hitzordu_id = ?, igorpen_data = ?, iraungitze_data = ?, diagnostiko_laburra = ?, aktibo = ? WHERE id = ? AND osasun_langile_id = ?");
                    $stmt->execute([$p_id, $h_id, $i_data, $ir_data, $diag, $aktibo, $e_id, $osasun_langile_id]);
                    $mezua = "Errezeta arrakastaz aldatu da.";
                } else {
                    $stm_sartu = $pdo->prepare("INSERT INTO errezetak (osasun_langile_id, paziente_id, hitzordu_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo) VALUES (?, ?, ?, ?, ?, ?, ?)");
                    $stm_sartu->execute([$osasun_langile_id, $p_id, $h_id, $i_data, $ir_data, $diag, $aktibo]);
                    $e_id = $pdo->lastInsertId();
                    $mezua = "Errezeta arrakastaz sortu da.";
                }

                if (!empty($_POST['botika_id'])) {
                    $b_id = $_POST['botika_id'];
                    $dosia = $_POST['dosia'] ?? '';
                    $maiztasuna = $_POST['maiztasuna'] ?? '';
                    
                    $stmtEB = $pdo->prepare("INSERT INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna) VALUES (?, ?, ?, ?) ON DUPLICATE KEY UPDATE dosia = VALUES(dosia), maiztasuna = VALUES(maiztasuna)");
                    $stmtEB->execute([$e_id, $b_id, $dosia, $maiztasuna]);
                    $mezua .= " Botika arrakastaz gehitu/eguneratu da.";
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
            $stmt = $pdo->prepare("DELETE FROM errezetak WHERE id = ? AND osasun_langile_id = ?");
            $stmt->execute([$e_id, $osasun_langile_id]);
            $mezua = "Errezeta ezabatu da.";
        } catch (PDOException $e) {
            $errorea = "Errorea ezabatzean: " . $e->getMessage();
        }
    }
}

// 4. Lortu medikuak sortutako errezeta guztiak
$sql = "SELECT e.*, e.id AS errezeta_id, p.izena, p.abizenak, p.nan, 
        GROUP_CONCAT(CONCAT(b.izena, ' (', eb.dosia, ', ', eb.maiztasuna, ')') SEPARATOR ' | ') as botikak_info
        FROM errezetak e
        JOIN V_Pazientea p ON e.paziente_id = p.paziente_id
        LEFT JOIN errezeta_botikak eb ON e.id = eb.errezeta_id
        LEFT JOIN botikak b ON eb.botika_id = b.id
        WHERE e.osasun_langile_id = :mid 
        GROUP BY e.id
        ORDER BY e.igorpen_data DESC, e.id DESC";
$stmtErr = $pdo->prepare($sql);
$stmtErr->execute(['mid' => $osasun_langile_id]);
$errezetak = $stmtErr->fetchAll(PDO::FETCH_ASSOC);

$orri_izenburua = "Errezetak - GOsasun";
$uneko_orria = "errezetak";
$css_pertsonalizatua = "osasun_langile_errezetak.css";

include_once '../php_orri_includeak/osasun_langile_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2><img src="../img/svg/pill.svg" alt="" class="ikono-ertaina marjina-esk-5"> Errezetak eta Diagnostikoak</h2>
            <a href="errezeta_berria.php" class="botoia botoi-nagusia">+ Errezeta Berria</a>
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
                            <p class="diagnostikoa"><img src="../img/svg/stethoscope.svg" alt="" class="ikono-ertaina marjina-esk-5"> <?php echo htmlspecialchars($e['diagnostiko_laburra']); ?></p>
                            <?php if (!empty($e['botikak_info'])): ?>
                                <p class="botikak-info"><img src="../img/svg/pill.svg" alt="" class="ikono-ertaina marjina-esk-5"> <strong>Botikak:</strong> <?php echo htmlspecialchars($e['botikak_info']); ?></p>
                            <?php endif; ?>
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
                            <a href="errezeta_berria.php?id=<?php echo $e['errezeta_id']; ?>" class="botoia botoi-nagusia botoi-txikia">Kudeatu</a>
                        </div>
                    </div>
                <?php endforeach; ?>
            <?php else: ?>
                <div class="egoera-hutsa">
                    <div class="ikono-hutsa"><img src="../img/svg/clipboard-pen.svg" alt="" class="ikono-ertaina marjina-esk-5"></div>
                    <h3>Ez dago errezetarik</h3>
                    <p>Oraindik ez duzu errezetarik edo diagnostikorik sortu zure pazienteentzat.</p>
                </div>
            <?php endif; ?>
        </div>
    </main>

<?php
$js_gehigarria = [];
include_once '../php_orri_includeak/osasun_footer.php';
?>


