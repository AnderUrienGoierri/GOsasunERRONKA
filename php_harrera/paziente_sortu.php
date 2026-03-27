<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$mezua = '';
$errorea = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nan = $_POST['nan'] ?? '';
    $izena = $_POST['izena'] ?? '';
    $abizenak = $_POST['abizenak'] ?? '';
    $email = $_POST['email'] ?? '';
    $pasahitza = $_POST['pasahitza'] ?? '1234'; // Default password
    $jaiotze_data = $_POST['jaiotze_data'] ?? null;
    $telefonoa = $_POST['telefonoa'] ?? null;
    $odol_taldea = $_POST['odol_taldea'] ?? null;

    if ($nan && $izena && $abizenak && $email) {
        try {
            $pdo->beginTransaction();

            // 1. Erabiltzailea sortu
            $stmtUser = $pdo->prepare("INSERT INTO Erabiltzaileak (email, pasahitza, rol_id, aktibo) VALUES (?, ?, 2, 1)");
            $stmtUser->execute([$email, $pasahitza]);
            $id_berria = $pdo->lastInsertId();

            // 2. Pazientearen datuak sortu
            $stmtPaziente = $pdo->prepare("INSERT INTO Pazienteak (paziente_id, nan, izena, abizenak, jaiotze_data, telefonoa, odol_taldea) VALUES (?, ?, ?, ?, ?, ?, ?)");
            $stmtPaziente->execute([$id_berria, $nan, $izena, $abizenak, $jaiotze_data, $telefonoa, $odol_taldea]);

            $pdo->commit();
            header("Location: pazienteak.php?msg=" . urlencode("Paziente berria arrakastaz sortu da. ID: " . $id_berria));
            exit;
        } catch (PDOException $e) {
            $pdo->rollBack();
            $errorea = "Errorea sortzean (baliteke emaila edo NANa errepikatuta egotea): " . $e->getMessage();
        }
    } else {
        $errorea = "Mesedez, bete derrigorrezko eremu guztiak.";
    }
}
?>
<!DOCTYPE html>
<html lang="eu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paziente Berria - GOsasun</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/estilo_orokorrak.css">
    <link rel="stylesheet" href="../css/pazienteak.css">
    
</head>
<body class="panel-gorputza">
    <header class="panel-goiburua">
        <div class="logoa">
            <a href="index.php"><img src="../img/building.svg" alt="" class="ikono-1em marjina-esk-5"> GOsasun - Harrera</a>
        </div>
        <ul class="nabigazio-estekak">
            <li><a href="index.php">Hasiera</a></li>
            <li><a href="pazienteak.php" class="aktiboa">Pazienteak</a></li>
            <li><a href="medikuak.php">Medikuak</a></li>
            <li><a href="hitzorduak.php">Hitzorduak</a></li>
            <li><a href="../logout.php" class="botoia botoi-ertza">Irten</a></li>
        </ul>
    </header>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2><img src="../img/plus-circle.svg" alt="" class="ikono-ertaina marjina-esk-5"> Paziente Berria Sortu</h2>
            <p>Sartu paziente berriaren datuak sisteman erregistratzeko.</p>
        </div>

        <?php if ($errorea): ?>
            <div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div>
        <?php endif; ?>

        <div class="inprimaki-kutxa">
            <form method="POST">
                <div class="profil-gorputza">
                    <div class="informazio-taldea">
                        <label for="nan">NAN <span class="beharrezkoa">*</span></label>
                        <input type="text" id="nan" name="nan" class="inprimaki-kontrola" required>
                    </div>
                    <div class="informazio-taldea">
                        <label for="email">E-posta <span class="beharrezkoa">*</span></label>
                        <input type="email" id="email" name="email" class="inprimaki-kontrola" required>
                    </div>
                    <div class="informazio-taldea">
                        <label for="izena">Izena <span class="beharrezkoa">*</span></label>
                        <input type="text" id="izena" name="izena" class="inprimaki-kontrola" required>
                    </div>
                    <div class="informazio-taldea">
                        <label for="abizenak">Abizenak <span class="beharrezkoa">*</span></label>
                        <input type="text" id="abizenak" name="abizenak" class="inprimaki-kontrola" required>
                    </div>
                    <div class="informazio-taldea">
                        <label for="jaiotze_data">Jaiotze Data</label>
                        <input type="date" id="jaiotze_data" name="jaiotze_data" class="inprimaki-kontrola">
                    </div>
                    <div class="informazio-taldea">
                        <label for="telefonoa">Telefonoa</label>
                        <input type="text" id="telefonoa" name="telefonoa" class="inprimaki-kontrola">
                    </div>
                    <div class="informazio-taldea">
                        <label for="odol_taldea">Odol Taldea</label>
                        <select id="odol_taldea" name="odol_taldea" class="inprimaki-kontrola">
                            <option value="">Hautatu...</option>
                            <option value="A+">A+</option>
                            <option value="A-">A-</option>
                            <option value="B+">B+</option>
                            <option value="B-">B-</option>
                            <option value="AB+">AB+</option>
                            <option value="AB-">AB-</option>
                            <option value="0+">0+</option>
                            <option value="0-">0-</option>
                        </select>
                    </div>
                    <div class="informazio-taldea">
                        <label for="pasahitza">Pasahitza (lehenetsia: 1234)</label>
                        <input type="password" id="pasahitza" name="pasahitza" class="inprimaki-kontrola" value="1234">
                    </div>
                </div>

                <div class="botoi-taldea">
                    <button type="submit" class="botoia botoi-nagusia">Gorde Pazientea</button>
                    <a href="pazienteak.php" class="botoia botoi-ertza">Utzi</a>
                </div>
            </form>
        </div>
    </main>

</body>
</html>


