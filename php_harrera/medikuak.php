<?php
$base_path = '../';
session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$msg = '';
$error = '';

// Ezabatu medikua
if (isset($_GET['delete_id'])) {
    try {
        $mid = $_GET['delete_id'];
        $stmt = $pdo->prepare("DELETE FROM Erabiltzaileak WHERE erabiltzaile_id = ?");
        $stmt->execute([$mid]);
        $msg = "Medikua arrakastaz ezabatu da.";
    } catch (PDOException $e) {
        $error = "Errorea ezabatzean: " . $e->getMessage();
    }
}

// Medikuen zerrenda
$stmt = $pdo->prepare("SELECT * FROM V_Medikua ORDER BY abizenak ASC");
$stmt->execute();
$medikuak = $stmt->fetchAll(PDO::FETCH_ASSOC);

$page_title = "Medikuak Kudeatu - GOsasun";
$current_page = "medikuak";
$custom_css = 'medikuak.css';

include_once '../php_includeak/harrera_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2>👨‍⚕️ Medikuen Kudeaketa</h2>
            <p>Ikusi eta kudeatu zentroko lantalde medikoa.</p>
        </div>

        <?php $base_path = '../';
if ($msg): ?>
            <div class="alerta alerta-arrakasta"><?php $base_path = '../';
echo htmlspecialchars($msg); ?></div>
        <?php $base_path = '../';
endif; ?>
        <?php $base_path = '../';
if ($error): ?>
            <div class="alerta alerta-errorea"><?php $base_path = '../';
echo htmlspecialchars($error); ?></div>
        <?php $base_path = '../';
endif; ?>

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
                <tbody>
                    <?php $base_path = '../';
foreach ($medikuak as $m): ?>
                        <tr>
                            <td class="zabalera-50">
                                <img src="../<?php $base_path = '../';
echo htmlspecialchars($m['irudia'] ?? 'img/lehenetsia_medikua.png'); ?>" 
                                     alt="Medikuaren argazkia" class="irudia-txikia">
                            </td>
                            <td>
                                <strong><a href="mediku_fitxa.php?id=<?php $base_path = '../';
echo $m['mediku_id']; ?>" class="esteka-nagusia"><?php $base_path = '../';
echo htmlspecialchars($m['abizenak'] . ', ' . $m['izena']); ?></a></strong>
                                <br><small><?php $base_path = '../';
echo htmlspecialchars($m['email']); ?></small>
                            </td>
                            <td><span class="etiketa"><?php $base_path = '../';
echo htmlspecialchars($m['espezialitatea']); ?></span></td>
                            <td><?php $base_path = '../';
echo htmlspecialchars($m['elkargokide_zenbakia']); ?></td>
                            <td>
                                <div class="taula-ekintzak">
                                    <a href="mediku_fitxa.php?id=<?php $base_path = '../';
echo $m['mediku_id']; ?>" class="botoi-ikonoa" title="Ikusi Fitxa">👁️</a>
                                    <a href="hitzorduak.php?filter_mediku_id=<?php $base_path = '../';
echo $m['mediku_id']; ?>" class="botoi-ikonoa hitzordu-botoia" title="Ikusi Agenda">📅</a>
                                    <a href="mediku_editatu.php?id=<?php $base_path = '../';
echo $m['mediku_id']; ?>" class="botoi-ikonoa editatu-botoia" title="Editatu">✏️</a>
                                    <a href="medikuak.php?delete_id=<?php $base_path = '../';
echo $m['mediku_id']; ?>" class="botoi-ikonoa ezabatu-botoia" onclick="return confirm('Ziur zaude mediku hau ezabatu nahi duzula?');" title="Ezabatu">🗑️</a>
                                </div>
                            </td>
                        </tr>
                    <?php $base_path = '../';
endforeach; ?>
                </tbody>
            </table>
        </div>
    </main>

<?php
$base_path = '../';
$extra_js = ['harrera_medikuak.js'];
include_once '../php_includeak/harrera_footer.php';
?>


