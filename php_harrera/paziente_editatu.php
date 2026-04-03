<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$id = $_GET['id'] ?? null;
if (!$id) { header("Location: pazienteak.php"); exit; }

$mezua = '';
$errorea = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nan          = $_POST['nan'];
    $izena        = $_POST['izena'];
    $abizenak     = $_POST['abizenak'];
    $email        = $_POST['email'];
    $sexua        = $_POST['sexua'];
    $jaiotze_data = $_POST['jaiotze_data'] ?: null;
    $telefonoa    = $_POST['telefonoa'];
    $helbidea     = $_POST['helbidea'];
    $herria       = $_POST['herria'];
    $posta_kodea  = $_POST['posta_kodea'];
    $odol_taldea  = $_POST['odol_taldea'];
    $egoera_klinikoa = $_POST['egoera_klinikoa'];

    try {
        $pdo->beginTransaction();

        $pdo->prepare("UPDATE Erabiltzaileak SET email = ? WHERE id = ?")->execute([$email, $id]);
        $pdo->prepare("UPDATE Pazienteak SET nan = ?, izena = ?, abizenak = ?, sexua = ?, jaiotze_data = ?, telefonoa = ?, helbidea = ?, herria = ?, posta_kodea = ?, odol_taldea = ?, egoera_klinikoa = ? WHERE id = ?")
            ->execute([$nan, $izena, $abizenak, $sexua, $jaiotze_data, $telefonoa, $helbidea, $herria, $posta_kodea, $odol_taldea, $egoera_klinikoa, $id]);

        $pdo->commit();
        $mezua = "Datuak arrakastaz eguneratu dira.";
    } catch (PDOException $e) {
        $pdo->rollBack();
        $errorea = "Errorea: " . $e->getMessage();
    }
}

$stmt = $pdo->prepare("SELECT * FROM V_Pazientea WHERE paziente_id = ?");
$stmt->execute([$id]);
$p = $stmt->fetch(PDO::FETCH_ASSOC);
if (!$p) { header("Location: pazienteak.php"); exit; }

$orri_izenburua = "Editatu Pazientea - GOsasun";
$uneko_orria = "pazienteak";
$css_pertsonalizatua = "pazienteak.css";
include_once '../php_includeak/harrera_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/svg/pencil.svg" alt="" class="ikono-ertaina marjina-esk-5"> Editatu Pazientea</h2>
                <p><?php echo htmlspecialchars($p['abizenak'] . ', ' . $p['izena']); ?></p>
            </div>
            <a href="pazienteak.php" class="botoia botoi-ertza">← Itzuli</a>
        </div>

        <?php if ($mezua): ?><div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($mezua); ?></div><?php endif; ?>
        <?php if ($errorea): ?><div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div><?php endif; ?>

        <div class="inprimaki-kutxa kutxa-zuria-700">
            <form method="POST">
                <div class="profil-gorputza">

                    <h3 class="atal-izenburua">Identifikazio Datuak</h3>
                    <div class="informazio-taldea">
                        <label for="nan">NAN</label>
                        <input type="text" id="nan" name="nan" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($p['nan']); ?>" required>
                    </div>
                    <div class="informazio-taldea">
                        <label for="izena">Izena</label>
                        <input type="text" id="izena" name="izena" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($p['izena']); ?>" required>
                    </div>
                    <div class="informazio-taldea">
                        <label for="abizenak">Abizenak</label>
                        <input type="text" id="abizenak" name="abizenak" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($p['abizenak']); ?>" required>
                    </div>
                    <div class="informazio-taldea">
                        <label for="sexua">Sexua</label>
                        <select id="sexua" name="sexua" class="inprimaki-kontrola">
                            <option value="">Hautatu...</option>
                            <option value="Emakumea" <?php echo ($p['sexua'] ?? '') === 'Emakumea' ? 'selected' : ''; ?>>Emakumea</option>
                            <option value="Gizona" <?php echo ($p['sexua'] ?? '') === 'Gizona' ? 'selected' : ''; ?>>Gizona</option>
                            <option value="Bestea" <?php echo ($p['sexua'] ?? '') === 'Bestea' ? 'selected' : ''; ?>>Bestea</option>
                        </select>
                    </div>
                    <div class="informazio-taldea">
                        <label for="jaiotze_data">Jaiotze Data</label>
                        <input type="date" id="jaiotze_data" name="jaiotze_data" class="inprimaki-kontrola" value="<?php echo $p['jaiotze_data'] ?? ''; ?>">
                    </div>
                    <div class="informazio-taldea">
                        <label for="odol_taldea">Odol Taldea</label>
                        <select id="odol_taldea" name="odol_taldea" class="inprimaki-kontrola">
                            <option value="">Hautatu...</option>
                            <?php foreach(['A+','A-','B+','B-','AB+','AB-','0+','0-'] as $ot): ?>
                                <option value="<?php echo $ot; ?>" <?php echo ($p['odol_taldea'] ?? '') === $ot ? 'selected' : ''; ?>><?php echo $ot; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="informazio-taldea">
                        <label for="egoera_klinikoa">Egoera Klinikoa</label>
                        <select id="egoera_klinikoa" name="egoera_klinikoa" class="inprimaki-kontrola">
                            <option value="Alta" <?php echo ($p['egoera_klinikoa'] ?? '') === 'Alta' ? 'selected' : ''; ?>>Alta</option>
                            <option value="Aktibo" <?php echo ($p['egoera_klinikoa'] ?? '') === 'Aktibo' ? 'selected' : ''; ?>>Aktibo</option>
                            <option value="Baja" <?php echo ($p['egoera_klinikoa'] ?? '') === 'Baja' ? 'selected' : ''; ?>>Baja</option>
                        </select>
                    </div>

                    <h3 class="atal-izenburua">Kontaktu Datuak</h3>
                    <div class="informazio-taldea">
                        <label for="telefonoa">Telefonoa</label>
                        <input type="text" id="telefonoa" name="telefonoa" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($p['telefonoa'] ?? ''); ?>">
                    </div>
                    <div class="informazio-taldea">
                        <label for="helbidea">Helbidea</label>
                        <input type="text" id="helbidea" name="helbidea" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($p['helbidea'] ?? ''); ?>">
                    </div>
                    <div class="informazio-taldea">
                        <label for="herria">Herria</label>
                        <input type="text" id="herria" name="herria" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($p['herria'] ?? ''); ?>">
                    </div>
                    <div class="informazio-taldea">
                        <label for="posta_kodea">Posta Kodea</label>
                        <input type="text" id="posta_kodea" name="posta_kodea" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($p['posta_kodea'] ?? ''); ?>">
                    </div>

                    <h3 class="atal-izenburua">Kontu Datuak</h3>
                    <div class="informazio-taldea">
                        <label for="email">E-posta</label>
                        <input type="email" id="email" name="email" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($p['email']); ?>" required>
                    </div>
                </div>

                <div class="botoi-taldea marjina-goi-20">
                    <button type="submit" class="botoia botoi-nagusia">Gorde Aldaketak</button>
                    <a href="pazienteak.php" class="botoia botoi-ertza">Itzuli</a>
                </div>
            </form>
        </div>
    </main>

<?php include_once '../php_includeak/harrera_footer.php'; ?>
