<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$paziente_id = $_SESSION['erabiltzaile_id'];

// Pazientearen datuak atera
$stmt = $pdo->prepare("
    SELECT * 
    FROM V_Pazientea
    WHERE paziente_id = ?
");
$stmt->execute([$paziente_id]);
$pazientea = $stmt->fetch(PDO::FETCH_ASSOC);

// paziente batek dituen medikuak
$stmtMedikuak = $pdo->prepare("
    SELECT vl.*, ol.espezialitatea 
    FROM V_Langile_Pazienteak vl
    JOIN V_Osasun_Langilea ol ON vl.langile_id = ol.langile_id
    WHERE vl.paziente_id = ?
");
$stmtMedikuak->execute([$paziente_id]);
$medikuak = $stmtMedikuak->fetchAll(PDO::FETCH_ASSOC);

if (!$pazientea) {
    header("Location: index.php?errorea=ez_aurkitua");
    exit;
}

$orri_izenburua = "Nire Datuak - GOsasun";
$uneko_orria = "datuak";
$css_pertsonalizatua = "pazienteak.css";

include_once '../php_orri_includeak/paziente_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2><img src="../img/svg/user.svg" alt="" class="ikono-ertaina tarte-eskubia"> Nire Fitxa Klinikoa</h2>
            <p>Berrikusi zure datu pertsonalak, kontaktua eta egoera klinikoa modu egituratuan.</p>
        </div>

        <div class="fitxa-klinikoa">
            <!-- Goi-atala: Argazkia eta Oinarrizko Datuak -->
            <section class="fitxa-goiburua">
                <div class="fitxa-argazkia">
                    <?php
                        $irudia_izena = trim($pazientea['irudia'] ?? '');
                        if (empty($irudia_izena)) {
                            $irudia_izena = 'lehenetsia_pazientea.png';
                        }

                        // DBko ikuspegiak jada 'img/png/' badu, ez gehitu berriro
                        if (strpos($irudia_izena, 'img/') === false) {
                            $irudia_bidea_erakutsi = "../img/png/" . $irudia_izena;
                        } else {
                            $irudia_bidea_erakutsi = "../" . $irudia_izena;
                        }
                    ?>
                    <img src="<?php echo $irudia_bidea_erakutsi; ?>" alt="Profila" class="paziente-profil-irudia">
                </div>
                <div class="fitxa-oinarrizkoa">
                    <h3 class="paziente-izena-fitxa"><?php echo htmlspecialchars($pazientea['izena'] . ' ' . $pazientea['abizenak']); ?></h3>
                    <p class="paziente-id-fitxa">ID: #<?php echo str_pad($pazientea['paziente_id'], 5, '0', STR_PAD_LEFT); ?></p>
                    <div class="etiketa-taldea tarte-goia">
                        <span class="egoera-txapa <?php echo ($pazientea['egoera_klinikoa'] === 'Alta') ? 'status-bukatuta' : 'status-ezeztatuta'; ?>">
                            <?php echo htmlspecialchars($pazientea['egoera_klinikoa'] ?? 'Zehaztu gabe'); ?>
                        </span>
                        <span class="egoera-txapa status-zain"><?php echo htmlspecialchars($pazientea['odol_taldea'] ?? 'Ezezaguna'); ?></span>
                    </div>
                </div>
            </section>

            <div class="datu-sareta-modernoa">
                <!-- Datu Pertsonalak eta Kontaktua -->
                <div class="fitxa-panela">
                    <div class="fitxa-panela-goiburua">
                        <img src="../img/svg/user.svg" alt="" class="ikono-16px tarte-eskubia">
                        Datu Pertsonalak eta Kontaktua
                    </div>
                    <table class="fitxa-taula">
                        <tr>
                            <th>NAN / Identifikazioa</th>
                            <td><?php echo htmlspecialchars($pazientea['nan']); ?></td>
                        </tr>
                        <tr>
                            <th>Sexua / Jaiotze Data</th>
                            <td><?php echo htmlspecialchars($pazientea['sexua'] ?? 'Zehaztu gabe'); ?> / <?php echo htmlspecialchars($pazientea['jaiotze_data']); ?></td>
                        </tr>
                        <tr>
                            <th>Posta Elektronikoa</th>
                            <td><?php echo htmlspecialchars($pazientea['email']); ?></td>
                        </tr>
                        <tr>
                            <th>Telefono Zenbakia</th>
                            <td><?php echo htmlspecialchars($pazientea['telefonoa'] ?? 'Zehaztu gabe'); ?></td>
                        </tr>
                        <tr>
                            <th>Helbide Fiskala</th>
                            <td><?php echo htmlspecialchars($pazientea['helbidea'] ?? 'Zehaztu gabe'); ?></td>
                        </tr>
                        <tr>
                            <th>Herria eta PK</th>
                            <td><?php echo htmlspecialchars($pazientea['herria'] . ' (' . ($pazientea['posta_kodea'] ?? '') . ')'); ?></td>
                        </tr>
                    </table>
                </div>

                <!-- Egoera Klinikoa eta Medikuak -->
                <div class="fitxa-zutabe-bikoitza">
                    <div class="fitxa-panela">
                        <div class="fitxa-panela-goiburua">
                            <img src="../img/svg/list.svg" alt="" class="ikono-16px tarte-eskubia">
                            Azken Neurketa Biometrikoak
                        </div>
                        <div class="biometria-grid">
                            <div class="biometria-item">
                                <span class="biometria-balioa"><?php echo htmlspecialchars($pazientea['azken_pisua'] ?? '-'); ?></span>
                                <span class="biometria-unitatea">kg</span>
                                <span class="biometria-etiketa">Pisua</span>
                            </div>
                            <div class="biometria-item">
                                <span class="biometria-balioa"><?php echo htmlspecialchars($pazientea['azken_altuera'] ?? '-'); ?></span>
                                <span class="biometria-unitatea">m</span>
                                <span class="biometria-etiketa">Altuera</span>
                            </div>
                        </div>
                    </div>

                    <div class="fitxa-panela paziente-langile-panela">
                        <div class="fitxa-panela-goiburua">
                            <img src="../img/svg/user.svg" alt="" class="ikono-16px tarte-eskubia">
                            Esleitutako Osasun Langileak
                        </div>
                        <?php if (count($medikuak) > 0): ?>
                            <ul class="fitxa-mediku-zerrenda">
                                <?php foreach ($medikuak as $m): ?>
                                    <li>
                                        <strong><?php echo htmlspecialchars($m['langile_izena'] . ' ' . $m['langile_abizenak']); ?></strong>
                                        <span class="espezialitatea"><?php echo htmlspecialchars($m['espezialitatea']); ?></span>
                                    </li>
                                <?php endforeach; ?>
                            </ul>
                        <?php else: ?>
                            <p class="testu-hutsa padding-10">Ez daukazu langile esleiturik.</p>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </main>

<?php $js_gehigarria = ["datuak.js"];
include_once '../php_orri_includeak/paziente_footer.php';
?>


