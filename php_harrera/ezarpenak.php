<?php
session_start();
$bide_absolutua = '../';
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';

$orri_izenburua = "Ezarpenak - GOsasun";
$uneko_orria = "ezarpenak";

include_once '../php_includeak/harrera_goiburua.php';

require_once '../php_includeak/konfigurazioa_kargatu.php';
$konf = kargatuKonfigurazioa(false);

 
// Pertsonalak ere kargatu itzulpen-flagetarako etab.
$hizkuntza_def = $konf['hizkuntza'];
$kolore_nagusia_def = $konf['kolore_nagusia'];
$bigarren_kolorea_def = $konf['bigarren_kolorea'];
$footer_kolorea_def = $konf['footer_kolorea'];
$gaia_def = $konf['gaia'];

// Zentroaren datu globalak zuzenean irakurri, erabiltzailearen pertsonalizazioak ez nahasteko
$konf_globala = [
    'hizkuntza' => 'eu',
    'kolore_nagusia' => '#4361ee',
    'bigarren_kolorea' => '#3f37c9',
    'footer_kolorea' => '#2b2d42',
    'gaia' => 'argia'
];
$global_xml_path = '../xml_konfigurazioa/konfigurazio_orokorra.xml';
if (file_exists($global_xml_path)) {
    $xml_conf_globala = simplexml_load_file($global_xml_path);
    if ($xml_conf_globala) {
        $konf_globala['hizkuntza'] = (string)$xml_conf_globala->hizkuntza ?: $konf_globala['hizkuntza'];
        $konf_globala['kolore_nagusia'] = (string)$xml_conf_globala->kolore_nagusia ?: $konf_globala['kolore_nagusia'];
        $konf_globala['bigarren_kolorea'] = (string)$xml_conf_globala->bigarren_kolorea ?: $konf_globala['bigarren_kolorea'];
        $konf_globala['footer_kolorea'] = (string)$xml_conf_globala->footer_kolorea ?: $konf_globala['footer_kolorea'];
        $konf_globala['gaia'] = (string)$xml_conf_globala->gaia ?: $konf_globala['gaia'];
    }
}
$hizkuntza_glob = $konf_globala['hizkuntza'];
$kolore_nagusia_glob = $konf_globala['kolore_nagusia'];
$bigarren_kolorea_glob = $konf_globala['bigarren_kolorea'];
$gaia_glob = $konf_globala['gaia'];
?>

