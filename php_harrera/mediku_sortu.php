<?php
$base_path = '../';
session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$error = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $izena = $_POST['izena'] ?? '';
    $abizenak = $_POST['abizenak'] ?? '';
    $email = $_POST['email'] ?? '';
    $pasahitza = $_POST['pasahitza'] ?? '1234';
    $elkargokide = $_POST['elkargokide_zenbakia'] ?? '';
    $espezialitatea = $_POST['espezialitatea'] ?? '';
    $telefonoa = $_POST['telefonoa'] ?? null;

    if ($izena && $abizenak && $email && $elkargokide) {
        try {
            $pdo->beginTransaction();

            $stmtUser = $pdo->prepare("INSERT INTO Erabiltzaileak (email, pasahitza, rol_id, aktibo) VALUES (?, ?, 1, 1)");
            $stmtUser->execute([$email, $pasahitza]);
            $new_id = $pdo->lastInsertId();

            $stmtMediku = $pdo->prepare("INSERT INTO Medikuak (mediku_id, izena, abizenak, elkargokide_zenbakia, espezialitatea, telefonoa) VALUES (?, ?, ?, ?, ?, ?)");
            $stmtMediku->execute([$new_id, $izena, $abizenak, $elkargokide, $espezialitatea, $telefonoa]);

            $pdo->commit();
            header("Location: medikuak.php?msg=" . urlencode("Mediku berria sortu da."));
            exit;
        } catch (PDOException $e) {
            $pdo->rollBack();
            $error = "Errorea: " . $e->getMessage();
        }
    } else {
        $error = "Bete derrigorrezko eremuak.";
    }
}
?>
<!DOCTYPE html>
<html lang="eu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mediku Berria - GOsasun</title>
    <link rel="stylesheet" href="../css/estilo_orokorrak.css">
    <link rel="stylesheet" href="../css/medikuak.css">
</head>
<body class="panel-gorputza">
    <header class="panel-goiburua">
        <div class="logoa"><a href="index.php">🏢 GOsasun - Harrera</a></div>
        <ul class="nabigazio-estekak">
            <li><a href="index.php">Hasiera</a></li>
            <li><a href="pazienteak.php">Pazienteak</a></li>
            <li><a href="medikuak.php" class="aktiboa">Medikuak</a></li>
            <li><a href="hitzorduak.php">Hitzorduak</a></li>
            <li><a href="../logout.php" class="botoia botoi-ertza">Irten</a></li>
        </ul>
    </header>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2>➕ Mediku Berria Sortu</h2>
        </div>

        <?php $base_path = '../';
if ($error): ?><div class="alerta alerta-errorea"><?php $base_path = '../';
echo $error; ?></div><?php $base_path = '../';
endif; ?>

        <div class="inprimaki-kutxa kutxa-zuria-700" >
            <form method="POST">
                <div class="profil-gorputza">
                    <div class="informazio-taldea"><label>Izena *</label><input type="text" name="izena" class="inprimaki-kontrola" required></div>
                    <div class="informazio-taldea"><label>Abizenak *</label><input type="text" name="abizenak" class="inprimaki-kontrola" required></div>
                    <div class="informazio-taldea"><label>E-posta *</label><input type="email" name="email" class="inprimaki-kontrola" required></div>
                    <div class="informazio-taldea"><label>Elkargokide Zkia. *</label><input type="text" name="elkargokide_zenbakia" class="inprimaki-kontrola" required></div>
                    <div class="informazio-taldea"><label>Espezialitatea</label><input type="text" name="espezialitatea" class="inprimaki-kontrola"></div>
                    <div class="informazio-taldea"><label>Telefonoa</label><input type="text" name="telefonoa" class="inprimaki-kontrola"></div>
                    <div class="informazio-taldea"><label>Pasahitza</label><input type="password" name="pasahitza" class="inprimaki-kontrola" value="1234"></div>
                </div>
                <div class="botoi-taldea marjina-goi-20" >
                    <button type="submit" class="botoia botoi-nagusia">Gorde Medikua</button>
                    <a href="medikuak.php" class="botoia botoi-ertza">Utzi</a>
                </div>
            </form>
        </div>
    </main>
</body>
</html>


