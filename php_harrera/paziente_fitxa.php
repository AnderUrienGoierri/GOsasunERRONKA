<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';

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

// 2. Azken neurketak lortu
$stmtN = $pdo->prepare("SELECT * FROM Neurketak WHERE paziente_id = ? ORDER BY data DESC LIMIT 5");
$stmtN->execute([$id]);
$neurketak = $stmtN->fetchAll(PDO::FETCH_ASSOC);

// 3. Hitzorduak lortu (etorkizunekoak eta azkenak)
$stmtH = $pdo->prepare("SELECT h.*, m.izena as m_izena, m.abizenak as m_abizenak 
                        FROM Hitzorduak h 
                        JOIN Medikuak m ON h.mediku_id = m.mediku_id 
                        WHERE h.paziente_id = ? 
                        ORDER BY h.data DESC LIMIT 10");
$stmtH->execute([$id]);
$hitzorduak = $stmtH->fetchAll(PDO::FETCH_ASSOC);

$orri_izenburua = $pazientea['izena'] . " " . $pazientea['abizenak'] . " - Fitxa";
$uneko_orria = "pazienteak";
$css_pertsonalizatua = "pazienteak.css";

include_once '../php_includeak/harrera_goiburua.php';
?>



<main class="panel-nagusia">
    <a href="pazienteak.php" class="atzera-botoia"><img src="../img/arrow-left.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> Pazienteen zerrendara itzuli</a>
    
    <div class="orri-goiburua">
        <h2><img src="../img/user.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> Pazientearen Fitxa</h2>
        <span class="egoera-etiketa <?php echo $pazientea['egoera_klinikoa'] == 'Alta' ? 'egoera-alta' : 'egoera-baja'; ?>">
            <?php echo htmlspecialchars($pazientea['egoera_klinikoa']); ?>
        </span>
    </div>

    <div class="fitxa-edukiontzia">
        <!-- Ezkerreko zutabea: Datu pertsonalak -->
        <div class="profil-txartela">
            <img src="../<?php echo htmlspecialchars($pazientea['irudia'] ?? 'img/lehenetsia_pazientea.png'); ?>" alt="Profila" class="profil-irudia">
            <h3><?php echo htmlspecialchars($pazientea['izena'] . ' ' . $pazientea['abizenak']); ?></h3>
            <p class="identifikadorea">ID: #<?php echo $pazientea['paziente_id']; ?> | NAN: <?php echo htmlspecialchars($pazientea['nan']); ?></p>
            
            <hr class="banatzaile-marra">
            
            <div class="testua-ezkerrean">
                <p><strong><img src="../img/mail.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> Email:</strong> <?php echo htmlspecialchars($pazientea['email']); ?></p>
                <p><strong>📱 Telefonoa:</strong> <?php echo htmlspecialchars($pazientea['telefonoa'] ?? 'Ez zehaztua'); ?></p>
            </div>
            
            <a href="paziente_editatu.php?id=<?php echo $pazientea['paziente_id']; ?>" class="botoia botoi-ertza marjina-goi-zabalera"><img src="../img/pencil.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> Editatu Datuak</a>
        </div>

        <!-- Eskuineko zutabea: Neurketak eta Hitzorduak -->
        <div>
            <!-- Azken neurketen laburpena -->
            <div class="kutxa-zuria-itzala-30">
                <h3 class="goiburu-iluna-flex">
                    Azken Parametroak
                    <?php if(count($neurketak) > 0): ?>
                        <small class="datu-txikia-grisa">(<?php echo date('Y/m/d', strtotime($neurketak[0]['data'])); ?>)</small>
                    <?php endif; ?>
                </h3>
                
                <?php if(count($neurketak) > 0): ?>
                    <?php $azkena = $neurketak[0]; ?>
                    <div class="param-sareta">
                        <div class="param-txartela">
                            <div class="param-label">Tentsioa</div>
                            <div class="param-balioa"><?php echo $azkena['tentsio_sistolikoa'] . '/' . $azkena['tentsio_diastolikoa']; ?></div>
                            <div class="param-label">mmHg</div>
                        </div>
                        <div class="param-txartela">
                            <div class="param-label">Glukosa</div>
                            <div class="param-balioa"><?php echo $azkena['glukosa_mg_dl']; ?></div>
                            <div class="param-label">mg/dL</div>
                        </div>
                        <div class="param-txartela">
                            <div class="param-label">Pisua</div>
                            <div class="param-balioa"><?php echo $azkena['pisua_kg']; ?></div>
                            <div class="param-label">kg</div>
                        </div>
                        <div class="param-txartela">
                            <div class="param-label">Altuera</div>
                            <div class="param-balioa"><?php echo $azkena['altuera_m']; ?></div>
                            <div class="param-label">m</div>
                        </div>
                    </div>
                <?php else: ?>
                    <p class="testu-gris-etzana">Paziente honek ez du neurketarik erregistratuta.</p>
                <?php endif; ?>
            </div>

            <!-- Hitzorduen historia -->
            <div class="kutxa-zuria-itzala">
                <h3 class="izenburu-iluna">Hitzorduen Historia</h3>
                
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
                                    <?php echo date('Y/m/d', strtotime($h['data'])); ?><br>
                                    <span class="testu-gris-txikia"><?php echo date('H:i', strtotime($h['hasiera_ordua'])); ?></span>
                                </div>
                                <div class="hitzordu-xehetasunak">
                                    <h4 class="testu-normala">Med. <?php echo htmlspecialchars($h['m_abizenak'] . ' ' . $h['m_izena']); ?></h4>
                                    <p class="arrazoia"><?php echo htmlspecialchars($h['arrazoia']); ?></p>
                                </div>
                                <div class="hitzordu-egoera">
                                    <span class="egoera-txapa <?php echo $class; ?>"><?php echo htmlspecialchars($h['egoera']); ?></span>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                <?php else: ?>
                    <p class="testu-gris-etzana">Paziente honek ez du hitzordurik erregistratuta.</p>
                <?php endif; ?>
            </div>
        </div>
    </div>
</main>

<?php include_once '../php_includeak/harrera_footer.php'; ?>


