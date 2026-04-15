<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$id = $_GET['id'] ?? null;
if (!$id) { header("Location: pazienteak.php"); exit; }

$mezua = '';
$errorea = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nan          = $_POST['nan'] ?? '';
    $izena        = $_POST['izena'] ?? '';
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

    // Irudiaren kudeaketa
    $irudia_sql = "";
    $params = [$email, $nan, $izena, $abizenak, $jaiotze_data, $telefonoa, $helbidea, $herria, $posta_kodea];
    
    if (isset($_FILES['irudia']) && $_FILES['irudia']['error'] === UPLOAD_ERR_OK) {
        $fitxategi_izena = $nan . "_" . time() . ".png";
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
        $sqlUser = "UPDATE erabiltzaileak SET email = ?, nan = ?, izena = ?, abizenak = ?, jaiotze_data = ?, telefonoa = ?, helbidea = ?, herria = ?, posta_kodea = ? $irudia_sql WHERE id = ?";
        $pdo->prepare($sqlUser)->execute($params);
            
        // 2. Update pazienteak
        $pdo->prepare("UPDATE pazienteak SET sexua = ?, odol_taldea = ?, egoera_klinikoa = ? WHERE id = ?")
            ->execute([$sexua, $odol_taldea, $egoera_klinikoa, $id]);

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

$orri_izenburua = 'Editatu Pazientea - GOsasun';
$uneko_orria = 'pazienteak';
include_once '../php_orri_includeak/harrera_goiburua.php';
?>
<!-- GUI logic -->
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

        <div class="editatu-panela">
            <form method="POST" enctype="multipart/form-data">
                
                <h3 class="atal-izenburua"><img src="../img/svg/user.svg" alt="" class="ikono-ertaina"> Argazkia eta Identifikazio Datuak</h3>
                <div class="argazki-koadroa">
                    <div class="argazki-ingurua">
                        <?php 
                        $irudia_bide = htmlspecialchars($p['irudia'] ?? 'img/lehenetsia_pazientea.png');
                        if (strpos($irudia_bide, 'img/') === 0 && strpos($irudia_bide, 'img/png/') === false && strpos($irudia_bide, 'img/svg/') === false) {
                            $irudia_bide = str_replace('img/', 'img/png/', $irudia_bide);
                        }
                        ?>
                        <img src="../<?php echo $irudia_bide; ?>" alt="Profila" class="profil-argazkia">
                    </div>
                    <div class="argazki-aukerak">
                        <label for="irudia" class="inprimaki-etiketa">Aldatu Argazkia</label>
                        <input type="file" id="irudia" name="irudia" class="inprimaki-sarrera fitxategi-sarrera" accept="image/*">
                        <p class="argibide-testua">Irudiak laukia izan behar du, gehienez 2MB.</p>
                    </div>
                </div>

                <div class="inprimaki-lerroa">
                    <div class="inprimaki-taldea">
                        <label for="nan" class="inprimaki-etiketa">NAN Identifikadorea</label>
                        <input type="text" id="nan" name="nan" class="inprimaki-sarrera" value="<?php echo htmlspecialchars($p['nan']); ?>" required>
                    </div>
                    <div class="hutsune-zatia"></div> 
                </div>

                <div class="inprimaki-lerroa">
                    <div class="inprimaki-taldea">
                        <label for="izena" class="inprimaki-etiketa">Izena</label>
                        <input type="text" id="izena" name="izena" class="inprimaki-sarrera" value="<?php echo htmlspecialchars($p['izena']); ?>" required>
                    </div>
                    <div class="inprimaki-taldea">
                        <label for="abizenak" class="inprimaki-etiketa">Abizenak</label>
                        <input type="text" id="abizenak" name="abizenak" class="inprimaki-sarrera" value="<?php echo htmlspecialchars($p['abizenak']); ?>" required>
                    </div>
                </div>

                <div class="inprimaki-lerroa">
                    <div class="inprimaki-taldea">
                        <label for="sexua" class="inprimaki-etiketa">Sexua</label>
                        <select id="sexua" name="sexua" class="inprimaki-sarrera aukera-sarrera">
                            <option value="">Hautatu...</option>
                            <option value="Emakumea" <?php echo ($p['sexua'] ?? '') === 'Emakumea' ? 'selected' : ''; ?>>Emakumea</option>
                            <option value="Gizona" <?php echo ($p['sexua'] ?? '') === 'Gizona' ? 'selected' : ''; ?>>Gizona</option>
                            <option value="Bestea" <?php echo ($p['sexua'] ?? '') === 'Bestea' ? 'selected' : ''; ?>>Bestea</option>
                        </select>
                    </div>
                    <div class="inprimaki-taldea">
                        <label for="jaiotze_data" class="inprimaki-etiketa">Jaiotze Data</label>
                        <input type="date" id="jaiotze_data" name="jaiotze_data" class="inprimaki-sarrera" value="<?php echo $p['jaiotze_data'] ?? ''; ?>">
                    </div>
                </div>

                <div class="inprimaki-lerroa">
                    <div class="inprimaki-taldea">
                        <label for="odol_taldea" class="inprimaki-etiketa">Odol Taldea</label>
                        <select id="odol_taldea" name="odol_taldea" class="inprimaki-sarrera aukera-sarrera">
                            <option value="">Hautatu...</option>
                            <?php foreach(['A+','A-','B+','B-','AB+','AB-','0+','0-'] as $ot): ?>
                                <option value="<?php echo $ot; ?>" <?php echo ($p['odol_taldea'] ?? '') === $ot ? 'selected' : ''; ?>><?php echo $ot; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="inprimaki-taldea">
                        <label for="egoera_klinikoa" class="inprimaki-etiketa">Egoera Klinikoa</label>
                        <select id="egoera_klinikoa" name="egoera_klinikoa" class="inprimaki-sarrera aukera-sarrera">
                            <option value="Alta" <?php echo ($p['egoera_klinikoa'] ?? '') === 'Alta' ? 'selected' : ''; ?>>Alta</option>
                            <option value="Aktibo" <?php echo ($p['egoera_klinikoa'] ?? '') === 'Aktibo' ? 'selected' : ''; ?>>Aktibo</option>
                            <option value="Baja" <?php echo ($p['egoera_klinikoa'] ?? '') === 'Baja' ? 'selected' : ''; ?>>Baja</option>
                        </select>
                    </div>
                </div>

                <hr class="inprimaki-banatzailea">

                <h3 class="atal-izenburua"><img src="../img/svg/phone.svg" alt="" class="ikono-ertaina"> Kontaktu Datuak</h3>
                
                <div class="inprimaki-lerroa">
                    <div class="inprimaki-taldea">
                        <label for="telefonoa" class="inprimaki-etiketa">Telefonoa</label>
                        <input type="text" id="telefonoa" name="telefonoa" class="inprimaki-sarrera" value="<?php echo htmlspecialchars($p['telefonoa'] ?? ''); ?>">
                    </div>
                    <div class="inprimaki-taldea">
                        <label for="email" class="inprimaki-etiketa">E-posta</label>
                        <input type="email" id="email" name="email" class="inprimaki-sarrera" value="<?php echo htmlspecialchars($p['email']); ?>" required>
                    </div>
                </div>

                <div class="inprimaki-taldea talde-osoa">
                    <label for="helbidea" class="inprimaki-etiketa">Helbidea</label>
                    <input type="text" id="helbidea" name="helbidea" class="inprimaki-sarrera" value="<?php echo htmlspecialchars($p['helbidea'] ?? ''); ?>">
                </div>

                <div class="inprimaki-lerroa">
                    <div class="inprimaki-taldea">
                        <label for="herria" class="inprimaki-etiketa">Herria</label>
                        <input type="text" id="herria" name="herria" class="inprimaki-sarrera" value="<?php echo htmlspecialchars($p['herria'] ?? ''); ?>">
                    </div>
                    <div class="inprimaki-taldea">
                        <label for="posta_kodea" class="inprimaki-etiketa">Posta Kodea</label>
                        <input type="text" id="posta_kodea" name="posta_kodea" class="inprimaki-sarrera" value="<?php echo htmlspecialchars($p['posta_kodea'] ?? ''); ?>">
                    </div>
                </div>

                <div class="ekintza-botoiak">
                    <button type="submit" class="botoia botoi-nagusia">Gorde Aldaketak</button>
                    <a href="pazienteak.php" class="botoia botoi-ertza">Itzuli</a>
                </div>
            </form>
        </div>
    </main>

<?php include_once '../php_orri_includeak/harrera_footer.php'; ?>
