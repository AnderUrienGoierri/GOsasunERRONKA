<?php
$base_path = '../';
session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$id = $_GET['id'] ?? null;
if (!$id) { header("Location: pazienteak.php"); exit; }

$msg = '';
$error = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nan = $_POST['nan'];
    $izena = $_POST['izena'];
    $abizenak = $_POST['abizenak'];
    $email = $_POST['email'];
    $jaiotze_data = $_POST['jaiotze_data'];
    $telefonoa = $_POST['telefonoa'];

    try {
        $pdo->beginTransaction();
        
        $stmtU = $pdo->prepare("UPDATE Erabiltzaileak SET email = ? WHERE erabiltzaile_id = ?");
        $stmtU->execute([$email, $id]);
        
        $stmtP = $pdo->prepare("UPDATE Pazienteak SET nan = ?, izena = ?, abizenak = ?, jaiotze_data = ?, telefonoa = ? WHERE paziente_id = ?");
        $stmtP->execute([$nan, $izena, $abizenak, $jaiotze_data, $telefonoa, $id]);
        
        $pdo->commit();
        $msg = "Datuak arrakastaz eguneratu dira.";
    } catch (PDOException $e) {
        $pdo->rollBack();
        $error = "Errorea: " . $e->getMessage();
    }
}

$stmt = $pdo->prepare("SELECT * FROM V_Pazientea WHERE paziente_id = ?");
$stmt->execute([$id]);
$p = $stmt->fetch(PDO::FETCH_ASSOC);

?>
<!DOCTYPE html>
<html lang="eu">
<head>
    <meta charset="UTF-8">
    <title>Editatu Pazientea - GOsasun</title>
    <link rel="stylesheet" href="../css/estilo_orokorrak.css">
    <link rel="stylesheet" href="../css/pazienteak.css">
</head>
<body class="panel-gorputza">
    <header class="panel-goiburua">
        <div class="logoa"><a href="index.php">🏢 GOsasun - Harrera</a></div>
    </header>
    <main class="panel-nagusia">
        <div class="orri-goiburua"><h2><img src="../img/pencil.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> Editatu Pazientea</h2></div>
        <?php $base_path = '../';
if ($msg): ?><div class="alerta alerta-arrakasta"><?php $base_path = '../';
echo $msg; ?></div><?php $base_path = '../';
endif; ?>
        <?php $base_path = '../';
if ($error): ?><div class="alerta alerta-errorea"><?php $base_path = '../';
echo $error; ?></div><?php $base_path = '../';
endif; ?>
        <div class="inprimaki-kutxa kutxa-zuria-700" >
            <form method="POST">
                <div class="profil-gorputza">
                    <div class="informazio-taldea"><label>NAN</label><input type="text" name="nan" class="inprimaki-kontrola" value="<?php $base_path = '../';
echo htmlspecialchars($p['nan']); ?>" required></div>
                    <div class="informazio-taldea"><label>E-posta</label><input type="email" name="email" class="inprimaki-kontrola" value="<?php $base_path = '../';
echo htmlspecialchars($p['email']); ?>" required></div>
                    <div class="informazio-taldea"><label>Izena</label><input type="text" name="izena" class="inprimaki-kontrola" value="<?php $base_path = '../';
echo htmlspecialchars($p['izena']); ?>" required></div>
                    <div class="informazio-taldea"><label>Abizenak</label><input type="text" name="abizenak" class="inprimaki-kontrola" value="<?php $base_path = '../';
echo htmlspecialchars($p['abizenak']); ?>" required></div>
                    <div class="informazio-taldea"><label>Jaiotze Data</label><input type="date" name="jaiotze_data" class="inprimaki-kontrola" value="<?php $base_path = '../';
echo $p['jaiotze_data']; ?>"></div>
                    <div class="informazio-taldea"><label>Telefonoa</label><input type="text" name="telefonoa" class="inprimaki-kontrola" value="<?php $base_path = '../';
echo htmlspecialchars($p['telefonoa']); ?>"></div>
                </div>
                <div class="botoi-taldea marjina-goi-20" >
                    <button type="submit" class="botoia botoi-nagusia">Gorde Aldaketak</button>
                    <a href="pazienteak.php" class="botoia botoi-ertza">Itzuli</a>
                </div>
            </form>
        </div>
    </main>
</body>
</html>


