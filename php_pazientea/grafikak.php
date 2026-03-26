<?php
$bide_absolutua = '../'; session_start();
require_once '../php_laguntzaileak/DB_konexioa.php';

if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

$erab_id = $_SESSION['erabiltzaile_id'];
$stmt = $pdo->prepare("SELECT DATE(erregistro_data) AS data, glukosa_mg_dl, tentsio_sistolikoa, tentsio_diastolikoa, pisua_kg, altuera, pultsua_ppm 
                       FROM Neurketak WHERE paziente_id = ? ORDER BY erregistro_data ASC");
$stmt->execute([$erab_id]);
$neurketak = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Return standard formatting variables
$json_neurketak = json_encode($neurketak);
?>
<?php $orri_izenburua = "Nire Grafikak - GOsasun";
$uneko_orria = "grafikak";
$css_pertsonalizatua = "grafikak.css";

include_once '../php_includeak/paziente_goiburua.php';
?>

    <!-- Chart.js eta html2pdf CDNak -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>

    <main class="panel-nagusia" id="pdf-eremua">
        <div class="orri-goiburua">
            <div>
                <h2 class="izenburu-nagusia"><img src="../img/svg/line-chart.svg" alt="" class="ikono-ertaina marjina-esk-5"> Nire Datuen Bilakaera</h2>
                <p>Ikusi zure osasun datuen bilakaera grafikoen bidez.</p>
            </div>
            <div class="grafika-kontrolak" data-html2canvas-ignore="true">
                <select id="datu-mota" class="inprimaki-kontrola">
                    <option value="pisua">Pisua (kg)</option>
                    <option value="tentsioa">Tentsio Arteriala</option>
                    <option value="glukosa">Glukosa (mg/dl)</option>
                    <option value="pultsua">Pultsua (ppm)</option>
                </select>
                <button type="button" class="botoia botoi-nagusia" id="btn-deskargatu-pdf">
                    <img src="../img/svg/file-text.svg" alt="" class="ikono-ertaina marjina-esk-5"> Deskargatu PDF (Txostena)
                </button>
            </div>
        </div>

        <div id="alerta-eremua" data-html2canvas-ignore="true"></div>

        <?php if (count($neurketak) > 0): ?>
            <div class="grafika-txartela">
                <canvas id="osabide-grafika" class="nire-grafika"></canvas>
            </div>
            <br>
            <div id="estatistika-panela" class="estatistika-panela marjina-goi-25">
                <!-- JavaScript-ek beteko du hau dinamikoki -->
            </div>
        <?php else: ?>
            <p class="daturik-ez">Oraindik ez dago neurketarik erregistratuta grafika sortzeko.</p>
        <?php endif; ?>
    </main>

    <script>
        // Datuak PStik JSra pasatu
        const neurketakData = <?php echo $json_neurketak; ?>;
        const paziente_id = <?php echo $erab_id; ?>;
        const pdfEndpoint = '../php_laguntzaileak/pdf_sortu.php';
    </script>

<?php $js_gehigarria = ["grafikak.js"];
include_once '../php_includeak/paziente_footer.php';
?>


