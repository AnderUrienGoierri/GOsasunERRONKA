<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$id = $_GET['id'] ?? null;
if (!$id) { header("Location: osasun_langileak.php"); exit; }

$mezua = '';
$errorea = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $izena          = $_POST['izena'];
    $abizenak       = $_POST['abizenak'];
    $email          = $_POST['email'];
    $elkargokide    = $_POST['elkargokide_zenbakia'];
    $espezialitatea = $_POST['espezialitatea'];
    $telefonoa      = $_POST['telefonoa'];
    $kontsulta      = $_POST['kontsulta'];
    $lanaldia       = $_POST['lanaldia'];
    $jaiotze_data   = $_POST['jaiotze_data'] ?: null;

    // Irudiaren kudeaketa
    $irudia_sql = "";
    $params = [$email, $izena, $abizenak, $jaiotze_data, $telefonoa];
    
    if (isset($_FILES['irudia']) && $_FILES['irudia']['error'] === UPLOAD_ERR_OK) {
        $fitxategi_izena = "langilea_" . $id . "_" . time() . ".png";
        $helburua = "../img/png/" . $fitxategi_izena;
        
        if (move_uploaded_file($_FILES['irudia']['tmp_name'], $helburua)) {
            $irudia_sql = ", irudia = ?";
            $params[] = "img/png/" . $fitxategi_izena;
        }
    }
    $params[] = $id;

    try {
        $pdo->beginTransaction();
        // 1. Update Erabiltzaileak
        $sqlUser = "UPDATE erabiltzaileak SET email = ?, izena = ?, abizenak = ?, jaiotze_data = ?, telefonoa = ? $irudia_sql WHERE id = ?";
        $pdo->prepare($sqlUser)->execute($params);

        // 2. Update osasun_langileak
        $pdo->prepare("UPDATE osasun_langileak SET elkargokide_zenbakia = ?, espezialitatea = ?, kontsulta = ?, lanaldia = ? WHERE id = ?")
            ->execute([$elkargokide, $espezialitatea, $kontsulta, $lanaldia, $id]);

        $pdo->commit();
        $mezua = "Langilearen datuak eguneratu dira.";
    } catch (PDOException $e) {
        $pdo->rollBack();
        $errorea = "Errorea: " . $e->getMessage();
    }
}

$stmt = $pdo->prepare("SELECT * FROM V_Osasun_Langilea WHERE langile_id = ?");
$stmt->execute([$id]);
$m = $stmt->fetch(PDO::FETCH_ASSOC);
if (!$m) { header("Location: osasun_langileak.php"); exit; }

