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
        $css .= ":root {\n";
        $css .= "  --bg-body: #0f172a;\n";
        $css .= "  --bg-surface: #1e293b;\n";
        $css .= "  --text-main: #f1f5f9;\n";
        $css .= "  --text-muted: #94a3b8;\n";
        $css .= "  --border-color: #334155;\n";
        $css .= "  --input-bg: #0f172a;\n";
        $css .= "  --input-border: #475569;\n";
        $css .= "  --shadow-color: rgba(0, 0, 0, 0.4);\n";
        $css .= "  --logo-filter: invert(1) hue-rotate(180deg) brightness(1.2);\n";

        // Indarrezko gainidazteak aldagai finkoentzat
        $css .= "  --white: var(--bg-surface);\n";
        $css .= "  --white-bg: var(--bg-body);\n";
        $css .= "  --dark-text: var(--text-main);\n";
        $css .= "  --gray: #94a3b8;\n";
        $css .= "  --light-bg: var(--bg-body);\n";
        $css .= "}\n";

        // Beharrezkoak diren gainidazte orokorrak
        $css .= "body, main { background-color: var(--bg-body) !important; color: var(--text-main) !important; }\n";
        $css .= "header, footer, .panel-goiburua, .nabigazio-barra { background-color: var(--bg-surface) !important; border-color: var(--border-color) !important; }\n";
        $css .= "label, legend, .etiketa-lodia, .logo-etiketa, h1, h2, h3, h4, h5, h6 { color: var(--text-main) !important; }\n";
        $css .= "input, select, textarea { background-color: var(--input-bg) !important; border-color: var(--input-border) !important; color: var(--text-main) !important; }\n";
        $css .= "input::placeholder, textarea::placeholder { color: var(--text-muted) !important; }\n";

        // Logo-ei eta atzeko planoari iragazkiak aplikatu
        $css .= ".logo-irudia, .footer-logo, .hero-logo-handia, .logo-login { filter: var(--logo-filter) !important; mix-blend-mode: normal !important; background: transparent !important; }\n";
        $css .= "body::before { opacity: 0.02 !important; filter: invert(1) !important; }\n";

        // Txartelak, panelak eta edukiontziak
        $css .= ".kutxa-zuria, .kutxa-zuria-itzala, .form-edukiontzi-zuria, .txartel-klinikoa, .itxurazko-txartela, .neurketa-kutxa, .hasiera-txartela, .ezaugarri-txartela, .portal-txartela, .mezu-zerrenda-edukiontzia, .mezu-xehetasun-txartela, .egutegia-edukiontzia { ";
        $css .= "background-color: var(--bg-surface) !important; border-color: var(--border-color) !important; color: var(--text-main) !important; box-shadow: var(--shadow-color) !important; }\n";
        $css .= "th, thead { background-color: var(--bg-body) !important; color: var(--text-main) !important; }\n";
        $css .= "hr, .banatzaile-marra { border-top-color: var(--border-color) !important; }\n";
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
