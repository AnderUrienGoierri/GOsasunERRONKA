<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$mezua = '';
$errorea = '';

// Ezabatu medikua
if (isset($_GET['delete_id'])) {
    try {
        $mid = $_GET['delete_id'];
        $stmt = $pdo->prepare("DELETE FROM Erabiltzaileak WHERE erabiltzaile_id = ?");
        $stmt->execute([$mid]);
        $mezua = "Medikua arrakastaz ezabatu da.";
    } catch (PDOException $e) {
        $errorea = "Errorea ezabatzean: " . $e->getMessage();
    }
}

// Medikuen zerrenda
$stmt = $pdo->prepare("SELECT * FROM V_Medikua ORDER BY abizenak ASC");
$stmt->execute();
$medikuak = $stmt->fetchAll(PDO::FETCH_ASSOC);

$orri_izenburua = "Medikuak Kudeatu - GOsasun";
$uneko_orria = "medikuak";
$css_pertsonalizatua = 'medikuak.css';

include_once '../php_includeak/harrera_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2>👨‍⚕️ Medikuen Kudeaketa</h2>
            <p>Ikusi eta kudeatu zentroko lantalde medikoa.</p>
        </div>

        <?php if ($mezua): ?>
            <div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($mezua); ?></div>
        <?php endif; ?>
        <?php if ($errorea): ?>
            <div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div>
        <?php endif; ?>

        <div class="flex-tartea-20">
            <a href="mediku_sortu.php" class="botoia botoi-nagusia marjina-behe-0">+ Mediku Berria</a>
            <input type="text" id="bilaketaMedikuak" class="inprimaki-kontrola bilaketa-barra gehienezko-zabalera-300" placeholder="Bilatu izena edo espezialitatea..." >
        </div>

        <div class="taula-inguratzailea">
            <table class="paziente-taula" id="medikuTaula">
                <thead>
                    <tr>
                        <th>Argazkia</th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(1)">Izena ↕️</th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(2)">Espezialitatea ↕️</th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(3)">Elkargokide Zkia. ↕️</th>
                        <th>Ekintzak</th>
                    </tr>
                </thead>
                <taula_gorputza>
                    <?php foreach ($medikuak as $m): ?>
                        <tr>
                            <td class="zabalera-50">
                                <img src="../<?php echo htmlspecialchars($m['irudia'] ?? 'img/lehenetsia_medikua.png'); ?>" 
                                     alt="Medikuaren argazkia" class="irudia-txikia">
                            </td>
                            <td>
                                <strong><a href="mediku_fitxa.php?id=<?php echo $m['mediku_id']; ?>" class="esteka-nagusia"><?php echo htmlspecialchars($m['abizenak'] . ', ' . $m['izena']); ?></a></strong>
                                <br><small><?php echo htmlspecialchars($m['email']); ?></small>
                            </td>
                            <td><span class="etiketa"><?php echo htmlspecialchars($m['espezialitatea']); ?></span></td>
                            <td><?php echo htmlspecialchars($m['elkargokide_zenbakia']); ?></td>
                            <td>
                                <div class="taula-ekintzak">
                                    <a href="mediku_fitxa.php?id=<?php echo $m['mediku_id']; ?>" class="botoi-ikonoa" title="Ikusi Fitxa"><img src="../img/eye.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; iragazkia: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"></a>
                                    <a href="hitzorduak.php?filter_mediku_id=<?php echo $m['mediku_id']; ?>" class="botoi-ikonoa hitzordu-botoia" title="Ikusi Agenda"><img src="../img/calendar-days.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; iragazkia: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"></a>
                                    <a href="mediku_editatu.php?id=<?php echo $m['mediku_id']; ?>" class="botoi-ikonoa editatu-botoia" title="Editatu"><img src="../img/pencil.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; iragazkia: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"></a>
                                    <a href="medikuak.php?delete_id=<?php echo $m['mediku_id']; ?>" class="botoi-ikonoa ezabatu-botoia" onclick="return confirm('Ziur zaude mediku hau ezabatu nahi duzula?');" title="Ezabatu"><img src="../img/trash-2.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; iragazkia: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"></a>
                                </div>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </taula_gorputza>
            </table>
        </div>
    </main>

<?php $js_gehigarria = ['harrera_medikuak.js'];
include_once '../php_includeak/harrera_footer.php';
?>


