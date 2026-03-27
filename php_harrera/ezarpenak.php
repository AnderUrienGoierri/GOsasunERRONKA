<?php
session_start();
$bide_absolutua = '../';
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera') {
    header("Location: ../php_hasiera/login.php");
    exit;
}

require_once '../php_laguntzaileak/DB_konexioa.php';

$orri_izenburua = "Ezarpenak - GOsasun";
$uneko_orria = "ezarpenak";

include_once '../php_includeak/harrera_goiburua.php';

$xml_path = '../xml_konfigurazioa/config.xml';
$sistema_izena_def = 'GOsasun';
$hitzordu_muga_def = '20';
$ordutegia_ireki_def = '08:00';
$ordutegia_itxi_def = '20:00';
$mantenimendua_def = 'ez';

if (file_exists($xml_path)) {
    $xml_conf = simplexml_load_file($xml_path);
    if ($xml_conf && isset($xml_conf->osasun_zentroa)) {
        $sistema_izena_def = (string)$xml_conf->osasun_zentroa->sistema_izena ?: $sistema_izena_def;
        $hitzordu_muga_def = (string)$xml_conf->osasun_zentroa->mediku_bakoitzeko_gehienezko_hitzorduak ?: $hitzordu_muga_def;
        $ordutegia_ireki_def = (string)$xml_conf->osasun_zentroa->ordutegia_ireki ?: $ordutegia_ireki_def;
        $ordutegia_itxi_def = (string)$xml_conf->osasun_zentroa->ordutegia_itxi ?: $ordutegia_itxi_def;
        $mantenimendua_def = (string)$xml_conf->osasun_zentroa->mantenimendu_modua ?: $mantenimendua_def;
    }
}
?>

<main class="panel-nagusia">
    <div class="orri-goiburua">
        <h1><img src="../img/settings.svg" alt="" class="ikono-32px-erdian"> Osasun Zentroaren Ezarpenak</h1>
        <a href="index.php" class="botoia botoi-itsua"><img src="../img/arrow-left.svg" alt="" class="ikono-16px-erdian"> Itzuli</a>
    </div>

    <section class="ezarpen-panela-wrapper edukiontzi-ertaina">
        <div class="kutxa-zuria ertz-lodi-urdina">
            <div class="testua-erdian-marjina-behe-20">
                <p class="testu-grisa">Hemen web-aren logika aplikatiboa eta zentroaren informazioa konfiguratu ditzakezu XML fitxategian.</p>
                <?php if (isset($_GET['ezarpenak_gordeta'])): ?>
                    <div class="alerta alerta-arrakasta marjina-goi-15">Ezarpenak XML fitxategian gorde dira!</div>
                <?php endif; ?>
            </div>
            <form action="../php_laguntzaileak/ezarpenak_gorde.php" method="POST">
                <input type="hidden" name="form_type" value="osasun_zentroa">

                <div class="inprimaki-taldea">
                    <label>Sistemaren Izena:</label>
                    <input type="text" name="sistema_izena" value="<?php echo htmlspecialchars($sistema_izena_def); ?>" class="inprimaki-kontrola">
                </div>

                <div class="inprimaki-taldea">
                    <label>Mediku bakoitzeko gehienezko hitzorduak (eguneko):</label>
                    <input type="number" name="hitzordu_muga" value="<?php echo htmlspecialchars($hitzordu_muga_def); ?>" min="1" max="50" class="inprimaki-kontrola">
                </div>

                <div class="flex-15px-tartea">
                    <div class="inprimaki-taldea flex-hazkundea-1">
                        <label>Zentroa irekitzeko ordua:</label>
                        <input type="time" name="ordutegia_ireki" value="<?php echo htmlspecialchars($ordutegia_ireki_def); ?>" class="inprimaki-kontrola">
                    </div>
                    <div class="inprimaki-taldea flex-hazkundea-1">
                        <label>Zentroa ixteko ordua:</label>
                        <input type="time" name="ordutegia_itxi" value="<?php echo htmlspecialchars($ordutegia_itxi_def); ?>" class="inprimaki-kontrola">
                    </div>
                </div>

                <div class="inprimaki-taldea flex-erdian hutsartea-10 marjina-goi-10">
                    <input type="checkbox" name="mantenimendua" id="mantenimendua" value="bai" <?php echo ($mantenimendua_def === 'bai') ? 'checked' : ''; ?> class="checkbox-20px">
                    <label for="mantenimendua" class="marjina-behe-0">Mantenimendu Modua (bezeroei sarbidea itxi batzuetan erabiltzeko prestatu)</label>
                </div>
 
                <div class="testua-erdian-marjina-behe-20">
                    <button type="submit" class="botoia botoi-ertza arrisku-kolorea zabalera-osoa-300px" id="gorde-ezarpenak-botoia"><?php echo $itzulpenak->ezarpenak->gorde_botoia; ?></button>
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
    </section>
</main>

<?php
include_once '../php_includeak/harrera_footer.php';
?>
