<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Osasun Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$osasun_langile_id = $_SESSION['erabiltzaile_id'];

if (!isset($_GET['id'])) {
    header("Location: pazienteak.php");
    exit;
}

$paziente_id = $_GET['id'];
$msg_status = '';

// Kudeatu egoera klinikoaren eguneratzea
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['berria_egoera'])) {
    $berria = $_POST['berria_egoera'];
    if (in_array($berria, ['Alta', 'Baja'])) {
        $stm_eguneratu = $pdo->prepare("UPDATE pazienteak SET egoera_klinikoa = ? WHERE id = ?");
        $stm_eguneratu->execute([$berria, $paziente_id]);
        $msg_status = "Egoera klinikoa harrerako langileentzat eguneratu da: " . $berria;
    }
}

// Ziurtatu medikuak paziente honetarako sarbidea duela
$stm_egiaztatu = $pdo->prepare("SELECT 1 FROM V_Langile_Pazienteak WHERE langile_id = ? AND paziente_id = ?");
$stm_egiaztatu->execute([$osasun_langile_id, $paziente_id]);
if (!$stm_egiaztatu->fetch()) {
    die("Ez duzu baimenik paziente honen datuak ikusteko.");
}

// Pazientearen datu orokorrak
$stmt = $pdo->prepare("SELECT * FROM V_Pazientea WHERE paziente_id = ?");
$stmt->execute([$paziente_id]);
$pazientea = $stmt->fetch(PDO::FETCH_ASSOC);

// Azken jarraipenak eta datuen sintesia (azken balio konbinatua)
$stmtjarraipenak = $pdo->prepare("SELECT erregistro_data, tentsio_sistolikoa, tentsio_diastolikoa, pisua_kg, altuera, pultsua_ppm, oharrak FROM jarraipenak WHERE paziente_id = ? ORDER BY erregistro_data DESC");
$stmtjarraipenak->execute([$paziente_id]);
$jarraipenak = $stmtjarraipenak->fetchAll(PDO::FETCH_ASSOC);

$sintesia = [
    'tentsio_sistolikoa' => null, 'tentsio_diastolikoa' => null, 'tentsio_data' => null,
    'pisua_kg' => null, 'pisua_data' => null,
    'altuera' => null, 'altuera_data' => null,
    'pultsua_ppm' => null, 'pultsua_data' => null,
    'azken_data' => null
];

foreach ($jarraipenak as $j) {
    if (!$sintesia['azken_data']) $sintesia['azken_data'] = $j['erregistro_data']; // Picken first (latest) date
    
    if (!$sintesia['tentsio_sistolikoa'] && !empty($j['tentsio_sistolikoa'])) {
        $sintesia['tentsio_sistolikoa'] = $j['tentsio_sistolikoa'];
        $sintesia['tentsio_diastolikoa'] = $j['tentsio_diastolikoa'];
        $sintesia['tentsio_data'] = $j['erregistro_data'];
    }
    if (!$sintesia['pisua_kg'] && !empty($j['pisua_kg'])) {
        $sintesia['pisua_kg'] = $j['pisua_kg'];
        $sintesia['pisua_data'] = $j['erregistro_data'];
    }
    if (!$sintesia['altuera'] && !empty($j['altuera'])) {
        $sintesia['altuera'] = $j['altuera'];
        $sintesia['altuera_data'] = $j['erregistro_data'];
    }
    if (!$sintesia['pultsua_ppm'] && !empty($j['pultsua_ppm'])) {
        $sintesia['pultsua_ppm'] = $j['pultsua_ppm'];
        $sintesia['pultsua_data'] = $j['erregistro_data'];
    }
}
$bada_sintesia = $sintesia['tentsio_sistolikoa'] || $sintesia['pisua_kg'] || $sintesia['altuera'] || $sintesia['pultsua_ppm'];

?>
<?php $orri_izenburua = "Paziente Fitxa - " . htmlspecialchars($pazientea['izena'] . ' ' . $pazientea['abizenak']);
$uneko_orria = "pazienteak";
$css_pertsonalizatua = "pazienteak.css";

