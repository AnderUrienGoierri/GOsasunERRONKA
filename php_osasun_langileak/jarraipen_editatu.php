<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Osasun Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';

$j_id = $_GET['id'] ?? null;
if (!$j_id) {
    header("Location: jarraipenak.php");
    exit;
}

$mezua = "";
$errorea = "";

// 1. Lortu jarraipenaren datuak
$stmt = $pdo->prepare("SELECT j.*, p.izena, p.abizenak FROM jarraipenak j JOIN V_Pazientea p ON j.paziente_id = p.paziente_id WHERE j.id = ?");
$stmt->execute([$j_id]);
$jarraipena = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$jarraipena) {
    die("Jarraipena ez da aurkitu.");
}

// 2. Kudeatu eguneratzea
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['eguneratu_jarraipena'])) {
        $sis = $_POST['tentsio_sistolikoa'] ?: null;
        $dia = $_POST['tentsio_diastolikoa'] ?: null;
        $pultsua = $_POST['pultsua_ppm'] ?: null;
        $pisua = $_POST['pisua_kg'] ?: null;
        $altuera = $_POST['altuera'] ?: null;
        $oharrak = $_POST['oharrak'] ?? '';

        try {
            $stmtUpd = $pdo->prepare("UPDATE jarraipenak SET tentsio_sistolikoa = ?, tentsio_diastolikoa = ?, pultsua_ppm = ?, pisua_kg = ?, altuera = ?, oharrak = ? WHERE id = ?");
            $stmtUpd->execute([$sis, $dia, $pultsua, $pisua, $altuera, $oharrak, $j_id]);

            // Dokumentu berriak kudeatu (multiple)
            if (isset($_FILES['dokumentuak']) && count($_FILES['dokumentuak']['name']) > 0) {
                $pdf_dir = '../paziente_dokumentuak/';
                if (!is_dir($pdf_dir)) mkdir($pdf_dir, 0777, true);

                for ($i = 0; $i < count($_FILES['dokumentuak']['name']); $i++) {
                    if ($_FILES['dokumentuak']['error'][$i] === UPLOAD_ERR_OK) {
                        $tmp_name = $_FILES['dokumentuak']['tmp_name'][$i];
                        $name = $_FILES['dokumentuak']['name'][$i];
                        $ext = strtolower(pathinfo($name, PATHINFO_EXTENSION));

                        if ($ext === 'pdf') {
                            $timestamp = date('Ymd_His');
                            $dest_name = "dok_edit_j{$j_id}_{$timestamp}_{$i}.pdf";
                            if (move_uploaded_file($tmp_name, $pdf_dir . $dest_name)) {
                                $stmtD = $pdo->prepare("INSERT INTO dokumentuak (paziente_id, igotzaile_id, jarraipena_id, fitxategi_izena, bidea_zerbitzarian, dokumentu_izena, igotze_data) VALUES (?, ?, ?, ?, ?, ?, NOW())");
                                $stmtD->execute([$jarraipena['paziente_id'], $_SESSION['erabiltzaile_id'], $j_id, $dest_name, 'paziente_dokumentuak/' . $dest_name, "Erantsitakoa " . ($i+1)]);
                            }
                        }
                    }
                }
            }

            $mezua = "Jarraipena arrakastaz eguneratu da.";
            // Freskatu datuak
            $stmt->execute([$j_id]);
            $jarraipena = $stmt->fetch(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            $errorea = "Errorea eguneratzean: " . $e->getMessage();
        }
    }
}

// 3. Lortu lotutako dokumentuak
$stmtD = $pdo->prepare("SELECT * FROM dokumentuak WHERE jarraipena_id = ? ORDER BY igotze_data DESC");
$stmtD->execute([$j_id]);
$dokumentuak = $stmtD->fetchAll(PDO::FETCH_ASSOC);

$orri_izenburua = "Editatu Jarraipena - GOsasun";
$uneko_orria = "jarraipenak";
$css_pertsonalizatua = "pazienteak.css";

include_once '../php_orri_includeak/osasun_langile_goiburua.php';
?>

