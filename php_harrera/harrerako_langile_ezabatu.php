<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';

if (!isset($_GET['id']) || empty($_GET['id'])) {
    header("Location: harrerako_langileak.php");
    exit;
}

$id = $_GET['id'];

// Saihestu bere burua ezabatzea
if ($_SESSION['erabiltzaile_id'] == $id) {
    header("Location: harrerako_langileak.php?error=" . urlencode("Ezin duzu zure erabiltzailea bera ezabatu!"));
    exit;
}

try {
    // Erabiltzailea taulan CASCADE duenez Harrerako_langileak taulara, nahikoa da hau:
    $stmt = $pdo->prepare("DELETE FROM Erabiltzaileak WHERE id = ? AND rol_id = 4");
    $stmt->execute([$id]);

    header("Location: harrerako_langileak.php?msg=" . urlencode("Harrerako langilea ongi ezabatu da."));
} catch (PDOException $e) {
    header("Location: harrerako_langileak.php?error=" . urlencode("Errorea langilea ezabatzean: " . $e->getMessage()));
}
exit;
?>


