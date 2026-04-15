<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';

$mezua = '';
$errorea = '';
$h_id = $_GET['id'] ?? null;

if (!$h_id) {
    header("Location: hitzorduak.php");
    exit;
}

// 1. Get existing appointment data
try {
    $stmt_h = $pdo->prepare("SELECT * FROM Hitzorduak WHERE id = ?");
    $stmt_h->execute([$h_id]);
    $hitzordua = $stmt_h->fetch(PDO::FETCH_ASSOC);

    if (!$hitzordua) {
        die("Hitzordua ez da existitzen.");
    }

    $medikuak = $pdo->query("SELECT id as osasun_langile_id, izena, abizenak, espezialitatea FROM osasun_langileak ORDER BY abizenak ASC")->fetchAll(PDO::FETCH_ASSOC);
    $pazienteak = $pdo->query("SELECT id as paziente_id, izena, abizenak, nan FROM Pazienteak ORDER BY abizenak ASC")->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    $errorea = "Errorea datuak eskuratzean: " . $e->getMessage();
}

// 2. Handle form submission (Update / Delete)
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['editatu_hitzordua'])) {
        $p_id = $_POST['paziente_id'];
        $m_id = $_POST['osasun_langile_id'];
        $data = $_POST['data'];
        $h_ordua = $_POST['hasiera_ordua'];
        $b_ordua = $_POST['bukaera_ordua'];
        $arrazoia = $_POST['arrazoia'];
        $egoera = $_POST['egoera'];

        if ($p_id && $m_id && $data && $h_ordua && $b_ordua) {
            try {
                // Conflict check (excluding current appointment)
                $sql_check = "SELECT COUNT(*) FROM Hitzorduak WHERE osasun_langile_id = ? AND data = ? AND id != ? AND 
                            ((hasiera_ordua < ? AND bukaera_ordua > ?) OR (hasiera_ordua < ? AND bukaera_ordua > ?))";
                $stmt_check = $pdo->prepare($sql_check);
                $stmt_check->execute([$m_id, $data, $h_id, $b_ordua, $h_ordua, $b_ordua, $h_ordua]);

                if ($stmt_check->fetchColumn() == 0) {
                    $sql_update = "UPDATE Hitzorduak SET paziente_id = ?, osasun_langile_id = ?, data = ?, hasiera_ordua = ?, bukaera_ordua = ?, arrazoia = ?, egoera = ? WHERE id = ?";
                    $stmt_update = $pdo->prepare($sql_update);
                    $stmt_update->execute([$p_id, $m_id, $data, $h_ordua, $b_ordua, $arrazoia, $egoera, $h_id]);

                    header("Location: hitzorduak.php?msg=" . urlencode("Hitzordua arrakastaz aldatu da."));
                    exit;
                } else {
                    $errorea = "Bakarkako gatazka: medikuak badu beste hitzordu bat ordu tarte horretan.";
                }
            } catch (PDOException $e) {
                $errorea = "Errorea datu-basean: " . $e->getMessage();
            }
        }
    } elseif (isset($_POST['ezabatu_hitzordua'])) {
        try {
            $stmt_del = $pdo->prepare("DELETE FROM Hitzorduak WHERE id = ?");
            $stmt_del->execute([$h_id]);
            header("Location: hitzorduak.php?msg=" . urlencode("Hitzordua ezabatu da."));
            exit;
        } catch (PDOException $e) {
            $errorea = "Errorea ezabatzean: " . $e->getMessage();
        }
    }
}

$orri_izenburua = "Hitzordua Editatu - GOsasun";
$uneko_orria = "hitzorduak";
$css_pertsonalizatua = "hitzorduak.css";
include_once '../php_orri_includeak/harrera_goiburua.php';
?>

