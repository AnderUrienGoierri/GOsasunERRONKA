<?php
$base_path = '../';
session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$erabiltzaile_id = $_SESSION['erabiltzaile_id'];
$mezu_id = $_GET['id'] ?? null;
$mota = $_GET['mota'] ?? '';

if (!$mezu_id) {
    header("Location: mezuak.php");
    exit;
}

// Handle reply submission for external messages
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['kanpoko_erantzuna'])) {
    $erantzuna = $_POST['erantzuna'] ?? '';
    if (!empty($erantzuna)) {
        try {
            $stmt_reply = $pdo->prepare("UPDATE Kontaktua_Mezuak SET erantzuna = ?, erantzun_data = CURRENT_TIMESTAMP WHERE mezu_id = ?");
            $stmt_reply->execute([$erantzuna, $mezu_id]);
            $success_message = "Mezuari erantzun zaio ondo.";
        } catch (PDOException $e) {
            $error_message = "Errorea erantzutean: " . $e->getMessage();
        }
    }
}

try {
    if ($mota === 'kanpoko') {
        $stmt = $pdo->prepare("SELECT * FROM Kontaktua_Mezuak WHERE mezu_id = ?");
        $stmt->execute([$mezu_id]);
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        
        if (!$row) {
            die("Ezin duzu mezu hau ikusi edo ez da existitzen.");
        }
        
        $mezua = [
            'gaia' => 'Webguneko kontsulta: ' . $row['izena'],
            'bidalketa_data' => $row['bidalketa_data'],
            'bidaltzaile_izena' => $row['izena'] . ' (' . $row['email'] . ')',
            'hartzaile_izena' => 'Harrera',
            'mezua' => $row['mezua'],
            'hartzaile_id' => $erabiltzaile_id, // Simulate being the recipient to show reply box
            'erantzuna' => $row['erantzuna'],
            'erantzun_data' => $row['erantzun_data']
        ];
        
        if (!$row['irakurrita']) {
            $stmt_mark = $pdo->prepare("UPDATE Kontaktua_Mezuak SET irakurrita = 1 WHERE mezu_id = ?");
            $stmt_mark->execute([$mezu_id]);
        }
    } else {
        $stmt = $pdo->prepare("
            SELECT m.*, 
                   e_bid.email as bidaltzaile_email, e_hart.email as hartzaile_email,
                   r_bid.izena as bidaltzaile_rol, r_hart.izena as hartzaile_rol,
                   CASE 
                       WHEN r_bid.izena = 'Medikua' THEN CONCAT('Dr. ', med_bid.izena, ' ', med_bid.abizenak)
                       WHEN r_bid.izena = 'Harrera' THEN CONCAT('Harrera: ', hl_bid.izena, ' ', hl_bid.abizenak)
                       WHEN r_bid.izena = 'Pazientea' THEN CONCAT(paz_bid.izena, ' ', paz_bid.abizenak)
                       ELSE e_bid.email
                   END as bidaltzaile_izena,
                   CASE 
                       WHEN r_hart.izena = 'Medikua' THEN CONCAT('Dr. ', med_hart.izena, ' ', med_hart.abizenak)
                       WHEN r_hart.izena = 'Harrera' THEN CONCAT('Harrera: ', hl_hart.izena, ' ', hl_hart.abizenak)
                       WHEN r_hart.izena = 'Pazientea' THEN CONCAT(paz_hart.izena, ' ', paz_hart.abizenak)
                       ELSE e_hart.email
                   END as hartzaile_izena
            FROM Mezuak m
            JOIN Erabiltzaileak e_bid ON m.bidaltzaile_id = e_bid.erabiltzaile_id
            JOIN Rolak r_bid ON e_bid.rol_id = r_bid.rol_id
            LEFT JOIN Medikuak med_bid ON e_bid.erabiltzaile_id = med_bid.mediku_id
            LEFT JOIN Pazienteak paz_bid ON e_bid.erabiltzaile_id = paz_bid.paziente_id
            LEFT JOIN Harrerako_Langileak hl_bid ON e_bid.erabiltzaile_id = hl_bid.langile_id
            
            JOIN Erabiltzaileak e_hart ON m.hartzaile_id = e_hart.erabiltzaile_id
            JOIN Rolak r_hart ON e_hart.rol_id = r_hart.rol_id
            LEFT JOIN Medikuak med_hart ON e_hart.erabiltzaile_id = med_hart.mediku_id
            LEFT JOIN Pazienteak paz_hart ON e_hart.erabiltzaile_id = paz_hart.paziente_id
            LEFT JOIN Harrerako_Langileak hl_hart ON e_hart.erabiltzaile_id = hl_hart.langile_id
            
            WHERE m.mezu_id = ? AND (m.bidaltzaile_id = ? OR m.hartzaile_id = ?)
        ");
        $stmt->execute([$mezu_id, $erabiltzaile_id, $erabiltzaile_id]);
        $mezua = $stmt->fetch(PDO::FETCH_ASSOC);

        if (!$mezua) {
            die("Ezin duzu mezu hau ikusi edo ez da existitzen.");
        }

        if ($mezua['hartzaile_id'] == $erabiltzaile_id && !$mezua['irakurrita']) {
            $stmt_mark = $pdo->prepare("UPDATE Mezuak SET irakurrita = 1 WHERE mezu_id = ?");
            $stmt_mark->execute([$mezu_id]);
        }
    }
} catch (PDOException $e) {
    die("Errorea: " . $e->getMessage());
}

$page_title = "Mezu Xehetasuna - GOsasun";
$current_page = $mota === 'kanpoko' ? "kanpoko_mezuak" : "mezuak";
$custom_css = "mezuak.css";
include_once '../php_includeak/harrera_goiburua.php';
?>

<main class="panel-nagusia">
    <div class="orri-goiburua marjina-behe-20">
        <a href="<?php $base_path = '../'; echo $mota === 'kanpoko' ? 'kanpoko_mezuak.php' : 'mezuak.php'; ?>" class="esteka-itzuli">&larr; Itzuli zerrendara</a>
        <h2 class="izenburu-nagusia marjina-goi-10">&#128231; Mezuaren Xehetasuna</h2>
    </div>

    <?php $base_path = '../'; if (isset($success_message)): ?>
        <div class="alerta alerta-arrakasta"><?php $base_path = '../'; echo htmlspecialchars($success_message); ?></div>
    <?php $base_path = '../'; endif; ?>
    <?php $base_path = '../'; if (isset($error_message)): ?>
        <div class="alerta alerta-errorea"><?php $base_path = '../'; echo htmlspecialchars($error_message); ?></div>
    <?php $base_path = '../'; endif; ?>

    <div class="kutxa-zuria-itzala">
        <div class="mezu-xehetasuna-goiburua marjina-behe-20" style="border-bottom: 1px solid #eee; padding-bottom: 15px;">
            <div class="flex-tartea-besterik">
                <h3 class="marjina-behe-0"><?php $base_path = '../'; echo htmlspecialchars($mezua['gaia']); ?></h3>
                <span class="testu-gris-txikia"><?php $base_path = '../'; echo date('Y/m/d H:i', strtotime($mezua['bidalketa_data'])); ?></span>
            </div>
            <div class="marjina-goi-10">
                <p><strong>Nork:</strong> <?php $base_path = '../'; echo htmlspecialchars($mezua['bidaltzaile_izena']); ?></p>
                <p><strong>Nori:</strong> <?php $base_path = '../'; echo htmlspecialchars($mezua['hartzaile_izena']); ?></p>
            </div>
        </div>

        <div class="mezu-edukia marjina-behe-30" style="white-space: pre-wrap; line-height: 1.6; background: #f8f9fa; padding: 20px; border-radius: 8px;">
            <?php $base_path = '../'; echo htmlspecialchars($mezua['mezua']); ?>
        </div>

        <?php $base_path = '../'; if ($mota === 'kanpoko'): ?>
            <div class="erantzun-atala" style="border-top: 1px solid #eee; padding-top: 20px;">
                <?php $base_path = '../'; if (!empty($mezua['erantzuna'])): ?>
                    <h4>Zure Erantzuna:</h4>
                    <span class="testu-gris-txikia marjina-behe-10" style="display:block;"><?php $base_path = '../'; echo date('Y/m/d H:i', strtotime($mezua['erantzun_data'])); ?></span>
                    <div class="mezu-edukia marjina-behe-30" style="white-space: pre-wrap; line-height: 1.6; background: #e3f2fd; padding: 20px; border-radius: 8px;">
                        <?php $base_path = '../'; echo htmlspecialchars($mezua['erantzuna']); ?>
                    </div>
                <?php $base_path = '../'; else: ?>
                    <h4>Erantzun erabiltzaileari</h4>
                    <form action="" method="POST">
                        <input type="hidden" name="kanpoko_erantzuna" value="1">
                        <div class="inprimaki-taldea">
                            <textarea name="erantzuna" class="inprimaki-kontrola" rows="4" placeholder="Idatzi zure erantzuna hemen. Erabiltzaileari emailez bidaliko zaio..." required></textarea>
                        </div>
                        <div class="flex-bukaera">
                            <button type="submit" class="botoia botoi-nagusia">Bidali Erantzuna</button>
                        </div>
                    </form>
                <?php $base_path = '../'; endif; ?>
            </div>
        <?php $base_path = '../'; elseif ($mezua['hartzaile_id'] == $erabiltzaile_id): ?>
            <div class="erantzun-atala" style="border-top: 1px solid #eee; padding-top: 20px;">
                <h4>Erantzun</h4>
                <form action="mezu_berria.php" method="POST">
                    <input type="hidden" name="hartzaile_id" value="<?php $base_path = '../'; echo $mezua['bidaltzaile_id']; ?>">
                    <input type="hidden" name="gaia" value="RE: <?php $base_path = '../'; echo $mezua['gaia']; ?>">
                    <div class="inprimaki-taldea">
                        <textarea name="mezua" class="inprimaki-kontrola" rows="4" placeholder="Idatzi zure erantzuna hemen..." required></textarea>
                    </div>
                    <div class="flex-bukaera">
                        <button type="submit" class="botoia botoi-nagusia">Bidali Erantzuna</button>
                    </div>
                </form>
            </div>
        <?php $base_path = '../'; endif; ?>
    </div>
</main>

<?php $base_path = '../'; include_once '../php_includeak/harrera_footer.php'; ?>


