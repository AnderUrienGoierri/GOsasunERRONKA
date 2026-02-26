<?php
$base_path = '../';
session_start();
require_once '../php_laguntzaileak/DB_konexioa.php';

if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

$erab_id = $_SESSION['erabiltzaile_id'];
$stmt = $pdo->prepare("SELECT data, glukosa_mg_dl, tentsio_sistolikoa, tentsio_diastolikoa, pisua_kg, altuera 
                       FROM Neurketak WHERE paziente_id = ? ORDER BY data ASC");
$stmt->execute([$erab_id]);
$neurketak = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Return standard formatting variables
$json_neurketak = json_encode($neurketak);
?>
<?php
$base_path = '../';
$page_title = "Nire Grafikak - GOsasun";
$current_page = "grafikak";
$custom_css = "grafikak.css";

include_once '../php_includeak/paziente_goiburua.php';
?>

    <!-- Chart.js eta html2pdf CDNak -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>

    <main class="grafika-edukiontzia" id="pdf-eremua">
        <div class="grafika-goiburua">
            <h2>Nire Datuen Bilakaera</h2>
            <div class="grafika-kontrolak" data-html2canvas-ignore="true">
                <select id="datu-mota" class="inprimaki-kontrola">
                    <option value="pisua">Pisua (kg)</option>
                    <option value="tentsioa">Tentsio Arteriala</option>
                    <option value="glukosa">Glukosa (mg/dl)</option>
                </select>
                <button type="button" class="botoia botoi-nagusia" id="btn-deskargatu-pdf">
                    📄 Deskargatu PDF (Txostena)
                </button>
            </div>
        </div>

        <div id="alerta-eremua" data-html2canvas-ignore="true"></div>

        <?php $base_path = '../';
if (count($neurketak) > 0): ?>
            <div class="grafika-txartela">
                <canvas id="grafika" class="nire-grafika"></canvas>
            </div>
        <?php $base_path = '../';
else: ?>
            <p class="daturik-ez">Oraindik ez dago neurketarik erregistratuta grafika sortzeko.</p>
        <?php $base_path = '../';
endif; ?>
    </main>

    <script>
        // Datuak PStik JSra pasatu
        const neurketakData = <?php $base_path = '../';
echo $json_neurketak; ?>;
        const paziente_id = <?php $base_path = '../';
echo $erab_id; ?>;
        const pdfEndpoint = '../php_laguntzaileak/pdf_sortu.php';
    </script>

<?php
$base_path = '../';
$extra_js = ["grafikak.js"];
include_once '../php_includeak/paziente_footer.php';
?>