<main class="panel-nagusia">
    <a href="jarraipenak.php?paziente_id=<?php echo $jarraipena['paziente_id']; ?>" class="atzera-esteka flex-zentratua"><img src="../img/svg/arrow-left.svg" alt="" class="ikono-1em marjina-esk-5"> Itzuli historrialera</a>

    <div class="orri-goiburua">
        <h2><img src="../img/svg/pencil.svg" alt="" class="ikono-ertaina marjina-esk-5"> Editatu Jarraipen Erregistroa</h2>
        <p>Pazientea: <strong><?php echo htmlspecialchars($jarraipena['abizenak'] . ", " . $jarraipena['izena']); ?></strong> | Data: <?php echo date('Y/m/d H:i', strtotime($jarraipena['erregistro_data'])); ?></p>
    </div>

    <?php if ($mezua): ?><div class="alerta alerta-arrakasta"><?php echo $mezua; ?></div><?php endif; ?>
    <?php if ($errorea): ?><div class="alerta alerta-errorea"><?php echo $errorea; ?></div><?php endif; ?>

    <div class="sareta-bikoa">
        <!-- Formularioa -->
        <div class="kutxa-zuria-itzala padding-25">
            <h3 class="izenburu-urdina marjina-behe-20">Neurketa Datuak</h3>
            <form method="POST" enctype="multipart/form-data">
                <div class="sareta-bikoa-sareta">
                    <div class="inprimaki-taldea">
                        <label class="etiketa-lodia">Tentsio Sistolikoa (SIS)</label>
                        <input type="number" name="tentsio_sistolikoa" value="<?php echo $jarraipena['tentsio_sistolikoa']; ?>" class="inprimaki-kontrola">
                    </div>
                    <div class="inprimaki-taldea">
                        <label class="etiketa-lodia">Tentsio Diastolikoa (DIA)</label>
                        <input type="number" name="tentsio_diastolikoa" value="<?php echo $jarraipena['tentsio_diastolikoa']; ?>" class="inprimaki-kontrola">
                    </div>
                    <div class="inprimaki-taldea">
                        <label class="etiketa-lodia">Pultsua (ppm)</label>
                        <input type="number" name="pultsua_ppm" value="<?php echo $jarraipena['pultsua_ppm']; ?>" class="inprimaki-kontrola">
                    </div>
                    <div class="inprimaki-taldea">
                        <label class="etiketa-lodia">Pisua (kg)</label>
                        <input type="number" step="0.1" name="pisua_kg" value="<?php echo $jarraipena['pisua_kg']; ?>" class="inprimaki-kontrola">
                    </div>
                    <div class="inprimaki-taldea">
                        <label class="etiketa-lodia">Altuera (cm)</label>
                        <input type="number" name="altuera" value="<?php echo $jarraipena['altuera']; ?>" class="inprimaki-kontrola">
                    </div>
                </div>

                <div class="inprimaki-taldea marjina-goi-20">
                    <label class="etiketa-lodia">Oharrak / Sintomak</label>
                    <textarea name="oharrak" rows="4" class="inprimaki-kontrola"><?php echo htmlspecialchars($jarraipena['oharrak']); ?></textarea>
                </div>

                <div class="inprimaki-taldea marjina-goi-20">
                    <label class="etiketa-lodia">Gehitu dokumentuak (PDF bakarrik)</label>
                    <input type="file" name="dokumentuak[]" multiple accept="application/pdf" class="inprimaki-kontrola">
                    <p class="testu-gris-txikia marjina-goi-5">Hainbat fitxategi aukeratu ditzakezu aldi berean.</p>
                </div>

                <div class="flex-bukaera marjina-goi-30">
                    <button type="submit" name="eguneratu_jarraipena" class="botoia botoi-nagusia">Gorde Aldaketak</button>
                    <a href="jarraipenak.php?paziente_id=<?php echo $jarraipena['paziente_id']; ?>" class="botoia botoi-ertza marjina-ezk-10">Utzi</a>
                </div>
            </form>
        </div>

        <!-- Lotutako Dokumentuak -->
        <div class="kutxa-zuria-itzala padding-25">
            <h3 class="izenburu-urdina marjina-behe-20">Dagoeneko Erantsitako Dokumentuak</h3>
            <?php if (count($dokumentuak) > 0): ?>
                <div class="dokumentu-zerrenda">
                    <?php foreach ($dokumentuak as $d): ?>
                        <div class="hitzordu-txartela padding-10 marjina-behe-10 flex-tartea-15 flex-erdia">
                            <div class="flex-hazkundea-1">
                                <div class="testu-lodia"><?php echo htmlspecialchars($d['dokumentu_izena']); ?></div>
                                <div class="testu-gris-txikia"><?php echo date('Y/m/d H:i', strtotime($d['igotze_data'])); ?></div>
                            </div>
                            <a href="../<?php echo htmlspecialchars($d['bidea_zerbitzarian']); ?>" target="_blank" class="botoi-ikonoa">
                                <img src="../img/svg/download.svg" alt="" class="ikono-ertaina">
                            </a>
                        </div>
                    <?php endforeach; ?>
                </div>
            <?php else: ?>
                <p class="testu-gris-etzana">Ez dago dokumenturik erantsita.</p>
            <?php endif; ?>
        </div>
    </div>
</main>

<style>
/* Stilize internal layouts if needed */
.sareta-bikoa-sareta { display: grid; grid-template-columns: 1fr 1fr; gap: 15px; }
@media (max-width: 600px) { .sareta-bikoa-sareta { grid-template-columns: 1fr; } }
</style>

<?php include_once '../php_orri_includeak/osasun_footer.php'; ?>
