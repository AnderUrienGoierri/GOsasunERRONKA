<?php
session_start();
$bide_absolutua = '../';
require_once '../php_laguntzaileak/DB_konexioa.php';

$errore_mezua = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['email'] ?? '';
    $pasahitza = $_POST['pasahitza'] ?? '';

    if (!empty($email) && !empty($pasahitza)) {
        try {
            // Erabiltzailea datu-basean bilatu V_Login bista erabiliz
            $stmt = $pdo->prepare("SELECT erabiltzaile_id, email, pasahitza, rol_id, rol_izena 
                                   FROM V_Login 
                                   WHERE email = ? AND aktibo = 1");
            $stmt->execute([$email]);
            $user = $stmt->fetch(PDO::FETCH_ASSOC);

            // Pasahitza egiaztatu (Demoan testu laua, errealean password_verify erabili behar logikoki, baina datu txertatuak testu lauan baldin badaude, moldatu)
            // Hemen pentsatuko dugu 'password_verify' erabiltzn dela (baldin eta hashed badago)
            //  momentuz testu lauko konparazio bat egiten da baldin eta ezin baduzu erregistratu momentuz.
            // *Oharra: Komeni da beti password_hash eta password_verify erabiltzea!
            if ($user && $pasahitza === $user['pasahitza']) { 
                 // Segurua: if ($user && password_verify($pasahitza, $user['pasahitza'])) {
                
                $_SESSION['erabiltzaile_id'] = $user['erabiltzaile_id'];
                $_SESSION['rol_id'] = $user['rol_id'];
                $_SESSION['rol_izena'] = $user['rol_izena'];

                if ($user['rol_izena'] === 'Medikua') {
                    header("Location: ../php_medikua/index.php");
                    exit;
                } else if ($user['rol_izena'] === 'Pazientea') {
                    header("Location: ../php_pazientea/index.php");
                    exit;
                } else if ($user['rol_izena'] === 'Harrera') {
                    header("Location: ../php_harrera/index.php");
                    exit;
                } else {
                    $errore_mezua = "Sarbide deuseztatua rol ezezagunagatik.";
                }
            } else {
                $errore_mezua = "Helbide elektronikoa edo pasahitza ez dira zuzenak.";
            }

        } catch (PDOException $e) {
            $errore_mezua = "Errorea datu-basean: " . $e->getMessage();
        }
    } else {
        $errore_mezua = "Mesedez, bete eremu guztiak.";
    }
}
?>
<?php
$orri_izenburua = "Saioa Hasi - GOsasun";
$uneko_orria = "login";

include '../php_includeak/goiburua.php';
?>
    <div class="hasiera-edukiontzia">
        <div class="hasiera-txartela">
            <div class="hasiera-goiburua">
                <img src="../img/GOsasun_logoa.png" alt="GOsasun" class="logo-irudia" style="margin: 0 auto 20px; height: 60px; mix-blend-mode: multiply;">
                <p style="font-size: 1.3rem; font-weight: 600;">Ongi etorri berriro zure atarira</p>
            </div>
            
            <?php if (!empty($errore_mezua)): ?>
                <div class="alerta alerta-errorea">
                    <?php echo htmlspecialchars($errore_mezua); ?>
                </div>
            <?php endif; ?>

            <form id="loginForm" method="POST" action="login.php">
                <div class="inprimaki-taldea">
                    <label for="email">E-posta helbidea</label>
                    <input type="email" id="email" name="email" class="inprimaki-kontrola" placeholder="Zure helbide elektronikoa" required value="<?php echo isset($_POST['email']) ? htmlspecialchars($_POST['email']) : ''; ?>">
                    <span class="errore-mezua" id="error-login-email">Idatzi helbide baliagarri bat.</span>
                </div>
                
                <div class="inprimaki-taldea">
                    <label for="pasahitza">Pasahitza</label>
                    <input type="password" id="pasahitza" name="pasahitza" class="inprimaki-kontrola" placeholder="••••••••" required>
                    <span class="errore-mezua" id="error-login-pass">Pasahitza ezin da hutsik egon.</span>
                </div>
                
                <button type="submit" class="botoia botoi-nagusia zabalera-100 goiko-tartea-20">Sartu</button>
            </form>
            
            <div class="hasiera-oina">
                <p><a href="../index.php">← Itzuli Hasierara</a></p>
            </div>
        </div>
    </div>

<?php
$js_gehigarria = ["login.js"];
include '../php_includeak/footer.php';
?>


