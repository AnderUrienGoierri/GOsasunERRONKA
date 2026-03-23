<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';

if (!isset($_GET['id']) || empty($_GET['id'])) {
    header("Location: medikuak.php");
    exit;
}

$id = $_GET['id'];

// 1. Medikuaren datuak lortu
$stmt = $pdo->prepare("SELECT * FROM V_Medikua WHERE mediku_id = ?");
$stmt->execute([$id]);
$medikua = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$medikua) {
    echo "Medikua ez da aurkitu.";
    exit;
}

// 2. Hitzorduak lortu (etorkizunekoak eta azkenak)
$stmtH = $pdo->prepare("SELECT h.*, p.izena as p_izena, p.abizenak as p_abizenak 
                        FROM Hitzorduak h 
                        JOIN Pazienteak p ON h.paziente_id = p.paziente_id 
                        WHERE h.mediku_id = ? 
                        ORDER BY h.data DESC LIMIT 15");
$stmtH->execute([$id]);
$hitzorduak = $stmtH->fetchAll(PDO::FETCH_ASSOC);

$orri_izenburua = $medikua['izena'] . " " . $medikua['abizenak'] . " - Fitxa";
$uneko_orria = "medikuak";
$css_pertsonalizatua = "medikuak.css";

include_once '../php_includeak/harrera_goiburua.php';
?>



<main class="panel-nagusia">
    <a href="medikuak.php" class="atzera-botoia"><img src="../img/svg/arrow-left.svg" alt="" class="ikono-ertaina marjina-esk-5"> Medikuen zerrendara itzuli</a>
    
    <div class="orri-goiburua">
        <h2><img src="../img/svg/stethoscope.svg" alt="" class="ikono-ertaina marjina-esk-10"> Medikuaren Fitxa</h2>
        <a href="hitzorduak.php?filter_mediku_id=<?php echo $medikua['mediku_id']; ?>" class="botoia botoi-nagusia"><img src="../img/svg/calendar-days.svg" alt="" class="ikono-ertaina-zuria marjina-esk-5"> Ikusi Agenda Osoa</a>
    </div>

    <div class="fitxa-edukiontzia">
        <!-- Ezkerreko zutabea: Datu profesionalak -->
        <div class="profil-txartela">
            <?php 
            $irudia_bide = htmlspecialchars($medikua['irudia'] ?? 'img/lehenetsia_medikua.png');
            if (strpos($irudia_bide, 'img/') === 0 && strpos($irudia_bide, 'img/png/') === false && strpos($irudia_bide, 'img/svg/') === false) {
                $irudia_bide = str_replace('img/', 'img/png/', $irudia_bide);
            }
            ?>
            <img src="../<?php echo $irudia_bide; ?>" alt="Profila" class="profil-irudia">
            <h3><?php echo htmlspecialchars($medikua['izena'] . ' ' . $medikua['abizenak']); ?></h3>
            <div class="espezialitatea-txapa"><?php echo htmlspecialchars($medikua['espezialitatea']); ?></div>
            
            <hr class="banatzaile-marra">
            
            <div class="testua-ezkerrean">
                <p><strong><img src="../img/svg/stethoscope.svg" alt="" class="ikono-ertaina marjina-esk-5"> Elkargokide Zkia:</strong> <span class="identifikadorea"><?php echo htmlspecialchars($medikua['elkargokide_zenbakia']); ?></span></p>
                <p><strong><img src="../img/svg/mail.svg" alt="" class="ikono-ertaina marjina-esk-5"> Email:</strong> <?php echo htmlspecialchars($medikua['email'] ?? 'Ez zehaztua'); ?></p>
            </div>
            
            <a href="mediku_editatu.php?id=<?php echo $medikua['mediku_id']; ?>" class="botoia botoi-ertza marjina-goi-zabalera"><img src="../img/svg/pencil.svg" alt="" class="ikono-ertaina marjina-esk-5"> Editatu Datuak</a>
        </div>

        <!-- Eskuineko zutabea: Hitzorduak -->
        <div>
            <!-- Hitzorduen historia -->
            <div class="kutxa-zuria-itzala">
                <h3 class="izenburu-iluna">Azken eta Datozen Hitzorduak</h3>
                
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
                                    <span class="testu-gris-txikia"><?php echo date('H:i', strtotime($h['hasiera_ordua'])) . ' - ' . date('H:i', strtotime($h['bukaera_ordua'])); ?></span>
                                </div>
                                <div class="hitzordu-xehetasunak">
                                    <h4 class="testu-normala">Paz. <?php echo htmlspecialchars($h['p_abizenak'] . ' ' . $h['p_izena']); ?></h4>
                                    <p class="arrazoia"><?php echo htmlspecialchars($h['arrazoia']); ?></p>
                                </div>
                                <div class="hitzordu-egoera">
                                    <span class="egoera-txapa <?php echo $class; ?>"><?php echo htmlspecialchars($h['egoera']); ?></span>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                <?php else: ?>
                    <p class="testu-gris-etzana">Mediku honek ez du hitzordurik esleituta.</p>
                <?php endif; ?>
            </div>
        </div>
    </div>
</main>

<?php include_once '../php_includeak/harrera_footer.php'; ?>


