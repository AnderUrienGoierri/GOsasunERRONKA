<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Medikua') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$mediku_id = $_SESSION['erabiltzaile_id'];

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
        $stm_eguneratu = $pdo->prepare("UPDATE Pazienteak SET egoera_klinikoa = ? WHERE paziente_id = ?");
        $stm_eguneratu->execute([$berria, $paziente_id]);
        $msg_status = "Egoera klinikoa harrerako langileentzat eguneratu da: " . $berria;
    }
}

// Ziurtatu medikuak paziente honetarako sarbidea duela
$stm_egiaztatu = $pdo->prepare("SELECT 1 FROM Mediku_Paziente WHERE mediku_id = ? AND paziente_id = ?");
$stm_egiaztatu->execute([$mediku_id, $paziente_id]);
if (!$stm_egiaztatu->fetch()) {
    die("Ez duzu baimenik paziente honen datuak ikusteko.");
}

// Pazientearen datu orokorrak
$stmt = $pdo->prepare("SELECT * FROM V_Pazientea WHERE paziente_id = ?");
$stmt->execute([$paziente_id]);
$pazientea = $stmt->fetch(PDO::FETCH_ASSOC);

// Azken neurketak
$stmtNeurketak = $pdo->prepare("SELECT * FROM Neurketak WHERE paziente_id = ? ORDER BY data DESC, ordua DESC LIMIT 10");
$stmtNeurketak->execute([$paziente_id]);
$neurketak = $stmtNeurketak->fetchAll(PDO::FETCH_ASSOC);

?>
<?php $orri_izenburua = "Paziente Fitxa - " . htmlspecialchars($pazientea['izena'] . ' ' . $pazientea['abizenak']);
$uneko_orria = "pazienteak";
$css_pertsonalizatua = "pazienteak.css";

include_once '../php_includeak/mediku_goiburua.php';
?>

    

    <main class="panel-nagusia">
        <a href="pazienteak.php" class="atzera-esteka">← Itzuli zerrendara</a>
        
        <div class="orri-goiburua">
            <h2>Pazientearen Fitxa Klinikoa</h2>
            <p>Pazientearen informazio pertsonala eta azken neurketak.</p>
        </div>

        <?php if ($msg_status): ?>
            <div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($msg_status); ?></div>
        <?php endif; ?>

        <section class="egoera-kudeaketa">
            <h4>🏥 Egoera Klinikoa (Harrera)</h4>
            <p>Egungo egoera: <span class="egoera-balioa"><?php echo htmlspecialchars($pazientea['egoera_klinikoa'] ?? 'Alta'); ?></span></p>
            <form method="POST" class="flex-goi-15">
                <button type="submit" name="berria_egoera" value="Alta" class="botoi-egoera botoi-alta">Alta Eman</button>
                <button type="submit" name="berria_egoera" value="Baja" class="botoi-egoera botoi-baja">Baja Eman</button>
            </form>
        </section>

        <div class="profil-edukiontzia">
            <div class="paziente-txartela paziente-txartel-zuria" >
            <div class="argazki-inguratzailea">
                <img src="../<?php echo htmlspecialchars($pazientea['irudia'] ?? 'img/lehenetsia_pazientea.png'); ?>" 
                     alt="Pazientea" 
                     class="paziente-irudi-handia">
            </div>
            <div class="datu-orokorrak flex-bat" >
                <h3 class="izenburu-urdina">
                    <?php echo htmlspecialchars($pazientea['abizenak'] . ", " . $pazientea['izena']); ?>
                </h3>
                <div class="datu-lerroa"><strong>NAN:</strong> <?php echo htmlspecialchars($pazientea['nan']); ?></div>
                <div class="datu-lerroa"><strong>Jaiotze Data:</strong> <?php echo $pazientea['jaiotze_data']; ?></div>
                <div class="datu-lerroa"><strong>E-posta:</strong> <?php echo htmlspecialchars($pazientea['email']); ?></div>
                <div class="datu-lerroa"><strong>Telefonoa:</strong> <?php echo htmlspecialchars($pazientea['telefonoa']); ?></div>
                <div class="datu-lerroa"><strong>Odol Taldea:</strong> <span class="etiketa-odola"><?php echo $pazientea['odol_taldea']; ?></span></div>
                <div class="datu-lerroa"><strong>Egoera Klinikoa:</strong> 
                    <span class="egoera-burbuila <?php echo ($pazientea['egoera_klinikoa'] == 'Alta' ? 'egoera-alta' : 'egoera-baja'); ?>">
                        <?php echo $pazientea['egoera_klinikoa']; ?>
                    </span>
                </div>
            </div>
        </div>

            <div class="txartel-klinikoa">
                <h3>🏥 Datu Klinikoak</h3>
                <div class="estatistika-klinikoak">
                    <div class="estatistika-kutxa">
                        <span class="estatistika-ikonoa">🩸</span>
                        <div class="estatistika-xehetasunak">
                            <span class="estatistika-etiketa">Odol Taldea</span>
                            <span class="estatistika-balioa"><?php echo htmlspecialchars($pazientea['odol_taldea'] ?? 'Ezezaguna'); ?></span>
                        </div>
                    </div>
                    <div class="estatistika-kutxa">
                        <span class="estatistika-ikonoa">📏</span>
                        <div class="estatistika-xehetasunak">
                            <span class="estatistika-etiketa">Altuera</span>
                            <span class="estatistika-balioa"><?php echo htmlspecialchars($pazientea['azken_altuera'] ?? '-'); ?> m</span>
                        </div>
                    </div>
                    <div class="estatistika-kutxa">
                        <span class="estatistika-ikonoa">⚖️</span>
                        <div class="estatistika-xehetasunak">
                            <span class="estatistika-etiketa">Pisua</span>
                            <span class="estatistika-balioa"><?php echo htmlspecialchars($pazientea['azken_pisua'] ?? '-'); ?> kg</span>
                        </div>
                    </div>
                </div>

                <h4 class="marjina-goi-30">Azken Neurketak</h4>
                <?php if (count($neurketak) > 0): ?>
                    <div class="korritze-horizontala">
                        <table class="neurketa-taula">
                            <thead>
                                <tr>
                                    <th>Data</th>
                                    <th>Glukosa</th>
                                    <th>Tentsioa</th>
                                    <th>Pisua</th>
                                    <th>Oharrak</th>
                                </tr>
                            </thead>
                            <taula_gorputza>
                                <?php foreach ($neurketak as $n): ?>
                                    <tr>
                                        <td><?php echo date('Y/m/d H:i', strtotime($n['data'] . ' ' . $n['ordua'])); ?></td>
                                        <td><?php echo $n['glukosa_mg_dl']; ?> mg/dL</td>
                                        <td><?php echo $n['tentsio_sistolikoa'] . '/' . $n['tentsio_diastolikoa']; ?></td>
                                        <td><?php echo $n['pisua_kg']; ?> kg</td>
                                        <td class="testu-gris-iluna"><?php echo htmlspecialchars($n['oharrak'] ?? '-'); ?></td>
                                    </tr>
                                <?php endforeach; ?>
                            </taula_gorputza>
                        </table>
                    </div>
                <?php else: ?>
                    <p class="zerrenda-hutsa">Ez dago neurketarik erregistratuta.</p>
                <?php endif; ?>
            </div>
        </div>
    </main>

<?php include_once '../php_includeak/mediku_footer.php';
?>


