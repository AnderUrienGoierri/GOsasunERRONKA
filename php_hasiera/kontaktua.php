<?php
$bide_absolutua = '../'; require_once '../php_laguntzaileak/DB_konexioa.php';

$arrakasta_mezua = '';
$errore_mezua = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $izena = $_POST['izena'] ?? '';
    $email = $_POST['email'] ?? '';
    $mezua = $_POST['mezua'] ?? '';

    if (!empty($izena) && filter_var($email, FILTER_VALIDATE_EMAIL) && !empty($mezua) && strlen($mezua) >= 10) {
        try {
            $stmt = $pdo->prepare("INSERT INTO Kontaktua_Mezuak (izena, email, mezua) VALUES (?, ?, ?)");
            $stmt->execute([$izena, $email, $mezua]);
            $arrakasta_mezua = "Zure mezua ondo bidali da. Laster jarriko gara zurekin harremanetan!";
        } catch (PDOException $e) {
            $errore_mezua = "Errorea gertatu da mezua bidaltzean: " . $e->getMessage();
        }
    } else {
        $errore_mezua = "Mesedez, bete eremu guztiak zuzen (mezua gutxienez 10 karaktere).";
    }
}
?>
<?php
$orri_izenburua = "Kontaktua - GOsasun";
$uneko_orria = "kontaktua";

include '../php_includeak/goiburua.php';
?>

    <main class="kontaktu-sekzioa">
        <div class="kontaktu-edukiontzia">
            <h2>Jarri gurekin harremanetan</h2>
            <p>Zalantzaren bat baduzu edo informazio gehiago nahi baduzu, idatzi iezaguzu:</p>
            
            <form id="kontaktuaForm" class="kontaktu-inprimakia" method="POST" action="kontaktua.php">
                <?php if (!empty($arrakasta_mezua)): ?>
                    <div class="alerta alerta-arrakasta">
                        <?php echo htmlspecialchars($arrakasta_mezua); ?>
                    </div>
                <?php elseif (!empty($errore_mezua)): ?>
                    <div class="alerta alerta-errorea">
                        <?php echo htmlspecialchars($errore_mezua); ?>
                    </div>
                <?php else: ?>
                    <div id="form-success" class="alerta alerta-arrakasta ezkutatuta" >
                        Zure mezua ondo bidali da. Laster jarriko gara zurekin harremanetan!
                    </div>
                <?php endif; ?>

                <div class="inprimaki-taldea">
                    <label for="izena">Izena:</label>
                    <input type="text" id="izena" name="izena" class="inprimaki-kontrola" placeholder="Idatzi zure izena">
                    <span class="errore-mezua" id="error-izena">Izena derrigorrezkoa da.</span>
                </div>
                
                <div class="inprimaki-taldea">
                    <label for="email">E-posta:</label>
                    <input type="email" id="email" name="email" class="inprimaki-kontrola" placeholder="adibidea@email.com">
                    <span class="errore-mezua" id="error-email">E-posta ez da baliozkoa.</span>
                </div>

                <div class="inprimaki-taldea">
                    <label for="mezua">Mezua:</label>
                    <textarea id="mezua" name="mezua" class="inprimaki-kontrola" errenkadak="5" placeholder="Idatzi hemen zure mezua..."></textarea>
                    <span class="errore-mezua" id="error-mezua">Mezua ezin da hutsik egon (gutxienez 10 karaktere).</span>
                </div>

                <button type="submit" class="botoia botoi-nagusia zabalera-100">Bidali Mezua</button>
            </form>
        </div>
        
        <div class="kontaktu-informazioa">
            <h3>Gure bulegoak</h3>
            <p> <a href="https://maps.app.goo.gl/dSYPAQ8F2d5wJ3RX6" target="_blank">Arranomendia, 2, 20240 Ordizia, Gipuzkoa</a></p>
            <p> <a href="tel:+34944123456" >+34 944 123 456</a></p>
            <p> <a href="mailto:info@gosasun.eus">info@gosasun.eus</a></p>
            
            <div class="map-container marjina-goi-20">
                <iframe src="https://www.google.com/maps/embed?pb=!1m13!1m8!1m3!1d2775.2396961529766!2d-2.1824307!3d43.0475306!3m2!1i1024!2i768!4f13.1!3m2!1m1!2s!5e1!3m2!1ses!2ses!4v1771960627934!5m2!1ses!2ses" width="100%" height="300" class="mapa-iframe" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                <div class="marjina-goi-10 testua-erdian">
                    <a href="https://maps.app.goo.gl/dSYPAQ8F2d5wJ3RX6" target="_blank" class="esteka-nagusia" style="color: #000000;">Ikusi mapa handiagoa <img src="../img/svg/globe.svg" alt="" class="ikono-14px-erdian"></a>
                </div>
            </div>
        </div>
    </main>

<?php
$js_gehigarria = ["kontaktua.js"];
include '../php_includeak/ezarpenak_modala.php';
include '../php_includeak/footer.php';
?>
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

