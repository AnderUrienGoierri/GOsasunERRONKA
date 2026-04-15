<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Osasun Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$osasun_langile_id = $_SESSION['erabiltzaile_id'];
$mezua = "";
$errorea = "";

// Logika hau dokumentua_igo.php orrira eraman da.


// 1. Lortu esleitutako pazienteen zerrenda
$stmtP = $pdo->prepare("SELECT paziente_id AS id, izena, abizenak, nan
                        FROM V_Langile_Pazienteak
                        WHERE langile_id = ?
                        ORDER BY abizenak ASC");
$stmtP->execute([$osasun_langile_id]);
$pazienteak = $stmtP->fetchAll(PDO::FETCH_ASSOC);

// 2. Aukeratutako pazientearen jarraipenak lortu (baldin badago)
$paziente_id_aukera = $_GET['paziente_id'] ?? null;
$jarraipenak = [];
$paziente_izena = "";

if ($paziente_id_aukera) {
    // Ziurtatu medikuak sarbidea duela
    $stm_egiaztatu = $pdo->prepare("SELECT 1 FROM V_Langile_Pazienteak WHERE langile_id = ? AND paziente_id = ?");
    $stm_egiaztatu->execute([$osasun_langile_id, $paziente_id_aukera]);

    if ($stm_egiaztatu->fetch()) {
        $h_data = $_GET['h_data'] ?? null;
        $a_data = $_GET['a_data'] ?? null;

        $sql = "
            SELECT j.*,
                    (SELECT COUNT(*) FROM dokumentuak d WHERE d.jarraipena_id = j.id) as dokumentu_kopurua,
                    (SELECT d.bidea_zerbitzarian FROM dokumentuak d WHERE d.jarraipena_id = j.id ORDER BY d.igotze_data DESC LIMIT 1) as azken_dokumentu_bidea
            FROM jarraipenak j
            WHERE j.paziente_id = ?";

        $params = [$paziente_id_aukera];

        if ($h_data) {
            $sql .= " AND j.erregistro_data >= ?";
            $params[] = str_replace('T', ' ', $h_data) . ':00';
        }
        if ($a_data) {
            $sql .= " AND j.erregistro_data <= ?";
            $params[] = str_replace('T', ' ', $a_data) . ':59';
        }

        $sql .= " ORDER BY j.erregistro_data DESC";

        // --- PAGINAZIOA ---
        $orria = isset($_GET['orria']) ? (int)$_GET['orria'] : 1;
        if ($orria < 1) $orria = 1;
        $limitea = 10;
        $desplazamendua = ($orria - 1) * $limitea;

        // Kontatu guztira (filtroak aplikatuta)
        $sqlCount = "SELECT COUNT(*) FROM jarraipenak j WHERE j.paziente_id = ?";
        $paramsCount = [$paziente_id_aukera];
        if ($h_data) { $sqlCount .= " AND j.erregistro_data >= ?"; $paramsCount[] = str_replace('T', ' ', $h_data) . ':00'; }
        if ($a_data) { $sqlCount .= " AND j.erregistro_data <= ?"; $paramsCount[] = str_replace('T', ' ', $a_data) . ':59'; }

        $stmtCount = $pdo->prepare($sqlCount);
        $stmtCount->execute($paramsCount);
        $guztira = $stmtCount->fetchColumn();
        $orri_kopurua = ceil($guztira / $limitea);

        // Gehitu LIMIT eta OFFSET
        $sqlPaginated = $sql . " LIMIT $limitea OFFSET $desplazamendua";

        $stmtN = $pdo->prepare($sqlPaginated);
        $stmtN->execute($params);
        $jarraipenak = $stmtN->fetchAll(PDO::FETCH_ASSOC);

        // Lortu pazientearen izena izenbururako
        $stmtI = $pdo->prepare("SELECT izena, abizenak FROM V_Pazientea WHERE paziente_id = ?");
        $stmtI->execute([$paziente_id_aukera]);
        $pInfo = $stmtI->fetch();
        $paziente_izena = $pInfo['izena'] . " " . $pInfo['abizenak'];

        // URL parametroak eraiki paginazio esteketarako
        $base_params = $_GET;
        unset($base_params['orria']);
        $url_oinarria = "?" . http_build_query($base_params);
    }
}

$orri_izenburua = "Pazienteen jarraipenak - GOsasun";
$uneko_orria = "jarraipenak";
$css_pertsonalizatua = "osasun_langile_errezetak.css";

include_once '../php_orri_includeak/osasun_langile_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/svg/clipboard-pen.svg" alt="" class="ikono-ertaina     tarte-eskubia"> Jarraipenen Historiala</h2>
                <p>Hautatu paziente bat bere bizi-seinaleen eta sintomen historiala ikusteko. Jarraipenak eta neurketak kudeatzeko tresna nagusia.</p>
            </div>
        </div>

        <?php if ($mezua): ?><div class="alerta alerta-arrakasta"><?php echo $mezua; ?></div><?php endif; ?>
        <?php if ($errorea): ?><div class="alerta alerta-errorea"><?php echo $errorea; ?></div><?php endif; ?>

        <div class="txartel-atala">
            <h3 class="izenburu-nabarmena tarte-behea"><img src="../img/svg/search.svg" alt="" class="ikono-ertaina tarte-eskubia"> Pazientea eta Filtroak</h3>

            <form id="pazienteAukeraForm" action="jarraipenak.php" method="GET">
                <div class="sareta-bikoa">
                    <div class="inprimaki-taldea">
                        <label for="pazienteBilatzailea" class="etiketa-lodia">Bilatu Pazientea (Izena edo NAN)</label>
                        <input type="text" id="pazienteBilatzailea" class="inprimaki-kontrola sarrera-handia" placeholder="Adib: Garcia, Ane..." list="pazienteakList">
                        <datalist id="pazienteakList">
                            <?php foreach ($pazienteak as $p): ?>
                                <option value="<?php echo htmlspecialchars($p['abizenak'] . ", " . $p['izena']); ?>" data-id="<?php echo $p['id']; ?>">
                                    <?php echo htmlspecialchars($p['nan']); ?>
                                </option>
                            <?php endforeach; ?>
                        </datalist>
                        <input type="hidden" name="paziente_id" id="paziente_id" value="<?php echo $paziente_id_aukera; ?>">
                    </div>

                    <div class="inprimaki-taldea">
                        <label class="etiketa-lodia">Data-tartea aukeratu (Hasi - Bukatu)</label>
                        <div class="talde-flex">
                            <input type="datetime-local" name="h_data" value="<?php echo $_GET['h_data'] ?? ''; ?>" class="inprimaki-kontrola" title="Hasiera data">
                            <input type="datetime-local" name="a_data" value="<?php echo $_GET['a_data'] ?? ''; ?>" class="inprimaki-kontrola" title="Amaiera data">
                        </div>
                    </div>
                </div>

                <div class="flex-bukaera tarte-goia">
                    <button type="submit" class="botoia botoi-nagusia"><img src="../img/svg/search.svg" alt="" class="ikono-txikia tarte-eskubia" style="filter: brightness(0) invert(1);"> Filtroak aplikatu</button>
                    <?php if (isset($_GET['h_data']) || isset($_GET['a_data'])): ?>
                        <a href="jarraipenak.php?paziente_id=<?php echo $paziente_id_aukera; ?>" class="botoia botoi-ertza tarte-ezkerra">Filtroa garbitu</a>
                    <?php endif; ?>
                </div>
            </form>
        </div>

        <?php if ($paziente_id_aukera): ?>
            <div class="kutxa-zuria-itzala padding-25">
                <div class="tarte-flex flex-erdia tarte-behea orri-azpiko-marra">
                    <div>
                        <h3 class="izenburu-nabarmena marjina-gabea"><?php echo htmlspecialchars($paziente_izena); ?></h3>
                        <p class="testu-gris-txikia">Pazientearen jarraipen historiko osoa</p>
                    </div>
                    <div class="talde-flex">
                        <label class="kurtsorea flex-erdia">
                            <input type="checkbox" id="ikusiEzohikoak" class="tarte-eskubia">
                            <span class="testu-arriskua-ezk-lodia">Ezohikoak soilik</span>
                        </label>
                        <a href="paziente_info.php?id=<?php echo $paziente_id_aukera; ?>" class="botoia botoi-ertza-txikia">
                            <img src="../img/svg/user.svg" alt="" class="ikono-txikia tarte-eskubia"> Ikusi Fitxa
                        </a>
                    </div>
                </div>

                <?php if (count($jarraipenak) > 0): ?>
                    <div class="korritze-horizontala">
                        <table class="jarraipen-taula">
                            <thead>
                                <tr>
                                    <th onclick="ordenatuTaula(0)" class="kurtsorea">Data <img src="../img/svg/sort.svg" alt="" class="ikono-txikia opazitatea-50"></th>
                                    <th onclick="ordenatuTaula(1)" class="kurtsorea">Ordua <img src="../img/svg/sort.svg" alt="" class="ikono-txikia opazitatea-50"></th>
                                    <th onclick="ordenatuTaula(2)" class="kurtsorea">SIS <img src="../img/svg/sort.svg" alt="" class="ikono-txikia opazitatea-50"></th>
                                    <th onclick="ordenatuTaula(3)" class="kurtsorea">DIA <img src="../img/svg/sort.svg" alt="" class="ikono-txikia opazitatea-50"></th>
                                    <th onclick="ordenatuTaula(4)" class="kurtsorea">Pultsua <img src="../img/svg/sort.svg" alt="" class="ikono-txikia opazitatea-50"></th>
                                    <th onclick="ordenatuTaula(5)" class="kurtsorea">Altuera <img src="../img/svg/sort.svg" alt="" class="ikono-txikia opazitatea-50"></th>
                                    <th onclick="ordenatuTaula(6)" class="kurtsorea">Pisua <img src="../img/svg/sort.svg" alt="" class="ikono-txikia opazitatea-50"></th>
                                    <th style="min-width: 200px;">Oharrak / Sintomak</th>
                                    <th style="min-width: 150px;">Ekintzak</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($jarraipenak as $n): ?>
                                    <tr>
                                        <td><strong><?php echo date('Y/m/d', strtotime($n['erregistro_data'])); ?></strong></td>
                                        <td><small><?php echo date('H:i', strtotime($n['erregistro_data'])); ?></small></td>
                                        <td class="zentratu"><?php echo $n['tentsio_sistolikoa'] ?: '-'; ?></td>
                                        <td class="zentratu"><?php echo $n['tentsio_diastolikoa'] ?: '-'; ?></td>
                                        <td class="testu-urdina-lodia zentratu"><?php echo $n['pultsua_ppm'] ? $n['pultsua_ppm'] . ' <small>ppm</small>' : '-'; ?></td>
                                        <td class="zentratu"><?php echo $n['altuera'] ? $n['altuera'] . ' <small>cm</small>' : '-'; ?></td>
                                        <td class="zentratu"><?php echo $n['pisua_kg'] ? $n['pisua_kg'] . ' <small>kg</small>' : '-'; ?></td>
                                        <td class="testu-gris-iluna"><?php echo htmlspecialchars($n['oharrak'] ?? '-'); ?></td>
                                        <td class="ekintza-botoiak">
                                            <!-- Editatu jarraipena -->
                                            <a href="jarraipen_editatu.php?id=<?php echo $n['id']; ?>" class="botoi-ikonoa" title="Editatu jarraipena">
                                                <img src="../img/svg/pencil.svg" alt="" class="ikono-ertaina">
                                            </a>
                                            <!-- Dokumentua gehitu -->
                                            <a href="dokumentua_igo.php?paziente_id=<?php echo $paziente_id_aukera; ?>&jarraipen_id=<?php echo $n['id']; ?>" class="botoi-ikonoa" title="Dokumentua gehitu">
                                                <img src="../img/svg/clipboard-pen.svg" alt="" class="ikono-ertaina">
                                            </a>
                                            <!-- Dokumentuak ikusi -->
                                            <a href="dokumentua_xehetasunak.php?id=<?php echo $n['id']; ?>&paziente_id=<?php echo $paziente_id_aukera; ?>" class="botoi-ikonoa <?php echo $n['dokumentu_kopurua'] == 0 ? 'opazitatea-20' : ''; ?>" 
                                                title="Dokumentuak ikusi">
                                                <img src="../img/svg/search.svg" alt="" class="ikono-ertaina">
                                            </a>

                                            <?php if ($n['dokumentu_kopurua'] > 0): ?>
                                                <!-- Deskargatu azkena -->
                                                <a href="../<?php echo htmlspecialchars($n['azken_dokumentu_bidea']); ?>" target="_blank" class="botoi-ikonoa" title="Deskargatu azkena">
                                                    <img src="../img/svg/download.svg" alt="" class="ikono-ertaina">
                                                </a>
                                            <?php endif; ?>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>

                    <!-- PAGINAZIO BOTOIAK -->
                    <?php if ($orri_kopurua > 1): ?>
                        <div class="paginazioa flex-zentratu tarte-goia-20 talde-flex">
                            <a href="<?php echo $url_oinarria; ?>&orria=<?php echo max(1, $orria - 1); ?>"
                                class="botoia botoi-ertza-txikia <?php echo ($orria <= 1) ? 'desaktibatuta' : ''; ?>">
                                <img src="../img/svg/chevron-left.svg" alt="" class="ikono-txikia"> Aurrekoak
                            </a>

                            <span class="orrialde-info">Orrialdea: <strong><?php echo $orria; ?></strong> / <?php echo $orri_kopurua; ?></span>

                            <a href="<?php echo $url_oinarria; ?>&orria=<?php echo min($orri_kopurua, $orria + 1); ?>" 
                                class="botoia botoi-ertza-txikia <?php echo ($orria >= $orri_kopurua) ? 'desaktibatuta' : ''; ?>">
                                Hurrengoak <img src="../img/svg/chevron-right.svg" alt="" class="ikono-txikia">
                            </a>
                        </div>
                    <?php endif; ?>
                <?php else: ?>
                    <div class="zentratu hutsartea-50 opazitatea-50">
                        <img src="../img/svg/inbox.svg" alt="" class="ikono-handia-48 tarte-behea">
                        <p>Ez dago neurketa erregistratuta paziente honentzat.</p>
                    </div>
                <?php endif; ?>
            </div>
        <?php else: ?>
            <div class="zentratu hutsartea-100 opazitatea-50">
                <img src="../img/svg/users.svg" alt="" class="ikono-handia-48 tarte-behea">
                <p>Hautatu paziente bat bere neurketen historia kargatzeko.</p>
            </div>
        <?php endif; ?>
    </main>



    <!-- JavaScript inclusion -->
    <script src="../js/jarraipenak.js"></script>
<?php include_once '../php_orri_includeak/osasun_footer.php'; ?>
