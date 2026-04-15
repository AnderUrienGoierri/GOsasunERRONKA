<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';

if (!isset($_GET['id']) || empty($_GET['id'])) {
    header("Location: pazienteak.php");
    exit;
}

$id = $_GET['id'];

// 1. Pazientearen datuak lortu
$stmt = $pdo->prepare("SELECT * FROM V_Pazientea WHERE paziente_id = ?");
$stmt->execute([$id]);
$pazientea = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$pazientea) {
    echo "Pazientea ez da aurkitu.";
    exit;
}

// 2. Azken jarraipenak lortu
$stmtN = $pdo->prepare("SELECT erregistro_data, tentsio_sistolikoa, tentsio_diastolikoa, pultsua_ppm, pisua_kg, altuera FROM jarraipenak WHERE paziente_id = ? ORDER BY erregistro_data DESC LIMIT 5");
$stmtN->execute([$id]);
$jarraipenak = $stmtN->fetchAll(PDO::FETCH_ASSOC);

// 3. Hitzorduak lortu (etorkizunekoak eta azkenak)
$stmtH = $pdo->prepare("SELECT h.*, m.izena as m_izena, m.abizenak as m_abizenak 
                        FROM Hitzorduak h 
                        JOIN V_Osasun_Langilea m ON h.osasun_langile_id = m.langile_id 
                        WHERE h.paziente_id = ? 
                        ORDER BY h.data DESC LIMIT 10");
$stmtH->execute([$id]);
$hitzorduak = $stmtH->fetchAll(PDO::FETCH_ASSOC);

// 4. Pazientearen dokumentuak lortu (Zuzenean lotutakoak edo jarraipen baten bidez)
$stmtd = $pdo->prepare("SELECT d.* 
                        FROM dokumentuak d
                        LEFT JOIN jarraipenak j ON d.jarraipena_id = j.id
                        WHERE d.paziente_id = ? OR j.paziente_id = ?
                        ORDER BY d.igotze_data DESC");
$stmtd->execute([$id, $id]);
$dokumentuak = $stmtd->fetchAll(PDO::FETCH_ASSOC);

$orri_izenburua = $pazientea['izena'] . " " . $pazientea['abizenak'] . " - Fitxa";
$uneko_orria = "pazienteak";
$css_pertsonalizatua = "pazienteak.css";

include_once '../php_orri_includeak/harrera_goiburua.php';
?>



<main class="panel-nagusia">
    <a href="pazienteak.php" class="atzera-botoia"><img src="../img/svg/arrow-left.svg" alt="" class="ikono-ertaina marjina-esk-5"> Pazienteen zerrendara itzuli</a>
    
    <div class="orri-goiburua">
        <h2><img src="../img/svg/user.svg" alt="" class="ikono-ertaina marjina-esk-5"> Pazientearen Fitxa</h2>
        <div class="flex-taldea-10">
            <span class="egoera-etiketa <?php echo $pazientea['egoera_klinikoa'] == 'Alta' ? 'egoera-alta' : 'egoera-baja'; ?>">
                <?php echo htmlspecialchars($pazientea['egoera_klinikoa']); ?>
            </span>
            <span class="egoera-etiketa <?php echo $pazientea['aktibo'] ? 'egoera-arrakasta' : 'egoera-baja'; ?> egoera-kolore-urdina">
                <?php echo $pazientea['aktibo'] ? 'Kontu Aktiboa' : 'Kontu Ez-Aktiboa'; ?>
            </span>
            <a href="txostena_eraiki.php?paziente_id=<?php echo $id; ?>" class="botoia botoi-nagusia botoi-txikia marjina-ezk-15">
                <img src="../img/svg/file-text.svg" alt="" class="ikono-txikia marjina-esk-5 ikono-zuria"> Txostena Sortu
            </a>
        </div>
    </div>

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
            <h3 class="marjina-goi-15"><?php echo htmlspecialchars($pazientea['izena'] . ' ' . $pazientea['abizenak']); ?></h3>
            <p class="identifikadorea">ID: #<?php echo $pazientea['paziente_id']; ?> | NAN: <?php echo htmlspecialchars($pazientea['nan']); ?></p>
            
            <hr class="banatzaile-marra">
            
            <div class="testua-ezkerrean">
                <p class="betegarria-15"><img src="../img/svg/mail.svg" alt="" class="ikono-ertaina marjina-esk-10"><strong>Email:</strong> <br><span class="testu-normala marjina-ezk-30"><?php echo htmlspecialchars($pazientea['email']); ?></span></p>
                <p class="betegarria-15"><img src="../img/svg/phone.svg" alt="" class="ikono-ertaina marjina-esk-10"><strong>Telefonoa:</strong> <br><span class="testu-normala marjina-ezk-30"><?php echo htmlspecialchars($pazientea['telefonoa'] ?? 'Ez zehaztua'); ?></span></p>
            </div>
            
            <a href="paziente_editatu.php?id=<?php echo $pazientea['paziente_id']; ?>" class="botoia botoi-ertza marjina-goi-zabalera"><img src="../img/svg/pencil.svg" alt="" class="ikono-ertaina marjina-esk-5"> Editatu Datuak</a>
        </div>

        <!-- Eskuineko zutabea: Datuen xehetasunak -->
        <div>
            <!-- Datu Pertsonalak eta Kokapena -->
            <div class="kutxa-zuria marjina-behe-30">
                <h3 class="izenburu-urdina"><img src="../img/svg/info.svg" alt="" class="ikono-ertaina marjina-esk-10"> Informazio Pertsonala eta Kokapena</h3>
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
                        <div class="testu-gris-iluna">Erregistro Data</div>
                        <div class="param-balioa"><?php echo date('Y/m/d', strtotime($pazientea['sortze_data'])); ?></div>
                        <div class="testu-gris-txikia">Alta data</div>
                    </div>
                </div>
                
                <div class="marjina-goi-20">
                    <p><strong><img src="../img/svg/map-pin.svg" alt="" class="ikono-ertaina marjina-esk-10"> Helbidea:</strong> 
                        <?php echo htmlspecialchars($pazientea['helbidea'] ?? 'Ez zehaztua'); ?>, 
                        <?php echo htmlspecialchars($pazientea['posta_kodea'] ?? ''); ?> 
                        <?php echo htmlspecialchars($pazientea['herria'] ?? ''); ?>
                    </p>
                </div>
            </div>

            <!-- Azken neurketen laburpena -->
            <div class="kutxa-zuria marjina-behe-30">
                <h3 class="goiburu-iluna-flex">
                    <img src="../img/svg/activity.svg" alt="" class="ikono-ertaina marjina-esk-10"> Azken Parametroak
                    <?php if(count($jarraipenak) > 0): ?>
                        <small class="datu-txikia-grisa">(<?php echo date('Y/m/d', strtotime($jarraipenak[0]['erregistro_data'])); ?>)</small>
                    <?php endif; ?>
                </h3>
                
                <?php if(count($jarraipenak) > 0): ?>
                    <?php $azkena = $jarraipenak[0]; ?>
                    <div class="param-sareta">
                        <div class="param-txartela">
                            <div class="testu-gris-iluna">Tentsioa</div>
                            <div class="param-balioa"><?php echo $azkena['tentsio_sistolikoa'] . '/' . $azkena['tentsio_diastolikoa']; ?></div>
                            <div class="testu-gris-txikia">mmHg</div>
                        </div>
                        <div class="param-txartela">
                            <div class="testu-gris-iluna">Pultsua</div>
                            <div class="param-balioa"><?php echo $azkena['pultsua_ppm'] ?? '-'; ?></div>
                            <div class="testu-gris-txikia">ppm</div>
                        </div>
                        <div class="param-txartela">
                            <div class="testu-gris-iluna">Pisua</div>
                            <div class="param-balioa"><?php echo $azkena['pisua_kg']; ?></div>
                            <div class="testu-gris-txikia">kg</div>
                        </div>
                        <div class="param-txartela">
                            <div class="testu-gris-iluna">Altuera</div>
                            <div class="param-balioa"><?php echo $azkena['altuera']; ?></div>
                            <div class="testu-gris-txikia">m</div>
                        </div>
                    </div>
                <?php else: ?>
                    <div class="egoera-hutsa">
                        <p class="testu-gris-etzana">Paziente honek ez du neurketarik erregistratuta.</p>
                    </div>
                <?php endif; ?>
            </div>

            <!-- Hitzorduen historia -->
            <div class="kutxa-zuria-itzala">
                <h3 class="izenburu-iluna"><img src="../img/svg/calendar-days.svg" alt="" class="ikono-ertaina marjina-esk-10"> Hitzorduen Historia</h3>
                
                <?php if(count($hitzorduak) > 0): ?>
                    <div class="hitzordu-zerrenda">
                        <?php foreach($hitzorduak as $h): ?>
                            <?php $class = '';
                                if($h['egoera'] == 'Zain') $class = 'status-zain';
                                elseif($h['egoera'] == 'Bukatuta') $class = 'status-bukatuta';
                                elseif($h['egoera'] == 'Ezeztatuta') $class = 'status-ezeztatuta';
                            ?>
                            <div class="hitzordu-txartela betegarria-15" >
                                <div class="ordu-tartea etiketa-testua" >
                                    <strong><?php echo date('Y/m/d', strtotime($h['data'])); ?></strong><br>
                                    <span class="testu-gris-txikia"><?php echo date('H:i', strtotime($h['hasiera_ordua'])); ?></span>
                                </div>
                                <div class="hitzordu-xehetasunak">
                                    <h4 class="testu-normala">Med. <?php echo htmlspecialchars($h['m_abizenak'] . ' ' . $h['m_izena']); ?></h4>
                                    <p class="arrazoia testu-gris-txikia"><?php echo htmlspecialchars($h['arrazoia']); ?></p>
                                </div>
                                <div class="hitzordu-egoera">
                                    <span class="egoera-txapa <?php echo $class; ?>"><?php echo htmlspecialchars($h['egoera']); ?></span>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                <?php else: ?>
                    <div class="egoera-hutsa">
                        <p class="testu-gris-etzana">Paziente honek ez du hitzordurik erregistratuta.</p>
                    </div>
                <?php endif; ?>
            </div>

            <!-- Dokumentuak -->
            <div class="kutxa-zuria marjina-goi-30">
                <h3 class="izenburu-iluna"><img src="../img/svg/file-text.svg" alt="" class="ikono-ertaina marjina-esk-10"> Dokumentuak</h3>
                
                <?php if(count($dokumentuak) > 0): ?>
                    <div class="dokumentu-zerrenda-fitxa">
                        <table class="dokumentu-taula">
                            <thead>
                                <tr>
                                    <th>Data</th>
                                    <th>Izena</th>
                                    <th>Ekintza</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach($dokumentuak as $d): ?>
                                    <tr>
                                        <td><?php echo date('Y/m/d', strtotime($d['igotze_data'])); ?></td>
                                        <td><?php echo htmlspecialchars($d['dokumentu_izena'] ?: $d['fitxategi_izena']); ?></td>
                                        <td>
                                            <a href="../<?php echo htmlspecialchars($d['bidea_zerbitzarian']); ?>" target="_blank" class="botoi-ikonoa">
                                                <img src="../img/svg/download.svg" alt="" class="ikono-txikia">
                                            </a>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                <?php else: ?>
                    <div class="egoera-hutsa">
                        <p class="testu-gris-etzana">Paziente honek ez du dokumenturik.</p>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
</main>

<?php include_once '../php_orri_includeak/harrera_footer.php'; ?>


