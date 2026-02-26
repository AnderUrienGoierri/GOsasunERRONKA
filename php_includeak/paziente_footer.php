    <footer>
        <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/footer.css">
        <div class="footer-logo-container">
            <img src="<?php echo $bide_absolutua; ?>img/GOsasun_logoa.png" alt="GOsasun Logo" class="footer-logo">
        </div>
        <div class="orri-oin-nabigazioa">
            <a href="index.php">Hasiera</a>  
            <a href="datuak.php">Nire Datuak</a> 
            <a href="neurketak.php">Neurketak</a> 
            <a href="grafikak.php">Grafikak</a> 
            <a href="hitzorduak.php">Hitzorduak</a> 
            <a href="errezetak.php">Errezetak</a> 
            <a href="mezuak.php">Mezuak</a> 
            <a href="abisuak.php">Abisuak</a> 
            <a href="<?php echo $bide_absolutua; ?>php_laguntzaileak/logout.php">Irten</a>
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

