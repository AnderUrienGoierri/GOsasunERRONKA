<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';

if (!isset($_GET['id']) || empty($_GET['id'])) {
    header("Location: osasun_langileak.php");
    exit;
}

$id = $_GET['id'];

// 1. Langilearen datuak lortu
$stmt = $pdo->prepare("SELECT * FROM V_Osasun_Langilea WHERE langile_id = ?");
$stmt->execute([$id]);
$langilea = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$langilea) {
    echo "Osasun langilea ez da aurkitu.";
    exit;
}

// 2. Hitzorduak lortu (etorkizunekoak eta azkenak)
$stmtH = $pdo->prepare("SELECT h.*, p.izena as p_izena, p.abizenak as p_abizenak 
                        FROM Hitzorduak h 
                        JOIN V_Pazientea p ON h.paziente_id = p.paziente_id 
                        WHERE h.osasun_langile_id = ? 
                        ORDER BY h.data DESC LIMIT 15");
$stmtH->execute([$id]);
$hitzorduak = $stmtH->fetchAll(PDO::FETCH_ASSOC);

$orri_izenburua = $langilea['izena'] . " " . $langilea['abizenak'] . " - Fitxa";
$uneko_orria = "medikuak";
$css_pertsonalizatua = "medikuak.css";

include_once '../php_includeak/harrera_goiburua.php';
?>



<main class="panel-nagusia">
    <a href="osasun_langileak.php" class="atzera-botoia"><img src="../img/svg/arrow-left.svg" alt="" class="ikono-ertaina marjina-esk-5"> Zerrendara itzuli</a>
    
    <div class="orri-goiburua">
        <h2><img src="../img/svg/stethoscope.svg" alt="" class="ikono-ertaina marjina-esk-10"> Langilearen Fitxa</h2>
        <div class="flex-taldea-10">
            <span class="egoera-etiketa <?php echo $langilea['aktibo'] ? 'egoera-alta' : 'egoera-baja'; ?>">
                <?php echo $langilea['aktibo'] ? 'Kontu Aktiboa' : 'Kontu Ez-Aktiboa'; ?>
            </span>
            <a href="hitzorduak.php?filter_langile_id=<?php echo $langilea['langile_id']; ?>" class="botoia botoi-nagusia"><img src="../img/svg/calendar-days.svg" alt="" class="ikono-ertaina-zuria marjina-esk-5"> Ikusi Agenda Osoa</a>
        </div>
    </div>

    <div class="fitxa-edukiontzia">
        <!-- Ezkerreko zutabea: Profila eta Oinarrizko Datuak -->
        <div class="profil-txartela">
            <?php 
            $irudia_bide = htmlspecialchars($langilea['irudia'] ?? 'img/lehenetsia_medikua.png');
            if (strpos($irudia_bide, 'img/') === 0 && strpos($irudia_bide, 'img/png/') === false && strpos($irudia_bide, 'img/svg/') === false) {
                $irudia_bide = str_replace('img/', 'img/png/', $irudia_bide);
            }
            ?>
            <img src="../<?php echo $irudia_bide; ?>" alt="Profila" class="profil-irudia-handia">
            <h3 class="marjina-goi-15"><?php echo htmlspecialchars($langilea['izena'] . ' ' . $langilea['abizenak']); ?></h3>
            <div class="espezialitatea-txapa marjina-behe-10"><?php echo htmlspecialchars($langilea['espezialitatea']); ?></div>
            <p class="identifikadorea">ID: #<?php echo $langilea['langile_id']; ?> | Zkia: <?php echo htmlspecialchars($langilea['elkargokide_zenbakia']); ?></p>
            
            <hr class="banatzaile-marra">
            
            <div class="testua-ezkerrean">
                <p class="betegarria-15"><img src="../img/svg/mail.svg" alt="" class="ikono-ertaina marjina-esk-10"><strong>Email:</strong> <br><span class="testu-normala marjina-ezk-30"><?php echo htmlspecialchars($langilea['email']); ?></span></p>
                <p class="betegarria-15"><img src="../img/svg/phone.svg" alt="" class="ikono-ertaina marjina-esk-10"><strong>Telefonoa:</strong> <br><span class="testu-normala marjina-ezk-30"><?php echo htmlspecialchars($langilea['telefonoa'] ?? 'Ez zehaztua'); ?></span></p>
            </div>
            
            <a href="langile_editatu.php?id=<?php echo $langilea['langile_id']; ?>" class="botoia botoi-ertza marjina-goi-zabalera"><img src="../img/svg/pencil.svg" alt="" class="ikono-ertaina marjina-esk-5"> Editatu Datuak</a>
        </div>

        <!-- Eskuineko zutabea: Info Profesionala eta Hitzorduak -->
        <div>
            <!-- Datu Profesionalak -->
            <div class="kutxa-zuria marjina-behe-30">
                <h3 class="izenburu-urdina"><img src="../img/svg/clipboard-pen.svg" alt="" class="ikono-ertaina marjina-esk-10"> Informazio Profesionala</h3>
                <div class="param-sareta">
                    <div class="param-txartela">
                        <div class="testu-gris-iluna">Kontsulta Gela</div>
                        <div class="param-balioa"><?php echo htmlspecialchars($langilea['kontsulta'] ?? '-'); ?></div>
                        <div class="testu-gris-txikia">Solairua / Gela</div>
                    </div>
                    <div class="param-txartela">
                        <div class="testu-gris-iluna">Lanaldia</div>
                        <div class="param-balioa"><?php echo htmlspecialchars($langilea['lanaldia']); ?></div>
                        <div class="testu-gris-txikia">Mota</div>
                    </div>
                    <div class="param-txartela">
                        <div class="testu-gris-iluna">Jaiotze Data</div>
                        <div class="param-balioa"><?php echo date('Y/m/d', strtotime($langilea['jaiotze_data'])); ?></div>
                        <div class="testu-gris-txikia"><?php echo floor((time() - strtotime($langilea['jaiotze_data'])) / 31556926); ?> urte</div>
                    </div>
                    <div class="param-txartela">
                        <div class="testu-gris-iluna">Erabiltzailea Izandakoan</div>
                        <div class="param-balioa"><?php echo date('Y/m/d', strtotime($langilea['sortze_data'])); ?></div>
                        <div class="testu-gris-txikia">Alta data</div>
                    </div>
                </div>
            </div>

            <!-- Hitzorduen historia -->
            <div class="kutxa-zuria-itzala">
                <h3 class="izenburu-iluna"><img src="../img/svg/calendar-days.svg" alt="" class="ikono-ertaina marjina-esk-10"> Azken eta Datozen Hitzorduak</h3>
                
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
                                    <span class="testu-gris-txikia"><?php echo date('H:i', strtotime($h['hasiera_ordua'])) . ' - ' . date('H:i', strtotime($h['bukaera_ordua'])); ?></span>
                                </div>
                                <div class="hitzordu-xehetasunak">
                                    <h4 class="testu-normala">Paz. <?php echo htmlspecialchars($h['p_abizenak'] . ' ' . $h['p_izena']); ?></h4>
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
                        <img src="../img/svg/calendar.svg" alt="" class="ikono-handia-3 marjina-behe-20">
                        <p class="testu-gris-etzana">Mediku honek ez du hitzordurik esleituta.</p>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
</main>

<?php include_once '../php_includeak/harrera_footer.php'; ?>


