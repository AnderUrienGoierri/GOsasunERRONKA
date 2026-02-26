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

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $izena =        $_POST['izena']                ?? '';
    $abizenak =     $_POST['abizenak']             ?? '';
    $email =        $_POST['email']                ?? '';
    $pasahitza =    $_POST['pasahitza']            ?? '';
    $pasahitza2 =   $_POST['pasahitza_errepikatu'] ?? '';

    if (empty($izena) || empty($abizenak) || empty($email) || empty($pasahitza) || empty($pasahitza2)) {
        $error = "Eremu guztiak bete behar dira.";
    } elseif ($pasahitza !== $pasahitza2) {
        $error = "Pasahitzak ez datoz bat.";
    } else {
        try {
            $pdo->beginTransaction();

            // 1. Sortu erabiltzailea
            // Rolaren IDa Harrera da (4)
            $stmt = $pdo->prepare("INSERT INTO Erabiltzaileak (email, pasahitza, rol_id, aktibo) VALUES (?, ?, 4, 1)");
            $stmt->execute([$email, $pasahitza]); // Oharra: sistemak testu laua darabil bistan (GOsasun_DB_data.sql-en '1234') - ez segurua baina bat egiteko 
            
            $berri_id = $pdo->lastInsertId();

            // 2. Sortu langilea
            $stmt2 = $pdo->prepare("INSERT INTO Harrerako_Langileak (langile_id, izena, abizenak) VALUES (?, ?, ?)");
            $stmt2->execute([$berri_id, $izena, $abizenak]);

            $pdo->commit();
            header("Location: harrerako_langileak.php?msg=" . urlencode("Langilea ongi sortu da."));
            exit;
        } catch (PDOException $e) {
            $pdo->rollBack();
            if ($e->getCode() == 23000) {
                $error = "Helbide elektroniko hori jada erregistratuta dago.";
            } else {
                $error = "Errorea langilea sortzean: " . $e->getMessage();
            }
        }
    }
}

$page_title = "Langile Berria - GOsasun";
$current_page = "harrerako_langileak";
$custom_css = "harrerako_langileak.css";
include_once '../php_includeak/harrera_goiburua.php';
?>

<main class="panel-nagusia">
    <a href="harrerako_langileak.php" class="atzera-botoia esteka-itzuli" >Itzuli zerrendara</a>

    <div class="orri-goiburua">
        <h2>Harrerako Langile Berria</h2>
    </div>

    <?php $base_path = '../';
if ($error): ?>
        <div class="alerta alerta-errorea"><?php $base_path = '../';
echo htmlspecialchars($error); ?></div>
    <?php $base_path = '../';
endif; ?>

    <div class="inprimaki-edukiontzia kutxa-zuria-800" >
        <form method="POST" action="">
            <div class="sareta-bikoa">
                <div class="inprimaki-taldea">
                    <label>Izena</label>
                    <input type="text" name="izena" class="inprimaki-kontrola" required value="<?php $base_path = '../';
echo htmlspecialchars($_POST['izena'] ?? ''); ?>">
                </div>
                <div class="inprimaki-taldea">
                    <label>Abizenak</label>
                    <input type="text" name="abizenak" class="inprimaki-kontrola" required value="<?php $base_path = '../';
echo htmlspecialchars($_POST['abizenak'] ?? ''); ?>">
                </div>
                <div class="inprimaki-taldea zutabe-osoa" >
                    <label>Posta Elektronikoa</label>
                    <input type="email" name="email" class="inprimaki-kontrola" required value="<?php $base_path = '../';
echo htmlspecialchars($_POST['email'] ?? ''); ?>">
                </div>
                <div class="inprimaki-taldea">
                    <label>Pasahitza</label>
                    <input type="password" name="pasahitza" class="inprimaki-kontrola" required>
                </div>
                <div class="inprimaki-taldea">
                    <label>Errepikatu Pasahitza</label>
                    <input type="password" name="pasahitza_errepikatu" class="inprimaki-kontrola" required>
                </div>
            </div>
            
            <div class="marjina-goi-20">
                <button type="submit" class="botoia botoi-nagusia zabalera-osoa" >Langilea Sortu</button>
            </div>
        </form>
    </div>
</main>

<?php $base_path = '../';
include_once '../php_includeak/harrera_footer.php'; ?>


