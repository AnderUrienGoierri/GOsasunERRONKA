<?php
$bide_absolutua = '../'; require_once '../php_orri_laguntzaileak/DB_konexioa.php';

$arrakasta_mezua = '';
$errore_mezua = '';

?>
<?php
$orri_izenburua = ($itzulpenak->menua->kontaktua ?? 'Kontaktua') . " - GOsasun";
$uneko_orria = "kontaktua";

include '../php_orri_includeak/goiburua.php';
?>

    <main class="kontaktu-sekzioa">
        
        <div class="kontaktu-informazioa kontaktu-kutxa-erdian">
            <h2 class="marjina-behe-20"><?php echo $itzulpenak->kontaktua->izenburua; ?></h2>
            <p class="marjina-behe-30"><?php echo $itzulpenak->kontaktua->azpititulua; ?></p>
            <h3><?php echo $itzulpenak->kontaktua->bulegoak; ?></h3>
            <p> <a href="https://maps.app.goo.gl/dSYPAQ8F2d5wJ3RX6" target="_blank">Arranomendia, 2, 20240 Ordizia, Gipuzkoa</a></p>
            <p> <a href="tel:+34944123456" >+34 944 123 456</a></p>
            <p> <a href="mailto:info@gosasun.eus">info@gosasun.eus</a></p>
            
            <div class="map-container marjina-goi-20">
                <iframe src="https://www.google.com/maps/embed?pb=!1m13!1m8!1m3!1d2775.2396961529766!2d-2.1824307!3d43.0475306!3m2!1i1024!2i768!4f13.1!3m2!1m1!2s!5e1!3m2!1ses!2ses!4v1771960627934!5m2!1ses!2ses" width="100%" height="300" class="mapa-iframe" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                <div class="marjina-goi-10 testua-erdian">
                    <a href="https://maps.app.goo.gl/dSYPAQ8F2d5wJ3RX6" target="_blank" class="esteka-nagusia">Ikusi mapa handiagoa <img src="../img/svg/globe.svg" alt="" class="ikono-14px-erdian"></a>
                </div>
            </div>
        </div>
    </main>

<?php
$js_gehigarria = [];
include '../php_orri_includeak/ezarpenak_modala.php';
include '../php_orri_includeak/footer.php';
?>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        var modal = document.getElementById("ezarpenakModala");
        var btns = document.querySelectorAll("#irekiEzarpenakModala, #irekiEzarpenakModalaMugikorra");
        var span = document.getElementsByClassName("itxi-modala")[0];

        btns.forEach(function(btn) {
            btn.onclick = function(e) {
                e.preventDefault();
                modal.style.display = "block";
            }
        });

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

        <?php if (isset($_GET['ezarpenak_gordeta']) || isset($_GET['ezarpenak_reset'])): ?>
        modal.style.display = "block";
        <?php endif; ?>
    });
</script>

