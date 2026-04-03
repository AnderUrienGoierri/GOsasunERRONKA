<?php
session_start();
require_once 'DB_konexioa.php';

// Egiaztatu baimenak (Harrera bakarrik)
if (!isset($_SESSION['rol_izena']) || $_SESSION['rol_izena'] !== 'Harrera') {
    die("Baimenik gabeko sarbidea.");
}

$ekintza = $_POST['ekintza'] ?? '';
$id = $_POST['id'] ?? null;
$mota = $_POST['mota'] ?? ''; // 'kanpoko' edo 'barneko'

if ($ekintza === 'ezabatu' && $id) {
    try {
        if ($mota === 'kanpoko') {
            // Egiaztatu mezua ikusita edo erantzunda dagoela ezabatu aurretik
            $stmt_check = $pdo->prepare("SELECT irakurrita, erantzuna FROM Kontaktua_Mezuak WHERE id = ?");
            $stmt_check->execute([$id]);
            $mezua = $stmt_check->fetch(PDO::FETCH_ASSOC);

            if ($mezua && ($mezua['irakurrita'] == 1 || !empty($mezua['erantzuna']))) {
                $stmt = $pdo->prepare("DELETE FROM Kontaktua_Mezuak WHERE id = ?");
                $stmt->execute([$id]);
                header("Location: ../php_harrera/kanpoko_mezuak.php?ezabatua=1");
            } else {
                die("Ezin da mezua ezabatu: oraindik ez da irakurri edo erantzun.");
            }
        }
        exit;
    } catch (PDOException $e) {
        die("Errorea ezabatzean: " . $e->getMessage());
    }
}

header("Location: ../php_harrera/kanpoko_mezuak.php");
exit;
