<?php
$base_path = '';
$page_title = "GOsasun - Zure Osasun Ataria";
$current_page = "index";

include 'php_includeak/goiburua.php';
?>

    <main class="hero-sekzioa">
            
        <div class="hero-errenkada-1">
            <h1>Zure osasuna, gure lehentasuna</h1>
            <img src="img/GOsasun_logoa.png" alt="GOsasun" class="hero-logo-handia">
            
        </div>

       
        <div class="azpititulu-edukiontzia">
            <p class="azpititulua">Zure osasuna kudeatzeko, neurketak jarraipena egiteko eta medikuarekin konektatzeko plataforma segurua</p>
        </div>

        
        <div class="hero-errenkada-3 portal-sarbideak">
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

    <section class="ezaugarriak">
        <div class="ezaugarri-txartela">
            <div class="ezaugarri-ikonoa"><img src="img/line-chart.svg" alt="Neurketa Jarraipena" style="width: 40px; height: 40px; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg);"></div>
            <h3>Neurketa Jarraipena</h3>
            <p>Sartu zure eguneroko osasun datuak (tentsioa, pisua, glukosa...) eta ikusi bilakaera.</p>
        </div>
        <div class="ezaugarri-txartela">
            <div class="ezaugarri-ikonoa"><img src="img/calendar.svg" alt="Hitzorduak" style="width: 40px; height: 40px; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg);"></div>
            <h3>Hitzorduak</h3>
            <p>Ikusi zure hurrengo hitzorduak era erraz eta azkar batean.</p>
        </div>
        <div class="ezaugarri-txartela">
            <div class="ezaugarri-ikonoa"><img src="img/message-square.svg" alt="Komunikazio Zuzena" style="width: 40px; height: 40px; filter: invert(0.3) sepia(1) saturate(5) hue-rotate(200deg);"></div>
            <h3>Komunikazio Zuzena</h3>
            <p>Zure medikuarekin harremanetan jarri mezu bidez modu seguruan.</p>
        </div>
    </section>

<?php
$extra_js = ["index.js"];
include 'php_includeak/footer.php';
?>

