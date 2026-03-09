<?php
$bide_absolutua = '';
$orri_izenburua = "GOsasun - Zure Osasun Ataria";
$uneko_orria = "index";

include 'php_includeak/goiburua.php';
?>

    <main class="hero-sekzioa">
            
        <div class="hero-errenkada">
            <h1><?php echo htmlspecialchars($sistema_izena_def); ?> - Zure osasuna, gure lehentasuna</h1>
            <img src="img/GOsasun_logoa.png" alt="<?php echo htmlspecialchars($sistema_izena_def); ?>" class="hero-logo-handia">
            
        </div>

       
        <div class="azpititulu-edukiontzia">
            <p class="azpititulua">Zure osasuna kudeatzeko, neurketak jarraipena egiteko eta medikuarekin konektatzeko plataforma segurua</p>
        </div>

        <!-- Aurkezpen bideoa -->
        <div class="hero-bideo-edukiontzia">
            <video class="hero-bideoa" autoplay muted loop controls poster="img/index_pazientea.png">
                <source src="mp4/GOsasun_bideoa.mp4" type="video/mp4">
                Zure brauserrak ez du bideoa onartzen.
            </video>
        </div>

        
        <div class="hero-errenkada portal-sarbideak">
            <!-- Pazientea -->
            <a href="php_hasiera/login.php" class="portal-txartela">
                <div class="portal-irudia">
                    <img src="img/index_pazientea.png" alt="Pazientea">
                </div>
                <div class="portal-info">
                    <h3>Pazienteen Txokoa</h3>
                    <p>Kontsultatu zure analitikak, hitzorduak eta jarraipen datuak modu seguruan.</p>
                    <span class="botoia botoi-nagusia">Sartu</span>
                </div>
            </a>

            <!-- Medikua -->
            <a href="php_hasiera/login.php" class="portal-txartela">
                <div class="portal-irudia">
                    <img src="img/index_medikua.png" alt="Medikua">
                </div>
                <div class="portal-info">
                    <h3>Mediku Ataria</h3>
                    <p>Kudeatu zure pazienteen hitoria, hitzorduak eta mezuak era erraz batetan.</p>
                    <span class="botoia botoi-nagusia">Sartu</span>
                </div>
            </a>

            <!-- Harrera -->
            <a href="php_hasiera/login.php" class="portal-txartela">
                <div class="portal-irudia">
                    <img src="img/index_harrera.png" alt="Harrera">
                </div>
                <div class="portal-info">
                    <h3>Harrera Zerbitzua</h3>
                    <p>Pazienteen harrera, medikuen agendak eta zentroko hitzordu guztiak kudeatu.</p>
                    <span class="botoia botoi-nagusia">Sartu</span>
                </div>
            </a>
        </div>
    </main>

    <section class="ezaugarriak-wrapper">
        <div class="ezaugarriak-container">
            <div class="ezaugarri-txartela">
                <div class="ezaugarri-ikonoa"><img src="img/line-chart.svg" alt="Neurketa Jarraipena"></div>
                <h3>Neurketa Jarraipena</h3>
                <p>Sartu zure eguneroko osasun datuak (tentsioa, pisua, glukosa...) eta ikusi bilakaera.</p>
            </div>
            <div class="ezaugarri-txartela">
                <div class="ezaugarri-ikonoa"><img src="img/calendar.svg" alt="Hitzorduak"></div>
                <h3>Hitzorduak</h3>
                <p>Ikusi zure hurrengo hitzorduak era erraz eta azkar batean.</p>
            </div>
            <div class="ezaugarri-txartela">
                <div class="ezaugarri-ikonoa"><img src="img/message-square.svg" alt="Komunikazio Zuzena"></div>
                <h3>Komunikazio Zuzena</h3>
                <p>Zure medikuarekin harremanetan jarri mezu bidez modu seguruan.</p>
            </div>
        </div>
    </section>

    <!-- Ezarpenen Modala -->
    <div id="ezarpenakModala" class="modal-wrapper">
        <div class="modal-edukia">
            <div class="modal-goiburua">
                <h3><img src="img/settings.svg" alt="" class="ikono-24px-erdian"> Web Aplikazioaren Ezarpenak (XML)</h3>
                <span class="itxi-modala">&times;</span>
            </div>
            <div class="modal-gorputza">
                <p class="testu-grisa testua-erdian-marjina-behe-20">Hemen web-aren portaera eta itxura XML fitxategian aldatu ditzakezu erakustaldi gisa</p>
                <?php if (isset($_GET['ezarpenak_gordeta'])): ?>
                    <div class="alerta alerta-arrakasta marjina-goi-15 testua-erdian-marjina-behe-20">Ezarpenak XML fitxategian gorde dira!</div>
                <?php endif; ?>
                
                <form action="php_laguntzaileak/ezarpenak_gorde.php" method="POST">
                    <input type="hidden" name="form_type" value="orokorra">
                    
                    <div class="inprimaki-taldea">
                        <label>Defektuzko hizkuntza:</label>
                        <select name="hizkuntza" class="inprimaki-kontrola">
                            <option value="eu" <?php echo ($hizkuntza_def === 'eu') ? 'selected' : ''; ?>>Euskara</option>
                            <option value="es" <?php echo ($hizkuntza_def === 'es') ? 'selected' : ''; ?>>Castellano</option>
                            <option value="en" <?php echo ($hizkuntza_def === 'en') ? 'selected' : ''; ?>>English</option>
                        </select>
                    </div>

                    <div class="inprimaki-taldea">
                        <label>Kolore nagusia:</label>
                        <input type="color" name="kolore_nagusia" value="<?php echo htmlspecialchars($kolore_nagusia_def); ?>" class="inprimaki-kontrola sarrera-altuera-50">
                    </div>

                    <div class="inprimaki-taldea">
                        <label>Bigarren mailako kolorea:</label>
                        <input type="color" name="bigarren_kolorea" value="<?php echo htmlspecialchars($bigarren_kolorea_def); ?>" class="inprimaki-kontrola sarrera-altuera-50">
                    </div>

                    <div class="inprimaki-taldea">
                        <label>Aplikazioaren Itxura (Gaia):</label>
                        <select name="gaia" class="inprimaki-kontrola">
                            <option value="argia" <?php echo ($gaia_def === 'argia') ? 'selected' : ''; ?>>Argia (Mahaigaina klasikoa)</option>
                            <option value="iluna" <?php echo ($gaia_def === 'iluna') ? 'selected' : ''; ?>>Iluna (Modo oscuro)</option>
                        </select>
                    </div>

                    <div class="testua-erdian-marjina-goi-30">
                        <button type="submit" class="botoia botoi-nagusia zabalera-osoa-300px">Gorde Ezarpenak (XML-an)</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
    document.addEventListener('DOMContentLoaded', function() {
        var modal = document.getElementById("ezarpenakModala");
        var btn = document.getElementById("irekiEzarpenakModala");
        var span = document.getElementsByClassName("itxi-modala")[0];

        if (btn) {
            btn.onclick = function(e) {
                e.preventDefault();
                modal.style.display = "block";
            }
        }

        if (span) {
            span.onclick = function() {
                modal.style.display = "none";
            }
        }

        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }

        <?php if (isset($_GET['ezarpenak_gordeta'])): ?>
        modal.style.display = "block";
        <?php endif; ?>
    });
    </script>


<?php
$js_gehigarria = ["hasiera_index.js"];
include 'php_includeak/footer.php';
?>

