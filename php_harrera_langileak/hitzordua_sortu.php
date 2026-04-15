<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';

$mezua = '';
$errorea = '';

// Default values
$data_lehenetsia = $_GET['data'] ?? date('Y-m-d');
$mediku_id_lehenetsia = $_GET['osasun_langile_id'] ?? '';
$paziente_id_lehenetsia = $_GET['paziente_id'] ?? '';

// 1. Get doctors and patients for dropdowns
try {
    $medikuak = $pdo->query("SELECT langile_id as osasun_langile_id, izena, abizenak, espezialitatea FROM V_Osasun_Langilea ORDER BY abizenak ASC")->fetchAll(PDO::FETCH_ASSOC);
    $pazienteak = $pdo->query("SELECT paziente_id, izena, abizenak, nan FROM V_Pazientea ORDER BY abizenak ASC")->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    $errorea = "Errorea datuak eskuratzean: " . $e->getMessage();
}

// 2. Handle form submission
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $p_id = $_POST['paziente_id'];
    $m_id = $_POST['osasun_langile_id'];
    $data = $_POST['data'];
    $h_ordua = $_POST['hasiera_ordua'];
    $b_ordua = $_POST['bukaera_ordua'];
    $arrazoia = $_POST['arrazoia'];

    if ($p_id && $m_id && $data && $h_ordua && $b_ordua) {
        try {
            // Check for conflicts
            $sql_check = "SELECT COUNT(*) FROM Hitzorduak WHERE osasun_langile_id = ? AND data = ? AND 
                        ((hasiera_ordua < ? AND bukaera_ordua > ?) OR (hasiera_ordua < ? AND bukaera_ordua > ?))";
            $stmt_check = $pdo->prepare($sql_check);
            $stmt_check->execute([$m_id, $data, $b_ordua, $h_ordua, $b_ordua, $h_ordua]);

            if ($stmt_check->fetchColumn() == 0) {
                $sql_insert = "INSERT INTO Hitzorduak (paziente_id, osasun_langile_id, data, hasiera_ordua, bukaera_ordua, arrazoia, egoera) VALUES (?, ?, ?, ?, ?, ?, 'Zain')";
                $stmt_insert = $pdo->prepare($sql_insert);
                $stmt_insert->execute([$p_id, $m_id, $data, $h_ordua, $b_ordua, $arrazoia]);

                header("Location: hitzorduak.php?msg=" . urlencode("Hitzordua arrakastaz sortu da."));
                exit;
            } else {
                $errorea = "osasun_langileak badu beste hitzordu bat ordu tarte horretan.";
            }
        } catch (PDOException $e) {
            $errorea = "Errorea datu-basean: " . $e->getMessage();
        }
    } else {
        $errorea = "Mesedez, bete eremu guztiak.";
    }
}

$orri_izenburua = "Hitzordu Berria - GOsasun";
$uneko_orria = "hitzorduak";
$css_pertsonalizatua = "hitzorduak.css";
include_once '../php_orri_includeak/harrera_goiburua.php';
?>

<main class="panel-nagusia">
    <div class="orri-goiburua marjina-behe-20">
        <a href="hitzorduak.php" class="esteka-itzuli flex-zentratua"><img src="../img/svg/arrow-left.svg" alt="" class="ikono-txikia marjina-esk-5"> Itzuli egutegira</a>
        <h2 class="izenburu-nagusia marjina-goi-10">Hitzordu Berria</h2>
    </div>

    <?php if ($errorea): ?>
        <div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div>
    <?php endif; ?>

    <div class="kutxa-zuria-itzala padding-30">
        <form method="POST" action="hitzordua_sortu.php">
            <div class="sareta-bikoa-sareta">
                <div class="inprimaki-taldea">
                    <label for="paziente_id" class="testu-lodia">Pazientea *</label>
                    <div class="flex-taldea-5 marjina-behe-5">
                        <input type="text" class="inprimaki-kontrola" placeholder="Bilatu pazientea (NAN/Izena)..." onkeyup="filterSelect(this, 'paziente_id')">
                    </div>
                    <select name="paziente_id" id="paziente_id" class="inprimaki-kontrola" required>
                        <option value="">Hautatu paziente bat...</option>
                        <?php foreach ($pazienteak as $p): ?>
                            <option value="<?php echo $p['paziente_id']; ?>" <?php echo $paziente_id_lehenetsia == $p['paziente_id'] ? 'selected' : ''; ?>>
                                <?php echo htmlspecialchars($p['abizenak'] . ", " . $p['izena'] . " (" . $p['nan'] . ")"); ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>

                <div class="inprimaki-taldea">
                    <label for="osasun_langile_id" class="testu-lodia">Medikua *</label>
                    <div class="flex-taldea-5 marjina-behe-5">
                        <input type="text" class="inprimaki-kontrola" placeholder="Bilatu medikua (Abizena/Espezialitatea)..." onkeyup="filterSelect(this, 'osasun_langile_id')">
                    </div>
                    <select name="osasun_langile_id" id="osasun_langile_id" class="inprimaki-kontrola" required>
                        <option value="">Hautatu mediku bat...</option>
                        <?php foreach ($medikuak as $m): ?>
                            <option value="<?php echo $m['osasun_langile_id']; ?>" <?php echo $mediku_id_lehenetsia == $m['osasun_langile_id'] ? 'selected' : ''; ?>>
                                Osasun Langilea <?php echo htmlspecialchars($m['abizenak'] . ", " . $m['izena'] . " - " . $m['espezialitatea']); ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>
            </div>

            <div class="sareta-hirukoa marjina-goi-20">
                <div class="inprimaki-taldea">
                    <label for="data" class="testu-lodia">Data *</label>
                    <input type="date" name="data" id="data" class="inprimaki-kontrola" value="<?php echo $data_lehenetsia; ?>" required>
                </div>
                <div class="inprimaki-taldea">
                    <label for="hasiera_ordua" class="testu-lodia">Hasiera Ordua *</label>
                    <input type="time" name="hasiera_ordua" id="hasiera_ordua" class="inprimaki-kontrola" required>
                </div>
                <div class="inprimaki-taldea">
                    <label for="bukaera_ordua" class="testu-lodia">Bukaera Ordua *</label>
                    <input type="time" name="bukaera_ordua" id="bukaera_ordua" class="inprimaki-kontrola" required>
                </div>
            </div>

            <div class="inprimaki-taldea marjina-goi-20">
                <label for="arrazoia" class="testu-lodia">Arrazoia / Oharrak</label>
                <textarea name="arrazoia" id="arrazoia" class="inprimaki-kontrola" errenkadak="4" placeholder="Idatzi hemen hitzorduaren arrazoia edo ohar garrantzitsuak..."></textarea>
            </div>

            <div class="flex-bukaera marjina-goi-30">
                <a href="hitzorduak.php" class="botoia botoi-ertza marjina-esk-15">Ezeztatu</a>
                <button type="submit" class="botoia botoi-nagusia">Gorde Hitzordua</button>
            </div>
        </form>
    </div>
</main>

<script>
function filterSelect(input, selectId) {
    const filter = input.value.toLowerCase();
    const select = document.getElementById(selectId);
    const options = select.getElementsByTagName('option');
    for (let i = 0; i < options.length; i++) {
        const txtValue = options[i].textContent || options[i].innerText;
        if (options[i].value === "" || txtValue.toLowerCase().indexOf(filter) > -1) {
            options[i].style.display = "";
        } else {
            options[i].style.display = "none";
        }
    }
}
</script>

<?php include_once '../php_orri_includeak/harrera_footer.php'; ?>
