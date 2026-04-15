<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$errorea = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $izena          = $_POST['izena'] ?? '';
    $abizenak       = $_POST['abizenak'] ?? '';
    $nan            = $_POST['nan'] ?? '';
    $email          = $_POST['email'] ?? '';
    $pasahitza      = $_POST['pasahitza'] ?? '1234';
    $elkargokide    = $_POST['elkargokide_zenbakia'] ?? '';
    $espezialitatea = $_POST['espezialitatea'] ?? '';
    $telefonoa      = $_POST['telefonoa'] ?? null;
    $kontsulta      = $_POST['kontsulta'] ?? null;
    $lanaldia       = $_POST['lanaldia'] ?? null;
    $jaiotze_data   = $_POST['jaiotze_data'] ?? null;
    $hizkuntza      = $_POST['hizkuntza'] ?? 'Euskara';

    // Irudiaren kudeaketa
    $irudia_izena = 'img/lehenetsia_medikua.png'; // Lehenetsia
    if (isset($_FILES['irudia']) && $_FILES['irudia']['error'] === UPLOAD_ERR_OK) {
        $ext = pathinfo($_FILES['irudia']['name'], PATHINFO_EXTENSION);
        $fitxategi_izena = $nan . "_" . time() . ".png"; // PNG formatura behartuta erabiltzaileak eskatu bezala (edo jatorrizkoa gordez gero)
        $helburua = "../img/png/" . $fitxategi_izena;

        if (move_uploaded_file($_FILES['irudia']['tmp_name'], $helburua)) {
            $irudia_izena = "img/png/" . $fitxategi_izena;
        }
    }

    if ($izena && $abizenak && $email && $elkargokide && $nan) {
        try {
            $pdo->beginTransaction();

            // 1. Insert into Erabiltzaileak
            $stmtUser = $pdo->prepare("INSERT INTO erabiltzaileak (email, pasahitza, rol_id, hizkuntza, nan, izena, abizenak, jaiotze_data, telefonoa, irudia, aktibo) VALUES (?, ?, 1, ?, ?, ?, ?, ?, ?, ?, 1)");
            $stmtUser->execute([$email, $pasahitza, $hizkuntza, $nan, $izena, $abizenak, $jaiotze_data, $telefonoa, $irudia_izena]);
            $id_berria = $pdo->lastInsertId();

            // 2. Insert into osasun_langileak
            $stmtLangile = $pdo->prepare("INSERT INTO osasun_langileak (id, elkargokide_zenbakia, espezialitatea, kontsulta, lanaldia) VALUES (?, ?, ?, ?, ?)");
            $stmtLangile->execute([$id_berria, $elkargokide, $espezialitatea, $kontsulta, $lanaldia]);

            $pdo->commit();
            header("Location: osasun_langileak.php?msg=" . urlencode("Langile berria sortu da."));
            exit;
        } catch (PDOException $e) {
            $pdo->rollBack();
            $errorea = "Errorea: " . $e->getMessage();
        }
    } else {
        $errorea = "Bete derrigorrezko eremuak.";
    }
}

