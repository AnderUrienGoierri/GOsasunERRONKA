<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';

$errorea = '';
$mezua = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $izena          = $_POST['izena']                ?? '';
    $abizenak       = $_POST['abizenak']             ?? '';
    $email          = $_POST['email']                ?? '';
    $pasahitza      = $_POST['pasahitza']            ?? '1234';
    $txanda         = $_POST['txanda']               ?? 'Goizez';
    $jaiotze_data   = $_POST['jaiotze_data']         ?? null;
    $telefonoa      = $_POST['telefonoa']            ?? null;
    $hizkuntza      = $_POST['hizkuntza']            ?? 'Euskara';

    // Irudiaren kudeaketa
    $irudia_izena = 'img/lehenetsia_harrera.png'; // Lehenetsia
    if (isset($_FILES['irudia']) && $_FILES['irudia']['error'] === UPLOAD_ERR_OK) {
        $ext = pathinfo($_FILES['irudia']['name'], PATHINFO_EXTENSION);
        $fitxategi_izena = $izena . "_" . time() . ".png";
        $helburua = "../img/png/" . $fitxategi_izena;

        if (move_uploaded_file($_FILES['irudia']['tmp_name'], $helburua)) {
            $irudia_izena = "img/png/" . $fitxategi_izena;
        }
    }

    if (empty($izena) || empty($abizenak) || empty($email)) {
        $errorea = "Derrigorrezko eremuak bete behar dira (Izena, Abizenak, Email).";
    } else {
        try {
            $pdo->beginTransaction();

            // 1. Sortu erabiltzailea
            $stmt = $pdo->prepare("INSERT INTO Erabiltzaileak (email, pasahitza, rol_id, hizkuntza, irudia, aktibo) VALUES (?, ?, 3, ?, ?, 1)");
            $stmt->execute([$email, $pasahitza, $hizkuntza, $irudia_izena]); 

            $berri_id = $pdo->lastInsertId();

            // 2. Sortu langilea
            $stmt2 = $pdo->prepare("INSERT INTO Harrerako_Langileak (id, izena, abizenak, txanda, jaiotze_data, telefonoa) VALUES (?, ?, ?, ?, ?, ?)");
            $stmt2->execute([$berri_id, $izena, $abizenak, $txanda, $jaiotze_data, $telefonoa]);

            $pdo->commit();
            header("Location: harrerako_langileak.php?msg=" . urlencode("Langilea ongi sortu da."));
            exit;
        } catch (PDOException $e) {
            $pdo->rollBack();
            if ($e->getCode() == 23000) {
                $errorea = "Helbide elektroniko hori jada erregistratuta dago.";
            } else {
                $errorea = "Errorea langilea sortzean: " . $e->getMessage();
            }
        }
    }
}

