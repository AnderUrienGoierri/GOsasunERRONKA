    <footer>
        <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/footer.css">
        <div class="footer-logo-edukiontzia">
            <img src="<?php echo $bide_absolutua; ?>img/GOsasun_logoa-removebg-preview-white.png" alt="GOsasun Logo" class="footer-logo">
        </div>
        <div class="orri-oin-nabigazioa">
            <a href="index.php">Hasiera</a>
            <a href="pazienteak.php">Pazienteak</a>
            <a href="medikuak.php">Medikuak</a>
            <a href="hitzorduak.php">Hitzorduak</a>
            <a href="mezuak.php">Mezuak</a>
            <a href="kanpoko_mezuak.php">Kanpoko Mezuak</a>
            <a href="harrerako_langileak.php">Harrerako Langileak</a>
            <a href="<?php echo $bide_absolutua; ?>php_laguntzaileak/logout.php">Irten</a>
        </div>
        <p>&copy; 2026 GOsasun</p>
    </footer>

    <?php include $bide_absolutua . 'php_includeak/ezarpenak_modala.php'; ?>
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
    });
    </script>

    <!-- JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="<?php echo $bide_absolutua; ?>js/orokorrak.js"></script>
    <?php if (isset($js_gehigarria)): ?>
        <?php foreach ($js_gehigarria as $js): ?>
            <script src="<?php echo $bide_absolutua; ?>js/<?php echo $js; ?>"></script>
        <?php endforeach; ?>
    <?php endif; ?>
</body>
</html>

