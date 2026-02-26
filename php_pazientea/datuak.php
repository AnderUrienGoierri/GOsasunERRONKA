<?php
$base_path = '../';
session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
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
    SELECT m.izena, m.abizenak, m.espezialitatea 
    FROM Medikuak m
    JOIN Mediku_Paziente mp ON m.mediku_id = mp.mediku_id
    WHERE mp.paziente_id = ?
");
$stmtMedikuak->execute([$paziente_id]);
$medikuak = $stmtMedikuak->fetchAll(PDO::FETCH_ASSOC);

$page_title = "Nire Datuak - GOsasun";
$current_page = "datuak";
$custom_css = "pazienteak.css";

include_once '../php_includeak/paziente_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2>👤 Nire Informazioa</h2>
            <p>Berrikusi zure datu pertsonalak eta egoera klinikoa.</p>
        </div>

        <div class="datu-sareta">
            <!-- Datu Pertsonalak -->
            <section class="datu-txartela">
                <h3>Datu Pertsonalak</h3>
                <div class="datu-eremua">
                    <span class="etiketa">Izena:</span>
                    <span class="balioa"><?php $base_path = '../';
echo htmlspecialchars($pazientea['izena'] . ' ' . $pazientea['abizenak']); ?></span>
                </div>
                <div class="datu-eremua">
                    <span class="etiketa">NAN:</span>
                    <span class="balioa"><?php $base_path = '../';
echo htmlspecialchars($pazientea['nan']); ?></span>
                </div>
                <div class="datu-eremua">
                    <span class="etiketa">Jaiotze Data:</span>
                    <span class="balioa"><?php $base_path = '../';
echo htmlspecialchars($pazientea['jaiotze_data']); ?></span>
                </div>
                <div class="datu-eremua">
                    <span class="etiketa">Email:</span>
                    <span class="balioa"><?php $base_path = '../';
echo htmlspecialchars($pazientea['email']); ?></span>
                </div>
                <div class="datu-eremua">
                    <span class="etiketa">Telefonoa:</span>
                    <span class="balioa"><?php $base_path = '../';
echo htmlspecialchars($pazientea['telefonoa'] ?? 'Zehaztu gabe'); ?></span>
                </div>
            </section>

            <!-- Egoera Klinikoa -->
            <section class="datu-txartela">
                <h3>Egoera Klinikoa</h3>
                <div class="datu-eremua">
                    <span class="etiketa">Odol Taldea:</span>
                    <span class="balioa"><?php $base_path = '../';
echo htmlspecialchars($pazientea['odol_taldea'] ?? 'Ezezaguna'); ?></span>
                </div>
                <div class="datu-eremua">
                    <span class="etiketa">Azken Altuerra:</span>
                    <span class="balioa"><?php $base_path = '../';
echo htmlspecialchars($pazientea['azken_altuera'] ?? '-'); ?> m</span>
                </div>
                <div class="datu-eremua">
                    <span class="etiketa">Azken Pisua:</span>
                    <span class="balioa"><?php $base_path = '../';
echo htmlspecialchars($pazientea['azken_pisua'] ?? '-'); ?> kg</span>
                </div>
                <div class="datu-eremua">
                    <span class="etiketa">Egoera:</span>
                    <span class="egoera-etiketa <?php $base_path = '../';
echo ($pazientea['egoera_klinikoa'] === 'Alta') ? 'egoera-alta' : 'egoera-baja'; ?>">
                        <?php $base_path = '../';
echo htmlspecialchars($pazientea['egoera_klinikoa'] ?? 'Ezezaguna'); ?>
                    </span>
                </div>
            </section>
        </div>

        <!-- Esleitutako Medikuak -->
        <section class="mediku-sekzioa">
            <h3>Nire Medikuak</h3>
            <?php $base_path = '../';
if (count($medikuak) > 0): ?>
                <div class="mediku-sareta">
                    <?php $base_path = '../';
foreach ($medikuak as $m): ?>
                        <div class="mediku-txartela">
                            <div class="mediku-info">
                                <strong>Dr. <?php $base_path = '../';
echo htmlspecialchars($m['izena'] . ' ' . $m['abizenak']); ?></strong>
                                <p><?php $base_path = '../';
echo htmlspecialchars($m['espezialitatea']); ?></p>
                            </div>
                        </div>
                    <?php $base_path = '../';
endforeach; ?>
                </div>
            <?php $base_path = '../';
else: ?>
                <p class="testu-hutsa">Ez duzu medikurik esleituta mementoz.</p>
            <?php $base_path = '../';
endif; ?>
        </section>
    </main>

<?php
$base_path = '../';
$extra_js = ["datuak.js"];
include_once '../php_includeak/paziente_footer.php';
?>