$orri_izenburua = 'Harrerako Langile Berria Sortu - GOsasun';
$uneko_orria = 'harrerako_langileak';
include_once '../php_orri_includeak/harrera_goiburua.php';
?>
<!-- GUI logic -->
<main class="panel-nagusia">
    <div class="orri-goiburua">
        <div>
            <h2><img src="../img/svg/plus-circle.svg" alt="" class="ikono-ertaina marjina-esk-5"> Harrerako Langile Berria</h2>
            <p>Sortu harrerako langile berri bat sisteman sartzeko.</p>
        </div>
        <a href="harrerako_langileak.php" class="botoia botoi-ertza flex-zentratua"><img src="../img/svg/arrow-left.svg" alt="" class="ikono-txikia marjina-esk-5"> Itzuli</a>
    </div>

    <?php if ($errorea): ?>
        <div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div>
    <?php endif; ?>

    <div class="inprimaki-edukiontzia form-edukiontzi-zuria padding-30 kutxa-itzala">
        <form method="POST" enctype="multipart/form-data">

            <h3 class="izenburu-urdina marjina-behe-20"><img src="../img/svg/user.svg" alt="" class="ikono-ertaina marjina-esk-5"> Datu Pertsonalak eta Argazkia</h3>
            <div class="inprimaki-taldea marjina-behe-20 p-20 fts-14 bg-gris-argia desk-marjin">
                <label for="irudia" class="etiketa-lodia">Profil Argazkia</label><br>
                <input type="file" id="irudia" name="irudia" class="inprimaki-kontrola marjina-goi-10" accept="image/*">
                <p class="testu-gris-txikia marjina-goi-5">PNG formatuan gordeko da img/png karpetan.</p>
            </div>

            <div class="sareta-bikoa marjina-behe-15">
                <div class="inprimaki-taldea">
                    <label for="izena" class="etiketa-lodia">Izena <span class="beharrezkoa">*</span></label>
                    <input type="text" id="izena" name="izena" class="inprimaki-kontrola sarrera-handia" required value="<?php echo htmlspecialchars($_POST['izena'] ?? ''); ?>">
                </div>
                <div class="inprimaki-taldea">
                    <label for="abizenak" class="etiketa-lodia">Abizenak <span class="beharrezkoa">*</span></label>
                    <input type="text" id="abizenak" name="abizenak" class="inprimaki-kontrola sarrera-handia" required value="<?php echo htmlspecialchars($_POST['abizenak'] ?? ''); ?>">
                </div>
            </div>

            <div class="sareta-bikoa marjina-behe-30">
                <div class="inprimaki-taldea">
                    <label for="jaiotze_data" class="etiketa-lodia">Jaiotze Data</label>
                    <input type="date" id="jaiotze_data" name="jaiotze_data" class="inprimaki-kontrola sarrera-handia">
                </div>
                <div class="inprimaki-taldea">
                    <label for="telefonoa" class="etiketa-lodia">Telefonoa</label>
                    <input type="text" id="telefonoa" name="telefonoa" class="inprimaki-kontrola sarrera-handia">
                </div>
            </div>

            <hr class="marjina-behe-20 separator">

            <h3 class="izenburu-urdina marjina-behe-20"><img src="../img/svg/briefcase.svg" alt="" class="ikono-ertaina marjina-esk-5"> Lan-txanda</h3>

            <div class="sareta-bikoa marjina-behe-30">
                <div class="inprimaki-taldea">
                    <label for="txanda" class="etiketa-lodia">Txanda</label>
                    <select id="txanda" name="txanda" class="inprimaki-kontrola sarrera-handia">
                        <option value="Goizez">Goizez</option>
                        <option value="Arratsaldez">Arratsaldez</option>
                        <option value="Gauez">Gauez</option>
                    </select>
                </div>
                <div></div> <!-- Spacer -->
            </div>

            <hr class="marjina-behe-20 separator">

            <h3 class="izenburu-urdina marjina-behe-20"><img src="../img/svg/key.svg" alt="" class="ikono-ertaina marjina-esk-5"> Kontu Datuak</h3>

            <div class="sareta-bikoa marjina-behe-15">
                <div class="inprimaki-taldea">
                    <label for="email" class="etiketa-lodia">E-posta <span class="beharrezkoa">*</span></label>
                    <input type="email" id="email" name="email" class="inprimaki-kontrola sarrera-handia" required value="<?php echo htmlspecialchars($_POST['email'] ?? ''); ?>">
                </div>
                <div class="inprimaki-taldea">
                    <label for="pasahitza" class="etiketa-lodia">Pasahitza</label>
                    <input type="password" id="pasahitza" name="pasahitza" class="inprimaki-kontrola sarrera-handia" value="1234">
                    <small class="testu-gris-txikia">Lehenetsia: 1234</small>
                </div>
            </div>

            <div class="sareta-bikoa marjina-behe-20">
                <div class="inprimaki-taldea">
                    <label for="hizkuntza" class="etiketa-lodia">Hizkuntza</label>
                    <select id="hizkuntza" name="hizkuntza" class="inprimaki-kontrola sarrera-handia">
                        <option value="Euskara">Euskara</option>
                        <option value="Gaztelania">Gaztelania</option>
                        <option value="Ingelesa">Ingelesa</option>
                        <option value="Nederlandera">Nederlandera</option>
                    </select>
                </div>
                <div></div> <!-- Spacer -->
            </div>
            <div class="botoi-taldea marjina-goi-20">
                <button type="submit" class="botoia botoi-nagusia">Langilea Gorde</button>
                <a href="harrerako_langileak.php" class="botoia botoi-ertza">Utzi</a>
            </div>
        </form>
    </div>
</main>

<?php include_once '../php_orri_includeak/harrera_footer.php'; ?>
