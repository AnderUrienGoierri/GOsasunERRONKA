<?php
/**
 * CSS estiloak sortzen ditu konfigurazioaren arabera.
 * 
 * @param array $konf Konfigurazioaren balioak.
 * @return string CSS estiloak.
 */
function lortuEstiloak($konf) {

    // kolore ofizialak lortu 
    $css = "<style>\n";
    $css .= ":root {\n";
    $css .= "  --primary-color: " . htmlspecialchars($konf['kolore_nagusia']) . " !important;\n";
    $css .= "  --secondary-color: " . htmlspecialchars($konf['bigarren_kolorea']) . " !important;\n";
    $css .= "}\n";
    
    // gaiaren arabera estiloak
    if ($konf['gaia'] == 'iluna') {
        $css .= "body, main { background-color: #121212 !important; color: #f0f0f0 !important; }\n";
        $css .= ".portal-txartela, .ezaugarri-txartela, .kutxa-zuria, .kaixo-atalak, .menu-txartela, .kutxa-zuria-800, .kutxa-zuria-700, .kuadro-estatistikak {\n";
        $css .= "    background-color: #1e1e1e !important; color: #f0f0f0 !important; border-color: #333 !important;\n";
        $css .= "}\n";
        $css .= "h1, h2, h3, .portal-info h3, .ezaugarri-txartela h3, .izenburu-nagusia, .izenburu-iluna {\n";
        $css .= "    color: #ffffff !important;\n";
        $css .= "}\n";
        $css .= ".azpititulua, .portal-info p, .ezaugarri-txartela p, .testu-gris-txikia, .azpititulu-grisa, .gray-text, .deskribapen-grisa {\n";
        $css .= "    color: #cccccc !important;\n";
        $css .= "}\n";
        $css .= "td, th { color: #f0f0f0 !important; border-color: #333 !important; }\n";
        $css .= "th { background: #2d2d2d !important; }\n";
        $css .= ".egoera-hutsa, .kutxa-hutsa-40, .inprimaki-kontrola { background-color: #1e1e1e !important; color: #fff !important; border-color: #555 !important; }\n";
    }
    $css .= "</style>\n";
    return $css;
}

/**
 * Zuzenean inprimatzen ditu estiloak lortuEstiloak erabiliz.
 */
function inprimatuEstiloak($konf) {
    echo lortuEstiloak($konf);
}
?>
