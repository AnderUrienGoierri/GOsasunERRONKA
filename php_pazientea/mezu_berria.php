<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$erabiltzaile_id = $_SESSION['erabiltzaile_id'];

// Lortu pazientearen mediku esleituak
$stmt_medikuak = $pdo->prepare("
    SELECT m.mediku_id, m.izena, m.abizenak, m.espezialitatea
    FROM Medikuak m
    JOIN Mediku_Paziente mp ON m.mediku_id = mp.mediku_id
    WHERE mp.paziente_id = ?
");
$stmt_medikuak->execute([$erabiltzaile_id]);
$medikuak = $stmt_medikuak->fetchAll(PDO::FETCH_ASSOC);

// Lortu harrerako langileak (guztiak edo aktiboak)
$stmt_harrera = $pdo->query("SELECT langile_id, izena, abizenak FROM Harrerako_Langileak");
$harrerakoak = $stmt_harrera->fetchAll(PDO::FETCH_ASSOC);

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
include_once '../php_includeak/paziente_goiburua.php';
?>

<main class="panel-nagusia">
    <div class="orri-goiburua marjina-behe-20">
        <h2 class="izenburu-nagusia"><img src="../img/clipboard-pen.svg" alt="" class="ikono-ertaina marjina-esk-10"> Mezu Berria</h2>
        <p class="azpititulu-grisa">Bete inprimakia mezu bat bidaltzeko.</p>
    </div>

    <div class="kutxa-zuria-itzala">
        <?php if ($arrakasta_mezua): ?>
            <div class="alerta alerta-arrakasta marjina-behe-20">
                <?php echo $arrakasta_mezua; ?>
                <div class="marjina-goi-10"><a href="mezuak.php" class="esteka-arrakasta"><img src="../img/arrow-left.svg" alt="" class="ikono-1em marjina-esk-5"> Itzuli mezuetara</a></div>
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
                        <optgroup label="Nire Medikuak">
                            <?php foreach ($medikuak as $m): ?>
                                <option value="<?php echo $m['mediku_id']; ?>">Dr. <?php echo htmlspecialchars($m['izena'] . ' ' . $m['abizenak'] . ' (' . $m['espezialitatea'] . ')'); ?></option>
                            <?php endforeach; ?>
                        </optgroup>
                        <optgroup label="Harrera">
                            <?php foreach ($harrerakoak as $h): ?>
                                <option value="<?php echo $h['langile_id']; ?>">Harrera: <?php echo htmlspecialchars($h['izena'] . ' ' . $h['abizenak']); ?></option>
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

                <div class="flex-bukaera goiko-tartea-20 hutsartea-10">
                    <a href="mezuak.php" class="botoia botoi-ertza">Utzi</a>
                    <button type="submit" class="botoia botoi-nagusia">Bidali Mezua</button>
                </div>
            </form>
        <?php endif; ?>
    </div>
</main>

<?php include_once '../php_includeak/paziente_footer.php'; ?>


