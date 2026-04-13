<?php
$bide_absolutua = '../'; session_start();
require_once '../php_laguntzaileak/DB_konexioa.php';

if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

$erab_id = $_SESSION['erabiltzaile_id'];
$stmt = $pdo->prepare("SELECT DATE(erregistro_data) AS data, tentsio_sistolikoa, tentsio_diastolikoa, pisua_kg, altuera, pultsua_ppm 
                       FROM jarraipenak WHERE paziente_id = ? ORDER BY erregistro_data ASC");
$stmt->execute([$erab_id]);
$jarraipenak = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Return standard formatting variables
$json_jarraipenak = json_encode($jarraipenak);
?>
<?php $orri_izenburua = "Nire Grafikak - GOsasun";
$uneko_orria = "grafikak";
$css_pertsonalizatua = "grafikak.css";

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
                    <option value="pultsua">Pultsua (ppm)</option>
                </select>
                <button type="button" class="botoia botoi-nagusia" id="btn-deskargatu-pdf">
                    <img src="../img/svg/file-text.svg" alt="" class="ikono-ertaina marjina-esk-5"> Deskargatu PDF (Txostena)
                </button>
            </div>
        </div>

        <div id="alerta-eremua" data-html2canvas-ignore="true"></div>

        <?php if (count($jarraipenak) > 0): ?>
            <div class="grafika-txartela">
                <canvas id="osabide-grafika" class="nire-grafika"></canvas>
            </div>

            <div id="estatistika-panela" class="estatistika-panela marjina-goi-25">
                <!-- JavaScript-ek beteko du hau dinamikoki -->
            </div>
        <?php else: ?>
            <p class="daturik-ez">Oraindik ez dago neurketarik erregistratuta grafika sortzeko.</p>
        <?php endif; ?>
    </main>

    <script>
        // Datuak PStik JSra pasatu
        const jarraipenakData = <?php echo $json_jarraipenak; ?>;
        const paziente_id = <?php echo $erab_id; ?>;
        const pdfEndpoint = '../php_laguntzaileak/pdf_sortu.php';
    </script>

<?php $js_gehigarria = ["grafikak.js"];
include_once '../php_includeak/paziente_footer.php';
?>