$orri_izenburua = 'Editatu Osasun Langilea - GOsasun';
$uneko_orria = 'osasun_langileak';
include_once '../php_orri_includeak/harrera_goiburua.php';
?>
<!-- GUI logic -->
    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/svg/pencil.svg" alt="" class="ikono-ertaina marjina-esk-5"> Editatu Langilea</h2>
                <p><?php echo htmlspecialchars($m['abizenak'] . ', ' . $m['izena']); ?></p>
            </div>
            <a href="osasun_langileak.php" class="botoia botoi-ertza">← Itzuli</a>
        </div>

        <?php if ($mezua): ?><div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($mezua); ?></div><?php endif; ?>
        <?php if ($errorea): ?><div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div><?php endif; ?>

        <div class="editatu-panela">
            <form method="POST" enctype="multipart/form-data">
                
                <h3 class="atal-izenburua"><img src="../img/svg/user.svg" alt="" class="ikono-ertaina"> Argazkia eta Datu Pertsonalak</h3>
                <div class="argazki-koadroa">
                    <div class="argazki-ingurua">
                        <?php 
                        $irudia_bide = htmlspecialchars($m['irudia'] ?? 'img/lehenetsia_medikua.png');
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
                        <label for="izena" class="inprimaki-etiketa">Izena</label>
                        <input type="text" id="izena" name="izena" class="inprimaki-sarrera" value="<?php echo htmlspecialchars($m['izena']); ?>" required>
                    </div>
                    <div class="inprimaki-taldea">
                        <label for="abizenak" class="inprimaki-etiketa">Abizenak</label>
                        <input type="text" id="abizenak" name="abizenak" class="inprimaki-sarrera" value="<?php echo htmlspecialchars($m['abizenak']); ?>" required>
                    </div>
                </div>

                <div class="inprimaki-lerroa">
                    <div class="inprimaki-taldea">
                        <label for="jaiotze_data" class="inprimaki-etiketa">Jaiotze Data</label>
                        <input type="date" id="jaiotze_data" name="jaiotze_data" class="inprimaki-sarrera" value="<?php echo $m['jaiotze_data'] ?? ''; ?>">
                    </div>
                    <div class="inprimaki-taldea">
                        <label for="telefonoa" class="inprimaki-etiketa">Telefonoa</label>
                        <input type="text" id="telefonoa" name="telefonoa" class="inprimaki-sarrera" value="<?php echo htmlspecialchars($m['telefonoa'] ?? ''); ?>">
                    </div>
                </div>

                <hr class="inprimaki-banatzailea">

                <h3 class="atal-izenburua"><img src="../img/svg/briefcase.svg" alt="" class="ikono-ertaina"> Lan Datuak</h3>
                
                <div class="inprimaki-lerroa">
                    <div class="inprimaki-taldea">
                        <label for="elkargokide_zenbakia" class="inprimaki-etiketa">Elkargokide Zkia.</label>
                        <input type="text" id="elkargokide_zenbakia" name="elkargokide_zenbakia" class="inprimaki-sarrera" value="<?php echo htmlspecialchars($m['elkargokide_zenbakia']); ?>" required>
                    </div>
                    <div class="inprimaki-taldea">
                        <label for="espezialitatea" class="inprimaki-etiketa">Espezialitatea</label>
                        <input type="text" id="espezialitatea" name="espezialitatea" class="inprimaki-sarrera" value="<?php echo htmlspecialchars($m['espezialitatea']); ?>">
                    </div>
                </div>

                <div class="inprimaki-lerroa">
                    <div class="inprimaki-taldea">
                        <label for="kontsulta" class="inprimaki-etiketa">Kontsulta</label>
                        <input type="text" id="kontsulta" name="kontsulta" class="inprimaki-sarrera" value="<?php echo htmlspecialchars($m['kontsulta'] ?? ''); ?>">
                    </div>
                    <div class="inprimaki-taldea">
                        <label for="lanaldia" class="inprimaki-etiketa">Lanaldia</label>
                        <select id="lanaldia" name="lanaldia" class="inprimaki-sarrera aukera-sarrera">
                            <option value="">Hautatu...</option>
                            <option value="Osoa" <?php echo ($m['lanaldia'] ?? '') === 'Osoa' ? 'selected' : ''; ?>>Osoa</option>
                            <option value="Erdia" <?php echo ($m['lanaldia'] ?? '') === 'Erdia' ? 'selected' : ''; ?>>Erdia</option>
                            <option value="Txandaka" <?php echo ($m['lanaldia'] ?? '') === 'Txandaka' ? 'selected' : ''; ?>>Txandaka</option>
                        </select>
                    </div>
                </div>

                <hr class="inprimaki-banatzailea">

                <h3 class="atal-izenburua"><img src="../img/svg/key.svg" alt="" class="ikono-ertaina"> Kontu Datuak</h3>
                
                <div class="inprimaki-taldea talde-osoa">
                    <label for="email" class="inprimaki-etiketa">E-posta</label>
                    <input type="email" id="email" name="email" class="inprimaki-sarrera" value="<?php echo htmlspecialchars($m['email']); ?>" required>
                </div>

                <div class="ekintza-botoiak">
                    <button type="submit" class="botoia botoi-nagusia">Gorde Aldaketak</button>
                    <a href="osasun_langileak.php" class="botoia botoi-ertza">Itzuli</a>
                </div>
            </form>
        </div>
    </main>

<?php include_once '../php_orri_includeak/harrera_footer.php'; ?>
