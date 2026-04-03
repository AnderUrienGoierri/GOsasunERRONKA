<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$mezua = '';
$errorea = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nan           = $_POST['nan'] ?? '';
    $izena         = $_POST['izena'] ?? '';
    $abizenak      = $_POST['abizenak'] ?? '';
    $email         = $_POST['email'] ?? '';
    $pasahitza     = $_POST['pasahitza'] ?? '1234';
    $sexua         = $_POST['sexua'] ?? null;
    $jaiotze_data  = $_POST['jaiotze_data'] ?? null;
    $telefonoa     = $_POST['telefonoa'] ?? null;
    $helbidea      = $_POST['helbidea'] ?? null;
    $herria        = $_POST['herria'] ?? null;
    $posta_kodea   = $_POST['posta_kodea'] ?? null;
    $odol_taldea   = $_POST['odol_taldea'] ?? null;
    $hizkuntza     = $_POST['hizkuntza'] ?? 'Euskara';

    if ($nan && $izena && $abizenak && $email) {
        try {
            $pdo->beginTransaction();

            $stmtUser = $pdo->prepare("INSERT INTO Erabiltzaileak (email, pasahitza, rol_id, hizkuntza, aktibo) VALUES (?, ?, 2, ?, 1)");
            $stmtUser->execute([$email, $pasahitza, $hizkuntza]);
            $id_berria = $pdo->lastInsertId();

            $stmtPaziente = $pdo->prepare("INSERT INTO Pazienteak (id, nan, izena, abizenak, sexua, jaiotze_data, telefonoa, helbidea, herria, posta_kodea, odol_taldea) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            $stmtPaziente->execute([$id_berria, $nan, $izena, $abizenak, $sexua, $jaiotze_data, $telefonoa, $helbidea, $herria, $posta_kodea, $odol_taldea]);

            $pdo->commit();
            header("Location: pazienteak.php?msg=" . urlencode("Paziente berria arrakastaz sortu da. ID: " . $id_berria));
            exit;
        } catch (PDOException $e) {
            $pdo->rollBack();
            $errorea = "Errorea sortzean (baliteke emaila edo NANa errepikatuta egotea): " . $e->getMessage();
        }
    } else {
        $errorea = "Mesedez, bete derrigorrezko eremu guztiak.";
    }
}

$orri_izenburua = "Paziente Berria - GOsasun";
$uneko_orria = "pazienteak";
$css_pertsonalizatua = "pazienteak.css";
include_once '../php_includeak/harrera_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/svg/plus-circle.svg" alt="" class="ikono-ertaina marjina-esk-5"> Paziente Berria Sortu</h2>
                <p>Sartu paziente berriaren datuak sisteman erregistratzeko.</p>
            </div>
            <a href="pazienteak.php" class="botoia botoi-ertza">← Itzuli</a>
        </div>

        <?php if ($errorea): ?>
            <div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div>
        <?php endif; ?>

        <div class="inprimaki-kutxa">
            <form method="POST">
                <div class="profil-gorputza">

                    <h3 class="atal-izenburua">Identifikazio Datuak</h3>
                    <div class="informazio-taldea">
                        <label for="nan">NAN <span class="beharrezkoa">*</span></label>
                        <input type="text" id="nan" name="nan" class="inprimaki-kontrola" required>
                    </div>
                    <div class="informazio-taldea">
                        <label for="izena">Izena <span class="beharrezkoa">*</span></label>
                        <input type="text" id="izena" name="izena" class="inprimaki-kontrola" required>
                    </div>
                    <div class="informazio-taldea">
                        <label for="abizenak">Abizenak <span class="beharrezkoa">*</span></label>
                        <input type="text" id="abizenak" name="abizenak" class="inprimaki-kontrola" required>
                    </div>
                    <div class="informazio-taldea">
                        <label for="sexua">Sexua</label>
                        <select id="sexua" name="sexua" class="inprimaki-kontrola">
                            <option value="">Hautatu...</option>
                            <option value="Emakumea">Emakumea</option>
                            <option value="Gizona">Gizona</option>
                            <option value="Bestea">Bestea</option>
                        </select>
                    </div>
                    <div class="informazio-taldea">
                        <label for="jaiotze_data">Jaiotze Data</label>
                        <input type="date" id="jaiotze_data" name="jaiotze_data" class="inprimaki-kontrola">
                    </div>
                    <div class="informazio-taldea">
                        <label for="odol_taldea">Odol Taldea</label>
                        <select id="odol_taldea" name="odol_taldea" class="inprimaki-kontrola">
                            <option value="">Hautatu...</option>
                            <option value="A+">A+</option>
                            <option value="A-">A-</option>
                            <option value="B+">B+</option>
                            <option value="B-">B-</option>
                            <option value="AB+">AB+</option>
                            <option value="AB-">AB-</option>
                            <option value="0+">0+</option>
                            <option value="0-">0-</option>
                        </select>
                    </div>

                    <h3 class="atal-izenburua">Kontaktu Datuak</h3>
                    <div class="informazio-taldea">
                        <label for="telefonoa">Telefonoa</label>
                        <input type="text" id="telefonoa" name="telefonoa" class="inprimaki-kontrola">
                    </div>
                    <div class="informazio-taldea">
                        <label for="helbidea">Helbidea</label>
                        <input type="text" id="helbidea" name="helbidea" class="inprimaki-kontrola">
                    </div>
                    <div class="informazio-taldea">
                        <label for="herria">Herria</label>
                        <input type="text" id="herria" name="herria" class="inprimaki-kontrola">
                    </div>
                    <div class="informazio-taldea">
                        <label for="posta_kodea">Posta Kodea</label>
                        <input type="text" id="posta_kodea" name="posta_kodea" class="inprimaki-kontrola">
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

                <div class="botoi-taldea">
                    <button type="submit" class="botoia botoi-nagusia">Gorde Pazientea</button>
                    <a href="pazienteak.php" class="botoia botoi-ertza">Utzi</a>
                </div>
            </form>
        </div>
    </main>

<?php include_once '../php_includeak/harrera_footer.php'; ?>
