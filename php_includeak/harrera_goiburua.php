<?php
if (!isset($orri_izenburua)) {
    $orri_izenburua = "Harrera - GOsasun";
}
?>
<!DOCTYPE html>
<html lang="eu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $orri_izenburua; ?></title>
    <!-- Google-etik deskargatutako estiloak -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- CSS -->
    <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/estilo_orokorrak.css">
    <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/goiburua.css">
    <?php
        $orri_izena = basename($_SERVER['PHP_SELF'], '.php');
        if (isset($css_pertsonalizatua)) {
            $css_fitxategia = $css_pertsonalizatua;
        } else {
            $css_fitxategia = "harrera_" . $orri_izena . ".css";
        }
    ?>
    <link rel="stylesheet" href="<?php echo $bide_absolutua; ?>css/<?php echo $css_fitxategia; ?>">
</head>
<body class="<?php echo $body_class ?? 'panel-gorputza'; ?>">
    <header class="panel-goiburua">
        <div class="logoa">
            <a href="index.php" class="logo-esteka">
                <img src="<?php echo $bide_absolutua; ?>img/GOsasun_logoa.png" alt="GOsasun" class="logo-irudia">
                <span class="logo-etiketa">Harrera</span>
            </a>
        </div>
        <button class="menu-botoia" aria-label="Ireki menua">☰</button>
        <ul class="nabigazio-estekak">
            <li><a href="index.php" class="<?php echo ($uneko_orria === 'index') ? 'aktiboa' : ''; ?>">Hasiera</a></li>
            <li><a href="pazienteak.php" class="<?php echo ($uneko_orria === 'pazienteak') ? 'aktiboa' : ''; ?>">Pazienteak</a></li>
            <li><a href="medikuak.php" class="<?php echo ($uneko_orria === 'medikuak') ? 'aktiboa' : ''; ?>">Medikuak</a></li>
            <li><a href="hitzorduak.php" class="<?php echo ($uneko_orria === 'hitzorduak') ? 'aktiboa' : ''; ?>">Hitzorduak</a></li>
            <li><a href="mezuak.php" class="<?php echo ($uneko_orria === 'mezuak') ? 'aktiboa' : ''; ?>">Mezuak</a></li>
            <li><a href="kanpoko_mezuak.php" class="<?php echo ($uneko_orria === 'kanpoko_mezuak') ? 'aktiboa' : ''; ?>">Kanpoko Mezuak</a></li>
            <li><a href="harrerako_langileak.php" class="<?php echo ($uneko_orria === 'harrerako_langileak') ? 'aktiboa' : ''; ?>">Harrerako Langileak</a></li>
            <li><a href="<?php echo $bide_absolutua; ?>php_laguntzaileak/logout.php" class="botoia botoi-ertza arrisku-kolorea">Saioa Itxi</a></li>
        </ul>
    </header>

