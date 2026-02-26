<?php
$base_path = '../';
session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$paziente_id = $_SESSION['erabiltzaile_id'];
$success_msg = '';
$error_msg = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = $_POST['data'] ?? date('Y-m-d');
    $ordua = $_POST['ordua'] ?? date('H:i');
    $glukosa = !empty($_POST['glukosa']) ? $_POST['glukosa'] : null;
    $sistolikoa = !empty($_POST['sistolikoa']) ? $_POST['sistolikoa'] : null;
    $diastolikoa = !empty($_POST['diastolikoa']) ? $_POST['diastolikoa'] : null;
    $pisua = !empty($_POST['pisua']) ? str_replace(',', '.', $_POST['pisua']) : null;
    $sintomak = !empty($_POST['sintomak']) ? $_POST['sintomak'] : null;

    if ($glukosa || ($sistolikoa && $diastolikoa) || $pisua || $sintomak) {
        try {
            $stmt = $pdo->prepare("
                INSERT INTO Neurketak (paziente_id, data, ordua, glukosa_mg_dl, tentsio_sistolikoa, tentsio_diastolikoa, pisua_kg, sintomak) 
                VALUES (?, ?, ?, ?, ?, ?, ?, ?)
            ");
            $stmt->execute([$paziente_id, $data, $ordua, $glukosa, $sistolikoa, $diastolikoa, $pisua, $sintomak]);
            $success_msg = "Neurketak ondo erregistratu dira!";
        } catch (PDOException $e) {
            $error_msg = "Errorea gertatu da datuak gordetzean: " . $e->getMessage();
        }
    } else {
        $error_msg = "Gutxienez neurketa bat bete behar duzu gordetzeko.";
    }
}

$page_title = "Neurketa Berria - GOsasun";
$current_page = "neurketak";
$custom_css = "pazienteak.css";

include_once '../php_includeak/paziente_goiburua.php';
?>

    <main class="panel-nagusia" data-paziente-id="<?php $base_path = '../';
echo $paziente_id; ?>">
        <div class="orri-goiburua">
            <h2><img src="../img/clipboard-pen.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> Neurketa Berria Gehitu</h2>
            <p>Sartu zure bizi-seinaleak eta sintomak jarraipen klinikorako.</p>
        </div>

        <?php $base_path = '../';
if ($success_msg): ?>
            <div class="alerta alerta-arrakasta"><?php $base_path = '../';
echo htmlspecialchars($success_msg); ?></div>
        <?php $base_path = '../';
endif; ?>
        <?php $base_path = '../';
if ($error_msg): ?>
            <div class="alerta alerta-errorea"><?php $base_path = '../';
echo htmlspecialchars($error_msg); ?></div>
        <?php $base_path = '../';
endif; ?>

        <div class="inprimaki-edukiontzia">
            <form id="neurketaForm" action="neurketak.php" method="POST" class="neurketa-inprimakia">
                <div class="inprimaki-lerroa data-ordu-lerroa">
                    <div class="inprimaki-taldea">
                        <label for="data">Data:</label>
                        <input type="date" id="data" name="data" value="<?php $base_path = '../';
echo date('Y-m-d'); ?>" class="inprimaki-kontrola">
                    </div>
                    <div class="inprimaki-taldea">
                        <label for="ordua">Ordua:</label>
                        <input type="time" id="ordua" name="ordua" value="<?php $base_path = '../';
echo date('H:i'); ?>" class="inprimaki-kontrola">
                    </div>
                </div>

                <div class="neurketa-taldea">
                    <div class="inprimaki-taldea">
                        <label for="glukosa">Glukosa (mg/dL):</label>
                        <input type="number" step="0.1" id="glukosa" name="glukosa" placeholder="Adib: 105" class="inprimaki-kontrola">
                    </div>
                    <div class="inprimaki-lerroa">
                        <div class="inprimaki-taldea">
                            <label for="sistolikoa">Tentsio Sistolikoa:</label>
                            <input type="number" id="sistolikoa" name="sistolikoa" placeholder="Goikoa (Adib: 120)" class="inprimaki-kontrola">
                        </div>
                        <div class="inprimaki-taldea">
                            <label for="diastolikoa">Tentsio Diastolikoa:</label>
                            <input type="number" id="diastolikoa" name="diastolikoa" placeholder="Behekoa (Adib: 80)" class="inprimaki-kontrola">
                        </div>
                    </div>
                </div>

                <div class="inprimaki-taldea">
                    <label for="pisua">Pisua (kg):</label>
                    <input type="number" step="0.1" id="pisua" name="pisua" placeholder="Adib: 72.5" class="inprimaki-kontrola">
                </div>

                <div class="inprimaki-taldea">
                    <label for="sintomak">Sintomak / Oharrak:</label>
                    <textarea id="sintomak" name="sintomak" rows="4" placeholder="Nola sentitzen zara? Zerbait arraroa sumatu duzu?" class="inprimaki-kontrola"></textarea>
                </div>

                <div class="inprimaki-ekintzak">
                    <button type="submit" class="botoia botoi-nagusia botoi-zabal">Gorde Neurketak</button>
                    <a href="index.php" class="botoia botoi-ertza">Utzi</a>
                </div>
            </form>
        </div>
    </main>

    <script src="../js/abisuak_logika.js"></script>
    <script src="../js/neurketak.js"></script>

<?php
$base_path = '../';
include_once '../php_includeak/paziente_footer.php';
?>


