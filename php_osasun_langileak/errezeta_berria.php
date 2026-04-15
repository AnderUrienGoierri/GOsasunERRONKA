<?php
// php_osasun_langileak/errezeta_berria.php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Osasun Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$osasun_langile_id = $_SESSION['erabiltzaile_id'];
$mezua = '';
$errorea = '';

// 1. Datuak kargatu (Editatu modua bada)
$e_id = $_GET['id'] ?? null;
$errezeta = null;
$botika_lotua = null;

if ($e_id) {
    $stmt = $pdo->prepare("SELECT * FROM errezetak WHERE id = ? AND osasun_langile_id = ?");
    $stmt->execute([$e_id, $osasun_langile_id]);
    $errezeta = $stmt->fetch(PDO::FETCH_ASSOC);
    if (!$errezeta) {
        header("Location: errezetak.php");
        exit;
    }

    // Lortu lehen botika (momentuz bakarra onartzen dugu inprimakian)
    $stmtB = $pdo->prepare("SELECT * FROM errezeta_botikak WHERE errezeta_id = ? LIMIT 1");
    $stmtB->execute([$e_id]);
    $botika_lotua = $stmtB->fetch(PDO::FETCH_ASSOC);
}

// 2. Kudeatu POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['gorde_errezeta'])) {
        $p_id = $_POST['paziente_id'];
        $h_id = !empty($_POST['hitzordu_id']) ? $_POST['hitzordu_id'] : null;
        $i_data = $_POST['igorpen_data'];
        $ir_data = !empty($_POST['iraungitze_data']) ? $_POST['iraungitze_data'] : null;
        $diag = $_POST['diagnostiko_laburra'];
        $aktibo = isset($_POST['aktibo']) ? 1 : 0;

        if ($p_id && $i_data && $diag) {
            try {
                $pdo->beginTransaction();

                if ($e_id) {
                    $stmt = $pdo->prepare("UPDATE errezetak SET paziente_id = ?, hitzordu_id = ?, igorpen_data = ?, iraungitze_data = ?, diagnostiko_laburra = ?, aktibo = ? WHERE id = ?");
                    $stmt->execute([$p_id, $h_id, $i_data, $ir_data, $diag, $aktibo, $e_id]);
                } else {
                    $stmt = $pdo->prepare("INSERT INTO errezetak (osasun_langile_id, paziente_id, hitzordu_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo) VALUES (?, ?, ?, ?, ?, ?, ?)");
                    $stmt->execute([$osasun_langile_id, $p_id, $h_id, $i_data, $ir_data, $diag, $aktibo]);
                    $e_id = $pdo->lastInsertId();
                }

                // Botika kudeatu
                if (!empty($_POST['botika_id'])) {
                    $b_id = $_POST['botika_id'];
                    $dosia = $_POST['dosia'] ?? '';
                    $maiztasuna = $_POST['maiztasuna'] ?? '';

                    // Garbitu aurrekoak
                    $stmtDel = $pdo->prepare("DELETE FROM errezeta_botikak WHERE errezeta_id = ?");
                    $stmtDel->execute([$e_id]);

                    $stmtEB = $pdo->prepare("INSERT INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna) VALUES (?, ?, ?, ?)");
                    $stmtEB->execute([$e_id, $b_id, $dosia, $maiztasuna]);
                }

                $pdo->commit();
                header("Location: errezetak.php?mezua=Errezeta ondo gorde da");
                exit;
            } catch (PDOException $e) {
                $pdo->rollBack();
                $errorea = "Errorea gertatu da: " . $e->getMessage();
            }
        } else {
            $errorea = "Mesedez, bete ezinbesteko eremu guztiak.";
        }
    }
}

// 3. Aukerak kargatu inprimakirako
$stmtP = $pdo->prepare("SELECT paziente_id AS id, izena, abizenak, nan FROM V_Langile_Pazienteak WHERE langile_id = ? ORDER BY abizenak ASC");
$stmtP->execute([$osasun_langile_id]);
$pazienteak = $stmtP->fetchAll(PDO::FETCH_ASSOC);

