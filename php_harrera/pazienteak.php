<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$mezua = '';
$errorea = '';

// Kudeatu pazientearen ezabatzea
if (isset($_GET['delete_id'])) {
    try {
        $pdo->beginTransaction();
        $pid = $_GET['delete_id'];
        
        // Erabiltzailea ezabatu (on delete cascade denez, pazientea ere badoa)
        $stmt = $pdo->prepare("DELETE FROM Erabiltzaileak WHERE erabiltzaile_id = ?");
        $stmt->execute([$pid]);
        
        $pdo->commit();
        $mezua = "Pazientea arrakastaz ezabatu da.";
    } catch (PDOException $e) {
        $pdo->rollBack();
        $errorea = "Errorea ezabatzean: " . $e->getMessage();
    }
}

// Pazienteen zerrenda lortu
$stmt = $pdo->prepare("SELECT * FROM V_Pazientea ORDER BY abizenak ASC");
$stmt->execute();
$pazienteak = $stmt->fetchAll(PDO::FETCH_ASSOC);

$orri_izenburua = "Pazienteak Kudeatu - GOsasun";
$uneko_orria = "pazienteak";
$css_pertsonalizatua = "pazienteak.css";

include_once '../php_includeak/harrera_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2><img src="../img/user.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> Pazienteen Kudeaketa</h2>
            <p>Sortu, editatu edo ezabatu zentroko paziente guztiak.</p>
        </div>

        <?php if ($mezua): ?>
            <div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($mezua); ?></div>
        <?php endif; ?>
        <?php if ($errorea): ?>
            <div class="alerta alerta-errorea"><?php echo htmlspecialchars($errorea); ?></div>
        <?php endif; ?>

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
                <taula_gorputza>
                    <?php foreach ($pazienteak as $p): ?>
                        <tr>
                            <td class="zabalera-50">
                                <img src="../<?php echo htmlspecialchars($p['irudia'] ?? 'img/lehenetsia_pazientea.png'); ?>" 
                                     alt="ID" class="irudia-txikia">
                            </td>
                            <td class="identifikadorea">#<?php echo $p['paziente_id']; ?></td>
                            <td>
                                <strong><a href="paziente_fitxa.php?id=<?php echo $p['paziente_id']; ?>" class="esteka-nagusia"><?php echo htmlspecialchars($p['abizenak'] . ', ' . $p['izena']); ?></a></strong>
                                <br><small><?php echo htmlspecialchars($p['email']); ?></small>
                            </td>
                            <td><?php echo htmlspecialchars($p['nan']); ?></td>
                            <td><?php echo htmlspecialchars($p['telefonoa'] ?? '-'); ?></td>
                            <td>
                                <?php // SQL-an gehitu berri denez, baliteke lehengo pazienteek NULL izatea 
                                // (baina default jarri diogu, badaezpada)
                                $egoera = $p['egoera_klinikoa'] ?? 'Alta';
                                ?>
                                <span class="egoera-<?php echo strtolower($egoera); ?>">
                                    <?php echo $egoera; ?>
                                </span>
                            </td>
                            <td>
                                <div class="taula-ekintzak">
                                    <a href="paziente_fitxa.php?id=<?php echo $p['paziente_id']; ?>" class="botoi-ikonoa" title="Ikusi Fitxa"><img src="../img/eye.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"></a>
                                    <a href="paziente_editatu.php?id=<?php echo $p['paziente_id']; ?>" class="botoi-ikonoa editatu-botoia" title="Editatu"><img src="../img/pencil.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"></a>
                                    <a href="pazienteak.php?delete_id=<?php echo $p['paziente_id']; ?>" class="botoi-ikonoa ezabatu-botoia" onclick="return confirm('Ziur zaude paziente hau eta bere datu guztiak ezabatu nahi dituzula?');" title="Ezabatu"><img src="../img/trash-2.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"></a>
                                </div>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </taula_gorputza>
            </table>
        </div>
    </main>

<?php $js_gehigarria = ['harrera_pazienteak.js'];
include_once '../php_includeak/harrera_footer.php';
?>


