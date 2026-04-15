<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';

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

    // Irudiaren kudeaketa
    $irudia_sql = "";
    $params = [$email];
    
    if (isset($_FILES['irudia']) && $_FILES['irudia']['error'] === UPLOAD_ERR_OK) {
        $fitxategi_izena = $izena . "_" . time() . ".png";
        $helburua = "../img/png/" . $fitxategi_izena;
        
        if (move_uploaded_file($_FILES['irudia']['tmp_name'], $helburua)) {
            $irudia_sql = ", irudia = ?";
            $params[] = "img/png/" . $fitxategi_izena;
        }
    }
    $params[] = $id;

    if (empty($izena) || empty($abizenak) || empty($email)) {
        $errorea = "Eremu nagusiak bete behar dira (Izena, Abizenak, Email).";
    } else {
        try {
            $pdo->beginTransaction();

            // 1. Eguneratu erabiltzailea
            $sqlUser = "UPDATE Erabiltzaileak SET email = ? $irudia_sql WHERE id = ?";
            $pdo->prepare($sqlUser)->execute($params); 
            
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
            $errorea = "Errorea: " . $e->getMessage();
        }
    }
}

// Kargatu datuak eguneratuak baita ere
$stmt = $pdo->prepare("SELECT hl.*, e.email, e.irudia FROM Harrerako_Langileak hl JOIN Erabiltzaileak e ON hl.id = e.id WHERE hl.id = ?");
$stmt->execute([$id]);
$langilea = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$langilea) {
    header("Location: harrerako_langileak.php?error=" . urlencode("Langilea ez da aurkitu."));
    exit;
}

