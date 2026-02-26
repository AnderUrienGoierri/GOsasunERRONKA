<?php
$base_path = '../';
session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$paziente_id = $_SESSION['erabiltzaile_id'];

// Lortu pazienteari agindutako errezeta guztiak
$sql = "SELECT e.*, m.izena, m.abizenak 
        FROM Errezetak e
        JOIN Medikuak m ON e.mediku_id = m.mediku_id
        WHERE e.paziente_id = :pid 
        ORDER BY e.igorpen_data DESC, e.errezeta_id DESC";
$stmtErr = $pdo->prepare($sql);
$stmtErr->execute(['pid' => $paziente_id]);
$errezetak = $stmtErr->fetchAll(PDO::FETCH_ASSOC);

$page_title = "Nire Errezetak - GOsasun";
$current_page = "errezetak";
$custom_css = "pazientea_errezetak.css";

include_once '../php_includeak/paziente_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2>💊 Nire Errezetak eta Tratamenduak</h2>
            <p class="azpititulu-grisa">Hemen dauzkazu zure osasun-profesionalek esleitutako tratamendu guztiak.</p>
        </div>

        <div class="errezetak-edukiontzia marjina-goi-30">
            <?php if (count($errezetak) > 0): ?>
                <?php foreach ($errezetak as $e): ?>
                    <?php 
                        $gaurH = strtotime(date('Y-m-d'));
                        $iraungitzeaH = $e['iraungitze_data'] ? strtotime($e['iraungitze_data']) : null;
                        
                        if ($e['aktibo'] == 0) {
                            $egoeraKoba = 'baliogabetuta';
                            $egoeraTestua = 'Baliogabetuta';
                        } elseif ($iraungitzeaH && $iraungitzeaH < $gaurH) {
                            $egoeraKoba = 'iraungita';
                            $egoeraTestua = 'Iraungita';
                        } else {
                            $egoeraKoba = 'aktiboa';
                            $egoeraTestua = 'Aktiboa';
                        }
                    ?>
                    <div class="errezeta-txartela">
                        <div class="data-blokea">
                            <div class="hilabetea"><?php echo date('M', strtotime($e['igorpen_data'])); ?></div>
                            <div class="eguna"><?php echo date('d', strtotime($e['igorpen_data'])); ?></div>
                            <div class="urtea"><?php echo date('Y', strtotime($e['igorpen_data'])); ?></div>
                        </div>
                        <div class="errezeta-xehetasunak">
                            <h4>🩺 <?php echo htmlspecialchars($e['diagnostiko_laburra']); ?></h4>
                            <p class="medikua">Ematen duena: Dr. <?php echo htmlspecialchars($e['izena'] . ' ' . $e['abizenak']); ?></p>
                            <?php if ($e['iraungitze_data']): ?>
                                <p class="iraungitzea">Noiz arte: <?php echo date('Y/m/d', strtotime($e['iraungitze_data'])); ?></p>
                            <?php else: ?>
                                <p class="iraungitzea">Koadro Kronikoa (Luzaroan)</p>
                            <?php endif; ?>
                        </div>
                        <div class="errezeta-egoera">
                            <span class="egoera-txapa <?php echo $egoeraKoba; ?>">
                                <?php echo $egoeraTestua; ?>
                            </span>
                        </div>
                    </div>
                <?php endforeach; ?>
            <?php else: ?>
                <div class="egoera-hutsa">
                    <div class="ikono-hutsa">📝</div>
                    <h3>Ez daukazu errezetarik</h3>
                    <p>Une honetan ez daukazu ez errezetarik ez tratamendu aktiborik erregistratuta.</p>
                </div>
            <?php endif; ?>
        </div>
    </main>

<?php
$extra_js = [];
include_once '../php_includeak/paziente_footer.php';
?>


