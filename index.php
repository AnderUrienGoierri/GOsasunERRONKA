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
                    <h3><?php echo $itzulpenak->index->paziente_izenburua; ?></h3>
                    <p><?php echo $itzulpenak->index->paziente_testua; ?></p>
                    <span class="botoia botoi-ertza arrisku-kolorea"><?php echo $itzulpenak->index->sartu; ?></span>
                </div>
            </a>

            <!-- Medikua -->
            <a href="php_hasiera/login.php" class="portal-txartela">
                <div class="portal-irudia">
                    <img src="img/index_medikua.png" alt="Medikua">
                </div>
                <div class="portal-info">
                    <h3><?php echo $itzulpenak->index->mediku_izenburua; ?></h3>
                    <p><?php echo $itzulpenak->index->mediku_testua; ?></p>
                    <span class="botoia botoi-ertza arrisku-kolorea"><?php echo $itzulpenak->index->sartu; ?></span>
                </div>
            </a>

            <!-- Harrera -->
            <a href="php_hasiera/login.php" class="portal-txartela">
                <div class="portal-irudia">
                    <img src="img/index_harrera.png" alt="Harrera">
                </div>
                <div class="portal-info">
                    <h3><?php echo $itzulpenak->index->harrera_izenburua; ?></h3>
                    <p><?php echo $itzulpenak->index->harrera_testua; ?></p>
                    <span class="botoia botoi-ertza arrisku-kolorea"><?php echo $itzulpenak->index->sartu; ?></span>
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

<?php include 'php_includeak/ezarpenak_modala.php'; ?>
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

