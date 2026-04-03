<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$id = $_GET['id'] ?? null;
if (!$id) { header("Location: medikuak.php"); exit; }

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

    try {
        $pdo->beginTransaction();
        $pdo->prepare("UPDATE Erabiltzaileak SET email = ? WHERE id = ?")->execute([$email, $id]);
        $pdo->prepare("UPDATE Medikuak SET izena = ?, abizenak = ?, elkargokide_zenbakia = ?, espezialitatea = ?, telefonoa = ?, kontsulta = ?, lanaldia = ?, jaiotze_data = ? WHERE id = ?")
            ->execute([$izena, $abizenak, $elkargokide, $espezialitatea, $telefonoa, $kontsulta, $lanaldia, $jaiotze_data, $id]);
        $pdo->commit();
        $mezua = "Medikuaren datuak eguneratu dira.";
    } catch (PDOException $e) {
        $pdo->rollBack();
        $errorea = "Errorea: " . $e->getMessage();
    }
}

$stmt = $pdo->prepare("SELECT * FROM V_Medikua WHERE mediku_id = ?");
$stmt->execute([$id]);
$m = $stmt->fetch(PDO::FETCH_ASSOC);
if (!$m) { header("Location: medikuak.php"); exit; }

$orri_izenburua = "Editatu Medikua - GOsasun";
$uneko_orria = "medikuak";
$css_pertsonalizatua = "medikuak.css";
include_once '../php_includeak/harrera_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/svg/pencil.svg" alt="" class="ikono-ertaina marjina-esk-5"> Editatu Medikua</h2>
                <p><?php echo htmlspecialchars($m['abizenak'] . ', ' . $m['izena']); ?></p>
            </div>
            <a href="medikuak.php" class="botoia botoi-ertza">← Itzuli</a>
        </div>

        <?php if ($mezua): ?><div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($mezua); ?></div><?php endif; ?>
        <?php if ($errorea): ?><div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div><?php endif; ?>

        <div class="inprimaki-kutxa kutxa-zuria-700">
            <form method="POST">
                <div class="profil-gorputza">

                    <h3 class="atal-izenburua">Datu Pertsonalak</h3>
                    <div class="informazio-taldea">
                        <label for="izena">Izena</label>
                        <input type="text" id="izena" name="izena" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($m['izena']); ?>" required>
                    </div>
                    <div class="informazio-taldea">
                        <label for="abizenak">Abizenak</label>
                        <input type="text" id="abizenak" name="abizenak" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($m['abizenak']); ?>" required>
                    </div>
                    <div class="informazio-taldea">
                        <label for="jaiotze_data">Jaiotze Data</label>
                        <input type="date" id="jaiotze_data" name="jaiotze_data" class="inprimaki-kontrola" value="<?php echo $m['jaiotze_data'] ?? ''; ?>">
                    </div>
                    <div class="informazio-taldea">
                        <label for="telefonoa">Telefonoa</label>
                        <input type="text" id="telefonoa" name="telefonoa" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($m['telefonoa'] ?? ''); ?>">
                    </div>

                    <h3 class="atal-izenburua">Lan Datuak</h3>
                    <div class="informazio-taldea">
                        <label for="elkargokide_zenbakia">Elkargokide Zkia.</label>
                        <input type="text" id="elkargokide_zenbakia" name="elkargokide_zenbakia" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($m['elkargokide_zenbakia']); ?>" required>
                    </div>
                    <div class="informazio-taldea">
                        <label for="espezialitatea">Espezialitatea</label>
                        <input type="text" id="espezialitatea" name="espezialitatea" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($m['espezialitatea']); ?>">
                    </div>
                    <div class="informazio-taldea">
                        <label for="kontsulta">Kontsulta</label>
                        <input type="text" id="kontsulta" name="kontsulta" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($m['kontsulta'] ?? ''); ?>">
                    </div>
                    <div class="informazio-taldea">
                        <label for="lanaldia">Lanaldia</label>
                        <select id="lanaldia" name="lanaldia" class="inprimaki-kontrola">
                            <option value="">Hautatu...</option>
                            <option value="Osoa" <?php echo ($m['lanaldia'] ?? '') === 'Osoa' ? 'selected' : ''; ?>>Osoa</option>
                            <option value="Erdia" <?php echo ($m['lanaldia'] ?? '') === 'Erdia' ? 'selected' : ''; ?>>Erdia</option>
                            <option value="Txandaka" <?php echo ($m['lanaldia'] ?? '') === 'Txandaka' ? 'selected' : ''; ?>>Txandaka</option>
                        </select>
                    </div>

                    <h3 class="atal-izenburua">Kontu Datuak</h3>
                    <div class="informazio-taldea">
                        <label for="email">E-posta</label>
                        <input type="email" id="email" name="email" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($m['email']); ?>" required>
                    </div>
                </div>

                <div class="botoi-taldea marjina-goi-20">
                    <button type="submit" class="botoia botoi-nagusia">Gorde Aldaketak</button>
                    <a href="medikuak.php" class="botoia botoi-ertza">Itzuli</a>
                </div>
            </form>
        </div>
    </main>

<?php include_once '../php_includeak/harrera_footer.php'; ?>
