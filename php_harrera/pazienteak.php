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

// Kudeatu pazientearen ezabatzea
if (isset($_GET['delete_id'])) {
    try {
        $pdo->beginTransaction();
        $pid = $_GET['delete_id'];
        
        // Erabiltzailea ezabatu (on delete cascade denez, pazientea ere badoa)
        $stmt = $pdo->prepare("DELETE FROM Erabiltzaileak WHERE erabiltzaile_id = ?");
        $stmt->execute([$pid]);
        
        $pdo->commit();
        $msg = "Pazientea arrakastaz ezabatu da.";
    } catch (PDOException $e) {
        $pdo->rollBack();
        $error = "Errorea ezabatzean: " . $e->getMessage();
    }
}

// Pazienteen zerrenda lortu
$stmt = $pdo->prepare("SELECT * FROM V_Pazientea ORDER BY abizenak ASC");
$stmt->execute();
$pazienteak = $stmt->fetchAll(PDO::FETCH_ASSOC);

$page_title = "Pazienteak Kudeatu - GOsasun";
$current_page = "pazienteak";
$custom_css = "pazienteak.css";

include_once '../php_includeak/harrera_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2>👤 Pazienteen Kudeaketa</h2>
            <p>Sortu, editatu edo ezabatu zentroko paziente guztiak.</p>
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
            <a href="paziente_sortu.php" class="botoi-sortu marjina-behe-0" >+ Paziente Berria</a>
            <input type="text" id="bilaketaPazienteak" class="inprimaki-kontrola bilaketa-barra gehienezko-zabalera-300" placeholder="Bilatu izena edo abizena..." >
        </div>

        <div class="taula-inguratzailea">
            <table class="paziente-taula" id="pazienteTaula">
                <thead>
                    <tr>
                        <th>Argazkia</th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(1)">ID ↕️</th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(2)">Izena ↕️</th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(3)">NAN ↕️</th>
                        <th>Telefonoa</th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(5)">Egoera Klinikoa ↕️</th>
                        <th>Ekintzak</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $base_path = '../';
foreach ($pazienteak as $p): ?>
                        <tr>
                            <td class="zabalera-50">
                                <img src="../<?php $base_path = '../';
echo htmlspecialchars($p['irudia'] ?? 'img/lehenetsia_pazientea.png'); ?>" 
                                     alt="ID" class="irudia-txikia">
                            </td>
                            <td class="identifikadorea">#<?php $base_path = '../';
echo $p['paziente_id']; ?></td>
                            <td>
                                <strong><a href="paziente_fitxa.php?id=<?php $base_path = '../';
echo $p['paziente_id']; ?>" class="esteka-nagusia"><?php $base_path = '../';
echo htmlspecialchars($p['abizenak'] . ', ' . $p['izena']); ?></a></strong>
                                <br><small><?php $base_path = '../';
echo htmlspecialchars($p['email']); ?></small>
                            </td>
                            <td><?php $base_path = '../';
echo htmlspecialchars($p['nan']); ?></td>
                            <td><?php $base_path = '../';
echo htmlspecialchars($p['telefonoa'] ?? '-'); ?></td>
                            <td>
                                <?php 
                                $base_path = '../';
// SQL-an gehitu berri denez, baliteke lehengo pazienteek NULL izatea 
                                // (baina default jarri diogu, badaezpada)
                                $egoera = $p['egoera_klinikoa'] ?? 'Alta';
                                ?>
                                <span class="egoera-<?php $base_path = '../';
echo strtolower($egoera); ?>">
                                    <?php $base_path = '../';
echo $egoera; ?>
                                </span>
                            </td>
                            <td>
                                <div class="taula-ekintzak">
                                    <a href="paziente_fitxa.php?id=<?php $base_path = '../';
echo $p['paziente_id']; ?>" class="botoi-ikonoa" title="Ikusi Fitxa">👁️</a>
                                    <a href="paziente_editatu.php?id=<?php $base_path = '../';
echo $p['paziente_id']; ?>" class="botoi-ikonoa editatu-botoia" title="Editatu">✏️</a>
                                    <a href="pazienteak.php?delete_id=<?php $base_path = '../';
echo $p['paziente_id']; ?>" class="botoi-ikonoa ezabatu-botoia" onclick="return confirm('Ziur zaude paziente hau eta bere datu guztiak ezabatu nahi dituzula?');" title="Ezabatu">🗑️</a>
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
$extra_js = ['harrera_pazienteak.js'];
include_once '../php_includeak/harrera_footer.php';
?>


