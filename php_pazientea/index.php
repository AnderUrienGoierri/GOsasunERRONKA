<?php
session_start();
$base_path = '../';
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
$user_data = $stmt->fetch(PDO::FETCH_ASSOC);

// Azken neurketa lortu
$stmtNeurketa = $pdo->prepare("SELECT data, tentsio_sistolikoa, tentsio_diastolikoa, glukosa_mg_dl FROM Neurketak WHERE paziente_id = ? ORDER BY data DESC, ordua DESC LIMIT 1");
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

$page_title = "Hasiera - GOsasun";
$page_title = "Paziente Panela - GOsasun";
$current_page = "index";
$custom_css = "index_pazientea.css";

include_once '../php_includeak/paziente_goiburua.php';
?>
    <main class="panel-nagusia">
        <section class="kaixo-atalak flex-zentratua-20" >
            <img src="../<?php echo htmlspecialchars($user_data['irudia'] ?? 'img/lehenetsia_pazientea.png'); ?>" alt="Zure profila" class="profil-irudia-80">
            <div>
                <h1 class="izenburu-nagusia">Zer egin nahi duzu gaur, <?php echo htmlspecialchars($user_data['izena']); ?>?</h1>
                <p class="azpititulu-grisa">Hemen zure osasunaren laburpena kontsultatu eta ekintza guztiak kudeatu ditzakezu.</p>
            </div>
        </section>

        <!-- Laburpen Txartelak (Dashboard) -->
        <div class="panel-sareta flex-tartea-20 marjina-behe-30">
            <!-- Azken Neurketak -->
            <div class="kutxa-zuria-itzala">
                <h3 class="izenburu-iluna"><img src="../img/line-chart.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> Azken Bizi-Seinaleak</h3>
                <?php if ($azkenNeurketa): ?>
                    <div class="sareta-bikoa">
                        <div class="informazio-taldea">
                            <label>Tentsioa</label>
                            <div class="informazio-balioa"><?php echo htmlspecialchars($azkenNeurketa['tentsio_sistolikoa'] . '/' . $azkenNeurketa['tentsio_diastolikoa']); ?></div>
                        </div>
                        <div class="informazio-taldea">
                            <label>Glukosa</label>
                            <div class="informazio-balioa"><?php echo htmlspecialchars($azkenNeurketa['glukosa_mg_dl']); ?> mg/dL</div>
                        </div>
                        <div class="informazio-taldea">
                            <label>Pisua</label>
                            <div class="informazio-balioa"><?php echo htmlspecialchars($user_data['azken_pisua'] ?? '-'); ?> kg</div>
                        </div>
                    </div>
                    <p class="testu-gris-txikia marjina-goi-15">Eguneratua: <?php echo date('Y/m/d', strtotime($azkenNeurketa['data'])); ?></p>
                <?php else: ?>
                    <p class="testu-gris-etzana">Ez dago neurketa erregistratutik.</p>
                <?php endif; ?>
                <a href="neurketak.php" class="botoia botoi-nagusia marjina-goi-15 zabalera-osoa testua-erdian">Neurketa Berria</a>
            </div>

            <!-- Hurrengo Hitzordua -->
            <div class="kutxa-zuria-itzala">
                <h3 class="izenburu-iluna"><img src="../img/calendar-days.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> Hurrengo Hitzordua</h3>
                <?php if ($hurrengoHitzordua): ?>
                    <div class="paziente-txartel-zuria marjina-behe-0" style="padding: 15px; background: #f8f9fa;">
                        <div class="testua-erdian" style="background: var(--primary-color); color: white; padding: 10px; border-radius: 8px; min-width: 60px;">
                            <div style="font-size: 0.8rem; text-transform: uppercase;"><?php echo date('M', strtotime($hurrengoHitzordua['data'])); ?></div>
                            <div style="font-size: 1.5rem; font-weight: bold;"><?php echo date('d', strtotime($hurrengoHitzordua['data'])); ?></div>
                        </div>
                        <div class="flex-bat">
                            <h4 style="margin: 0; color: var(--dark-text);">Dr. <?php echo htmlspecialchars($hurrengoHitzordua['mediku_izena'] . ' ' . $hurrengoHitzordua['mediku_abizenak']); ?></h4>
                            <p class="ordua" style="margin: 5px 0 0 0; color: var(--gray);"><img src="../img/clock.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> <?php echo date('H:i', strtotime($hurrengoHitzordua['hasiera_ordua'])); ?></p>
                        </div>
                    </div>
                <?php else: ?>
                    <p class="testu-gris-etzana">Ez duzu hitzordurik aurreikusita.</p>
                <?php endif; ?>
                <a href="hitzorduak.php" class="botoia botoi-ertza marjina-goi-15 zabalera-osoa testua-erdian">Agenda Ikusi</a>
            </div>
        </div>

        <h2 class="izenburu-nagusia marjina-behe-20"><img src="../img/zap.svg" alt="" style="width: 1.2em; height: 1.2em; vertical-align: middle; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); margin-right: 5px;"> Ekintza Azkarrak</h2>
        <section class="menu-sareta">
            <a href="datuak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/user-cog.svg" alt="Nire Datuak" style="width: 48px; height: 48px; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg);"></div>
                <h3>Nire Datuak</h3>
                <p>Ikusi eta eguneratu zure datuak.</p>
            </a>
            <a href="neurketak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/clipboard-pen.svg" alt="Neurketak" style="width: 48px; height: 48px; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg);"></div>
                <h3>Neurketak</h3>
                <p>Sartu neurketa eta sintoma berriak.</p>
            </a>
            <a href="grafikak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/line-chart.svg" alt="Grafikak" style="width: 48px; height: 48px; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg);"></div>
                <h3>Grafikak</h3>
                <p>Ikusi zure osasun bilakaera 2D grafikoetan.</p>
            </a>
            <a href="errezetak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/pill.svg" alt="Errezetak" style="width: 48px; height: 48px; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg);"></div>
                <h3>Errezetak</h3>
                <p>Ikusi medikuek esleitutako errezetak.</p>
            </a>
            <a href="abisuak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/bell-ring.svg" alt="Abisuak" style="width: 48px; height: 48px; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg);"></div>
                <h3>Abisuak</h3>
                <p>Ikusi zure neurketetan detektatutako oharrak.</p>
            </a>
            <a href="hitzorduak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/calendar-days.svg" alt="Hitzorduak" style="width: 48px; height: 48px; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg);"></div>
                <h3>Hitzorduak</h3>
                <p>Ikusi eta kudeatu zure mediku hitzorduak.</p>
            </a>
            <a href="mezuak.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/mail.svg" alt="Mezuak" style="width: 48px; height: 48px; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg);"></div>
                <h3>Mezuak</h3>
                <p>Komunikatu medikuekin edo harrerakoekin.</p>
            </a>
            <a href="../php_laguntzaileak/logout.php" class="menu-txartela">
                <div class="txartel-ikonoa"><img src="../img/log-out.svg" alt="Saioa Itxi" style="width: 48px; height: 48px; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg);"></div>
                <h3>Saioa Itxi</h3>
                <p>Amaitu saioa modu seguruan.</p>
            </a>

            <!-- XML Esportazioa Txartel gisa -->
            <div class="menu-txartela kutxa-osoa">
                <div class="flex-tartea-15 marjina-behe-10">
                    <h3 style="margin: 0;"><div class="txartel-ikonoa" style="display: inline-block; font-size: 1.5rem; margin-right: 10px; margin-bottom: 0;"><img src="../img/download.svg" alt="Download" style="width: 24px; height: 24px; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg); vertical-align: middle;"></div> Datuen Esportazioa (XML)</h3>
                </div>
                <form id="xmlEsportazioForm" class="flex-tartea-15 flex-bukaera" style="gap: 15px;">
                    <div class="informazio-taldea flex-bat marjina-behe-0">
                        <label for="xml_hasiera" class="testu-gris-txikia">Hasiera Data:</label>
                        <input type="date" id="xml_hasiera" name="hasiera_data" class="inprimaki-kontrola" required>
                    </div>
                    <div class="informazio-taldea flex-bat marjina-behe-0">
                        <label for="xml_bukaera" class="testu-gris-txikia">Bukaera Data:</label>
                        <input type="date" id="xml_bukaera" name="bukaera_data" class="inprimaki-kontrola" value="<?php echo date('Y-m-d'); ?>" required>
                    </div>
                    <button type="button" id="btn-esportatu-xml" class="botoia botoi-nagusia marjina-behe-0">Deskargatu</button>
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
$extra_js = ["paziente_menua.js"];
include_once '../php_includeak/paziente_footer.php';
?>



