<?php
$bide_absolutua = '../'; session_start();
require_once '../php_orri_laguntzaileak/DB_konexioa.php';

if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

$erab_id = $_SESSION['erabiltzaile_id'];
$h_data = $_GET['hasiera_data'] ?? null;
$b_data = $_GET['bukaera_data'] ?? null;

$sql_paz = "SELECT DATE(erregistro_data) AS data, tentsio_sistolikoa, tentsio_diastolikoa, pisua_kg, altuera, pultsua_ppm 
            FROM jarraipenak WHERE paziente_id = ?";
$params_paz = [$erab_id];

if ($h_data) {
    $sql_paz .= " AND erregistro_data >= ?";
    $params_paz[] = $h_data . " 00:00:00";
}
if ($b_data) {
    $sql_paz .= " AND erregistro_data <= ?";
    $params_paz[] = $b_data . " 23:59:59";
}

$sql_paz .= " ORDER BY erregistro_data ASC";

$stmt = $pdo->prepare($sql_paz);
$stmt->execute($params_paz);
$jarraipenak = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Return standard formatting variables
$json_jarraipenak = json_encode($jarraipenak);
?>
<?php $orri_izenburua = "Nire Grafikak - GOsasun";
$uneko_orria = "grafikak";
$css_pertsonalizatua = "grafikak.css";

include_once '../php_orri_includeak/paziente_goiburua.php';
?>

    <!-- Chart.js eta html2pdf CDNak -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>

    <main class="grafika-edukiontzia" id="pdf-eremua">
        <h2><img src="../img/svg/line-chart.svg" alt="" class="ikono-ertaina marjina-esk-5"> Nire Datuen Bilakaera</h2>
        <div class="grafika-goiburua">

            <div class="grafika-kontrolak" data-html2canvas-ignore="true">
                <form action="grafikak.php" method="GET" class="flex-zentratua-10">
                    <div class="flex-taldea-5">
                        <input type="date" name="hasiera_data" value="<?php echo $_GET['hasiera_data'] ?? ''; ?>" class="inprimaki-kontrola">
                        <input type="date" name="bukaera_data" value="<?php echo $_GET['bukaera_data'] ?? ''; ?>" class="inprimaki-kontrola">
                        <button type="submit" class="botoia botoi-nagusia"><img src="../img/svg/search.svg" alt="" class="ikono-txikia" style="filter: brightness(0) invert(1);"></button>
                    </div>
                    <select id="datu-mota" class="inprimaki-kontrola">
                        <option value="pisua_kg">Pisua (kg)</option>
                        <option value="tentsioa">Tentsio Arteriala (SIS/DIA)</option>
                        <option value="pultsua_ppm">Pultsua (ppm)</option>
                        <option value="altuera">Altuera (cm)</option>
                    </select>
                    <button type="button" class="botoia botoi-nagusia" id="btn-deskargatu-pdf">
                        <img src="../img/svg/file-text.svg" alt="" class="ikono-ertaina marjina-esk-5"> Deskargatu PDF (Txostena)
                    </button>
                </form>
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
        const pdfEndpoint = '../php_orri_laguntzaileak/pdf_sortu.php';
    </script>

<?php $js_gehigarria = ["grafikak.js"];
include_once '../php_orri_includeak/paziente_footer.php';
?>