<main class="panel-nagusia">
    <div class="orri-goiburua marjina-behe-20">
        <a href="hitzorduak.php" class="esteka-itzuli flex-zentratua"><img src="../img/svg/arrow-left.svg" alt="" class="ikono-txikia marjina-esk-5"> Itzuli egutegira</a>
        <h2 class="izenburu-nagusia marjina-goi-10">Hitzordua Editatu</h2>
    </div>

    <?php if ($errorea): ?>
        <div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div>
    <?php endif; ?>

    <div class="kutxa-zuria-itzala padding-30">
        <form method="POST" id="editForm">
            <div class="sareta-bikoa-sareta">
                <div class="inprimaki-taldea">
                    <label for="paziente_id" class="testu-lodia">Pazientea *</label>
                    <select name="paziente_id" id="paziente_id" class="inprimaki-kontrola" required>
                        <?php foreach ($pazienteak as $p): ?>
                            <option value="<?php echo $p['paziente_id']; ?>" <?php echo $hitzordua['paziente_id'] == $p['paziente_id'] ? 'selected' : ''; ?>>
                                <?php echo htmlspecialchars($p['abizenak'] . ", " . $p['izena'] . " (" . $p['nan'] . ")"); ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>

                <div class="inprimaki-taldea">
                    <label for="osasun_langile_id" class="testu-lodia">Medikua *</label>
                    <select name="osasun_langile_id" id="osasun_langile_id" class="inprimaki-kontrola" required>
                        <?php foreach ($medikuak as $m): ?>
                            <option value="<?php echo $m['osasun_langile_id']; ?>" <?php echo $hitzordua['osasun_langile_id'] == $m['osasun_langile_id'] ? 'selected' : ''; ?>>
                                Osasun Langilea <?php echo htmlspecialchars($m['abizenak'] . ", " . $m['izena'] . " - " . $m['espezialitatea']); ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>
            </div>

            <div class="sareta-hirukoa marjina-goi-20">
                <div class="inprimaki-taldea">
                    <label for="data" class="testu-lodia">Data *</label>
                    <input type="date" name="data" id="data" class="inprimaki-kontrola" value="<?php echo $hitzordua['data']; ?>" required>
                </div>
                <div class="inprimaki-taldea">
                    <label for="hasiera_ordua" class="testu-lodia">Hasiera Ordua *</label>
                    <input type="time" name="hasiera_ordua" id="hasiera_ordua" class="inprimaki-kontrola" value="<?php echo substr($hitzordua['hasiera_ordua'], 0, 5); ?>" required>
                </div>
                <div class="inprimaki-taldea">
                    <label for="bukaera_ordua" class="testu-lodia">Bukaera Ordua *</label>
                    <input type="time" name="bukaera_ordua" id="bukaera_ordua" class="inprimaki-kontrola" value="<?php echo $hitzordua['bukaera_ordua'] ? substr($hitzordua['bukaera_ordua'], 0, 5) : ''; ?>" required>
                </div>
            </div>

            <div class="sareta-bikoa-sareta marjina-goi-20">
                <div class="inprimaki-taldea">
                    <label for="egoera" class="testu-lodia">Egoera *</label>
                    <select name="egoera" id="egoera" class="inprimaki-kontrola" required>
                        <option value="Zain" <?php echo $hitzordua['egoera'] === 'Zain' ? 'selected' : ''; ?>>Zain</option>
                        <option value="Bukatuta" <?php echo $hitzordua['egoera'] === 'Bukatuta' ? 'selected' : ''; ?>>Bukatuta</option>
                        <option value="Ezeztatuta" <?php echo $hitzordua['egoera'] === 'Ezeztatuta' ? 'selected' : ''; ?>>Ezeztatuta</option>
                    </select>
                </div>
            </div>

            <div class="inprimaki-taldea marjina-goi-20">
                <label for="arrazoia" class="testu-lodia">Arrazoia / Oharrak</label>
                <textarea name="arrazoia" id="arrazoia" class="inprimaki-kontrola" errenkadak="4"><?php echo htmlspecialchars($hitzordua['arrazoia']); ?></textarea>
            </div>

            <div class="flex-tartea-15 marjina-goi-30">
                <button type="submit" name="ezabatu_hitzordua" class="botoia botoi-ertza arrisku-kolorea" onclick="return confirm('Ziur zaude hitzordu hau ezabatu nahi duzula?')">Ezabatu</button>
                <div class="flex-hazkundea-1"></div>
                <a href="hitzorduak.php" class="botoia botoi-ertza">Ezeztatu</a>
                <button type="submit" name="editatu_hitzordua" class="botoia botoi-nagusia">Gorde Aldaketak</button>
            </div>
        </form>
    </div>
</main>

<?php include_once '../php_orri_includeak/harrera_footer.php'; ?>
