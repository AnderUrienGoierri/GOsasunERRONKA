<?php
session_start();
$bide_absolutua = '../';
require_once '../php_laguntzaileak/DB_konexioa.php';
require_once '../php_includeak/konfigurazioa_kargatu.php';
require_once '../php_includeak/hizkuntza_kargatu.php';

$konf = kargatuKonfigurazioa(false);
$itzulpenak = kargatuItzulpenak($konf['hizkuntza']);

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
                    $errore_mezua = (string)$itzulpenak->login->errore_eremuak;
                }
            } else {
                $errore_mezua = (string)$itzulpenak->login->errore_kredentzialak;
            }

        } catch (PDOException $e) {
            $errore_mezua = "Errorea datu-basean: " . $e->getMessage();
        }
    } else {
        $errore_mezua = (string)$itzulpenak->login->errore_eremuak;
    }
}

$orri_izenburua = $itzulpenak->login->izenburua . " - GOsasun";
$uneko_orria = "login";

include '../php_includeak/goiburua.php';
?>
    <div class="hasiera-edukiontzia">
        <div class="hasiera-txartela">
            <div class="hasiera-goiburua">
                <img src="../img/png/GOsasun_logoa.png" alt="GOsasun" class="logo-irudia logo-login">
                <p class="login-azpititulua"><?php echo $itzulpenak->login->azpititulua; ?></p>
            </div>
            
            <?php if (!empty($errore_mezua)): ?>
                <div class="alerta alerta-errorea">
                    <?php echo htmlspecialchars($errore_mezua); ?>
                </div>
            <?php endif; ?>

            <form id="loginForm" method="POST" action="login.php">
                <div class="inprimaki-taldea">
                    <label for="email"><?php echo $itzulpenak->login->email; ?></label>
                    <input type="email" id="email" name="email" class="inprimaki-kontrola" placeholder="<?php echo $itzulpenak->login->email_placeholder; ?>" required value="<?php echo isset($_POST['email']) ? htmlspecialchars($_POST['email']) : ''; ?>">
                    <span class="errore-mezua" id="error-login-email">Idatzi helbide baliagarri bat.</span>
                </div>
                
                <div class="inprimaki-taldea">
                    <label for="pasahitza"><?php echo $itzulpenak->login->pasahitza; ?></label>
                    <input type="password" id="pasahitza" name="pasahitza" class="inprimaki-kontrola" placeholder="••••••••" required>
                    <span class="errore-mezua" id="error-login-pass">Pasahitza ezin da hutsik egon.</span>
                </div>
                
                <button type="submit" class="botoia botoi-nagusia zabalera-100 goiko-tartea-20"><?php echo $itzulpenak->login->sartu; ?></button>
            </form>
            
            <div class="hasiera-oina">
                <p><a href="../index.php"><img src="../img/svg/arrow-left.svg" alt="" class="ikono-16px-erdian"> <?php echo $itzulpenak->login->itzuli; ?></a></p>
            </div>
        </div>
    </div>

<?php
$js_gehigarria = ["login.js"];
include '../php_includeak/footer.php';
?>


