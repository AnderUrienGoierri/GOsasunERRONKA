    <footer>
        <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/footer.css">
        <div class="footer-logo-edukiontzia">
            <img src="<?php echo $bide_absolutua; ?>img/png/GOsasun_logoa-removebg-preview-white.png" alt="GOsasun Logo" class="footer-logo">
        </div>
        <div class="orri-oin-nabigazioa">
            <a href="index.php">Hasiera</a>
            <a hred="pazienteak.php">Nire pazienteak</a>
            <a href="jarraipenak.php">Jarraipenak</a>
            <a href="grafikak.php">Grafikak</a>
            <a href="dokumentuak.php">Dokumentuak</a>
            <a href="hitzorduak.php">Hitzorduak</a>
            <a href="errezetak.php">Errezetak</a>
            <a href="<?php echo $bide_absolutua; ?>php_orri_laguntzaileak/logout.php">Saioa Itxi</a>
        </div>
        <p>&copy; 2026 GOsasun</p>
    </footer>

    <!-- JS -->
    <script src="<?php echo $bide_absolutua; ?>js/orokorrak.js"></script>
    <?php if (isset($js_gehigarria)): ?>
        <?php foreach ($js_gehigarria as $js): ?>
            <script src="<?php echo $bide_absolutua; ?>js/<?php echo $js; ?>"></script>
        <?php endforeach; ?>
    <?php endif; ?>
</body>
</html>

