<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';

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

    if (empty($izena) || empty($abizenak) || empty($email)) {
        $errorea = "Derrigorrezko eremuak bete behar dira (Izena, Abizenak, Email).";
    } else {
        try {
            $pdo->beginTransaction();

            // 1. Sortu erabiltzailea
            $stmt = $pdo->prepare("INSERT INTO Erabiltzaileak (email, pasahitza, rol_id, hizkuntza, aktibo) VALUES (?, ?, 3, ?, 1)");
            $stmt->execute([$email, $pasahitza, $hizkuntza]); 
            
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

$orri_izenburua = "Langile Berria - GOsasun";
$uneko_orria = "harrerako_langileak";
$css_pertsonalizatua = "harrerako_langileak.css";
include_once '../php_includeak/harrera_goiburua.php';
?>

<main class="panel-nagusia">
    <div class="orri-goiburua">
        <div>
            <h2><img src="../img/svg/plus-circle.svg" alt="" class="ikono-ertaina marjina-esk-5"> Harrerako Langile Berria</h2>
            <p>Sortu harrerako langile berri bat sisteman sartzeko.</p>
        </div>
        <a href="harrerako_langileak.php" class="botoia botoi-ertza">← Itzuli</a>
    </div>

    <?php if ($errorea): ?>
        <div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div>
    <?php endif; ?>

    <div class="inprimaki-kutxa kutxa-zuria-800">
        <form method="POST">
            <div class="profil-gorputza">
                
                <h3 class="atal-izenburua">Datu Pertsonalak</h3>
                <div class="informazio-taldea">
                    <label for="izena">Izena <span class="beharrezkoa">*</span></label>
                    <input type="text" id="izena" name="izena" class="inprimaki-kontrola" required value="<?php echo htmlspecialchars($_POST['izena'] ?? ''); ?>">
                </div>
                <div class="informazio-taldea">
                    <label for="abizenak">Abizenak <span class="beharrezkoa">*</span></label>
                    <input type="text" id="abizenak" name="abizenak" class="inprimaki-kontrola" required value="<?php echo htmlspecialchars($_POST['abizenak'] ?? ''); ?>">
                </div>
                <div class="informazio-taldea">
                    <label for="jaiotze_data">Jaiotze Data</label>
                    <input type="date" id="jaiotze_data" name="jaiotze_data" class="inprimaki-kontrola">
                </div>
                <div class="informazio-taldea">
                    <label for="telefonoa">Telefonoa</label>
                    <input type="text" id="telefonoa" name="telefonoa" class="inprimaki-kontrola">
                </div>

                <h3 class="atal-izenburua">Lan-txanda</h3>
                <div class="informazio-taldea">
                    <label for="txanda">Txanda</label>
                    <select id="txanda" name="txanda" class="inprimaki-kontrola">
                        <option value="Goizez">Goizez</option>
                        <option value="Arratsaldez">Arratsaldez</option>
                        <option value="Gauez">Gauez</option>
                    </select>
                </div>

                <h3 class="atal-izenburua">Kontu Datuak</h3>
                <div class="informazio-taldea">
                    <label for="email">E-posta <span class="beharrezkoa">*</span></label>
                    <input type="email" id="email" name="email" class="inprimaki-kontrola" required value="<?php echo htmlspecialchars($_POST['email'] ?? ''); ?>">
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
                <button type="submit" class="botoia botoi-nagusia">Langilea Gorde</button>
                <a href="harrerako_langileak.php" class="botoia botoi-ertza">Utzi</a>
            </div>
        </form>
    </div>
</main>

<?php include_once '../php_includeak/harrera_footer.php'; ?>