$stmtH = $pdo->prepare("SELECT h.id AS hitzordu_id, h.data, h.hasiera_ordua, p.izena, p.abizenak FROM Hitzorduak h JOIN V_Pazientea p ON h.paziente_id = p.paziente_id WHERE h.osasun_langile_id = ? ORDER BY h.data DESC LIMIT 50");
$stmtH->execute([$osasun_langile_id]);
$hitzordu_aukerak = $stmtH->fetchAll(PDO::FETCH_ASSOC);

$stmtB = $pdo->query("SELECT id AS botika_id, izena FROM Botikak ORDER BY izena ASC");
$botikak_aukerak = $stmtB->fetchAll(PDO::FETCH_ASSOC);

$orri_izenburua = ($e_id ? "Errezeta Editatu" : "Errezeta Berria") . " - GOsasun";
$uneko_orria = "errezetak";
$css_pertsonalizatua = "osasun_langile_errezetak.css";
include_once '../php_orri_includeak/osasun_langile_goiburua.php';
?>

<main class="panel-nagusia">
    <div class="orri-goiburua">
        <a href="errezetak.php" class="atzera-esteka-testua flex-zentratua"><img src="../img/svg/arrow-left.svg" alt="" class="ikono-txikia marjina-esk-5"> Itzuli errezetetara</a>
        <h2><?php echo $e_id ? "Errezeta Editatu" : "Errezeta Berria"; ?></h2>
        <p>Bete inprimakia pazientearen errezeta eta diagnostikoa kudeatzeko.</p>
    </div>

    <?php if ($errorea): ?><div class="alerta alerta-errorea"><?php echo $errorea; ?></div><?php endif; ?>

    <div class="txartel-zuria marjina-goi-20">
        <form method="POST" id="errezetaForm" class="inprimaki-form-estandarra">

            <div class="inprimaki-taldea">
                <label for="paziente_id">Pazientea <span class="beharrezkoa">*</span></label>
                <select name="paziente_id" id="paziente_id" class="inprimaki-kontrola" required <?php echo $e_id ? 'disabled' : ''; ?>>
                    <option value="">Hautatu pazientea...</option>
                    <?php foreach ($pazienteak as $p): ?>
                        <option value="<?php echo $p['id']; ?>" <?php echo ($errezeta && $errezeta['paziente_id'] == $p['id']) ? 'selected' : ''; ?>>
                            <?php echo htmlspecialchars($p['abizenak'] . ", " . $p['izena'] . " (" . $p['nan'] . ")"); ?>
                        </option>
                    <?php endforeach; ?>
                </select>
                <?php if ($e_id): ?>
                    <input type="hidden" name="paziente_id" value="<?php echo $errezeta['paziente_id']; ?>">
                <?php endif; ?>
            </div>

            <div class="inprimaki-taldea">
                <label for="hitzordu_id">Lotutako Hitzordua (Hautazkoa)</label>
                <select name="hitzordu_id" id="hitzordu_id" class="inprimaki-kontrola">
                    <option value="">Lotu gabe...</option>
                    <?php foreach ($hitzordu_aukerak as $h): ?>
                        <option value="<?php echo $h['hitzordu_id']; ?>" <?php echo ($errezeta && $errezeta['hitzordu_id'] == $h['hitzordu_id']) ? 'selected' : ''; ?>>
                            <?php echo date('Y/m/d H:i', strtotime($h['data'] . ' ' . $h['hasiera_ordua'])); ?> - <?php echo htmlspecialchars($h['abizenak']); ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>

            <div class="sareta-bikoa-flex">
                <div class="inprimaki-taldea">
                    <label for="igorpen_data">Igorpen Data <span class="beharrezkoa">*</span></label>
                    <input type="date" name="igorpen_data" id="igorpen_data" class="inprimaki-kontrola" value="<?php echo $errezeta ? $errezeta['igorpen_data'] : date('Y-m-d'); ?>" required>
                </div>
                <div class="inprimaki-taldea">
                    <label for="iraungitze_data">Iraungitze Data (Hautazkoa)</label>
                    <input type="date" name="iraungitze_data" id="iraungitze_data" class="inprimaki-kontrola" value="<?php echo $errezeta ? $errezeta['iraungitze_data'] : ''; ?>">
                </div>
            </div>

            <div class="inprimaki-taldea">
                <label for="diagnostiko_laburra">Diagnostiko Laburra / Tratamendua <span class="beharrezkoa">*</span></label>
                <textarea name="diagnostiko_laburra" id="diagnostiko_laburra" class="inprimaki-kontrola" rows="4" required placeholder="Idatzi diagnostikoa edo emandako tratamenduaren laburpena..."><?php echo $errezeta ? htmlspecialchars($errezeta['diagnostiko_laburra']) : ''; ?></textarea>
            </div>

            <div class="botika-atala marjina-bertikal-30">
                <h4 class="izenburu-atala"><img src="../img/svg/pill.svg" alt="" class="ikono-ertaina marjina-esk-5"> Botika Erantsia</h4>
                <div class="errezeta-kutxa-argia">
                    <div class="inprimaki-taldea">
                        <label for="botika_id">Botika</label>
                        <select name="botika_id" id="botika_id" class="inprimaki-kontrola">
                            <option value="">Hautatu botika bat...</option>
                            <?php foreach ($botikak_aukerak as $b): ?>
                                <option value="<?php echo $b['botika_id']; ?>" <?php echo ($botika_lotua && $botika_lotua['botika_id'] == $b['botika_id']) ? 'selected' : ''; ?>>
                                    <?php echo htmlspecialchars($b['izena']); ?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="sareta-bikoa-flex">
                        <div class="inprimaki-taldea">
                            <label for="dosia">Dosia</label>
                            <input type="text" name="dosia" id="dosia" class="inprimaki-kontrola" placeholder="Adib. 500mg" value="<?php echo $botika_lotua ? htmlspecialchars($botika_lotua['dosia']) : ''; ?>">
                        </div>
                        <div class="inprimaki-taldea">
                            <label for="maiztasuna">Maiztasuna</label>
                            <input type="text" name="maiztasuna" id="maiztasuna" class="inprimaki-kontrola" placeholder="Adib. 8 ordutik behin" value="<?php echo $botika_lotua ? htmlspecialchars($botika_lotua['maiztasuna']) : ''; ?>">
                        </div>
                    </div>
                </div>
            </div>

            <div class="inprimaki-taldea checkbox-taldea">
                <label class="etiketa-checkbox">
                    <input type="checkbox" name="aktibo" id="aktibo" value="1" <?php echo (!$errezeta || $errezeta['aktibo'] == 1) ? 'checked' : ''; ?>> 
                    <span>Errezeta hau aktiboa da</span>
                </label>
            </div>

            <div class="inprimaki-botoiak marjina-goi-40">
                <a href="errezetak.php" class="botoia botoi-ertza">Utzi</a>
                <button type="submit" name="gorde_errezeta" class="botoia botoi-nagusia">
                    <?php echo $e_id ? "Gorde Aldaketak" : "Sortu Errezeta"; ?>
                </button>
            </div>
        </form>
    </div>
