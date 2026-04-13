<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';

if (!isset($_GET['id']) || empty($_GET['id'])) {
    header("Location: harrerako_langileak.php");
    exit;
}

$id = $_GET['id'];

// 1. Langilearen datuak lortu V_Harrera bistatik
try {
    $stmt = $pdo->prepare("SELECT * FROM V_Harrera WHERE langile_id = ?");
    $stmt->execute([$id]);
    $langilea = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$langilea) {
        header("Location: harrerako_langileak.php?error=Langilea ez da aurkitu.");
        exit;
    }
} catch (PDOException $e) {
    header("Location: harrerako_langileak.php?error=Errorea datuak eskuratzean: " . $e->getMessage());
    exit;
}

$orri_izenburua = $langilea['izena'] . " " . $langilea['abizenak'] . " - Fitxa";
$uneko_orria = "harrerako_langileak";

include_once '../php_includeak/harrera_goiburua.php';
?>

<main class="panel-nagusia">
    <a href="harrerako_langileak.php" class="atzera-botoia"><img src="../img/svg/arrow-left.svg" alt="" class="ikono-ertaina marjina-esk-5"> Langileen zerrendara itzuli</a>
    
    <div class="orri-goiburua">
        <h2><img src="../img/svg/user.svg" alt="" class="ikono-ertaina marjina-esk-10"> Langilearen Fitxa</h2>
    </div>

    <div class="fitxa-edukiontzia">
        <!-- Ezkerreko zutabea: Profila -->
        <div class="profil-txartela">
            <?php 
            $irudia_bide = htmlspecialchars($langilea['irudia'] ?? 'img/lehenetsia_harrera.png');
            if (strpos($irudia_bide, 'img/') === 0 && strpos($irudia_bide, 'img/png/') === false && strpos($irudia_bide, 'img/svg/') === false) {
                $irudia_bide = str_replace('img/', 'img/png/', $irudia_bide);
            }
            ?>
            <img src="../<?php echo $irudia_bide; ?>" alt="Profila" class="profil-irudia">
            <h3><?php echo htmlspecialchars($langilea['izena'] . ' ' . $langilea['abizenak']); ?></h3>
            <div class="espezialitatea-txapa">Harrerako Langilea</div>
            
            <hr class="banatzaile-marra">
            
            <div class="testua-ezkerrean">
                <p><strong><img src="../img/svg/user.svg" alt="" class="ikono-ertaina marjina-esk-5"> ID:</strong> #<span class="identifikadorea"><?php echo htmlspecialchars($langilea['langile_id']); ?></span></p>
                <p><strong><img src="../img/svg/mail.svg" alt="" class="ikono-ertaina marjina-esk-5"> Email:</strong> <?php echo htmlspecialchars($langilea['email'] ?? 'Ez zehaztua'); ?></p>
                <p><strong><img src="../img/svg/calendar-days.svg" alt="" class="ikono-ertaina marjina-esk-5"> Alta data:</strong> <?php echo date('Y/m/d', strtotime($langilea['sortze_data'])); ?></p>
            </div>
            
            <div class="flex-zentratuta marjina-goi-20">
                <a href="harrerako_langile_editatu.php?id=<?php echo $langilea['langile_id']; ?>" class="botoia botoi-ertza"><img src="../img/svg/pencil.svg" alt="" class="ikono-ertaina marjina-esk-5"> Editatu Datuak</a>
            </div>
        </div>

        <!-- Eskuineko zutabea: Ekintzak edo informazio gehigarria -->
        <div class="kutxa-zuria-itzala">
            <h3 class="izenburu-iluna">Kudeaketa Ekintzak</h3>
            <p class="marjina-behe-20">Harrerako langile honekin lotutako ekintza nagusiak:</p>
            
            <div class="ekintza-zerrenda">
                <a href="mezu_berria.php?hartzailea_id=<?php echo $langilea['langile_id']; ?>" class="ekintza-elementua">
                    <img src="../img/svg/send.svg" alt="" class="ikono-nagusia">
                    <div>
                        <h4>Mezua bidali</h4>
                        <p>Bidali barne mezu bat langile honi.</p>
                    </div>
                </a>
                
                <?php if($_SESSION['erabiltzaile_id'] != $langilea['langile_id']): ?>
                    <a href="harrerako_langile_ezabatu.php?id=<?php echo $langilea['langile_id']; ?>" class="ekintza-elementua ezabatu-ekintza" onclick="return confirm('Ziur zaude langile hau ezabatu nahi duzula?');">
                        <img src="../img/svg/trash-2.svg" alt="" class="ikono-nagusia">
                        <div>
                            <h4>Langilea ezabatu</h4>
                            <p>Kendu langile hau sistematik (desaktibatu).</p>
                        </div>
                    </a>
                <?php endif; ?>
            </div>
        </div>
    </div>
</main>

<style>
.ekintza-zerrenda {
    display: flex;
    flex-direction: column;
    gap: 15px;
}
.ekintza-elementua {
    display: flex;
    align-items: center;
    padding: 15px;
    background-color: #f8faff;
    border: 1px solid #e1e8f5;
    border-radius: 8px;
    text-decoration: none;
    color: inherit;
    transition: all 0.2s;
}
.ekintza-elementua:hover {
    background-color: #f0f4ff;
    border-color: #3f51b5;
    transform: translateY(-2px);
    box-shadow: 0 4px 8px rgba(0,0,0,0.05);
}
.ekintza-elementua .ikono-nagusia {
    width: 32px;
    height: 32px;
    margin-right: 20px;
    opacity: 0.7;
}
.ekintza-elementua h4 {
    margin: 0;
    color: #2c3e50;
}
.ekintza-elementua p {
    margin: 3px 0 0 0;
    font-size: 0.9em;
    color: #7f8c8d;
}
.ezabatu-ekintza:hover {
    border-color: #f44336;
    background-color: #fff5f5;
}
.ezabatu-ekintza:hover h4 {
    color: #f44336;
}
</style>

<?php include_once '../php_includeak/harrera_footer.php'; ?>
