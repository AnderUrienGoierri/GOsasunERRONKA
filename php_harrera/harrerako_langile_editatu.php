<?php
$base_path = '../';
session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';

$error = '';
$msg = '';

if (!isset($_GET['id']) || empty($_GET['id'])) {
    header("Location: harrerako_langileak.php");
    exit;
}

$id = $_GET['id'];

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $izena = $_POST['izena'] ?? '';
    $abizenak = $_POST['abizenak'] ?? '';
    $email = $_POST['email'] ?? '';

    if (empty($izena) || empty($abizenak) || empty($email)) {
        $error = "Eremu nagusiak bete behar dira.";
    } else {
        try {
            $pdo->beginTransaction();

            $stmt = $pdo->prepare("UPDATE Erabiltzaileak SET email = ? WHERE erabiltzaile_id = ?");
            $stmt->execute([$email, $id]); 
            
            $stmt2 = $pdo->prepare("UPDATE Harrerako_Langileak SET izena = ?, abizenak = ? WHERE langile_id = ?");
            $stmt2->execute([$izena, $abizenak, $id]);

            if (!empty($_POST['pasahitza'])) {
                 if ($_POST['pasahitza'] === $_POST['pasahitza_errepikatu']) {
                     $stmtP = $pdo->prepare("UPDATE Erabiltzaileak SET pasahitza = ? WHERE erabiltzaile_id = ?");
                     $stmtP->execute([$_POST['pasahitza'], $id]);
                 } else {
                     throw new Exception("Pasahitzak ez datoz bat. Ez da hitz pasarik eguneratu.");
                 }
            }

            $pdo->commit();
            $msg = "Datuak ongi eguneratu dira.";
        } catch (Exception $e) {
            if($pdo->inTransaction()) $pdo->rollBack();
            if ($e->getCode() == 23000) {
                $error = "Helbide elektroniko hori jada erregistratuta dago.";
            } else {
                $error = "Errorea: " . $e->getMessage();
            }
        }
    }
}

// Kargatu datuak
$stmt = $pdo->prepare("SELECT hl.*, e.email FROM Harrerako_Langileak hl JOIN Erabiltzaileak e ON hl.langile_id = e.erabiltzaile_id WHERE hl.langile_id = ?");
$stmt->execute([$id]);
$langilea = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$langilea) {
    header("Location: harrerako_langileak.php?error=" . urlencode("Langilea ez da aurkitu."));
    exit;
}

$page_title = "Langilea Editatu - GOsasun";
$current_page = "harrerako_langileak";
$custom_css = "harrerako_langileak.css";
include_once '../php_includeak/harrera_goiburua.php';
?>

<main class="panel-nagusia">
    <a href="harrerako_langileak.php" class="atzera-botoia esteka-itzuli" ><img src="../img/arrow-left.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> Itzuli zerrendara</a>

    <div class="orri-goiburua">
        <h2><img src="../img/pencil.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> Langilea Editatu: <?php $base_path = '../';
            echo htmlspecialchars($langilea['izena']); ?>
        </h2>
    </div>

    <?php $base_path = '../';
        if ($msg): ?>
            <div class="alerta alerta-arrakasta"><?php $base_path = '../';
                echo htmlspecialchars($msg); ?>
            </div>
    <?php $base_path = '../';
        endif; ?>

    <?php $base_path = '../';
        if ($error): ?>
            <div class="alerta alerta-errorea"><?php $base_path = '../';
                echo htmlspecialchars($error); ?>
            </div>
    <?php $base_path = '../';
        endif; ?>

    <div class="inprimaki-edukiontzia kutxa-zuria-800" >
        <form method="POST" action="">
            <div class="sareta-bikoa">
                <div class="inprimaki-taldea">
                    <label>Izena</label>
                    <input type="text" name="izena" class="inprimaki-kontrola" required value="<?php $base_path = '../';
                        echo htmlspecialchars($langilea['izena']); ?>">
                </div>
                <div class="inprimaki-taldea">
                    <label>Abizenak</label>
                    <input type="text" name="abizenak" class="inprimaki-kontrola" required value="<?php $base_path = '../';
                        echo htmlspecialchars($langilea['abizenak']); ?>">
                </div>
                <div class="inprimaki-taldea zutabe-osoa" >
                    <label>Posta Elektronikoa</label>
                    <input type="email" name="email" class="inprimaki-kontrola" required value="<?php $base_path = '../';
                        echo htmlspecialchars($langilea['email']); ?>">
                </div>
                
                <div class="inprimaki-taldea zutabe-osoa-marjina" >
                    <label class="azpiko-marra">Pasahitza aldatu (aukerakoa)</label>
                </div>
                
                <div class="inprimaki-taldea">
                    <label>Pasahitz Berria</label>
                    <input type="password" name="pasahitza" class="inprimaki-kontrola" placeholder="Hutsik utzi ez aldatzeko">
                </div>
                <div class="inprimaki-taldea">
                    <label>Errepikatu Pasahitza</label>
                    <input type="password" name="pasahitza_errepikatu" class="inprimaki-kontrola" placeholder="Hutsik utzi ez aldatzeko">
                </div>
            </div>
            
            <div class="botoi-taldea-flex">
                <button type="submit" class="botoia botoi-nagusia flex-osoa" >Gorde Aldaketak</button>
                <a href="harrerako_langileak.php" class="botoia botoi-ertza">Utzi</a>
            </div>
        </form>
    </div>
</main>

<?php $base_path = '../';
include_once '../php_includeak/harrera_footer.php'; ?>


