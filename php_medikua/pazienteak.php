<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Medikua') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$mediku_id = $_SESSION['erabiltzaile_id'];

// Lortu pazienteen zerrenda
$stmt = $pdo->prepare("
    SELECT paziente_id, paziente_izena AS izena, paziente_abizenak AS abizenak, nan, paziente_telefonoa AS telefonoa, odol_taldea 
    FROM V_Mediku_Pazienteak
    WHERE mediku_id = ?
");
$stmt->execute([$mediku_id]);
$pazienteak = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>
<?php $orri_izenburua = "Nire Pazienteak - GOsasun";
$uneko_orria = "pazienteak";
$css_pertsonalizatua = "pazienteak.css";

include_once '../php_includeak/mediku_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/users.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> Nire Pazienteak</h2>
                <p>Zuri esleitutako pazienteen zerrenda eta jarraipena.</p>
            </div>
            <div class="bilaketa-barra">
                <input type="text" id="bilaketaPazienteak" class="inprimaki-kontrola" placeholder="Bilatu izena edo NAN bidez...">
            </div>
        </div>

        <div class="taula-inguratzailea">
            <table class="paziente-taula" id="pazienteTaula">
                <thead>
                    <tr>
                        <th>Argazkia</th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(1)">ID ↕️</th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(2)">Izen-abizenak ↕️</th>
                        <th class="kurtsore-erakuslea" onclick="ordenatuTaula(3)">NAN ↕️</th>
                        <th>Telefonoa</th>
                        <th>Odol Taldea</th>
                        <th>Ekintzak</th>
                    </tr>
                </thead>
                <taula_gorputza>
                    <?php if (count($pazienteak) > 0): ?>
                        <?php foreach ($pazienteak as $p): ?>
                            <tr>
                                <td class="zabalera-50">
                                    <img src="../img/lehenetsia_pazientea.png" 
                                         alt="ID" class="irudia-txikia">
                                </td>
                                <td class="identifikadorea">#<?php echo $p['paziente_id']; ?></td>
                                <td>
                                    <strong><a href="paziente_info.php?id=<?php echo $p['paziente_id']; ?>" class="esteka-nagusia"><?php echo htmlspecialchars($p['abizenak'] . ', ' . $p['izena']); ?></a></strong>
                                </td>
                                <td><?php echo htmlspecialchars($p['nan']); ?></td>
                                <td><?php echo htmlspecialchars($p['telefonoa'] ?? '-'); ?></td>
                                <td><span class="badge odol-txapa"><?php echo htmlspecialchars($p['odol_taldea'] ?? '-'); ?></span></td>
                                <td>
                                    <div class="taula-ekintzak">
                                        <a href="paziente_info.php?id=<?php echo $p['paziente_id']; ?>" class="botoi-ikonoa ikusi-botoia" title="Ikusi xehetasunak"><img src="../img/eye.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"></a>
                                    </div>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    <?php else: ?>
                        <tr class="daturik-ez">
                            <td colspan="7">Ez duzu pazienterik esleituta momentuz.</td>
                        </tr>
                    <?php endif; ?>
                </taula_gorputza>
            </table>
        </div>
    </main>

<?php $js_gehigarria = ["harrera_pazienteak.js"];
include_once '../php_includeak/mediku_footer.php';
?>


