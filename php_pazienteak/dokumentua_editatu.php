<?php
// dokumentua_editatu.php: Pazientearentzat dokumentua editatzeko orri espezifikoa
$bide_absolutua = '../';
session_start();

if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$paziente_id = $_SESSION['erabiltzaile_id'];
$dok_id = $_GET['id'] ?? null;
$mezua = '';
$errorea = '';

if (!$dok_id) {
    header("Location: dokumentuak.php");
    exit;
}

// Lortu uneko datuak
try {
    $stmt = $pdo->prepare("SELECT * FROM dokumentuak WHERE id = ? AND paziente_id = ?");
    $stmt->execute([$dok_id, $paziente_id]);
    $dokumentua = $stmt->fetch();

    if (!$dokumentua) {
        header("Location: dokumentuak.php?error=" . urlencode("Ez da dokumentua aurkitu."));
        exit;
    }
} catch (PDOException $e) {
    $errorea = "Errorea datuak lortzean: " . $e->getMessage();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $titulua = $_POST['dokumentu_izena'] ?? '';
    $desk = $_POST['deskribapena'] ?? '';
    $pdf_berria = $_FILES['pdf_berria'] ?? null;

    try {
        $bide_berria = $dokumentua['bidea_zerbitzarian'];

        // Fitxategi berria igo bada
        if ($pdf_berria && $pdf_berria['error'] === UPLOAD_ERR_OK) {
            $tmp_name = $pdf_berria['tmp_name'];
            $orig_name = basename($pdf_berria['name']);
            $ext = strtolower(pathinfo($orig_name, PATHINFO_EXTENSION));

            if ($ext === 'pdf') {
                $pdf_dir = '../paziente_dokumentuak/';
                $data = date('Ymd');
                $ordua = date('His');
                $garbi_titulua = preg_replace('/[^a-zA-Z0-9._-]/', '_', $titulua);
                $fitx_izena_berria = "dok_paziente_{$paziente_id}_{$data}_{$ordua}_{$garbi_titulua}.pdf";
                $bide_berria_osoa = $pdf_dir . $fitx_izena_berria;

                if (move_uploaded_file($tmp_name, $bide_berria_osoa)) {
                    // Ezabatu zaharra
                    if (file_exists('../' . $dokumentua['bidea_zerbitzarian'])) {
                        unlink('../' . $dokumentua['bidea_zerbitzarian']);
                    }
                    $bide_berria = 'paziente_dokumentuak/' . $fitx_izena_berria;
                }
            } else {
                $errorea = "Fitxategiak PDF formatuan egon behar du.";
            }
        }

        if (!$errorea) {
            $stmtUpdate = $pdo->prepare("UPDATE dokumentuak SET dokumentu_izena = ?, deskribapena = ?, bidea_zerbitzarian = ? WHERE id = ?");
            $stmtUpdate->execute([$titulua, $desk, $bide_berria, $dok_id]);
            header("Location: dokumentuak.php?msg=" . urlencode("Dokumentua ondo eguneratu da."));
            exit;
        }
    } catch (PDOException $e) {
        $errorea = "Errorea eguneratzean: " . $e->getMessage();
    }
}

$orri_izenburua = 'Editatu Dokumentua - GOsasun';
$uneko_orria = 'dokumentuak';
$css_pertsonalizatua = 'dokumentuak.css';
include_once '../php_orri_includeak/paziente_goiburua.php';
?>

<main class="panel-nagusia">
    <div class="orri-goiburua">
        <div>
            <h2><img src="../img/svg/pencil.svg" alt="" class="ikono-ertaina marjina-esk-5"> Editatu Dokumentua</h2>
            <p>Aldatu dokumentuaren informazioa edo fitxategia.</p>
        </div>
        <a href="dokumentuak.php" class="botoia botoi-ertza">Atzera</a>
    </div>

    <?php if ($errorea): ?><div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div><?php endif; ?>

    <section class="inprimaki-edukiontzia txartel-zuria">
        <form method="post" enctype="multipart/form-data" class="funtsezko-inprimakia">
            <div class="marjina-behe-20">
                <label class="etiketa-lodia">Dokumentuaren izena: <span class="beharrezkoa">*</span></label>
                <input type="text" name="dokumentu_izena" value="<?php echo htmlspecialchars($dokumentua['dokumentu_izena']); ?>" required class="inprimaki-kontrola">
            </div>

            <div class="marjina-behe-20">
                <label class="etiketa-lodia">Deskribapena:</label>
                <textarea name="deskribapena" rows="4" class="inprimaki-kontrola"><?php echo htmlspecialchars($dokumentua['deskribapena']); ?></textarea>
            </div>

            <div class="marjina-behe-30">
                <label class="etiketa-lodia">Fitxategia (Utzi hutsik unekoa mantendu nahi baduzu):</label>
                <div class="fitxategi-info marjina-behe-10">
                    <img src="../img/svg/file-text.svg" alt="" class="ikono-txikia"> 
                    <span>Uneko fitxategia: <strong><?php echo htmlspecialchars($dokumentua['fitxategi_izena']); ?></strong></span>
                </div>
                <div class="fitxategi-igoera">
                    <input type="file" name="pdf_berria" accept="application/pdf" class="inprimaki-kontrola">
                    <p class="laguntza-testua">Eon bakarrik PDF formatua onartzen da fitxategia aldatzeko.</p>
                </div>
            </div>

            <div class="botoi-taldea flex-bukaera">
                <a href="dokumentuak.php" class="botoia botoi-ertza">Utzi</a>
                <button type="submit" class="botoia botoi-nagusia">Gorde Aldaketak</button>
            </div>
        </form>
    </section>
</main>

<?php include_once '../php_orri_includeak/paziente_footer.php'; ?>