$orri_izenburua = 'Osasun Langile Berria Sortu - GOsasun';
$uneko_orria = 'osasun_langileak';
include_once '../php_orri_includeak/harrera_goiburua.php';
?>
<!-- GUI logic -->
    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/svg/plus-circle.svg" alt="" class="ikono-ertaina marjina-esk-5"> Osasun Langile Berria Sortu</h2>
                <p>Bete beheko formularioa langile berria sistemara gehitzeko.</p>
            </div>
            <a href="osasun_langileak.php" class="botoia botoi-ertza">← Itzuli</a>
        </div>

        <?php if ($errorea): ?><div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div><?php endif; ?>

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
                        <input type="text" id="izena" name="izena" class="inprimaki-kontrola sarrera-handia" required>
                    </div>
                    <div class="inprimaki-taldea">
                        <label for="abizenak" class="etiketa-lodia">Abizenak <span class="beharrezkoa">*</span></label>
                        <input type="text" id="abizenak" name="abizenak" class="inprimaki-kontrola sarrera-handia" required>
                    </div>
                </div>

                <div class="sareta-bikoa marjina-behe-15">
                    <div class="inprimaki-taldea">
                        <label for="nan" class="etiketa-lodia">NAN Identifikadorea <span class="beharrezkoa">*</span></label>
                        <input type="text" id="nan" name="nan" class="inprimaki-kontrola sarrera-handia" required maxlength="9" placeholder="12345678A">
                    </div>
                    <div class="inprimaki-taldea">
                        <label for="jaiotze_data" class="etiketa-lodia">Jaiotze Data</label>
                        <input type="date" id="jaiotze_data" name="jaiotze_data" class="inprimaki-kontrola sarrera-handia">
                    </div>
                </div>

                <div class="sareta-bikoa marjina-behe-30">
                    <div class="inprimaki-taldea">
                        <label for="telefonoa" class="etiketa-lodia">Telefonoa</label>
                        <input type="text" id="telefonoa" name="telefonoa" class="inprimaki-kontrola sarrera-handia">
                    </div>
                    <div></div> <!-- Spacer -->
                </div>

                <hr class="marjina-behe-20 separator">

                <h3 class="izenburu-urdina marjina-behe-20"><img src="../img/svg/briefcase.svg" alt="" class="ikono-ertaina marjina-esk-5"> Lan Datuak</h3>

                <div class="sareta-bikoa marjina-behe-15">
                    <div class="inprimaki-taldea">
                        <label for="elkargokide_zenbakia" class="etiketa-lodia">Elkargokide Zkia. <span class="beharrezkoa">*</span></label>
                        <input type="text" id="elkargokide_zenbakia" name="elkargokide_zenbakia" class="inprimaki-kontrola sarrera-handia" required>
                    </div>
                    <div class="inprimaki-taldea">
                        <label for="espezialitatea" class="etiketa-lodia">Espezialitatea</label>
                        <input type="text" id="espezialitatea" name="espezialitatea" class="inprimaki-kontrola sarrera-handia">
                    </div>
                </div>

                <div class="sareta-bikoa marjina-behe-30">
                    <div class="inprimaki-taldea">
                        <label for="kontsulta" class="etiketa-lodia">Kontsulta</label>
                        <input type="text" id="kontsulta" name="kontsulta" class="inprimaki-kontrola sarrera-handia" placeholder="adib. K-01">
                    </div>
                    <div class="inprimaki-taldea">
                        <label for="lanaldia" class="etiketa-lodia">Lanaldia</label>
                        <select id="lanaldia" name="lanaldia" class="inprimaki-kontrola sarrera-handia">
                            <option value="">Hautatu...</option>
                            <option value="Osoa">Osoa</option>
                            <option value="Erdia">Erdia</option>
                            <option value="Txandaka">Txandaka</option>
                        </select>
                    </div>
                </div>

                <hr class="marjina-behe-20 separator">

                <h3 class="izenburu-urdina marjina-behe-20"><img src="../img/svg/key.svg" alt="" class="ikono-ertaina marjina-esk-5"> Kontu Datuak</h3>

                <div class="sareta-bikoa marjina-behe-15">
                    <div class="inprimaki-taldea">
                        <label for="email" class="etiketa-lodia">E-posta <span class="beharrezkoa">*</span></label>
                        <input type="email" id="email" name="email" class="inprimaki-kontrola sarrera-handia" required>
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
                    <button type="submit" class="botoia botoi-nagusia">Gorde Langilea</button>
                    <a href="osasun_langileak.php" class="botoia botoi-ertza">Utzi</a>
                </div>
            </form>
        </div>
    </main>

<?php include_once '../php_orri_includeak/harrera_footer.php'; ?>
