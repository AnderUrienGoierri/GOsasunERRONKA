<?php
$bide_absolutua = '../'; session_start();
require_once '../php_orri_laguntzaileak/DB_konexioa.php';

if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Osasun Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

$osasun_langile_id = $_SESSION['erabiltzaile_id'];

// Get Medikuaren pazienteak
$stmt = $pdo->prepare("
    SELECT paziente_id, izena, abizenak
    FROM V_Langile_Pazienteak
    WHERE langile_id = ?
    ORDER BY abizenak, izena
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
        $h_data = $_GET['hasiera_data'] ?? null;
        $b_data = $_GET['bukaera_data'] ?? null;

        $sql_graf = "SELECT DATE(erregistro_data) AS data, tentsio_sistolikoa, tentsio_diastolikoa, pisua_kg, altuera, pultsua_ppm 
                    FROM jarraipenak WHERE paziente_id = ?";
        $params_graf = [$aukeratutako_pazientea];

        if ($h_data) {
            $sql_graf .= " AND erregistro_data >= ?";
            $params_graf[] = $h_data . " 00:00:00";
        }
        if ($b_data) {
            $sql_graf .= " AND erregistro_data <= ?";
            $params_graf[] = $b_data . " 23:59:59";
        }

        $sql_graf .= " ORDER BY erregistro_data ASC";

        $stmt_datuak = $pdo->prepare($sql_graf);
        $stmt_datuak->execute($params_graf);
        $jarraipenak = $stmt_datuak->fetchAll(PDO::FETCH_ASSOC);
    }
}
$json_jarraipenak = json_encode($jarraipenak);
?>
<?php $orri_izenburua = "Pazienteen Grafikak - GOsasun";
$uneko_orria = "grafikak";
$css_pertsonalizatua = "grafikak.css";

include_once '../php_orri_includeak/osasun_langile_goiburua.php';
?>

    <!-- jQuery (NECESSARY for the JS to work) -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <!-- Chart.js eta html2pdf CDNak -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>

    <main class="panel-nagusia" id="pdf-eremua">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/svg/line-chart.svg" alt="" class="ikono-ertaina marjina-esk-5"> Pazienteen Bilakaera Aztertu</h2>
                <p>Ikusi pazientearen bizi-seinaleek denboran zehar izan duten bilakaera grafikoen bidez.</p>
            </div>
        </div>

        <div class="inprimaki-edukiontzia form-edukiontzi-zuria padding-30 marjina-behe-30 kutxa-itzala" data-html2canvas-ignore="true">
            <h3 class="izenburu-urdina marjina-behe-20"><img src="../img/svg/user.svg" alt="" class="ikono-ertaina marjina-esk-5"> Hautatu Pazientea</h3>
            <form action="grafikak.php" method="GET">
                <div class="sareta-bikoa-sareta">
                    <div class="inprimaki-taldea">
                        <label class="etiketa-lodia">Hautatu Pazientea</label>
                        <select name="paziente_id" class="inprimaki-kontrola" onchange="this.form.submit()">
                            <option value="">-- Aukeratu Pazientea --</option>
                            <?php foreach ($pazienteZerrenda as $pz): ?>
                                <option value="<?php echo $pz['paziente_id']; ?>" <?php echo ($aukeratutako_pazientea == $pz['paziente_id']) ? 'selected' : ''; ?>>
                                    <?php echo htmlspecialchars($pz['abizenak'] . ", " . $pz['izena']); ?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="inprimaki-taldea">
                        <label class="etiketa-lodia">Data-tartea (Aukerazkoa)</label>
                        <div class="flex-tartea-10">
                            <input type="date" name="hasiera_data" value="<?php echo $_GET['hasiera_data'] ?? ''; ?>" class="inprimaki-kontrola">
                            <input type="date" name="bukaera_data" value="<?php echo $_GET['bukaera_data'] ?? ''; ?>" class="inprimaki-kontrola">
                            <button type="submit" class="botoia botoi-nagusia"><img src="../img/svg/search.svg" alt="" class="ikono-txikia" style="filter: brightness(0) invert(1);"></button>
                        </div>
                    </div>
                </div>
            </form>
        </div>

        <?php if ($aukeratutako_pazientea && count($jarraipenak) > 0): ?>
            <div class="kutxa-zuria-itzala padding-25 marjina-behe-30">
                <div class="flex-tartea-15 flex-erdia marjina-behe-20 orri-azpiko-marra">
                    <div>
                        <h3 class="izenburu-urdina marjina-behe-5">Bilakaera Grafikoa</h3>
                        <p class="testu-gris-txikia">Hautatu bistaratu nahi duzun neurketa mota</p>
                    </div>
                    <div class="flex-taldea-15" data-html2canvas-ignore="true">
                        <select id="datu-mota" class="inprimaki-kontrola">
                            <option value="pisua_kg">Pisua (kg)</option>
                            <option value="tentsioa">Tentsio Arteriala (SIS/DIA)</option>
                            <option value="pultsua_ppm">Pultsua (ppm)</option>
                            <option value="altuera">Altuera (cm)</option>
                        </select>
                        <button type="button" class="botoia botoi-nagusia" id="btn-deskargatu-pdf">
                            <img src="../img/svg/file-text.svg" alt="" class="ikono-ertaina marjina-esk-5"> Sortu PDF Txostena
                        </button>
                    </div>
                </div>

                <div id="alerta-eremua" data-html2canvas-ignore="true"></div>

                <div class="grafika-eremua" style="position: relative; height:450px; width:100%">
                    <canvas id="osabide-grafika"></canvas>
                </div>

                <div id="estatistika-panela" class="aginte-panel-sareta marjina-goi-30">
                    <!-- JavaScript-ek beteko du hau dinamikoki -->
                </div>
            </div>
        <?php elseif ($aukeratutako_pazientea): ?>
            <div class="testua-erdian hutsartea-100 opazitatea-50">
                <img src="../img/svg/inbox.svg" alt="" class="ikono-handia-48 marjina-behe-15">
                <p>Paziente honek ez du neurketarik erregistratuta grafika sortzeko.</p>
            </div>
        <?php else: ?>
            <div class="testua-erdian hutsartea-100 opazitatea-50">
                <img src="../img/svg/line-chart.svg" alt="" class="ikono-handia-48 marjina-behe-15">
                <p>Mesedez, aukeratu paziente bat bere jarraipen grafikoak ikusteko.</p>
            </div>
        <?php endif; ?>
    </main>

    <script>
        const jarraipenakData = <?php echo $json_jarraipenak; ?>;
        const paziente_id = <?php echo $aukeratutako_pazientea ? $aukeratutako_pazientea : 'null'; ?>;
        const pdfEndpoint = '../php_orri_laguntzaileak/pdf_sortu.php';
    </script>
<?php $js_gehigarria = ["grafikak.js"];
include_once '../php_orri_includeak/osasun_footer.php';
?>


