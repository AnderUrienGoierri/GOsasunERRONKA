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
            $stmt = $pdo->prepare("DELETE FROM Kontaktua_Mezuak WHERE mezu_id = ?");
            $stmt->execute([$id]);
        } else {
            // Barneko mezuak ezabatzeko logika (beharrezkoa bada geroagorako)
            // $stmt = $pdo->prepare("DELETE FROM Mezuak WHERE mezu_id = ?");
            // $stmt->execute([$id]);
        }
        
        header("Location: ../php_harrera/kanpoko_mezuak.php?ezabatua=1");
        exit;
    } catch (PDOException $e) {
        die("Errorea ezabatzean: " . $e->getMessage());
    }
}

header("Location: ../php_harrera/kanpoko_mezuak.php");
exit;
