<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$id = $_GET['id'] ?? null;
if (!$id) { header("Location: medikuak.php"); exit; }

$mezua = '';
$errorea = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $izena = $_POST['izena'];
    $abizenak = $_POST['abizenak'];
    $email = $_POST['email'];
    $elkargokide = $_POST['elkargokide_zenbakia'];
    $espezialitatea = $_POST['espezialitatea'];
    $telefonoa = $_POST['telefonoa'];

    try {
        $pdo->beginTransaction();
        $pdo->prepare("UPDATE Erabiltzaileak SET email = ? WHERE erabiltzaile_id = ?")->execute([$email, $id]);
        $pdo->prepare("UPDATE Medikuak SET izena = ?, abizenak = ?, elkargokide_zenbakia = ?, espezialitatea = ?, telefonoa = ? WHERE mediku_id = ?")
            ->execute([$izena, $abizenak, $elkargokide, $espezialitatea, $telefonoa, $id]);
        $pdo->commit();
        $mezua = "Medikuaren datuak eguneratu dira.";
    } catch (PDOException $e) {
        $pdo->rollBack();
        $errorea = "Errorea: " . $e->getMessage();
    }
}

$stmt = $pdo->prepare("SELECT * FROM V_Medikua WHERE mediku_id = ?");
$stmt->execute([$id]);
$m = $stmt->fetch(PDO::FETCH_ASSOC);

?>
<!DOCTYPE html>
<html lang="eu">
<head>
    <meta charset="UTF-8"><title>Editatu Medikua - GOsasun</title>
    <link rel="stylesheet" href="../css/estilo_orokorrak.css">
<link rel="stylesheet" href="../css/medikuak.css">
</head>
<body class="panel-gorputza">
    <header class="panel-goiburua"><div class="logoa"><a href="index.php"><img src="../img/building.svg" alt="" class="ikono-1em marjina-esk-5"> GOsasun - Harrera</a></div></header>
    <main class="panel-nagusia">
        <div class="orri-goiburua"><h2><img src="../img/pencil.svg" alt="" class="ikono-ertaina marjina-esk-5"> Editatu Medikua</h2></div>
        <?php if ($mezua): ?><div class="alerta alerta-arrakasta"><?php echo $mezua; ?></div><?php endif; ?>
        <?php if ($errorea): ?><div class="alerta alerta-errorea"><?php echo $errorea; ?></div><?php endif; ?>
        <div class="inprimaki-kutxa kutxa-zuria-700" >
            <form method="POST">
                <div class="profil-gorputza">
                    <div class="informazio-taldea"><label>Izena</label><input type="text" name="izena" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($m['izena']); ?>" required></div>
                    <div class="informazio-taldea"><label>Abizenak</label><input type="text" name="abizenak" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($m['abizenak']); ?>" required></div>
                    <div class="informazio-taldea"><label>E-posta</label><input type="email" name="email" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($m['email']); ?>" required></div>
                    <div class="informazio-taldea"><label>Elkargokide Zkia.</label><input type="text" name="elkargokide_zenbakia" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($m['elkargokide_zenbakia']); ?>" required></div>
                    <div class="informazio-taldea"><label>Espezialitatea</label><input type="text" name="espezialitatea" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($m['espezialitatea']); ?>"></div>
                    <div class="informazio-taldea"><label>Telefonoa</label><input type="text" name="telefonoa" class="inprimaki-kontrola" value="<?php echo htmlspecialchars($m['telefonoa']); ?>"></div>
                </div>
                <div class="botoi-taldea marjina-goi-20" >
                    <button type="submit" class="botoia botoi-nagusia">Gorde Aldaketak</button>
                    <a href="medikuak.php" class="botoia botoi-ertza">Itzuli</a>
                </div>
            </form>
        </div>
    </main>
</body>
</html>


