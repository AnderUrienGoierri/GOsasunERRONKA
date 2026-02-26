<?php
$bide_absolutua = '../'; // Berrerabili pazientearen mezu_xehetasuna.php logika, baina goiburua eta oina ondo kudeatuz
// php_medikua/ karpetan gaudenez, include '../php_pazientea/mezu_xehetasuna.php' egin dezakegu aldaketa batzuekin
// Edo hobeto, kopiatu eta egokitu relative path-ak.

session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Medikua') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$erabiltzaile_id = $_SESSION['erabiltzaile_id'];
$mezu_id = $_GET['id'] ?? null;

if (!$mezu_id) {
    header("Location: mezuak.php");
    exit;
}

try {
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

} catch (PDOException $e) {
    die("Errorea: " . $e->getMessage());
}

$orri_izenburua = "Mezu Xehetasuna - GOsasun";
$uneko_orria = "mezuak";
include_once '../php_includeak/mediku_goiburua.php';
?>

<main class="panel-nagusia">
    <div class="orri-goiburua marjina-behe-20">
        <a href="mezuak.php" class="esteka-itzuli">← Itzuli zerrendara</a>
        <h2 class="izenburu-nagusia marjina-goi-10"><img src="../img/mail.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> Mezuaren Xehetasuna</h2>
    </div>

    <div class="kutxa-zuria-itzala">
        <div class="mezu-xehetasuna-goiburua marjina-behe-20" style="border-bottom: 1px solid #eee; padding-bottom: 15px;">
            <div class="flex-tartea-besterik">
                <h3 class="marjina-behe-0"><?php echo htmlspecialchars($mezua['gaia']); ?></h3>
                <span class="testu-gris-txikia"><?php echo date('Y/m/d H:i', strtotime($mezua['bidalketa_data'])); ?></span>
            </div>
            <div class="marjina-goi-10">
                <p><strong>Nork:</strong> <?php echo htmlspecialchars($mezua['bidaltzaile_izena']); ?></p>
                <p><strong>Nori:</strong> <?php echo htmlspecialchars($mezua['hartzaile_izena']); ?></p>
            </div>
        </div>

        <div class="mezu-edukia marjina-behe-30" style="white-space: pre-wrap; line-height: 1.6; background: #f8f9fa; padding: 20px; border-radius: 8px;">
            <?php echo htmlspecialchars($mezua['mezua']); ?>
        </div>

        <?php if ($mezua['hartzaile_id'] == $erabiltzaile_id): ?>
            <div class="erantzun-atala" style="border-top: 1px solid #eee; padding-top: 20px;">
                <h4>Erantzun</h4>
                <form action="mezu_berria.php" method="POST">
                    <input type="hidden" name="hartzaile_id" value="<?php echo $mezua['bidaltzaile_id']; ?>">
                    <input type="hidden" name="gaia" value="RE: <?php echo $mezua['gaia']; ?>">
                    <div class="inprimaki-taldea">
                        <textarea name="mezua" class="inprimaki-kontrola" errenkadak="4" placeholder="Idatzi zure erantzuna hemen..." required></textarea>
                    </div>
                    <div class="flex-bukaera">
                        <button type="submit" class="botoia botoi-nagusia">Bidali Erantzuna</button>
                    </div>
                </form>
            </div>
        <?php endif; ?>
    </div>
</main>

<?php include_once '../php_includeak/mediku_footer.php'; ?>



