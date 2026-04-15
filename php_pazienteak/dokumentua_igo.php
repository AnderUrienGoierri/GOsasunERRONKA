<?php
// dokumentua_igo.php: Pazientearentzat dokumentu berria igotzeko orri espezifikoa
$bide_absolutua = '../';
session_start();

if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$paziente_id = $_SESSION['erabiltzaile_id'];
$mezua = '';
$errorea = '';
$jarraipen_id = $_GET['jarraipen_id'] ?? null;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $titulua = $_POST['dokumentu_izena'] ?? '';
    $desk = $_POST['deskribapena'] ?? '';
    $pdf = $_FILES['pdf'] ?? null;
    $j_id = $_POST['jarraipen_id'] ?: null;

    if (!$titulua || !$pdf || $pdf['error'] !== UPLOAD_ERR_OK) {
        $errorea = "Datu guztiak bete eta PDF-a igo behar duzu.";
    } else {
        $ext = strtolower(pathinfo($pdf['name'], PATHINFO_EXTENSION));
        if ($ext !== 'pdf') {
            $errorea = "Fitxategia PDF formatuan egon behar da.";
        } else {
            $pdf_dir = '../paziente_dokumentuak/';
            if (!is_dir($pdf_dir)) mkdir($pdf_dir, 0777, true);

            $data = date('Ymd');
            $ordua = date('His');
            $garbi_titulua = preg_replace('/[^a-zA-Z0-9._-]/', '_', $titulua);
            $dest_name = "dok_paziente_{$paziente_id}_{$data}_{$ordua}_{$garbi_titulua}.pdf";

            if (move_uploaded_file($pdf['tmp_name'], $pdf_dir . $dest_name)) {
                try {
                    $stmt = $pdo->prepare("INSERT INTO dokumentuak (paziente_id, fitxategi_izena, bidea_zerbitzarian, dokumentu_izena, deskribapena, jarraipena_id) VALUES (?, ?, ?, ?, ?, ?)");
                    $stmt->execute([$paziente_id, $dest_name, 'paziente_dokumentuak/' . $dest_name, $titulua, $desk, $j_id]);
                    
                    // Redirect back based on where we came from
                    if ($j_id) {
                        header("Location: jarraipenak.php?msg=" . urlencode("Dokumentua ondo igo eta lotu da."));
                    } else {
                        header("Location: dokumentuak.php?msg=" . urlencode("Dokumentu berria ondo igo da."));
                    }
                    exit;
                } catch (PDOException $e) {
                    $errorea = "Errorea datu basean sartzean: " . $e->getMessage();
                }
            } else {
                $errorea = "Errorea fitxategia zerbitzarira mugitzean.";
            }
        }
    }
}

$orri_izenburua = 'Gehitu Dokumentua - GOsasun';
$uneko_orria = 'dokumentuak';
$css_pertsonalizatua = 'dokumentuak.css';
include_once '../php_orri_includeak/paziente_goiburua.php';
?>

<main class="panel-nagusia">
    <div class="orri-goiburua">
        <div>
            <h2><img src="../img/svg/plus-circle.svg" alt="" class="ikono-ertaina marjina-esk-5"> Igo Dokumentu Berria</h2>
            <p>Bete inprimakia zure osasun dokumentua gordetzeko.</p>
        </div>
        <a href="<?php echo $jarraipen_id ? 'jarraipenak.php' : 'dokumentuak.php'; ?>" class="botoia botoi-ertza">Atzera</a>
    </div>

    <?php if ($errorea): ?><div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div><?php endif; ?>

    <section class="inprimaki-edukiontzia txartel-zuria">
        <form method="post" enctype="multipart/form-data" class="funtsezko-inprimakia">
            <input type="hidden" name="jarraipen_id" value="<?php echo htmlspecialchars($jarraipen_id); ?>">
            
            <div class="marjina-behe-20">
                <label class="etiketa-lodia">Dokumentuaren izena: <span class="beharrezkoa">*</span></label>
                <input type="text" name="dokumentu_izena" required class="inprimaki-kontrola" placeholder="Adib: Analitika 2024, Radiografia...">
            </div>

            <div class="marjina-behe-20">
                <label class="etiketa-lodia">Deskribapena:</label>
                <textarea name="deskribapena" rows="4" class="inprimaki-kontrola" placeholder="Gehitu dokumentuaren inguruko xehetasunen bat..."></textarea>
            </div>

            <div class="marjina-behe-30">
                <label class="etiketa-lodia">PDF fitxategia: <span class="beharrezkoa">*</span></label>
                <div class="fitxategi-igoera">
                    <input type="file" name="pdf" accept="application/pdf" required class="inprimaki-kontrola">
                    <p class="laguntza-testua">Eon bakarrik PDF formatua onartzen da.</p>
                </div>
            </div>

            <div class="botoi-taldea flex-bukaera">
                <a href="<?php echo $jarraipen_id ? 'jarraipenak.php' : 'dokumentuak.php'; ?>" class="botoia botoi-ertza">Utzi</a>
                <button type="submit" class="botoia botoi-nagusia">Igo Dokumentua</button>
            </div>
        </form>
    </section>
</main>

<?php include_once '../php_orri_includeak/paziente_footer.php'; ?>
