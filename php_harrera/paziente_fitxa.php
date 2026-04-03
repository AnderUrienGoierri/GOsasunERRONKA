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
$stmtN = $pdo->prepare("SELECT erregistro_data, tentsio_sistolikoa, tentsio_diastolikoa, pultsua_ppm, pisua_kg, altuera FROM Neurketak WHERE paziente_id = ? ORDER BY erregistro_data DESC LIMIT 5");
$stmtN->execute([$id]);
$neurketak = $stmtN->fetchAll(PDO::FETCH_ASSOC);

// 3. Hitzorduak lortu (etorkizunekoak eta azkenak)
$stmtH = $pdo->prepare("SELECT h.*, m.izena as m_izena, m.abizenak as m_abizenak 
                        FROM Hitzorduak h 
                        JOIN Medikuak m ON h.mediku_id = m.id 
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
    <a href="pazienteak.php" class="atzera-botoia"><img src="../img/svg/arrow-left.svg" alt="" class="ikono-ertaina marjina-esk-5"> Pazienteen zerrendara itzuli</a>
    
    <div class="orri-goiburua">
        <h2><img src="../img/svg/user.svg" alt="" class="ikono-ertaina marjina-esk-5"> Pazientearen Fitxa</h2>
        <span class="egoera-etiketa <?php echo $pazientea['egoera_klinikoa'] == 'Alta' ? 'egoera-alta' : 'egoera-baja'; ?>">
            <?php echo htmlspecialchars($pazientea['egoera_klinikoa']); ?>
        </span>
    </div>

    <div class="fitxa-edukiontzia">
        <!-- Ezkerreko zutabea: Datu pertsonalak -->
        <div class="profil-txartela">
            <?php 
            $irudia_bide = htmlspecialchars($pazientea['irudia'] ?? 'img/lehenetsia_pazientea.png');
            if (strpos($irudia_bide, 'img/') === 0 && strpos($irudia_bide, 'img/png/') === false && strpos($irudia_bide, 'img/svg/') === false) {
                $irudia_bide = str_replace('img/', 'img/png/', $irudia_bide);
            }
            ?>
            <img src="../<?php echo $irudia_bide; ?>" alt="Profila" class="profil-irudia">
            <h3><?php echo htmlspecialchars($pazientea['izena'] . ' ' . $pazientea['abizenak']); ?></h3>
            <p class="identifikadorea">ID: #<?php echo $pazientea['paziente_id']; ?> | NAN: <?php echo htmlspecialchars($pazientea['nan']); ?></p>
            
            <hr class="banatzaile-marra">
            
            <div class="testua-ezkerrean">
                <p><strong><img src="../img/svg/mail.svg" alt="" class="ikono-ertaina marjina-esk-5"> Email:</strong> <?php echo htmlspecialchars($pazientea['email']); ?></p>
                <p><strong><img src="../img/svg/phone.svg" alt="" class="ikono-ertaina marjina-esk-5"> Telefonoa:</strong> <?php echo htmlspecialchars($pazientea['telefonoa'] ?? 'Ez zehaztua'); ?></p>
            </div>
            
            <a href="paziente_editatu.php?id=<?php echo $pazientea['paziente_id']; ?>" class="botoia botoi-ertza marjina-goi-zabalera"><img src="../img/svg/pencil.svg" alt="" class="ikono-ertaina marjina-esk-5"> Editatu Datuak</a>
        </div>

        <!-- Eskuineko zutabea: Neurketak eta Hitzorduak -->
        <div>
            <!-- Azken neurketen laburpena -->
            <div class="kutxa-zuria">
                <h3 class="goiburu-iluna-flex">
                    Azken Parametroak
                    <?php if(count($neurketak) > 0): ?>
                        <small class="datu-txikia-grisa">(<?php echo date('Y/m/d', strtotime($neurketak[0]['erregistro_data'])); ?>)</small>
                    <?php endif; ?>
                </h3>
                
                <?php if(count($neurketak) > 0): ?>
                    <?php $azkena = $neurketak[0]; ?>
                    <div class="param-sareta">
                        <div class="param-txartela">
                            <div>Tentsioa</div>
                            <div class="param-balioa"><?php echo $azkena['tentsio_sistolikoa'] . '/' . $azkena['tentsio_diastolikoa']; ?></div>
                            <div>mmHg</div>
                        </div>
                        <div class="param-txartela">
                            <div>Pultsua</div>
                            <div class="param-balioa"><?php echo $azkena['pultsua_ppm'] ?? '-'; ?></div>
                            <div>ppm</div>
                        </div>
                        <div class="param-txartela">
                            <div>Pisua</div>
                            <div class="param-balioa"><?php echo $azkena['pisua_kg']; ?></div>
                            <div>kg</div>
                        </div>
                        <div class="param-txartela">
                            <div>Altuera</div>
                            <div class="param-balioa"><?php echo $azkena['altuera']; ?></div>
                            <div>m</div>
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