</main>

<style>
/* Doikuntza espezifikoak orri honetarako */
.txartel-zuria { background: white; padding: 40px; border-radius: 12px; box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1); max-width: 800px; margin: 0 auto; }
.atzera-esteka-testua { display: flex; align-items: center; color: var(--text-muted); margin-bottom: 20px; font-weight: 500; text-decoration: none; }
.atzera-esteka-testua:hover { color: var(--primary-color); }
.sareta-bikoa-flex { display: flex; gap: 20px; flex-wrap: wrap; }
.sareta-bikoa-flex > .inprimaki-taldea { flex: 1; min-width: 250px; }
.botika-atala { background: #f8fafc; padding: 25px; border-radius: 10px; border: 1px solid #e2e8f0; }
.izenburu-atala { margin-top: 0; margin-bottom: 20px; color: var(--primary-dark); border-bottom: 2px solid #e2e8f0; padding-bottom: 10px; }
.inprimaki-botoiak { display: flex; justify-content: flex-end; gap: 15px; border-top: 1px solid #e2e8f0; padding-top: 25px; }

@media (max-width: 600px) {
    .txartel-zuria { padding: 20px; }
    .inprimaki-botoiak { flex-direction: column-reverse; }
    .inprimaki-botoiak .botoia { width: 100%; text-align: center; }
}
</style>

<?php include_once '../php_orri_includeak/osasun_footer.php'; ?>