$orri_izenburua = 'Editatu Harrerako Langilea - GOsasun';
$uneko_orria = 'harrerako_langileak';
include_once '../php_orri_includeak/harrera_goiburua.php';
?>
<!-- GUI logic -->
<main class="panel-nagusia">
    <div class="orri-goiburua">
        <div>
            <h2><img src="../img/svg/pencil.svg" alt="" class="ikono-ertaina marjina-esk-5"> Langilea Editatu</h2>
            <p><?php echo htmlspecialchars($langilea['abizenak'] . ', ' . $langilea['izena']); ?></p>
        </div>
        <a href="harrerako_langileak.php" class="botoia botoi-ertza flex-zentratua"><img src="../img/svg/arrow-left.svg" alt="" class="ikono-txikia marjina-esk-5"> Itzuli</a>
    </div>

    <?php if ($mezua): ?>
        <div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($mezua); ?></div>
    <?php endif; ?>

    <?php if ($errorea): ?>
        <div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div>
    <?php endif; ?>

    <div class="editatu-panela">
        <form method="POST" enctype="multipart/form-data">

            <h3 class="atal-izenburua"><img src="../img/svg/user.svg" alt="" class="ikono-ertaina"> Argazkia eta Datu Pertsonalak</h3>
            <div class="argazki-koadroa">
                <div class="argazki-ingurua">
                    <?php 
                    $irudia_bide = htmlspecialchars($langilea['irudia'] ?? 'img/lehenetsia_harrera.png');
                    if (strpos($irudia_bide, 'img/') === 0 && strpos($irudia_bide, 'img/png/') === false && strpos($irudia_bide, 'img/svg/') === false) {
                        $irudia_bide = str_replace('img/', 'img/png/', $irudia_bide);
                    }
                    ?>
                    <img src="../<?php echo $irudia_bide; ?>" alt="Profila" class="profil-argazkia">
                </div>
                <div class="argazki-aukerak">
                    <label for="irudia" class="inprimaki-etiketa">Aldatu Argazkia</label>
                    <input type="file" id="irudia" name="irudia" class="inprimaki-sarrera fitxategi-sarrera" accept="image/*">
                    <p class="argibide-testua">PNG formatuan gehienez 2MB.</p>
                </div>
            </div>

            <div class="inprimaki-lerroa">
                <div class="inprimaki-taldea">
                    <label for="izena" class="inprimaki-etiketa">Izena <span class="beharrezkoa">*</span></label>
                    <input type="text" id="izena" name="izena" class="inprimaki-sarrera" value="<?php echo htmlspecialchars($langilea['izena']); ?>" required>
                </div>
                <div class="inprimaki-taldea">
                    <label for="abizenak" class="inprimaki-etiketa">Abizenak <span class="beharrezkoa">*</span></label>
                    <input type="text" id="abizenak" name="abizenak" class="inprimaki-sarrera" value="<?php echo htmlspecialchars($langilea['abizenak']); ?>" required>
                </div>
            </div>

            <div class="inprimaki-lerroa">
                <div class="inprimaki-taldea">
                    <label for="jaiotze_data" class="inprimaki-etiketa">Jaiotze Data</label>
                    <input type="date" id="jaiotze_data" name="jaiotze_data" class="inprimaki-sarrera" value="<?php echo $langilea['jaiotze_data'] ?? ''; ?>">
                </div>
                <div class="inprimaki-taldea">
                    <label for="telefonoa" class="inprimaki-etiketa">Telefonoa</label>
                    <input type="text" id="telefonoa" name="telefonoa" class="inprimaki-sarrera" value="<?php echo htmlspecialchars($langilea['telefonoa'] ?? ''); ?>">
                </div>
            </div>

            <hr class="inprimaki-banatzailea">

            <h3 class="atal-izenburua"><img src="../img/svg/briefcase.svg" alt="" class="ikono-ertaina"> Lan-txanda</h3>
            
            <div class="inprimaki-lerroa">
                <div class="inprimaki-taldea">
                    <label for="txanda" class="inprimaki-etiketa">Txanda</label>
                    <select id="txanda" name="txanda" class="inprimaki-sarrera aukera-sarrera">
                        <option value="Goizez" <?php echo ($langilea['txanda'] ?? '') === 'Goizez' ? 'selected' : ''; ?>>Goizez</option>
                        <option value="Arratsaldez" <?php echo ($langilea['txanda'] ?? '') === 'Arratsaldez' ? 'selected' : ''; ?>>Arratsaldez</option>
                        <option value="Gauez" <?php echo ($langilea['txanda'] ?? '') === 'Gauez' ? 'selected' : ''; ?>>Gauez</option>
                    </select>
                </div>
                <div class="hutsune-zatia"></div>
            </div>

            <hr class="inprimaki-banatzailea">

            <h3 class="atal-izenburua"><img src="../img/svg/key.svg" alt="" class="ikono-ertaina"> Kontu Datuak</h3>
            
            <div class="inprimaki-taldea talde-osoa">
                <label for="email" class="inprimaki-etiketa">E-posta <span class="beharrezkoa">*</span></label>
                <input type="email" id="email" name="email" class="inprimaki-sarrera" value="<?php echo htmlspecialchars($langilea['email']); ?>" required>
            </div>

            <p class="inprimaki-etiketa">Pasahitza Aldatu (Hutsik utzi ez aldatzeko)</p>
            <div class="inprimaki-lerroa">
                <div class="inprimaki-taldea">
                    <label for="pasahitza" class="inprimaki-etiketa">Pasahitz Berria</label>
                    <input type="password" id="pasahitza" name="pasahitza" class="inprimaki-sarrera" placeholder="Pasahitz berria...">
                </div>
                <div class="inprimaki-taldea">
                    <label for="pasahitza_errepikatu" class="inprimaki-etiketa">Errepikatu Pasahitza</label>
                    <input type="password" id="pasahitza_errepikatu" name="pasahitza_errepikatu" class="inprimaki-sarrera" placeholder="Errepikatu...">
                </div>
            </div>
            
            <div class="ekintza-botoiak">
                <button type="submit" class="botoia botoi-nagusia">Gorde Aldaketak</button>
                <a href="harrerako_langileak.php" class="botoia botoi-ertza">Utzi</a>
            </div>
        </form>
    </div>
</main>

<?php include_once '../php_orri_includeak/harrera_footer.php'; ?>
