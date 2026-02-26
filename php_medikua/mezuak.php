<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Medikua') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
$erabiltzaile_id = $_SESSION['erabiltzaile_id'];

// Lortu jasotako mezuak
$stmt_jasotakoak = $pdo->prepare("
    SELECT m.*, 
           CASE 
               WHEN r.izena = 'Pazientea' THEN CONCAT(p.izena, ' ', p.abizenak)
               WHEN r.izena = 'Harrera' THEN CONCAT('Harrera: ', hl.izena, ' ', hl.abizenak)
               ELSE e.email
           END as bidaltzaile_izena
    FROM Mezuak m
    JOIN Erabiltzaileak e ON m.bidaltzaile_id = e.erabiltzaile_id
    JOIN Rolak r ON e.rol_id = r.rol_id
    LEFT JOIN Pazienteak p ON e.erabiltzaile_id = p.paziente_id
    LEFT JOIN Harrerako_Langileak hl ON e.erabiltzaile_id = hl.langile_id
    WHERE m.hartzaile_id = ?
    ORDER BY m.bidalketa_data DESC
");
$stmt_jasotakoak->execute([$erabiltzaile_id]);
$jasotako_mezuak = $stmt_jasotakoak->fetchAll(PDO::FETCH_ASSOC);

// Lortu bidalitako mezuak
$stmt_bidalitakoak = $pdo->prepare("
    SELECT m.*, 
           CASE 
               WHEN r.izena = 'Pazientea' THEN CONCAT(p.izena, ' ', p.abizenak)
               WHEN r.izena = 'Harrera' THEN CONCAT('Harrera: ', hl.izena, ' ', hl.abizenak)
               ELSE e.email
           END as hartzaile_izena
    FROM Mezuak m
    JOIN Erabiltzaileak e ON m.hartzaile_id = e.erabiltzaile_id
    JOIN Rolak r ON e.rol_id = r.rol_id
    LEFT JOIN Pazienteak p ON e.erabiltzaile_id = p.paziente_id
    LEFT JOIN Harrerako_Langileak hl ON e.erabiltzaile_id = hl.langile_id
    WHERE m.bidaltzaile_id = ?
    ORDER BY m.bidalketa_data DESC
");
$stmt_bidalitakoak->execute([$erabiltzaile_id]);
$bidalitako_mezuak = $stmt_bidalitakoak->fetchAll(PDO::FETCH_ASSOC);

$orri_izenburua = "Mezuak - GOsasun";
$uneko_orria = "mezuak";
include_once '../php_includeak/mediku_goiburua.php';
?>

<main class="panel-nagusia">
    <div class="orri-goiburua flex-tartea-15 marjina-behe-20">
        <div>
            <h2 class="izenburu-nagusia"><img src="../img/mail.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> Nire Mezuak</h2>
            <p class="azpititulu-grisa">Pazienteekin eta harrerako langileekin komunikazioa.</p>
        </div>
        <a href="mezu_berria.php" class="botoia botoi-nagusia">+ Mezu Berria</a>
    </div>

    <div class="fitxa-edukiontzia marjina-behe-20">
        <button class="fitxa-botoia aktiboa" onclick="fitxaAldatu('jasotakoak')">📩 Jasotakoak</button>
        <button class="fitxa-botoia" onclick="fitxaAldatu('bidalitakoak')">📤 Bidalitakoak</button>
    </div>

    <div id="jasotakoak" class="fitxa-edukia aktiboa">
        <?php if (count($jasotako_mezuak) > 0): ?>
            <table class="taula-modernoa">
                <thead>
                    <tr>
                        <th>Data</th>
                        <th>Nork</th>
                        <th>Gaia</th>
                        <th>Egoera</th>
                        <th>Ekintzak</th>
                    </tr>
                </thead>
                <taula_gorputza>
                    <?php foreach ($jasotako_mezuak as $m): ?>
                        <tr class="<?php echo $m['irakurrita'] ? '' : 'mezu-berria'; ?>">
                            <td><?php echo date('Y/m/d H:i', strtotime($m['bidalketa_data'])); ?></td>
                            <td><?php echo htmlspecialchars($m['bidaltzaile_izena']); ?></td>
                            <td><strong><?php echo htmlspecialchars($m['gaia']); ?></strong></td>
                            <td>
                                <?php if ($m['irakurrita']): ?>
                                    <span class="egoera-etiketa egoera-irakurrita">Irakurrita</span>
                                <?php else: ?>
                                    <span class="egoera-etiketa egoera-berria">Berria</span>
                                <?php endif; ?>
                            </td>
                            <td>
                                <a href="mezu_xehetasuna.php?id=<?php echo $m['mezu_id']; ?>" class="botoia botoi-informazioa botoi-txikia">Irakurri</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </taula_gorputza>
            </table>
        <?php else: ?>
            <div class="egoera-hutsa">
                <div class="ikono-hutsa">📭</div>
                <h3>Ez dago mezurik</h3>
                <p>Ez duzu mezurik jaso oraindik.</p>
            </div>
        <?php endif; ?>
    </div>

    <div id="bidalitakoak" class="fitxa-edukia">
        <?php if (count($bidalitako_mezuak) > 0): ?>
            <table class="taula-modernoa">
                <thead>
                    <tr>
                        <th>Data</th>
                        <th>Nori</th>
                        <th>Gaia</th>
                        <th>Ekintzak</th>
                    </tr>
                </thead>
                <taula_gorputza>
                    <?php foreach ($bidalitako_mezuak as $m): ?>
                        <tr>
                            <td><?php echo date('Y/m/d H:i', strtotime($m['bidalketa_data'])); ?></td>
                            <td><?php echo htmlspecialchars($m['hartzaile_izena']); ?></td>
                            <td><?php echo htmlspecialchars($m['gaia']); ?></td>
                            <td>
                                <a href="mezu_xehetasuna.php?id=<?php echo $m['mezu_id']; ?>" class="botoia botoi-informazioa botoi-txikia">Ikusi</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </taula_gorputza>
            </table>
        <?php else: ?>
            <div class="egoera-hutsa">
                <div class="ikono-hutsa">📤</div>
                <h3>Ez dago bidalitako mezurik</h3>
                <p>Ez duzu mezurik bidali oraindik.</p>
            </div>
        <?php endif; ?>
    </div>
</main>

<style>
.fitxa-edukiontzia { display: flex; gap: 10px; border-bottom: 2px solid #eee; padding-bottom: 0; }
.fitxa-botoia { background: none; border: none; padding: 10px 20px; cursor: pointer; font-weight: 600; color: #666; border-bottom: 3px solid transparent; transition: all 0.3s; }
.fitxa-botoia:hover { color: var(--primary-color); }
.fitxa-botoia.aktiboa { color: var(--primary-color); border-bottom-color: var(--primary-color); }
.fitxa-edukia { display: none; }
.fitxa-edukia.aktiboa { display: block; }
.mezu-berria { background-color: rgba(67, 97, 238, 0.05); }
.egoera-etiketa.egoera-berria { background-color: #4361ee; color: white; }
.egoera-etiketa.egoera-irakurrita { background-color: #e9ecef; color: #495057; }
</style>

<script>
function fitxaAldatu(id) {
    document.querySelectorAll('.fitxa-edukia').forEach(f => f.classList.remove('aktiboa'));
    document.querySelectorAll('.fitxa-botoia').forEach(b => b.classList.remove('aktiboa'));
    document.getElementById(id).classList.add('aktiboa');
    event.currentTarget.classList.add('aktiboa');
}
</script>

<?php include_once '../php_includeak/mediku_footer.php'; ?>


