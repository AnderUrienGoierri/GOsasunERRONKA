    <footer>
        <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/footer.css">
        <div class="footer-logo-edukiontzia">
            <img src="<?php echo $bide_absolutua; ?>img/png/GOsasun_logoa-removebg-preview-white.png" alt="GOsasun Logo" class="footer-logo">
        </div>
        <div class="orri-oin-nabigazioa">
            <a href="index.php">Hasiera</a>
            <a href="pazienteak.php">Pazienteak</a>
            <a href="medikuak.php">osasun_langileak</a>
            <a href="hitzorduak.php">Hitzorduak</a>
            <a href="mezuak.php">Mezuak</a>
            <a href="kanpoko_mezuak.php">Kanpoko Mezuak</a>
            <a href="harrerako_langileak.php">Harrerako Langileak</a>
            <a href="<?php echo $bide_absolutua; ?>php_laguntzaileak/logout.php">Irten</a>
        </div>
        <p>&copy; 2026 GOsasun</p>
    </footer>

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

