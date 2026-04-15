<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Osasun Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$osasun_langile_id = $_SESSION['erabiltzaile_id'];

// Lortu pazienteen zerrenda
$stmt = $pdo->prepare("
    SELECT paziente_id, izena, abizenak, nan, telefonoa, odol_taldea, irudia
    FROM V_Langile_Pazienteak
    WHERE langile_id = ?
");
$stmt->execute([$osasun_langile_id]);
$pazienteak = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>
<?php $orri_izenburua = "Nire Pazienteak - GOsasun";
$uneko_orria = "pazienteak";
$css_pertsonalizatua = "pazienteak.css";

include_once '../php_orri_includeak/osasun_langile_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/svg/users.svg" alt="" class="ikono-ertaina tarte-eskubia"> Nire Pazienteak</h2>
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
                        <th class="kurtsorea" onclick="ordenatuTaula(1)">ID <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsorea" onclick="ordenatuTaula(2)">Izen-abizenak <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th class="kurtsorea" onclick="ordenatuTaula(3)">NAN <img src="../img/svg/sort.svg" alt="" class="ikono-txikia-gardena"></th>
                        <th>Telefonoa</th>
                        <th>Odol Taldea</th>
                        <th>Ekintzak</th>
                    </tr>
                </thead>
                <tbody>
                    <?php if (count($pazienteak) > 0): ?>
                        <?php foreach ($pazienteak as $p): ?>
                            <tr>
                                <td class="zabalera-50">
                                    <?php
                                    $irudia_bide = htmlspecialchars($p['irudia'] ?? 'img/lehenetsia_pazientea.png');
                                    if (strpos($irudia_bide, 'img/') === 0 && strpos($irudia_bide, 'img/png/') === false && strpos($irudia_bide, 'img/svg/') === false) {
                                        $irudia_bide = str_replace('img/', 'img/png/', $irudia_bide);
                                    }
                                    ?>
                                    <img src="../<?php echo $irudia_bide; ?>"
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
                                        <a href="paziente_info.php?id=<?php echo $p['paziente_id']; ?>" class="botoi-ikonoa ikusi-botoia" title="Ikusi xehetasunak"><img src="../img/svg/eye.svg" alt="" class="ikono-ertaina tarte-eskubia"></a>
                                    </div>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    <?php else: ?>
                        <tr class="daturik-ez">
                            <td colspan="7">Ez duzu pazienterik esleituta momentuz.</td>
                        </tr>
                    <?php endif; ?>
                </tbody>
            </table>
        </div>
    </main>

<?php $js_gehigarria = ["harrera_pazienteak.js"];
include_once '../php_orri_includeak/osasun_footer.php';
?>


