<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Medikua') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$mediku_id = $_SESSION['erabiltzaile_id'];

// Fetch alerts for all patients assigned to this doctor
$stmt = $pdo->prepare("
    SELECT a.*, p.izena, p.abizenak 
    FROM Abisuak a
    JOIN Pazienteak p ON a.paziente_id = p.paziente_id
    JOIN Mediku_Paziente mp ON p.paziente_id = mp.paziente_id
    WHERE mp.mediku_id = ?
    ORDER BY a.data DESC
");
$stmt->execute([$mediku_id]);
$abisuak = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>
<?php $orri_izenburua = "Pazienteen Abisuak - GOsasun";
$uneko_orria = "abisuak";
$css_pertsonalizatua = "abisuak.css";

include_once '../php_includeak/mediku_goiburua.php';
?>

    

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <h2>🚨 Pazienteen Osasun Abisuak</h2>
            <p>Zure pazienteen neurketetan detektatutako anomalia guztiak.</p>
        </div>

        <?php if (count($abisuak) > 0): ?>
            <div class="korritze-horizontala">
                <table class="abisu-taula">
                    <thead>
                        <tr>
                            <th>Egoera</th>
                            <th>Data</th>
                            <th>Pazientea</th>
                            <th>Mota</th>
                            <th>Deskribapena</th>
                        </tr>
                    </thead>
                    <taula_gorputza>
                        <?php foreach ($abisuak as $a): ?>
                            <tr>
                                <td>
                                    <?php if ($a['irakurrita']): ?>
                                        <span class="irakurrita-badge">Irakurrita</span>
                                    <?php else: ?>
                                        <span class="berria-badge">BERRIA</span>
                                    <?php endif; ?>
                                </td>
                                <td class="testu-grisa-lerrobakarra"><?php echo date('Y/m/d H:i', strtotime($a['data'])); ?></td>
                                <td>
                                    <a href="paziente_info.php?id=<?php echo $a['paziente_id']; ?>" class="paziente-izena">
                                        <?php echo htmlspecialchars($a['izena'] . ' ' . $a['abizenak']); ?>
                                    </a>
                                </td>
                                <td><span class="mota-etiketa mota-<?php echo strtolower($a['mota']); ?> hondo-grisa"><?php echo htmlspecialchars($a['mota']); ?></span></td>
                                <td class="testu-iluna-444"><?php echo htmlspecialchars($a['testua']); ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </taula_gorputza>
                </table>
            </div>
        <?php else: ?>
            <div class="egoera-hutsa kutxa-zuria-hutsa" >
                <div class="ikono-handia-4">🛡️</div>
                <h3>Ez dago abisurik aktibo</h3>
                <p>Zure paziente guztien neurketak normaltasunaren barruan daude momentuz.</p>
            </div>
        <?php endif; ?>
    </main>

<?php include_once '../php_includeak/mediku_footer.php';
?>


