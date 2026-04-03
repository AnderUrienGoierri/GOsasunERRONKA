<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';

$errorea = '';
$mezua = '';

if (!isset($_GET['id']) || empty($_GET['id'])) {
    header("Location: harrerako_langileak.php");
    exit;
}

$id = $_GET['id'];

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $izena          = $_POST['izena']                ?? '';
    $abizenak       = $_POST['abizenak']             ?? '';
    $email          = $_POST['email']                ?? '';
    $txanda         = $_POST['txanda']               ?? 'Goizez';
    $jaiotze_data   = $_POST['jaiotze_data']         ?? null;
    $telefonoa      = $_POST['telefonoa']            ?? null;

    if (empty($izena) || empty($abizenak) || empty($email)) {
        $errorea = "Eremu nagusiak bete behar dira (Izena, Abizenak, Email).";
    } else {
        try {
            $pdo->beginTransaction();

            // 1. Eguneratu erabiltzailea
            $stmt = $pdo->prepare("UPDATE Erabiltzaileak SET email = ? WHERE id = ?");
            $stmt->execute([$email, $id]); 
            
            // 2. Eguneratu langilea
            $stmt2 = $pdo->prepare("UPDATE Harrerako_Langileak SET izena = ?, abizenak = ?, txanda = ?, jaiotze_data = ?, telefonoa = ? WHERE id = ?");
            $stmt2->execute([$izena, $abizenak, $txanda, $jaiotze_data, $telefonoa, $id]);

            // Pasahitza aldatu nahi bada
            if (!empty($_POST['pasahitza'])) {
                 if ($_POST['pasahitza'] === $_POST['pasahitza_errepikatu']) {
                     $stmtP = $pdo->prepare("UPDATE Erabiltzaileak SET pasahitza = ? WHERE id = ?");
                     $stmtP->execute([$_POST['pasahitza'], $id]);
                 } else {
                     throw new Exception("Pasahitzak ez datoz bat.");
                 }
            }

            $pdo->commit();
            $mezua = "Datuak ongi eguneratu dira.";
        } catch (Exception $e) {
            if($pdo->inTransaction()) $pdo->rollBack();
            if ($e->getCode() == 23000) {
                $errorea = "Helbide elektroniko hori jada erregistratuta dago.";
            } else {
                $errorea = "Errorea eguneratzean: " . $e->getMessage();
            }
        }
    }
}

// Kargatu datuak eguneratuak baita ere
$stmt = $pdo->prepare("SELECT hl.*, e.email FROM Harrerako_Langileak hl JOIN Erabiltzaileak e ON hl.id = e.id WHERE hl.id = ?");
$stmt->execute([$id]);
$langilea = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$langilea) {
    header("Location: harrerako_langileak.php?error=" . urlencode("Langilea ez da aurkitu."));
    exit;
}

$orri_izenburua = "Langilea Editatu - GOsasun";
$uneko_orria = "harrerako_langileak";
$css_pertsonalizatua = "harrerako_langileak.css";
include_once '../php_includeak/harrera_goiburua.php';
?>

<main class="panel-nagusia">
    <div class="orri-goiburua">
        <div>
            <h2><img src="../img/svg/pencil.svg" alt="" class="ikono-ertaina marjina-esk-5"> Langilea Editatu</h2>
            <p><?php echo htmlspecialchars($langilea['abizenak'] . ', ' . $langilea['izena']); ?></p>
        </div>
        <a href="harrerako_langileak.php" class="botoia botoi-ertza">← Itzuli</a>
    </div>

    <?php if ($mezua): ?>
        <div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($mezua); ?></div>
    <?php endif; ?>

    <?php if ($errorea): ?>
        <div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div>
    <?php endif; ?>

    <div class="inprimaki-kutxa kutxa-zuria-800">
        <form method="POST">
            <div class="profil-gorputza">

                <h3 class="atal-izenburua">Datu Pertsonalak</h3>
                <div class="informazio-taldea">
                    <label for="izena">Izena <span class="beharrezkoa">*</span></label>
                    <input type="text" id="izena" name="izena" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($langilea['izena']); ?>" required>
                </div>
                <div class="informazio-taldea">
                    <label for="abizenak">Abizenak <span class="beharrezkoa">*</span></label>
                    <input type="text" id="abizenak" name="abizenak" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($langilea['abizenak']); ?>" required>
                </div>
                <div class="informazio-taldea">
                    <label for="jaiotze_data">Jaiotze Data</label>
                    <input type="date" id="jaiotze_data" name="jaiotze_data" class="inprimaki-kontrola" value="<?php echo $langilea['jaiotze_data'] ?? ''; ?>">
                </div>
                <div class="informazio-taldea">
                    <label for="telefonoa">Telefonoa</label>
                    <input type="text" id="telefonoa" name="telefonoa" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($langilea['telefonoa'] ?? ''); ?>">
                </div>

                <h3 class="atal-izenburua">Lan-txanda</h3>
                <div class="informazio-taldea">
                    <label for="txanda">Txanda</label>
                    <select id="txanda" name="txanda" class="inprimaki-kontrola">
                        <option value="Goizez" <?php echo ($langilea['txanda'] ?? '') === 'Goizez' ? 'selected' : ''; ?>>Goizez</option>
                        <option value="Arratsaldez" <?php echo ($langilea['txanda'] ?? '') === 'Arratsaldez' ? 'selected' : ''; ?>>Arratsaldez</option>
                        <option value="Gauez" <?php echo ($langilea['txanda'] ?? '') === 'Gauez' ? 'selected' : ''; ?>>Gauez</option>
                    </select>
                </div>

                <h3 class="atal-izenburua">Kontu Datuak</h3>
                <div class="informazio-taldea">
                    <label for="email">E-posta <span class="beharrezkoa">*</span></label>
                    <input type="email" id="email" name="email" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($langilea['email']); ?>" required>
                </div>

                <h3 class="atal-izenburua">Pasahitza Aldatu</h3>
                <div class="informazio-taldea">
                    <label for="pasahitza">Pasahitz Berria</label>
                    <input type="password" id="pasahitza" name="pasahitza" class="inprimaki-kontrola" placeholder="Hutsik utzi ez aldatzeko">
                </div>
                <div class="informazio-taldea">
                    <label for="pasahitza_errepikatu">Errepikatu Pasahitza</label>
                    <input type="password" id="pasahitza_errepikatu" name="pasahitza_errepikatu" class="inprimaki-kontrola" placeholder="Hutsik utzi ez aldatzeko">
                </div>
            </div>
            
            <div class="botoi-taldea marjina-goi-20">
                <button type="submit" class="botoia botoi-nagusia">Gorde Aldaketak</button>
                <a href="harrerako_langileak.php" class="botoia botoi-ertza">Utzi</a>
            </div>
        </form>
    </div>
</main>

<?php include_once '../php_includeak/harrera_footer.php'; ?>
