<?php
session_start();
$bide_absolutua = '../';
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';

$orri_izenburua = "Ezarpenak - GOsasun";
$uneko_orria = "ezarpenak";

include_once '../php_includeak/paziente_goiburua.php';

$xml_path = '../xml_konfigurazioa/config.xml';
$hizkuntza_def = 'eu';
$kolore_nagusia_def = '#4361ee';
$bigarren_kolorea_def = '#3f37c9';
$gaia_def = 'argia';

if (file_exists($xml_path)) {
    $xml_conf = simplexml_load_file($xml_path);
    if ($xml_conf) {
        $hizkuntza_def = (string)$xml_conf->hizkuntza ?: $hizkuntza_def;
        $kolore_nagusia_def = (string)$xml_conf->kolore_nagusia ?: $kolore_nagusia_def;
        $bigarren_kolorea_def = (string)$xml_conf->bigarren_kolorea ?: $bigarren_kolorea_def;
        $gaia_def = (string)$xml_conf->gaia ?: $gaia_def;
    }
}
?>

<main class="panel-nagusia">
    <div class="orri-goiburua">
        <h1><img src="../img/settings.svg" alt="" class="ikono-32px-erdian"> Ezarpenak</h1>
        <a href="index.php" class="botoia botoi-itsua"><img src="../img/arrow-left.svg" alt="" class="ikono-16px-erdian"> Itzuli</a>
    </div>

    <section class="ezarpen-panela-wrapper edukiontzi-ertaina">
        <div class="kutxa-zuria ertz-lodi-urdina">
            <div class="testua-erdian-marjina-behe-20">
                <p class="testu-grisa">Hemen zure interfazearen itxura aldatu dezakezu.</p>
                <?php if (isset($_GET['ezarpenak_gordeta'])): ?>
                    <div class="alerta alerta-arrakasta marjina-goi-15">Ezarpenak XML fitxategian gorde dira!</div>
                <?php endif; ?>
            </div>
            <form action="../php_laguntzaileak/ezarpenak_gorde.php" method="POST">
                <!-- Ezarpen orokorretarako (itxura) -->
                <input type="hidden" name="form_type" value="orokorra_aplikazio_barnekoa">
                <input type="hidden" name="itzulera" value="pazientea">

                <div class="inprimaki-taldea">
                    <label>Defektuzko hizkuntza:</label>
                    <select name="hizkuntza" class="inprimaki-kontrola">
                        <option value="eu" <?php echo ($hizkuntza_def === 'eu') ? 'selected' : ''; ?>>Euskara</option>
                        <option value="es" <?php echo ($hizkuntza_def === 'es') ? 'selected' : ''; ?>>Castellano</option>
                        <option value="en" <?php echo ($hizkuntza_def === 'en') ? 'selected' : ''; ?>>English</option>
                    </select>
                </div>

                <div class="inprimaki-taldea">
                    <label>Kolore nagusia:</label>
                    <input type="color" name="kolore_nagusia" value="<?php echo htmlspecialchars($kolore_nagusia_def); ?>" class="inprimaki-kontrola sarrera-altuera-50">
                </div>

                <div class="inprimaki-taldea">
                    <label>Bigarren mailako kolorea:</label>
                    <input type="color" name="bigarren_kolorea" value="<?php echo htmlspecialchars($bigarren_kolorea_def); ?>" class="inprimaki-kontrola sarrera-altuera-50">
                </div>

                <div class="inprimaki-taldea">
                    <label>Aplikazioaren Itxura (Gaia):</label>
                    <select name="gaia" class="inprimaki-kontrola">
                        <option value="argia" <?php echo ($gaia_def === 'argia') ? 'selected' : ''; ?>>Argia (Mahaigaina klasikoa)</option>
                        <option value="iluna" <?php echo ($gaia_def === 'iluna') ? 'selected' : ''; ?>>Iluna (Modo oscuro)</option>
                    </select>
                </div>

                <div class="testua-erdian-marjina-goi-30">
                    <button type="submit" class="botoia botoi-nagusia zabalera-osoa-300px">Gorde Ezarpenak (XML-an)</button>
                </div>
            </form>
        </div>
    </section>
</main>

<?php
include_once '../php_includeak/paziente_footer.php';
?>
