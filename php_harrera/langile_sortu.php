<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
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

    if ($izena && $abizenak && $email && $elkargokide && $nan) {
        try {
            $pdo->beginTransaction();

            // 1. Insert into Erabiltzaileak (Personal data)
            $stmtUser = $pdo->prepare("INSERT INTO erabiltzaileak (email, pasahitza, rol_id, hizkuntza, nan, izena, abizenak, jaiotze_data, telefonoa, aktibo) VALUES (?, ?, 1, ?, ?, ?, ?, ?, ?, 1)");
            $stmtUser->execute([$email, $pasahitza, $hizkuntza, $nan, $izena, $abizenak, $jaiotze_data, $telefonoa]);
            $id_berria = $pdo->lastInsertId();

            // 2. Insert into osasun_langileak (Work data)
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

$orri_izenburua = "Osasun Langile Berria - GOsasun";
$uneko_orria = "medikuak";
$css_pertsonalizatua = "medikuak.css";
include_once '../php_includeak/harrera_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/svg/plus-circle.svg" alt="" class="ikono-ertaina marjina-esk-5"> Osasun Langile Berria Sortu</h2>
                <p>Bete beheko formularioa langile berria sistemara gehitzeko.</p>
            </div>
            <a href="osasun_langileak.php" class="botoia botoi-ertza">← Itzuli</a>
        </div>

        <?php if ($errorea): ?><div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div><?php endif; ?>

        <div class="inprimaki-kutxa kutxa-zuria-700">
            <form method="POST">
                <div class="profil-gorputza">

                    <h3 class="atal-izenburua">Datu Pertsonalak</h3>
                    <div class="informazio-taldea">
                        <label for="izena">Izena <span class="beharrezkoa">*</span></label>
                        <input type="text" id="izena" name="izena" class="inprimaki-kontrola" required>
                    </div>
                    <div class="informazio-taldea">
                        <label for="abizenak">Abizenak <span class="beharrezkoa">*</span></label>
                        <input type="text" id="abizenak" name="abizenak" class="inprimaki-kontrola" required>
                    </div>
                    <div class="informazio-taldea">
                        <label for="nan">NAN <span class="beharrezkoa">*</span></label>
                        <input type="text" id="nan" name="nan" class="inprimaki-kontrola" required maxlength="9" placeholder="12345678A">
                    </div>
                    <div class="informazio-taldea">
                        <label for="jaiotze_data">Jaiotze Data</label>
                        <input type="date" id="jaiotze_data" name="jaiotze_data" class="inprimaki-kontrola">
                    </div>
                    <div class="informazio-taldea">
                        <label for="telefonoa">Telefonoa</label>
                        <input type="text" id="telefonoa" name="telefonoa" class="inprimaki-kontrola">
                    </div>

                    <h3 class="atal-izenburua">Lan Datuak</h3>
                    <div class="informazio-taldea">
                        <label for="elkargokide_zenbakia">Elkargokide Zkia. <span class="beharrezkoa">*</span></label>
                        <input type="text" id="elkargokide_zenbakia" name="elkargokide_zenbakia" class="inprimaki-kontrola" required>
                    </div>
                    <div class="informazio-taldea">
                        <label for="espezialitatea">Espezialitatea</label>
                        <input type="text" id="espezialitatea" name="espezialitatea" class="inprimaki-kontrola">
                    </div>
                    <div class="informazio-taldea">
                        <label for="kontsulta">Kontsulta</label>
                        <input type="text" id="kontsulta" name="kontsulta" class="inprimaki-kontrola" placeholder="adib. K-01">
                    </div>
                    <div class="informazio-taldea">
                        <label for="lanaldia">Lanaldia</label>
                        <select id="lanaldia" name="lanaldia" class="inprimaki-kontrola">
                            <option value="">Hautatu...</option>
                            <option value="Osoa">Osoa</option>
                            <option value="Erdia">Erdia</option>
                            <option value="Txandaka">Txandaka</option>
                        </select>
                    </div>

                    <h3 class="atal-izenburua">Kontu Datuak</h3>
                    <div class="informazio-taldea">
                        <label for="email">E-posta <span class="beharrezkoa">*</span></label>
                        <input type="email" id="email" name="email" class="inprimaki-kontrola" required>
                    </div>
                    <div class="informazio-taldea">
                        <label for="pasahitza">Pasahitza (lehenetsia: 1234)</label>
                        <input type="password" id="pasahitza" name="pasahitza" class="inprimaki-kontrola" value="1234">
                    </div>
                    <div class="informazio-taldea">
                        <label for="hizkuntza">Hizkuntza</label>
                        <select id="hizkuntza" name="hizkuntza" class="inprimaki-kontrola">
                            <option value="Euskara">Euskara</option>
                            <option value="Gaztelania">Gaztelania</option>
                            <option value="Ingelesa">Ingelesa</option>
                            <option value="Nederlandera">Nederlandera</option>
                        </select>
                    </div>
                </div>

                <div class="botoi-taldea marjina-goi-20">
                    <button type="submit" class="botoia botoi-nagusia">Gorde Langilea</button>
                    <a href="osasun_langileak.php" class="botoia botoi-ertza">Utzi</a>
                </div>
            </form>
        </div>
    </main>

<?php include_once '../php_includeak/harrera_footer.php'; ?>
