    <footer>
        <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/footer.css">
        <div class="footer-logo-container">
            <img src="<?php echo $bide_absolutua; ?>img/GOsasun_logoa.png" alt="GOsasun Logo" class="footer-logo">
        </div>
        <div class="orri-oin-nabigazioa">
            <a href="<?php echo $bide_absolutua; ?>index.php">Hasiera</a> | 
            <a href="<?php echo $bide_absolutua; ?>php_hasiera/kontaktua.php">Kontaktua</a> | 
            <a href="<?php echo $bide_absolutua; ?>php_hasiera/login.php">Saioa Hasi</a>
        </div>
        <p>&copy; 2026 GOsasun</p>
    </footer>

    <!-- JS -->
    <script src="<?php echo $bide_absolutua; ?>js/common.js"></script>
    <?php if (isset($js_gehigarria)): ?>
        <?php foreach ($js_gehigarria as $js): ?>
            <script src="<?php echo $bide_absolutua; ?>js/<?php echo $js; ?>"></script>
        <?php endforeach; ?>
    <?php endif; ?>
</body>
</html>

