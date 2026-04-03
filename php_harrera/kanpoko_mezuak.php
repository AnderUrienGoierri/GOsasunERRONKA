<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';
 
// Lortu iragazkiak
$egoera_filtrosa = $_GET['egoera'] ?? 'guztiak';
$ordena = $_GET['ordena'] ?? 'desc';
 
// SQL kontsulta eraiki
$sql = "SELECT * FROM Kontaktua_Mezuak WHERE 1=1";
$params = [];
 
if ($egoera_filtrosa === 'berriak') {
    $sql .= " AND erantzuna IS NULL";
} elseif ($egoera_filtrosa === 'erantzunda') {
    $sql .= " AND erantzuna IS NOT NULL";
}
 
$ordena_sql = ($ordena === 'asc') ? 'ASC' : 'DESC';
$sql .= " ORDER BY bidalketa_data $ordena_sql";
 
$stmt = $pdo->prepare($sql);
$stmt->execute();
$mezuak = $stmt->fetchAll(PDO::FETCH_ASSOC);
 
$orri_izenburua = "Kanpoko Mezuak - GOsasun";
$uneko_orria = "kanpoko_mezuak";
$css_pertsonalizatua = "mezuak.css";
 
include_once '../php_includeak/harrera_goiburua.php';
?>
 
    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/svg/mail.svg" alt="" class="ikono-ertaina marjina-esk-5"> Kanpoko Mezuak</h2>
                <p>Webgune publikoko kontaktua orritik jasotako mezuak.</p>
            </div>
            
            <!-- Iragazkiak eta Ordena -->
            <div class="iragazki-edukiontzia marjina-goi-10">
                <form action="" method="GET" class="flex-taldea-10 flex-wrap">
                    <div class="inprimaki-taldea marjina-behe-0">
                        <select name="egoera" class="inprimaki-kontrola zabalera-autoa" onchange="this.form.submit()">
                            <option value="guztiak" <?php echo $egoera_filtrosa === 'guztiak' ? 'selected' : ''; ?>>Guztiak</option>
                            <option value="berriak" <?php echo $egoera_filtrosa === 'berriak' ? 'selected' : ''; ?>>Berriak</option>
                            <option value="erantzunda" <?php echo $egoera_filtrosa === 'erantzunda' ? 'selected' : ''; ?>>Erantzunda</option>
                        </select>
                    </div>
                    <div class="inprimaki-taldea marjina-behe-0">
                        <select name="ordena" class="inprimaki-controla zabalera-autoa" onchange="this.form.submit()">
                            <option value="desc" <?php echo $ordena === 'desc' ? 'selected' : ''; ?>>Berrienak lehenago</option>
                            <option value="asc" <?php echo $ordena === 'asc' ? 'selected' : ''; ?>>Zaharragoak lehenago</option>
                        </select>
                    </div>
                </form>
            </div>
        </div>

        <div class="mezu-zerrenda-edukiontzia">
            <?php if (isset($_GET['ezabatua'])): ?>
                <div class="alerta alerta-arrakasta marjina-behe-15">Mezua ongi ezabatu da.</div>
            <?php endif; ?>

            <?php if (count($mezuak) > 0): ?>
                <table class="taula-modernoa">
                    <thead>
                        <tr>
                            <th>Data</th>
                            <th>Izena</th>
                            <th>Email</th>
                            <th>Egoera</th>
                            <th>Ekintzak</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($mezuak as $m): ?>
                            <tr class="<?php echo $m['irakurrita'] ? '' : 'mezu-berria'; ?>">
                                <td><?php echo date('Y/m/d H:i', strtotime($m['bidalketa_data'])); ?></td>
                                <td><?php echo htmlspecialchars($m['izena']); ?></td>
                                <td><?php echo htmlspecialchars($m['email']); ?></td>
                                <td>
                                    <?php if ($m['erantzuna']): ?>
                                        <span class="egoera-etiketa egoera-erantzunda">Erantzunda</span>
                                    <?php elseif ($m['irakurrita']): ?>
                                        <span class="egoera-etiketa egoera-irakurrita">Irakurrita</span>
                                    <?php else: ?>
                                        <span class="egoera-etiketa egoera-berria">Berria</span>
                                    <?php endif; ?>
                                </td>
                                <td>
                                    <div class="flex-taldea-5">
                                        <a href="mezu_xehetasuna.php?id=<?php echo $m['id']; ?>&mota=kanpoko" class="botoi-ikonoa-urdina" title="Ikusi / Erantzun">
                                            <img src="../img/svg/eye.svg" alt="Ikusi" class="ikono-18px">
                                        </a>
                                        
                                        <?php if ($m['irakurrita'] || $m['erantzuna']): ?>
                                            <form action="../php_laguntzaileak/mezuak_kudeatu.php" method="POST" style="display:inline;" onsubmit="return confirm('Ziur zaude mezua ezabatu nahi duzula?')">
                                                <input type="hidden" name="ekintza" value="ezabatu">
                                                <input type="hidden" name="id" value="<?php echo $m['id']; ?>">
                                                <input type="hidden" name="mota" value="kanpoko">
                                                <button type="submit" class="botoi-ezabatu-ikonoa" title="Ezabatu">
                                                    <img src="../img/svg/trash-2.svg" alt="Ezabatu" class="ikono-18px">
                                                </button>
                                            </form>
                                        <?php endif; ?>
                                    </div>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            <?php else: ?>
                <div class="egoera-hutsa">
                    <div class="ikono-hutsa"><img src="../img/svg/mailbox.svg" alt="" class="ikono-3rem-gardena"></div>
                    <h3>Ez dago mezurik</h3>
                    <p>Mementoz ez da kanpoko mezurik jaso.</p>
                </div>
            <?php endif; ?>
        </div>
    </main>

<?php include_once '../php_includeak/harrera_footer.php';
?>


