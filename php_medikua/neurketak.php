<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Medikua') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$mediku_id = $_SESSION['erabiltzaile_id'];
$arrakasta_mezua = '';
$errore_mezua = '';

// 1. Lortu esleitutako pazienteen zerrenda
$stmtP = $pdo->prepare("SELECT p.paziente_id, p.izena, p.abizenak, p.nan 
                       FROM Pazienteak p
                       JOIN Mediku_Paziente mp ON p.paziente_id = mp.paziente_id
                       WHERE mp.mediku_id = ?
                       ORDER BY p.abizenak ASC");
$stmtP->execute([$mediku_id]);
$pazienteak = $stmtP->fetchAll(PDO::FETCH_ASSOC);

// Paziente bat ezarrita badago parametro bidez
$paziente_id_lehenetsia = $_GET['paziente_id'] ?? null;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $paziente_id_post = $_POST['paziente_id'] ?? null;
    $data = $_POST['data'] ?? date('Y-m-d');
    $ordua = $_POST['ordua'] ?? date('H:i');
    $glukosa = !empty($_POST['glukosa']) ? $_POST['glukosa'] : null;
    $sistolikoa = !empty($_POST['sistolikoa']) ? $_POST['sistolikoa'] : null;
    $diastolikoa = !empty($_POST['diastolikoa']) ? $_POST['diastolikoa'] : null;
    $pisua = !empty($_POST['pisua']) ? str_replace(',', '.', $_POST['pisua']) : null;
    $sintomak = !empty($_POST['sintomak']) ? $_POST['sintomak'] : null;

    if ($paziente_id_post && ($glukosa || ($sistolikoa && $diastolikoa) || $pisua || $sintomak)) {
        try {
            $stmt = $pdo->prepare("
                INSERT INTO Neurketak (paziente_id, data, ordua, glukosa_mg_dl, tentsio_sistolikoa, tentsio_diastolikoa, pisua_kg, sintomak) 
                VALUES (?, ?, ?, ?, ?, ?, ?, ?)
            ");
            $stmt->execute([$paziente_id_post, $data, $ordua, $glukosa, $sistolikoa, $diastolikoa, $pisua, $sintomak]);
            
            if ($pisua) {
                $stmtPisua = $pdo->prepare("UPDATE Pazienteak SET azken_pisua = ? WHERE paziente_id = ?");
                $stmtPisua->execute([$pisua, $paziente_id_post]);
            }

            $arrakasta_mezua = "Neurketak ondo erregistratu dira!";
        } catch (PDOException $e) {
            $errore_mezua = "Errorea gertatu da datuak gordetzean: " . $e->getMessage();
        }
    } else {
        if (!$paziente_id_post) {
            $errore_mezua = "Paziente bat aukeratu behar duzu.";
        } else {
            $errore_mezua = "Gutxienez neurketa bat bete behar duzu gordetzeko.";
        }
    }
}

$orri_izenburua = "Neurketak Erregistratu - GOsasun";
$uneko_orria = "neurketak";
$css_pertsonalizatua = "medikua_errezetak.css"; // Estilo bateragarrietarako

include_once '../php_includeak/mediku_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2><img src="../img/clipboard-pen.svg" alt="" class="ikono-ertaina marjina-esk-5"> Neurketa Berria Gehitu</h2>
            <p>Sartu aukeratutako pazientearen bizi-seinaleak eta sintomak jarraipen klinikorako. Ez da USB-arik behar.</p>
        </div>

        <?php if ($arrakasta_mezua): ?>
            <div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($arrakasta_mezua); ?></div>
        <?php endif; ?>
        <?php if ($errore_mezua): ?>
            <div class="alerta alerta-errorea"><?php echo htmlspecialchars($errore_mezua); ?></div>
        <?php endif; ?>

        <div class="inprimaki-edukiontzia form-edukiontzi-zuria">
            <form id="neurketaForm" action="neurketak.php" method="POST" class="neurketa-inprimakia">
                
                <div class="inprimaki-taldea marjina-behe-20">
                    <label for="paziente_id" class="etiketa-lodia">Pazientea *</label>
                    <select name="paziente_id" id="paziente_id" class="inprimaki-kontrola sarrera-handia" required>
                        <option value="">Hautatu pazientea...</option>
                        <?php foreach ($pazienteak as $p): ?>
                            <option value="<?php echo $p['paziente_id']; ?>" <?php echo ($paziente_id_lehenetsia == $p['paziente_id']) ? 'selected' : ''; ?>>
                                <?php echo htmlspecialchars($p['abizenak'] . ", " . $p['izena'] . " (" . $p['nan'] . ")"); ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>

                <div class="inprimaki-lerroa data-ordu-lerroa flex-20px-tartea-marjina">
                    <div class="inprimaki-taldea flex-1">
                        <label for="data" class="etiketa-lodia">Data:</label>
                        <input type="date" id="data" name="data" value="<?php echo date('Y-m-d'); ?>" class="inprimaki-kontrola sarrera-handia">
                    </div>
                    <div class="inprimaki-taldea flex-1">
                        <label for="ordua" class="etiketa-lodia">Ordua:</label>
                        <input type="time" id="ordua" name="ordua" value="<?php echo date('H:i'); ?>" class="inprimaki-kontrola sarrera-handia">
                    </div>
                </div>

                <div class="neurketa-taldea neurketa-kutxa-argia">
                    <div class="inprimaki-taldea marjina-behe-15">
                        <label for="glukosa" class="etiketa-lodia">Glukosa (mg/dL):</label>
                        <input type="number" step="0.1" id="glukosa" name="glukosa" placeholder="Adib: 105" class="inprimaki-kontrola sarrera-handia">
                    </div>
                    <div class="inprimaki-lerroa flex-20px-tartea">
                        <div class="inprimaki-taldea flex-1">
                            <label for="sistolikoa" class="etiketa-lodia">Tentsio Sistolikoa:</label>
                            <input type="number" id="sistolikoa" name="sistolikoa" placeholder="Goikoa (Adib: 120)" class="inprimaki-kontrola sarrera-handia">
                        </div>
                        <div class="inprimaki-taldea flex-1">
                            <label for="diastolikoa" class="etiketa-lodia">Tentsio Diastolikoa:</label>
                            <input type="number" id="diastolikoa" name="diastolikoa" placeholder="Behekoa (Adib: 80)" class="inprimaki-kontrola sarrera-handia">
                        </div>
                    </div>
                </div>

                <div class="inprimaki-taldea marjina-behe-20">
                    <label for="pisua" class="etiketa-lodia">Pisua (kg):</label>
                    <input type="number" step="0.1" id="pisua" name="pisua" placeholder="Adib: 72.5" class="inprimaki-kontrola sarrera-handia">
                </div>

                <div class="inprimaki-taldea marjina-behe-25">
                    <label for="sintomak" class="etiketa-lodia">Sintomak / Oharrak:</label>
                    <textarea id="sintomak" name="sintomak" rows="4" placeholder="Sartu pazientearen sintomak edo oharrak hemen..." class="inprimaki-kontrola sarrera-testu-eremua"></textarea>
                </div>

                <div class="inprimaki-ekintzak flex-15px-tartea">
                    <button type="submit" class="botoia botoi-nagusia botoi-handia-flex">Gorde Neurketak</button>
                    <a href="index.php" class="botoia botoi-ertza botoi-handia-padding">Utzi</a>
                </div>
            </form>
        </div>
    </main>

    <script src="../js/mediku_neurketak.js"></script>

<?php include_once '../php_includeak/mediku_footer.php'; ?>