<main class="panel-nagusia">
    <div class="orri-goiburua">
        <h1><img src="../img/svg/settings.svg" alt="" class="ikono-32px-erdian"> <?php echo $itzulpenak->ezarpenak->izenburua; ?></h1>
        <a href="index.php" class="botoia botoi-itsua"><img src="../img/svg/arrow-left.svg" alt="" class="ikono-16px-erdian"> <?php echo $itzulpenak->login->itzuli ?? 'Itzuli'; ?></a>
    </div>
 
    <section class="ezarpen-panela-wrapper edukiontzi-ertaina">
        <div class="kutxa-zuria ertz-lodi-urdina">
            <div class="testua-erdian-marjina-behe-20">
                <p class="testu-grisa"><?php echo $itzulpenak->ezarpenak->laguntza; ?></p>
                <?php if (isset($_GET['ezarpenak_gordeta'])): ?>
                    <div class="alerta alerta-arrakasta marjina-goi-15"><?php echo $itzulpenak->ezarpenak->gordeta; ?></div>
                <?php endif; ?>
                <?php if (isset($_GET['ezarpenak_reset'])): ?>
                    <div class="alerta alerta-arrakasta marjina-goi-15"><?php echo $itzulpenak->ezarpenak->reset_mezua; ?></div>
                <?php endif; ?>
            </div>
            <form action="../php_laguntzaileak/ezarpenak_gorde.php" method="POST">
                <!-- Ezarpen Pertsonalak (Standardized) -->
                <input type="hidden" name="form_type" value="orokorra">
                <input type="hidden" name="itzulera" value="harrera">
 
                <div class="inprimaki-taldea">
                    <label><?php echo $itzulpenak->ezarpenak->hizkuntza; ?></label>
                    <div class="hizkuntza-hautatzailea">
                        <div class="hizkuntza-aukera">
                            <input type="radio" name="hizkuntza" id="lang-eu" value="eu" <?php echo ($hizkuntza_def === 'eu') ? 'checked' : ''; ?>>
                            <label for="lang-eu" class="aukera-edukia">
                                <img src="../img/png/hizkunta_ikonoak/eu.png" alt="Euskara" style="width:60px !important; height:60px !important; border-radius:50%; object-fit:cover;">
                                <span><?php echo $itzulpenak->ezarpenak->hizkuntza_eu; ?></span>
                            </label>
                        </div>
                        <div class="hizkuntza-aukera">
                            <input type="radio" name="hizkuntza" id="lang-es" value="es" <?php echo ($hizkuntza_def === 'es') ? 'checked' : ''; ?>>
                            <label for="lang-es" class="aukera-edukia">
                                <img src="../img/png/hizkunta_ikonoak/es.png" alt="Castellano" style="width:60px !important; height:60px !important; border-radius:50%; object-fit:cover;">
                                <span><?php echo $itzulpenak->ezarpenak->hizkuntza_es; ?></span>
                            </label>
                        </div>
                        <div class="hizkuntza-aukera">
                            <input type="radio" name="hizkuntza" id="lang-en" value="en" <?php echo ($hizkuntza_def === 'en') ? 'checked' : ''; ?>>
                            <label for="lang-en" class="aukera-edukia">
                                <img src="../img/png/hizkunta_ikonoak/en.png" alt="English" style="width:60px !important; height:60px !important; border-radius:50%; object-fit:cover;">
                                <span><?php echo $itzulpenak->ezarpenak->hizkuntza_en; ?></span>
                            </label>
                        </div>
                        <div class="hizkuntza-aukera">
                            <input type="radio" name="hizkuntza" id="lang-nl" value="nl" <?php echo ($hizkuntza_def === 'nl') ? 'checked' : ''; ?>>
                            <label for="lang-nl" class="aukera-edukia">
                                <img src="../img/png/hizkunta_ikonoak/nl.png" alt="Nederlands" style="width:60px !important; height:60px !important; border-radius:50%; object-fit:cover;">
                                <span><?php echo $itzulpenak->ezarpenak->hizkuntza_nl; ?></span>
                            </label>
                        </div>
                    </div>
                </div>
 
                <div class="inprimaki-taldea">
                    <label><?php echo $itzulpenak->ezarpenak->kolore_nagusia; ?></label>
                    <input type="color" name="kolore_nagusia" value="<?php echo htmlspecialchars($kolore_nagusia_def); ?>" class="inprimaki-kontrola sarrera-altuera-50">
                </div>
 
                <div class="inprimaki-taldea">
                    <label><?php echo $itzulpenak->ezarpenak->bigarren_kolorea; ?></label>
                    <input type="color" name="bigarren_kolorea" value="<?php echo htmlspecialchars($bigarren_kolorea_def); ?>" class="inprimaki-kontrola sarrera-altuera-50">
                </div>
 
                <div class="inprimaki-taldea">
                    <label><?php echo $itzulpenak->ezarpenak->footer_kolorea; ?></label>
                    <input type="color" name="footer_kolorea" value="<?php echo htmlspecialchars($footer_kolorea_def); ?>" class="inprimaki-kontrola sarrera-altuera-50">
                </div>
 
                <div class="inprimaki-taldea">
                    <label><?php echo $itzulpenak->ezarpenak->itxura; ?></label>
                    <select name="gaia" class="inprimaki-kontrola">
                        <option value="argia" <?php echo ($gaia_def === 'argia') ? 'selected' : ''; ?>><?php echo $itzulpenak->ezarpenak->gaia_argia; ?></option>
                        <option value="iluna" <?php echo ($gaia_def === 'iluna') ? 'selected' : ''; ?>><?php echo $itzulpenak->ezarpenak->gaia_iluna; ?></option>
                    </select>
                </div>
 
                <div class="testua-erdian-marjina-behe-20">
                    <button type="submit" class="botoia botoi-nagusia zabalera-osoa-300px"><?php echo $itzulpenak->ezarpenak->gorde_botoia; ?></button>
                </div>
            </form>
 
            <hr class="banatzaile-marra">
 
            <form action="../php_laguntzaileak/ezarpenak_gorde.php" method="POST" class="marjina-goi-15">
                <input type="hidden" name="ekintza" value="reset">
                <input type="hidden" name="form_type" value="orokorra">
                <input type="hidden" name="itzulera" value="harrera">
                <div class="testua-erdian">
                    <button type="submit" class="botoia botoi-itsua-gorria" onclick="return confirm('<?php echo $itzulpenak->ezarpenak->reset_konfirmazioa; ?>')"><?php echo $itzulpenak->ezarpenak->reset_botoia; ?></button>
                </div>
            </form>
        </div>

        <!-- Zentroaren Konfigurazio Orokorra (Administratzaileentzat soilik) -->
        <div class="kutxa-zuria ertz-lodi-urdina marjina-goi-30">
            <div class="testua-erdian-marjina-behe-20">
                <h2 class="testua-urdina"><img src="../img/svg/hospital.svg" alt="" class="ikono-24px-erdian"> <?php echo $itzulpenak->ezarpenak->zentro_konfigurazioa; ?></h2>
                <p class="testu-grisa"><?php echo $itzulpenak->ezarpenak->zentro_laguntza; ?></p>
            </div>
            
            <form action="../php_laguntzaileak/ezarpenak_gorde.php" method="POST">
                <input type="hidden" name="form_type" value="osasun_zentroa">
                <input type="hidden" name="itzulera" value="harrera">

                <div class="inprimaki-taldea">
                    <label><?php echo $itzulpenak->ezarpenak->hizkuntza; ?></label>
                    <select name="hizkuntza" class="inprimaki-kontrola">
                        <option value="eu" <?php echo ($hizkuntza_glob === 'eu') ? 'selected' : ''; ?>><?php echo $itzulpenak->ezarpenak->hizkuntza_eu; ?></option>
                        <option value="es" <?php echo ($hizkuntza_glob === 'es') ? 'selected' : ''; ?>><?php echo $itzulpenak->ezarpenak->hizkuntza_es; ?></option>
                        <option value="en" <?php echo ($hizkuntza_glob === 'en') ? 'selected' : ''; ?>><?php echo $itzulpenak->ezarpenak->hizkuntza_en; ?></option>
                        <option value="nl" <?php echo ($hizkuntza_glob === 'nl') ? 'selected' : ''; ?>><?php echo $itzulpenak->ezarpenak->hizkuntza_nl; ?></option>
                    </select>
                </div>

                <div class="inprimaki-taldea">
                    <label><?php echo $itzulpenak->ezarpenak->kolore_nagusia; ?></label>
                    <input type="color" name="kolore_nagusia" value="<?php echo htmlspecialchars($kolore_nagusia_glob); ?>" class="inprimaki-kontrola sarrera-altuera-50">
                </div>

                <div class="inprimaki-taldea">
                    <label><?php echo $itzulpenak->ezarpenak->bigarren_kolorea; ?></label>
                    <input type="color" name="bigarren_kolorea" value="<?php echo htmlspecialchars($bigarren_kolorea_glob); ?>" class="inprimaki-kontrola sarrera-altuera-50">
                </div>

                <div class="inprimaki-taldea">
                    <label><?php echo $itzulpenak->ezarpenak->itxura; ?></label>
                    <select name="gaia" class="inprimaki-kontrola">
                        <option value="argia" <?php echo ($gaia_glob === 'argia') ? 'selected' : ''; ?>><?php echo $itzulpenak->ezarpenak->gaia_argia; ?></option>
                        <option value="iluna" <?php echo ($gaia_glob === 'iluna') ? 'selected' : ''; ?>><?php echo $itzulpenak->ezarpenak->gaia_iluna; ?></option>
                    </select>
                </div>

                <div class="testua-erdian-marjina-behe-20">
                    <button type="submit" class="botoia botoi-nagusia zabalera-osoa-300px"><?php echo $itzulpenak->ezarpenak->gorde_botoia; ?></button>
                </div>
            </form>

            <hr class="banatzaile-marra">

            <form action="../php_laguntzaileak/ezarpenak_gorde.php" method="POST" class="marjina-goi-15">
                <input type="hidden" name="ekintza" value="reset">
                <input type="hidden" name="form_type" value="osasun_zentroa">
                <input type="hidden" name="itzulera" value="harrera">
                <div class="testua-erdian">
                    <button type="submit" class="botoia botoi-itsua-gorria" onclick="return confirm('<?php echo $itzulpenak->ezarpenak->reset_konfirmazioa; ?>')"><?php echo $itzulpenak->ezarpenak->reset_botoia; ?> (Globala)</button>
                </div>
            </form>
        </div>
    </section>
</main>

<?php
include_once '../php_includeak/harrera_footer.php';
?>
