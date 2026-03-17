<?php
session_start();
$bide_absolutua = '../';
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}
?>
<?php
require_once '../php_laguntzaileak/DB_konexioa.php';
$erabiltzaile_id = $_SESSION['erabiltzaile_id'];

// Lortu pazientearen datuak
$stmt = $pdo->prepare("SELECT * FROM V_Pazientea WHERE paziente_id = ?");
$stmt->execute([$erabiltzaile_id]);
$erabiltzaile_datuak = $stmt->fetch(PDO::FETCH_ASSOC);

// Azken neurketa lortu
$stmtNeurketa = $pdo->prepare("SELECT erregistro_data, tentsio_sistolikoa, tentsio_diastolikoa, glukosa_mg_dl FROM Neurketak WHERE paziente_id = ? ORDER BY erregistro_data DESC LIMIT 1");
$stmtNeurketa->execute([$erabiltzaile_id]);
$azkenNeurketa = $stmtNeurketa->fetch(PDO::FETCH_ASSOC);

// Hurrengo hitzordua lortu
$gaur = date('Y-m-d');
$stmtHitzordu = $pdo->prepare("
    SELECT h.data, h.hasiera_ordua, m.izena as mediku_izena, m.abizenak as mediku_abizenak 
    FROM Hitzorduak h
    JOIN Medikuak m ON h.mediku_id = m.mediku_id
    WHERE h.paziente_id = ? AND h.data >= ? AND h.egoera = 'Zain'
    ORDER BY h.data ASC, h.hasiera_ordua ASC LIMIT 1
");
$stmtHitzordu->execute([$erabiltzaile_id, $gaur]);
$hurrengoHitzordua = $stmtHitzordu->fetch(PDO::FETCH_ASSOC);

$orri_izenburua = "Hasiera - GOsasun";
$orri_izenburua = "Paziente Panela - GOsasun";
$uneko_orria = "index";
$css_pertsonalizatua = "index_pazientea.css";

include_once '../php_includeak/paziente_goiburua.php';
?>
    <main class="panel-nagusia">
        <section class="kaixo-atalak flex-zentratua-20" >
            <img src="../<?php echo htmlspecialchars($erabiltzaile_datuak['irudia'] ?? 'img/lehenetsia_pazientea.png'); ?>" alt="Zure profila" class="profil-irudia-80">
            <div>
                <h1 class="izenburu-nagusia"><?php echo $itzulpenak->erabiltzaile_panela->kaixo; ?>, <?php echo htmlspecialchars($erabiltzaile_datuak['izena']); ?>?</h1>
                <p class="azpititulu-grisa"><?php echo $itzulpenak->erabiltzaile_panela->laburpena; ?></p>
            </div>
        </section>

        <!-- Laburpen Txartelak (Dashboard) -->
        <div class="panel-sareta flex-tartea-20 marjina-behe-30">
            <!-- Azken Neurketak -->
            <div id="dash-neurketak-card" class="kutxa-zuria-itzala">
                <h3 class="izenburu-iluna"><img src="../img/line-chart.svg" alt="" class="ikono-ertaina marjina-esk-5"> <?php echo $itzulpenak->dashboard_pazientea->azken_neurketak; ?></h3>
                <?php if ($azkenNeurketa): ?>
                    <div class="sareta-bikoa">
                        <div class="informazio-taldea">
                            <label><?php echo $itzulpenak->dashboard_pazientea->tentsioa; ?></label>
                            <div class="informazio-balioa"><?php echo htmlspecialchars($azkenNeurketa['tentsio_sistolikoa'] . '/' . $azkenNeurketa['tentsio_diastolikoa']); ?></div>
                        </div>
                        <div class="informazio-taldea">
                            <label><?php echo $itzulpenak->dashboard_pazientea->glukosa; ?></label>
                            <div class="informazio-balioa"><?php echo htmlspecialchars($azkenNeurketa['glukosa_mg_dl']); ?> mg/dL</div>
                        </div>
                        <div class="informazio-taldea">
                            <label><?php echo $itzulpenak->dashboard_pazientea->pisua; ?></label>
                            <div class="informazio-balioa"><?php echo htmlspecialchars($erabiltzaile_datuak['azken_pisua'] ?? '-'); ?> kg</div>
                        </div>
                    </div>
                    <p class="testu-gris-txikia marjina-goi-15"><?php echo $itzulpenak->dashboard_pazientea->eguneratua; ?>: <?php echo date('Y/m/d', strtotime($azkenNeurketa['erregistro_data'])); ?></p>
                <?php else: ?>
                    <p class="testu-gris-etzana"><?php echo $itzulpenak->dashboard_pazientea->ez_dago_neurketarik; ?></p>
                <?php endif; ?>
                <a href="neurketak.php" id="dash-neurketak-btn" class="botoia botoi-nagusia marjina-goi-15 zabalera-osoa testua-erdian"><?php echo $itzulpenak->dashboard_pazientea->neurketa_berria; ?></a>
            </div>

            <!-- Hurrengo Hitzordua -->
            <div class="kutxa-zuria-itzala">
                <h3 class="izenburu-iluna"><img src="../img/calendar-days.svg" alt="" class="ikono-ertaina marjina-esk-5"> <?php echo $itzulpenak->dashboard_pazientea->hurrengo_hitzordua; ?></h3>
                <?php if ($hurrengoHitzordua): ?>
                    <div class="paziente-txartel-zuria marjina-behe-0 txartel-zuri-argia">
                        <div class="testua-erdian data-kutxa">
                            <div class="testu-txiki-maiuskula"><?php echo date('M', strtotime($hurrengoHitzordua['data'])); ?></div>
                            <div class="testu-handi-lodia"><?php echo date('d', strtotime($hurrengoHitzordua['data'])); ?></div>
                        </div>
                        <div class="flex-bat">
                            <h4 class="izenburu-marjina-gabea">Dr. <?php echo htmlspecialchars($hurrengoHitzordua['mediku_izena'] . ' ' . $hurrengoHitzordua['mediku_abizenak']); ?></h4>
                            <p class="ordua ordua-marjina-doitua"><img src="../img/clock.svg" alt="" class="ikono-ertaina marjina-esk-5"> <?php echo date('H:i', strtotime($hurrengoHitzordua['hasiera_ordua'])); ?></p>
                        </div>
                    </div>
                <?php else: ?>
                    <p class="testu-gris-etzana"><?php echo $itzulpenak->dashboard_pazientea->ez_hitzordurik; ?></p>
                <?php endif; ?>
                <a href="hitzorduak.php" class="botoia botoi-ertza marjina-goi-15 zabalera-osoa testua-erdian"><?php echo $itzulpenak->dashboard_pazientea->agenda_ikusi; ?></a>
            </div>
        </div>

        <h2 class="izenburu-nagusia marjina-behe-20"><img src="../img/zap.svg" alt="" class="ikono-ertaina marjina-esk-5"> <?php echo $itzulpenak->erabiltzaile_panela->ekintza_azkarrak; ?></h2>
        <section class="menu-sareta">
            <a href="datuak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/user-cog.svg" alt="Nire Datuak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_pazientea->datuak; ?></h3>
                <p><?php echo $itzulpenak->menua_pazientea->datuak_testua; ?></p>
            </a>
            <a href="neurketak.php" class="menu-txartela" id="menu-neurketak-card">
                <div class="txartel-ikonoa"><img src="../img/clipboard-pen.svg" alt="Neurketak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_pazientea->neurketak; ?></h3>
                <p><?php echo $itzulpenak->menua_pazientea->neurketak_testua; ?></p>
            </a>
            <a href="grafikak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/line-chart.svg" alt="Grafikak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_pazientea->grafikak; ?></h3>
                <p><?php echo $itzulpenak->menua_pazientea->grafikak_testua; ?></p>
            </a>
            <a href="errezetak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/pill.svg" alt="Errezetak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_pazientea->errezetak; ?></h3>
                <p><?php echo $itzulpenak->menua_pazientea->errezetak_testua; ?></p>
            </a>
            <a href="abisuak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/bell-ring.svg" alt="Abisuak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_pazientea->abisuak; ?></h3>
                <p><?php echo $itzulpenak->menua_pazientea->abisuak_testua; ?></p>
            </a>
            <a href="hitzorduak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/calendar-days.svg" alt="Hitzorduak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_pazientea->hitzorduak; ?></h3>
                <p><?php echo $itzulpenak->menua_pazientea->hitzorduak_testua; ?></p>
            </a>
            <a href="mezuak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/mail.svg" alt="Mezuak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_pazientea->mezuak; ?></h3>
                <p><?php echo $itzulpenak->menua_pazientea->mezuak_testua; ?></p>
            </a>
            <a href="ezarpenak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/settings.svg" alt="Ezarpenak" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->menua_pazientea->ezarpenak; ?></h3>
                <p><?php echo $itzulpenak->menua_pazientea->ezarpenak_testua; ?></p>
            </a>
            <a href="../php_laguntzaileak/logout.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/log-out.svg" alt="Saioa Itxi" class="ikono-handia-48"></div>
                <h3><?php echo $itzulpenak->erabiltzaile_panela->saioa_itxi; ?></h3>
                <p><?php echo $itzulpenak->erabiltzaile_panela->saioa_itxi_testua; ?></p>
            </a>

            <div class="menu-txartela kutxa-osoa">
                <div class="flex-tartea-15 marjina-behe-10">
                    <h3 class="izenburu-marjina-gabea"><div class="txartel-ikonoa ikono-inline-handia"><img src="../img/download.svg" alt="Download" class="ikono-24px-iragazkia"></div> <?php echo $itzulpenak->dashboard_pazientea->esportatu_xml; ?></h3>
                </div>
                <form id="xmlEsportazioForm" class="flex-tartea-15 flex-bukaera hutsartea-15">
                    <div class="informazio-taldea flex-bat marjina-behe-0">
                        <label for="xml_hasiera" class="testu-gris-txikia"><?php echo $itzulpenak->dashboard_pazientea->hasiera_data; ?>:</label>
                        <input type="date" id="xml_hasiera" name="hasiera_data" class="inprimaki-kontrola" required>
                    </div>
                    <div class="informazio-taldea flex-bat marjina-behe-0">
                        <label for="xml_bukaera" class="testu-gris-txikia"><?php echo $itzulpenak->dashboard_pazientea->bukaera_data; ?>:</label>
                        <input type="date" id="xml_bukaera" name="bukaera_data" class="inprimaki-kontrola" value="<?php echo date('Y-m-d'); ?>" required>
                    </div>
                    <button type="button" id="btn-esportatu-xml" class="botoia botoi-nagusia marjina-behe-0"><?php echo $itzulpenak->dashboard_pazientea->deskargatu; ?></button>
                </form>
                <div id="xml-mezua"></div>
            </div>
        </section>
    </main>

    <script>
    $(document).ready(function() {
        $('#btn-esportatu-xml').click(function() {
            const hasiera = $('#xml_hasiera').val();
            const bukaera = $('#xml_bukaera').val();
            const mezuEremua = $('#xml-mezua');
            if (!hasiera) { mezuEremua.html('<div class="alerta alerta-errorea alerta-tartea" >Aukeratu hasiera data bat gutxienez.</div>'); return; }
            mezuEremua.html('<div class="testu-gris-txikia marjina-goi-15" >XML txostena sortzen...</div>');
            
            $.ajax({
                url: '../php_laguntzaileak/xml_sortu.php', type: 'POST', dataType: 'json', 
                data: { hasiera_data: hasiera, bukaera_data: bukaera },
                success: function(response) {
                    if(response.success) {
                        mezuEremua.html('<div class="alerta alerta-arrakasta alerta-tartea" >' + response.msg + ' <a href="../' + response.url + '" target="_blank" class="esteka-arrakasta">Egin klik hemen!</a></div>');
                        const a = document.createElement('a'); a.href = '../' + response.url;
                        a.download = response.url.split('/').pop(); document.body.appendChild(a); a.click(); document.body.removeChild(a);
                    } else {
                        mezuEremua.html('<div class="alerta alerta-errorea alerta-tartea" >' + response.error + '</div>');
                    }
                },
                error: function(xhr, status, error) {
                    let msg = error; if(xhr.responseJSON && xhr.responseJSON.error) msg = xhr.responseJSON.error;
                    mezuEremua.html('<div class="alerta alerta-errorea alerta-tartea" >Errorea: ' + msg + '</div>');
                }
            });
        });
    });
    </script>

<?php
$js_gehigarria = ["paziente_menua.js"];
include_once '../php_includeak/paziente_footer.php';
?>



