<?php
$bide_absolutua = '../'; session_start();
require_once '../php_laguntzaileak/DB_konexioa.php';

if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Osasun Langilea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

$osasun_langile_id = $_SESSION['erabiltzaile_id'];

// Get Medikuaren pazienteak
$stmt = $pdo->prepare("
    SELECT p.id as paziente_id, p.izena, p.abizenak
    FROM Pazienteak p
    JOIN Mediku_Paziente mp ON p.id = mp.paziente_id
    WHERE mp.osasun_langile_id = ?
");
$stmt->execute([$osasun_langile_id]);
$pazienteZerrenda = $stmt->fetchAll(PDO::FETCH_ASSOC);

$aukeratutako_pazientea = $_GET['paziente_id'] ?? null;
$jarraipenak = [];

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
        $stmt_datuak = $pdo->prepare("SELECT DATE(erregistro_data) AS data, tentsio_sistolikoa, tentsio_diastolikoa, pisua_kg, altuera, pultsua_ppm 
                       FROM jarraipenak WHERE paziente_id = ? ORDER BY erregistro_data ASC");
        $stmt_datuak->execute([$aukeratutako_pazientea]);
        $jarraipenak = $stmt_datuak->fetchAll(PDO::FETCH_ASSOC);
    }
}
$json_jarraipenak = json_encode($jarraipenak);
?>
<?php $orri_izenburua = "Pazienteen Grafikak - GOsasun";
$uneko_orria = "grafikak";
$css_pertsonalizatua = "grafikak.css";

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
                    <?php foreach ($pazienteZerrenda as $pz): ?>
                        <option value="<?php echo $pz['paziente_id']; ?>" <?php echo ($aukeratutako_pazientea == $pz['paziente_id']) ? 'selected' : ''; ?>>
                            <?php echo htmlspecialchars($pz['izena'] . ' ' . $pz['abizenak']); ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </form>
        </div>

        <?php if ($aukeratutako_pazientea && count($jarraipenak) > 0): ?>
            <div class="grafika-goiburua marjina-goi-30" >
                <h3>Hautatutako pazientearen bilakaera</h3>
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

            <div class="grafika-txartela">
                <canvas id="osabide-grafika" class="nire-grafika"></canvas>
            </div>

            <div id="estatistika-panela" class="estatistika-panela marjina-goi-25">
                <!-- JavaScript-ek beteko du hau dinamikoki -->
            </div>
        <?php elseif ($aukeratutako_pazientea): ?>
            <p class="daturik-ez">Paziente honek ez du neurketarik erregistratuta grafika sortzeko.</p>
        <?php else: ?>
            <p class="daturik-ez">Mesedez, aukeratu paziente bat goiko zerrendan bere jarraipenak ikusteko.</p>
        <?php endif; ?>
    </main>

    <script>
        const jarraipenakData = <?php echo $json_jarraipenak; ?>;
        const paziente_id = <?php echo $aukeratutako_pazientea ? $aukeratutako_pazientea : 'null'; ?>;
        const pdfEndpoint = '../php_laguntzaileak/pdf_sortu.php';
    </script>
<?php $js_gehigarria = ["grafikak.js"];
include_once '../php_includeak/mediku_footer.php';
?>


