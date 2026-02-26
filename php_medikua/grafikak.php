<?php
$base_path = '../';
session_start();
require_once '../php_laguntzaileak/DB_konexioa.php';

if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Medikua') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

$mediku_id = $_SESSION['erabiltzaile_id'];

// Get Medikuaren pazienteak
$stmt = $pdo->prepare("
    SELECT p.paziente_id, p.izena, p.abizenak
    FROM Pazienteak p
    JOIN Mediku_Paziente mp ON p.paziente_id = mp.paziente_id
    WHERE mp.mediku_id = ?
");
$stmt->execute([$mediku_id]);
$pazienteZerrenda = $stmt->fetchAll(PDO::FETCH_ASSOC);

$aukeratutako_pazientea = $_GET['paziente_id'] ?? null;
$neurketak = [];

if ($aukeratutako_pazientea) {
    // Validate access
    $baimena = false;
    foreach ($pazienteZerrenda as $pz) {
        if ($pz['paziente_id'] == $aukeratutako_pazientea) {
            $baimena = true;
            break;
        }
    }
    
    if ($baimena) {
        $stmt_datuak = $pdo->prepare("SELECT data, glukosa_mg_dl, tentsio_sistolikoa, tentsio_diastolikoa, pisua_kg, altuera 
                       FROM Neurketak WHERE paziente_id = ? ORDER BY data ASC");
        $stmt_datuak->execute([$aukeratutako_pazientea]);
        $neurketak = $stmt_datuak->fetchAll(PDO::FETCH_ASSOC);
    }
}
$json_neurketak = json_encode($neurketak);
?>
<?php
$base_path = '../';
$page_title = "Pazienteen Grafikak - GOsasun";
$current_page = "grafikak";
$custom_css = "grafikak.css";

include_once '../php_includeak/mediku_goiburua.php';
?>

    <!-- Chart.js eta html2pdf CDNak -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>

    <main class="grafika-edukiontzia" id="pdf-eremua">
        <div class="grafika-goiburua" data-html2canvas-ignore="true">
            <h2>Pazienteen Bilakaera Aztertu</h2>
            
            <form action="grafikak.php" method="GET" class="grafika-kontrolak">
                <select name="paziente_id" class="inprimaki-kontrola" onchange="this.form.submit()">
                    <option value="">-- Aukeratu Pazientea --</option>
                    <?php $base_path = '../';
foreach ($pazienteZerrenda as $pz): ?>
                        <option value="<?php $base_path = '../';
echo $pz['paziente_id']; ?>" <?php $base_path = '../';
echo ($aukeratutako_pazientea == $pz['paziente_id']) ? 'selected' : ''; ?>>
                            <?php $base_path = '../';
echo htmlspecialchars($pz['izena'] . ' ' . $pz['abizenak']); ?>
                        </option>
                    <?php $base_path = '../';
endforeach; ?>
                </select>
            </form>
        </div>

        <?php $base_path = '../';
if ($aukeratutako_pazientea && count($neurketak) > 0): ?>
            <div class="grafika-goiburua marjina-goi-30" >
                <h3>Hautatutako pazientearen bilakaera</h3>
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

            <div class="grafika-txartela">
                <canvas id="osabide-grafika" class="nire-grafika"></canvas>
            </div>
        <?php $base_path = '../';
elseif ($aukeratutako_pazientea): ?>
            <p class="daturik-ez">Paziente honek ez du neurketarik erregistratuta grafika sortzeko.</p>
        <?php $base_path = '../';
else: ?>
            <p class="daturik-ez">Mesedez, aukeratu paziente bat goiko zerrendan bere neurketak ikusteko.</p>
        <?php $base_path = '../';
endif; ?>
    </main>

    <script>
        const neurketakData = <?php $base_path = '../';
echo $json_neurketak; ?>;
        const paziente_id = <?php $base_path = '../';
echo $aukeratutako_pazientea ? $aukeratutako_pazientea : 'null'; ?>;
        const pdfEndpoint = '../php_laguntzaileak/pdf_sortu.php';
    </script>
<?php
$base_path = '../';
$extra_js = ["grafikak.js"];
include_once '../php_includeak/mediku_footer.php';
?>


