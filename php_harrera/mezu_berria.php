<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$erabiltzaile_id = $_SESSION['erabiltzaile_id'];

// Lortu paziente guztiak
$stmt_pazienteak = $pdo->query("SELECT paziente_id, izena, abizenak, nan FROM Pazienteak ORDER BY abizenak, izena");
$pazienteak = $stmt_pazienteak->fetchAll(PDO::FETCH_ASSOC);

// Lortu mediku guztiak
$stmt_medikuak = $pdo->query("SELECT mediku_id, izena, abizenak, espezialitatea FROM Medikuak ORDER BY abizenak, izena");
$medikuak = $stmt_medikuak->fetchAll(PDO::FETCH_ASSOC);

$errore_mezua = '';
$arrakasta_mezua = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $hartzaile_id = $_POST['hartzaile_id'] ?? '';
    $gaia = $_POST['gaia'] ?? '';
    $mezua = $_POST['mezua'] ?? '';

    if (!empty($hartzaile_id) && !empty($gaia) && !empty($mezua)) {
        try {
            $stmt = $pdo->prepare("INSERT INTO Mezuak (bidaltzaile_id, hartzaile_id, gaia, mezua) VALUES (?, ?, ?, ?)");
            if ($stmt->execute([$erabiltzaile_id, $hartzaile_id, $gaia, $mezua])) {
                $arrakasta_mezua = "Mezua ondo bidali da!";
            } else {
                $errore_mezua = "Errorea mezua bidaltzean.";
            }
        } catch (PDOException $e) {
            $errore_mezua = "Datu-base errorea: " . $e->getMessage();
        }
    } else {
        $errore_mezua = "Mesedez, bete eremu guztiak.";
    }
}

$orri_izenburua = "Mezu Berria - GOsasun";
$uneko_orria = "mezuak";
include_once '../php_includeak/harrera_goiburua.php';
?>

<main class="panel-nagusia">
    <div class="orri-goiburua marjina-behe-20">
        <h2 class="izenburu-nagusia">✍️ Mezu Berria</h2>
        <p class="azpititulu-grisa">Sistemako edozein erabiltzaileri mezua bidali.</p>
    </div>

    <div class="kutxa-zuria-itzala">
        <?php if ($arrakasta_mezua): ?>
            <div class="alerta alerta-arrakasta marjina-behe-20">
                <?php echo $arrakasta_mezua; ?>
                <div class="marjina-goi-10"><a href="mezuak.php" class="esteka-arrakasta">← Itzuli mezuetara</a></div>
            </div>
        <?php endif; ?>

        <?php if ($errore_mezua): ?>
            <div class="alerta alerta-errorea marjina-behe-20"><?php echo $errore_mezua; ?></div>
        <?php endif; ?>

        <?php if (!$arrakasta_mezua): ?>
            <form action="mezu_berria.php" method="POST">
                <div class="inprimaki-taldea">
                    <label for="hartzaile_id">Hartzailea</label>
                    <select id="hartzaile_id" name="hartzaile_id" class="inprimaki-kontrola" required>
                        <option value="">Aukeratu hartzaile bat...</option>
                        <optgroup label="Medikuak">
                            <?php foreach ($medikuak as $m): ?>
                                <option value="<?php echo $m['mediku_id']; ?>">Dr. <?php echo htmlspecialchars($m['izena'] . ' ' . $m['abizenak'] . ' (' . $m['espezialitatea'] . ')'); ?></option>
                            <?php endforeach; ?>
                        </optgroup>
                        <optgroup label="Pazienteak">
                            <?php foreach ($pazienteak as $p): ?>
                                <option value="<?php echo $p['paziente_id']; ?>"><?php echo htmlspecialchars($p['izena'] . ' ' . $p['abizenak'] . ' (' . $p['nan'] . ')'); ?></option>
                            <?php endforeach; ?>
                        </optgroup>
                    </select>
                </div>

                <div class="inprimaki-taldea">
                    <label for="gaia">Gaia</label>
                    <input type="text" id="gaia" name="gaia" class="inprimaki-kontrola" placeholder="Mezuaren izenburua" required>
                </div>

                <div class="inprimaki-taldea">
                    <label for="mezua">Mezua</label>
                    <textarea id="mezua" name="mezua" class="inprimaki-kontrola" errenkadak="6" placeholder="Idatzi hemen zure mezua..." required></textarea>
                </div>

                <div class="flex-bukaera goiko-tartea-20" style="gap: 10px;">
                    <a href="mezuak.php" class="botoia botoi-ertza">Utzi</a>
                    <button type="submit" class="botoia botoi-nagusia">Bidali Mezua</button>
                </div>
            </form>
        <?php endif; ?>
    </div>
</main>

<?php include_once '../php_includeak/harrera_footer.php'; ?>


