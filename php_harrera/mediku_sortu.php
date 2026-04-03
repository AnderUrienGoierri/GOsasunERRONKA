<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$errorea = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $izena          = $_POST['izena'] ?? '';
    $abizenak       = $_POST['abizenak'] ?? '';
    $email          = $_POST['email'] ?? '';
    $pasahitza      = $_POST['pasahitza'] ?? '1234';
    $elkargokide    = $_POST['elkargokide_zenbakia'] ?? '';
    $espezialitatea = $_POST['espezialitatea'] ?? '';
    $telefonoa      = $_POST['telefonoa'] ?? null;
    $kontsulta      = $_POST['kontsulta'] ?? null;
    $lanaldia       = $_POST['lanaldia'] ?? null;
    $jaiotze_data   = $_POST['jaiotze_data'] ?? null;
    $hizkuntza      = $_POST['hizkuntza'] ?? 'Euskara';

    if ($izena && $abizenak && $email && $elkargokide) {
        try {
            $pdo->beginTransaction();

            $stmtUser = $pdo->prepare("INSERT INTO Erabiltzaileak (email, pasahitza, rol_id, hizkuntza, aktibo) VALUES (?, ?, 1, ?, 1)");
            $stmtUser->execute([$email, $pasahitza, $hizkuntza]);
            $id_berria = $pdo->lastInsertId();

            $stmtMediku = $pdo->prepare("INSERT INTO Medikuak (id, izena, abizenak, elkargokide_zenbakia, espezialitatea, telefonoa, kontsulta, lanaldia, jaiotze_data) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
            $stmtMediku->execute([$id_berria, $izena, $abizenak, $elkargokide, $espezialitatea, $telefonoa, $kontsulta, $lanaldia, $jaiotze_data]);

            $pdo->commit();
            header("Location: medikuak.php?msg=" . urlencode("Mediku berria sortu da."));
            exit;
        } catch (PDOException $e) {
            $pdo->rollBack();
            $errorea = "Errorea: " . $e->getMessage();
        }
    } else {
        $errorea = "Bete derrigorrezko eremuak.";
    }
}

$orri_izenburua = "Mediku Berria - GOsasun";
$uneko_orria = "medikuak";
$css_pertsonalizatua = "medikuak.css";
include_once '../php_includeak/harrera_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/svg/plus-circle.svg" alt="" class="ikono-ertaina marjina-esk-5"> Mediku Berria Sortu</h2>
                <p>Bete beheko formularioa mediku berria sistemara gehitzeko.</p>
            </div>
            <a href="medikuak.php" class="botoia botoi-ertza">← Itzuli</a>
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
                    <button type="submit" class="botoia botoi-nagusia">Gorde Medikua</button>
                    <a href="medikuak.php" class="botoia botoi-ertza">Utzi</a>
                </div>
            </form>
        </div>
    </main>

<?php include_once '../php_includeak/harrera_footer.php'; ?>