include_once '../php_orri_includeak/osasun_langile_goiburua.php';
?>

    

    <main class="panel-nagusia">
        <a href="pazienteak.php" class="atzera-botoia"><img src="../img/svg/arrow-left.svg" alt="" class="ikono-ertaina tarte-eskubia"> Pazienteen zerrendara itzuli</a>
        
        <div class="orri-goiburua">
            <h2><img src="../img/svg/user.svg" alt="" class="ikono-ertaina tarte-eskubia"> Pazientearen Fitxa Klinikoa</h2>
            <div class="talde-flex">
                <span class="egoera-etiketa <?php echo $pazientea['egoera_klinikoa'] == 'Alta' ? 'egoera-alta' : 'egoera-baja'; ?>">
                    <?php echo htmlspecialchars($pazientea['egoera_klinikoa'] ?? 'Alta'); ?>
                </span>
                <span class="egoera-etiketa <?php echo $pazientea['aktibo'] ? 'egoera-arrakasta' : 'egoera-baja'; ?> egoera-kolore-urdina">
                    <?php echo $pazientea['aktibo'] ? 'Kontu Aktiboa' : 'Kontu Ez-Aktiboa'; ?>
                </span>
                <a href="txostena_eraiki.php?paziente_id=<?php echo $paziente_id; ?>" class="botoia botoi-nagusia botoi-txikia tarte-ezkerra">
                    <img src="../img/svg/file-text.svg" alt="" class="ikono-txikia tarte-eskubia ikono-zuria"> Txostena Sortu (PDF)
                </a>
            </div>
        </div>

        <?php if ($msg_status): ?>
            <div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($msg_status); ?></div>
        <?php endif; ?>

        <div class="fitxa-edukiontzia">
            <!-- Ezkerreko zutabea: Profila eta Harremana -->
            <div class="profil-txartela">
                <?php
                $irudia_bide = htmlspecialchars($pazientea['irudia'] ?? 'img/lehenetsia_pazientea.png');
                if (strpos($irudia_bide, 'img/') === 0 && strpos($irudia_bide, 'img/png/') === false && strpos($irudia_bide, 'img/svg/') === false) {
                    $irudia_bide = str_replace('img/', 'img/png/', $irudia_bide);
                }
                ?>
                <img src="../<?php echo $irudia_bide; ?>" alt="Profila" class="profil-irudia-handia">
                <h3 class="tarte-goia"><?php echo htmlspecialchars($pazientea['izena'] . ' ' . $pazientea['abizenak']); ?></h3>
                <p class="identifikadorea"> NAN: <?php echo htmlspecialchars($pazientea['nan']); ?></p>

                <hr class="banatzaile-marra">

                <div class="testua-ezkerrean">
                    <p class="betegarria-15"><img src="../img/svg/mail.svg" alt="" class="ikono-ertaina tarte-eskubia"><strong>Email:</strong> <br><span class="testu-normala tarte-ezkerra"><?php echo htmlspecialchars($pazientea['email']); ?></span></p>
                    <p class="betegarria-15"><img src="../img/svg/phone.svg" alt="" class="ikono-ertaina tarte-eskubia"><strong>Telefonoa:</strong> <br><span class="testu-normala tarte-ezkerra"><?php echo htmlspecialchars($pazientea['telefonoa'] ?? 'Ez zehaztua'); ?></span></p>
                    <p class="betegarria-15"><img src="../img/svg/map-pin.svg" alt="" class="ikono-ertaina tarte-eskubia"><strong>Helbidea:</strong> <br><span class="testu-normala tarte-ezkerra"><?php echo htmlspecialchars($pazientea['helbidea'] ?? 'Ez zehaztua'); ?></span></p>
                </div>

                <section class="egoera-kudeaketa tarte-goia padding-20 kutxa-zuria-itzala borobildua">
                    <h4><img src="../img/svg/activity.svg" alt="" class="ikono-txikia tarte-eskubia"> Egoera Kudeatu</h4>
                    <form method="POST" class="talde-flex tarte-goia">
                        <button type="submit" name="berria_egoera" value="Alta" class="botoia botoi-txikia botoi-nagusia <?php echo $pazientea['egoera_klinikoa'] == 'Alta' ? 'botoi-desaktibatu' : ''; ?>" <?php echo $pazientea['egoera_klinikoa'] == 'Alta' ? 'disabled style="opacity: 0.5; cursor: not-allowed;"' : ''; ?>>Alta Eman</button>
                        <button type="submit" name="berria_egoera" value="Baja" class="botoia botoi-txikia botoi-gorria <?php echo $pazientea['egoera_klinikoa'] == 'Baja' ? 'botoi-desaktibatu' : ''; ?>" <?php echo $pazientea['egoera_klinikoa'] == 'Baja' ? 'disabled style="opacity: 0.5; cursor: not-allowed;"' : ''; ?>>Baja Eman</button>
                    </form>
                </section>
            </div>

            <!-- Eskuineko zutabea: Datuen xehetasunak -->
            <div>
                <!-- Datu Pertsonalak eta Fisikoak -->
                <div class="txartel-atala">
                    <h3 class="izenburu-nabarmena"><img src="../img/svg/info.svg" alt="" class="ikono-ertaina tarte-eskubia"> Informazio Fisiko Orokorra</h3>
                    <div class="param-sareta">
                        <div class="param-txartela">
                            <div class="testu-gris-iluna">Sexua</div>
                            <div class="param-balioa"><?php echo htmlspecialchars($pazientea['sexua']); ?></div>
                        </div>
                        <div class="param-txartela">
                            <div class="testu-gris-iluna">Jaiotze Data</div>
                            <div class="param-balioa"><?php echo date('Y/m/d', strtotime($pazientea['jaiotze_data'])); ?></div>
                            <div class="testu-gris-txikia"><?php echo floor((time() - strtotime($pazientea['jaiotze_data'])) / 31556926); ?> urte</div>
                        </div>
                        <div class="param-txartela">
                            <div class="testu-gris-iluna">Odol Taldea</div>
                            <div class="param-balioa"><?php echo htmlspecialchars($pazientea['odol_taldea'] ?? '-'); ?></div>
                        </div>
                        <div class="param-txartela">
                            <div class="testu-gris-iluna">Alta data</div>
                            <div class="param-balioa"><?php echo date('Y/m/d', strtotime($pazientea['sortze_data'])); ?></div>
                        </div>
                    </div>
                </div>

                <!-- Azken neurketen laburpena -->
                <div class="txartel-atala">
                    <h3 class="izenburu-taldea">
                        <img src="../img/svg/activity.svg" alt="" class="ikono-ertaina tarte-eskubia"> Konstante Bitalen Sintesia
                        <?php if($sintesia['azken_data']): ?>
                            <small class="datu-txikia-grisa" title="Azken kontaktuaren data">(Gaurkotua: <?php echo date('Y/m/d', strtotime($sintesia['azken_data'])); ?>)</small>
                        <?php endif; ?>
                    </h3>

                    <?php if($bada_sintesia): ?>
                        <div class="param-sareta">
                            <div class="param-txartela">
                                <div class="testu-gris-iluna">Tentsioa</div>
                                <div class="param-balioa"><?php echo ($sintesia['tentsio_sistolikoa'] && $sintesia['tentsio_diastolikoa']) ? $sintesia['tentsio_sistolikoa'] . '/' . $sintesia['tentsio_diastolikoa'] : ($sintesia['tentsio_sistolikoa'] ?: '-'); ?></div>
                                <div class="testu-gris-txikia marjina-behe-5">mmHg</div>
                                <?php if($sintesia['tentsio_data']) echo '<small class="testu-gris-txikia-oso" style="font-size: 0.75rem; opacity: 0.6;">' . date('Y/m/d', strtotime($sintesia['tentsio_data'])) . '</small>'; ?>
                            </div>
                            <div class="param-txartela">
                                <div class="testu-gris-iluna">Pultsua</div>
                                <div class="param-balioa"><?php echo $sintesia['pultsua_ppm'] ?? '-'; ?></div>
                                <div class="testu-gris-txikia marjina-behe-5">ppm</div>
                                <?php if($sintesia['pultsua_data']) echo '<small class="testu-gris-txikia-oso" style="font-size: 0.75rem; opacity: 0.6;">' . date('Y/m/d', strtotime($sintesia['pultsua_data'])) . '</small>'; ?>
                            </div>
                            <div class="param-txartela">
                                <div class="testu-gris-iluna">Pisua</div>
                                <div class="param-balioa"><?php echo $sintesia['pisua_kg'] ?? '-'; ?></div>
                                <div class="testu-gris-txikia marjina-behe-5">kg</div>
                                <?php if($sintesia['pisua_data']) echo '<small class="testu-gris-txikia-oso" style="font-size: 0.75rem; opacity: 0.6;">' . date('Y/m/d', strtotime($sintesia['pisua_data'])) . '</small>'; ?>
                            </div>
                            <div class="param-txartela">
                                <div class="testu-gris-iluna">Altuera</div>
                                <div class="param-balioa"><?php echo $sintesia['altuera'] ?? '-'; ?></div>
                                <div class="testu-gris-txikia marjina-gabea">cm</div>
                                <?php if($sintesia['altuera_data']) echo '<small class="testu-gris-txikia-oso" style="font-size: 0.75rem; opacity: 0.6;">' . date('Y/m/d', strtotime($sintesia['altuera_data'])) . '</small>'; ?>
                            </div>
                        </div>
                    <?php else: ?>
                        <div class="egoera-hutsa">
                            <p class="testu-gris-etzana">Paziente honek ez du neurketarik erregistratuta.</p>
                        </div>
                    <?php endif; ?>
                </div>

                <!-- Jarraipen historia -->
                <div class="kutxa-zuria-itzala">
                    <h3 class="izenburu-iluna"><img src="../img/svg/clipboard.svg" alt="" class="ikono-ertaina tarte-eskubia"> Jarraipen Historikoa</h3>

                    <?php if(count($jarraipenak) > 0): ?>
                        <div class="korritze-horizontala tarte-goia">
                            <table class="datu-taula">
                                <thead>
                                    <tr>
                                        <th>Data</th>
                                        <th>Ordua</th>
                                        <th class="testua-erdian">SIS</th>
                                        <th class="testua-erdian">DIA</th>
                                        <th class="testua-erdian">Pultsua</th>
                                        <th class="testua-erdian">Altuera</th>
                                        <th class="testua-erdian">Pisua</th>
                                        <th>Oharrak / Sintomak</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach (array_slice($jarraipenak, 0, 15) as $n): ?>
                                        <tr>
                                            <td><strong><?php echo date('Y/m/d', strtotime($n['erregistro_data'])); ?></strong></td>
                                            <td><small><?php echo date('H:i', strtotime($n['erregistro_data'])); ?></small></td>
                                            <td class="testua-erdian"><?php echo $n['tentsio_sistolikoa'] ?: '-'; ?></td>
                                            <td class="testua-erdian"><?php echo $n['tentsio_diastolikoa'] ?: '-'; ?></td>
                                            <td class="testu-urdina-lodia testua-erdian"><?php echo $n['pultsua_ppm'] ? $n['pultsua_ppm'] . ' <small>ppm</small>' : '-'; ?></td>
                                            <td class="testua-erdian"><?php echo $n['altuera'] ? $n['altuera'] . ' <small>cm</small>' : '-'; ?></td>
                                            <td class="testua-erdian"><?php echo $n['pisua_kg'] ? $n['pisua_kg'] . ' <small>kg</small>' : '-'; ?></td>
                                            <td class="testu-gris-iluna"><?php echo htmlspecialchars($n['oharrak'] ?? '-'); ?></td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    <?php else: ?>
                        <div class="egoera-hutsa tarte-goia">
                            <p class="testu-gris-etzana">Ez dago neurketarik erregistratuta azken historialean.</p>
                        </div>
                    <?php endif; ?>
                </div>

            </div>
        </div>
    </main>

<?php
$js_gehigarria = [];
include_once '../php_orri_includeak/osasun_footer.php';
?>


