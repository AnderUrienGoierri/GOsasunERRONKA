<?php
session_start();
$bide_absolutua = '../';
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}
?>
<?php
require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$erabiltzaile_id = $_SESSION['erabiltzaile_id'];

// Lortu pazientearen datuak
$stmt = $pdo->prepare("SELECT * FROM V_Pazientea WHERE paziente_id = ?");
$stmt->execute([$erabiltzaile_id]);
$erabiltzaile_datuak = $stmt->fetch(PDO::FETCH_ASSOC);

// Azken neurketa lortu (pultsua, altuera eta pisua bakoitza bere azken balio ez-nulua)
$stmtNeurketa = $pdo->prepare("
    SELECT 
        MAX(CASE WHEN pultsua_ppm IS NOT NULL THEN pultsua_ppm END) as pultsua_ppm,
        MAX(CASE WHEN altuera IS NOT NULL THEN altuera END) as altuera,
        MAX(CASE WHEN pisua_kg IS NOT NULL THEN pisua_kg END) as pisua_kg,
        MAX(erregistro_data) as erregistro_data
    FROM (
        SELECT pultsua_ppm, altuera, pisua_kg, erregistro_data
        FROM jarraipenak 
        WHERE paziente_id = ? 
        ORDER BY erregistro_data DESC
    ) as subquery
");
// Oharra: Goikoa sinplifikazio bat da. Berezko SQL-an hobe da bakoitza bere aldetik lortzea ziurtatzeko.
// Baina azken erregistroko data erakusteko erabiliko dugu batez ere.

// Bakoitza bere aldetik lortu azken balio erreala izateko
$stmtPultsua = $pdo->prepare("SELECT pultsua_ppm FROM jarraipenak WHERE paziente_id = ? AND pultsua_ppm IS NOT NULL ORDER BY erregistro_data DESC LIMIT 1");
$stmtPultsua->execute([$erabiltzaile_id]);
$pultsua = $stmtPultsua->fetchColumn();

$stmtAltuera = $pdo->prepare("SELECT altuera FROM jarraipenak WHERE paziente_id = ? AND altuera IS NOT NULL ORDER BY erregistro_data DESC LIMIT 1");
$stmtAltuera->execute([$erabiltzaile_id]);
$altuera = $stmtAltuera->fetchColumn();

$stmtPisua = $pdo->prepare("SELECT pisua_kg FROM jarraipenak WHERE paziente_id = ? AND pisua_kg IS NOT NULL ORDER BY erregistro_data DESC LIMIT 1");
$stmtPisua->execute([$erabiltzaile_id]);
$pisua = $stmtPisua->fetchColumn();

$stmtData = $pdo->prepare("SELECT erregistro_data FROM jarraipenak WHERE paziente_id = ? ORDER BY erregistro_data DESC LIMIT 1");
$stmtData->execute([$erabiltzaile_id]);
$azken_erregistro_data = $stmtData->fetchColumn();

// Hurrengo hitzordua lortu
$gaur = date('Y-m-d');
$stmtHitzordu = $pdo->prepare("
    SELECT h.id, h.data, h.hasiera_ordua, m.izena as mediku_izena, m.abizenak as mediku_abizenak 
    FROM Hitzorduak h
    JOIN V_Osasun_Langilea m ON h.osasun_langile_id = m.langile_id
    WHERE h.paziente_id = ? AND h.data >= ? AND h.egoera = 'Zain'
    ORDER BY h.data ASC, h.hasiera_ordua ASC LIMIT 1
");
$stmtHitzordu->execute([$erabiltzaile_id, $gaur]);
$hurrengoHitzordua = $stmtHitzordu->fetch(PDO::FETCH_ASSOC);

$orri_izenburua = "Hasiera - GOsasun";
$orri_izenburua = "Paziente Panela - GOsasun";
$uneko_orria = "index";
$css_pertsonalizatua = "index_pazientea.css";

include_once '../php_orri_includeak/paziente_goiburua.php';
?>
    <main class="panel-nagusia">
        <section class="kaixo-atalak">
            <?php 
            $irudia_bide = htmlspecialchars($erabiltzaile_datuak['irudia'] ?? 'lehenetsia_pazientea.png');
            if (strpos($irudia_bide, 'pazientea_') === 0 || strpos($irudia_bide, 'lehenetsia_') === 0) {
                $irudia_bide = 'img/png/' . $irudia_bide;
            }
            ?>
            <img src="../<?php echo $irudia_bide; ?>" alt="Zure profila" class="profil-izena">
            <div>
                <h1 class="izenburu-nagusia"><?php echo $itzulpenak->erabiltzaile_panela->kaixo; ?>, <?php echo htmlspecialchars($erabiltzaile_datuak['izena']); ?>?</h1>
                <p class="azpititulu-grisa"><?php echo $itzulpenak->erabiltzaile_panela->laburpena; ?></p>
            </div>
        </section>

        <!-- Laburpen Txartelak (Dashboard) -->
        <div class="panel-sareta">
            <div id="dash-jarraipenak-card" class="kutxa-zuria-itzala">
                <div class="izenburu-nabarmena flex-zentratu"><img src="../img/svg/line-chart.svg" alt="" class="ikono-ertaina marjina-esk-10"> Azken Neurketak</div>
                
                <div class="paziente-informazio-laburpena tarte-behea">
                    <p><strong><?php echo htmlspecialchars($erabiltzaile_datuak['izena'] . ' ' . $erabiltzaile_datuak['abizenak']); ?></strong></p>
                    <p class="testu-grisa-txikia"><?php echo date('Y/m/d', strtotime($erabiltzaile_datuak['jaiotze_data'])); ?> (<?php echo $erabiltzaile_datuak['odol_taldea']; ?>)</p>
                </div>

                <?php if ($azken_erregistro_data): ?>
                    <div class="sareta-bikoa">
                        <div class="informazio-taldea">
                            <label><?php echo $itzulpenak->dashboard_pazientea->pultsua; ?></label>
                            <div class="informazio-balioa"><?php echo htmlspecialchars($pultsua ?: '-'); ?> ppm</div>
                        </div>
                        <div class="informazio-taldea">
                            <label><?php echo $itzulpenak->dashboard_pazientea->altuera; ?></label>
                            <div class="informazio-balioa"><?php echo htmlspecialchars($altuera ?: $erabiltzaile_datuak['azken_altuera'] ?: '-'); ?> cm</div>
                        </div>
                        <div class="informazio-taldea">
                            <label><?php echo $itzulpenak->dashboard_pazientea->pisua; ?></label>
                            <div class="informazio-balioa"><?php echo htmlspecialchars($pisua ?: $erabiltzaile_datuak['azken_pisua'] ?: '-'); ?> kg</div>
                        </div>
                    </div>
                    <p class="testu-grisa-txikia tarte-goia"><?php echo $itzulpenak->dashboard_pazientea->eguneratua; ?>: <?php echo date('Y/m/d', strtotime($azken_erregistro_data)); ?></p>
                <?php else: ?>
                    <p class="testu-gris-etzana"><?php echo $itzulpenak->dashboard_pazientea->ez_dago_neurketarik; ?></p>
                <?php endif; ?>
                <a href="jarraipenak.php" id="dash-jarraipenak-btn" class="botoia botoi-nagusia tarte-goia w-osoa zentratu"><?php echo $itzulpenak->dashboard_pazientea->neurketa_berria; ?></a>
            </div>

            <!-- Hurrengo Hitzordua -->
            <div class="kutxa-zuria-itzala">
                <h3 class="izenburu-iluna"><img src="../img/svg/calendar-days.svg" alt="" class="ikono-ertaina marjina-esk-10"> <?php echo $itzulpenak->dashboard_pazientea->hurrengo_hitzordua; ?></h3>
                <?php if ($hurrengoHitzordua): ?>
                    <div class="paziente-txartel-zuria marjina-behe-0 txartel-zuri-argia kurtsore-erakuslea" onclick="viewAppointment(<?php echo $hurrengoHitzordua['id']; ?>)">
                        <div class="testua-erdian data-kutxa">
                            <div class="testu-txiki-maiuskula"><?php echo date('M', strtotime($hurrengoHitzordua['data'])); ?></div>
                            <div class="testu-handi-lodia"><?php echo date('d', strtotime($hurrengoHitzordua['data'])); ?></div>
                        </div>
                        <div class="flex-bat">
                            <h4 class="izenburu-marjina-gabea">Osasun Langilea <?php echo htmlspecialchars($hurrengoHitzordua['mediku_izena'] . ' ' . $hurrengoHitzordua['mediku_abizenak']); ?></h4>
                            <p class="ordua ordua-marjina-doitua"><img src="../img/svg/clock.svg" alt="" class="ikono-ertaina marjina-esk-10"> <?php echo date('H:i', strtotime($hurrengoHitzordua['hasiera_ordua'])); ?></p>
                        </div>
                    </div>
                <?php else: ?>
                    <p class="testu-gris-etzana"><?php echo $itzulpenak->dashboard_pazientea->ez_hitzordurik; ?></p>
                <?php endif; ?>
                <a href="hitzorduak.php" class="botoia botoi-ertza tarte-goia w-osoa zentratu"><?php echo $itzulpenak->dashboard_pazientea->agenda_ikusi; ?></a>
            </div>
        </div>

        <h2 class="izenburu-nagusia tarte-behea"><img src="../img/svg/zap.svg" alt="" class="ikono-ertaina marjina-esk-10"> <?php echo $itzulpenak->erabiltzaile_panela->ekintza_azkarrak; ?></h2>
        <section class="menu-sareta">
            <a href="datuak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/user-cog.svg" alt="Nire Datuak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_pazientea->datuak; ?></h3>
                <p><?php echo $itzulpenak->menua_pazientea->datuak_testua; ?></p>
            </a>
            <a href="jarraipenak.php" class="menu-txartela" id="menu-jarraipenak-card">
                <div class="txartel-ikonoa"><img src="../img/svg/clipboard-pen.svg" alt="jarraipenak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_pazientea->jarraipenak; ?></h3>
                <p><?php echo $itzulpenak->menua_pazientea->jarraipenak_testua; ?></p>
            </a>
            <a href="grafikak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/line-chart.svg" alt="Grafikak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_pazientea->grafikak; ?></h3>
                <p><?php echo $itzulpenak->menua_pazientea->grafikak_testua; ?></p>
            </a>
            <a href="errezetak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/pill.svg" alt="Errezetak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_pazientea->errezetak; ?></h3>
                <p><?php echo $itzulpenak->menua_pazientea->errezetak_testua; ?></p>
            </a>
            <a href="dokumentuak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/file-text.svg" alt="Dokumentuak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_pazientea->dokumentuak; ?></h3>
                <p><?php echo $itzulpenak->menua_pazientea->dokumentuak_testua; ?></p>
            </a>
            <a href="hitzorduak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/calendar-days.svg" alt="Hitzorduak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_pazientea->hitzorduak; ?></h3>
                <p><?php echo $itzulpenak->menua_pazientea->hitzorduak_testua; ?></p>
            </a>

            <a href="ezarpenak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/settings.svg" alt="Ezarpenak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_pazientea->ezarpenak; ?></h3>
                <p><?php echo $itzulpenak->menua_pazientea->ezarpenak_testua; ?></p>
            </a>
            <a href="../php_orri_laguntzaileak/logout.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/svg/log-out.svg" alt="Saioa Itxi" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->erabiltzaile_panela->saioa_itxi; ?></h3>
                <p><?php echo $itzulpenak->erabiltzaile_panela->saioa_itxi_testua; ?></p>
            </a>

            <!-- XML esportazio blokea kenduta -->
        </section>
    </main>

    <!-- XML esportazio script kenduta -->

<?php
include_once '../php_orri_includeak/paziente_footer.php';
?>



