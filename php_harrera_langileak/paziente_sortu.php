<?php
$bide_absolutua = '../'; session_start();
if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Harrera Langilea') {
    header("Location: ../php_orri_hasierakoak/login.php");
    exit;
}

require_once '../php_orri_laguntzaileak/DB_konexioa.php';
$mezua = '';
$errorea = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nan           = $_POST['nan'] ?? '';
    $izena         = $_POST['izena'] ?? '';
    $abizenak      = $_POST['abizenak'] ?? '';
    $email         = $_POST['email'] ?? '';
    $pasahitza     = $_POST['pasahitza'] ?? '1234';
    $sexua         = $_POST['sexua'] ?? null;
    $jaiotze_data  = $_POST['jaiotze_data'] ?? null;
    $telefonoa     = $_POST['telefonoa'] ?? null;
    $helbidea      = $_POST['helbidea'] ?? null;
    $herria        = $_POST['herria'] ?? null;
    $posta_kodea   = $_POST['posta_kodea'] ?? null;
    $odol_taldea   = $_POST['odol_taldea'] ?? null;
    $hizkuntza     = $_POST['hizkuntza'] ?? 'Euskara';

    // Irudiaren kudeaketa
    $irudia_izena = 'img/lehenetsia_pazientea.png'; // Lehenetsia
    if (isset($_FILES['irudia']) && $_FILES['irudia']['error'] === UPLOAD_ERR_OK) {
        $ext = pathinfo($_FILES['irudia']['name'], PATHINFO_EXTENSION);
        $fitxategi_izena = $nan . "_" . time() . ".png";
        $helburua = "../img/png/" . $fitxategi_izena;
        
        if (move_uploaded_file($_FILES['irudia']['tmp_name'], $helburua)) {
            $irudia_izena = "img/png/" . $fitxategi_izena;
        }
    }

    if ($nan && $izena && $abizenak && $email) {
        try {
            $pdo->beginTransaction();

            $stmtUser = $pdo->prepare("INSERT INTO erabiltzaileak (email, pasahitza, rol_id, hizkuntza, nan, izena, abizenak, jaiotze_data, telefonoa, helbidea, herria, posta_kodea, irudia, aktibo) VALUES (?, ?, 2, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 1)");
            $stmtUser->execute([$email, $pasahitza, $hizkuntza, $nan, $izena, $abizenak, $jaiotze_data, $telefonoa, $helbidea, $herria, $posta_kodea, $irudia_izena]);
            $id_berria = $pdo->lastInsertId();

            $stmtPaziente = $pdo->prepare("INSERT INTO pazienteak (id, sexua, odol_taldea) VALUES (?, ?, ?)");
            $stmtPaziente->execute([$id_berria, $sexua, $odol_taldea]);

            $pdo->commit();
            header("Location: pazienteak.php?msg=" . urlencode("Paziente berria arrakastaz sortu da. ID: " . $id_berria));
            exit;
        } catch (PDOException $e) {
            $pdo->rollBack();
            $errorea = "Errorea sortzean (baliteke emaila edo NANa errepikatuta egotea): " . $e->getMessage();
        }
    } else {
        $errorea = "Mesedez, bete derrigorrezko eremu guztiak.";
    }
}
?>
<!-- GUI logic -->
    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/svg/user-plus.svg" alt="" class="ikono-handia marjina-esk-10"> Paziente Berria Erregistratu</h2>
                <p>Sartu pazientearen informazioa sistema sanitarioan sartzeko.</p>
            </div>
            <a href="pazienteak.php" class="botoia botoi-ertza flex-zentratua"><img src="../img/svg/arrow-left.svg" alt="" class="ikono-txikia marjina-esk-5"> Zerrendara itzuli</a>
        </div>

        <?php if ($errorea): ?>
            <div class="alerta alerta-errorea marjina-behe-20">
                <img src="../img/svg/alert-circle.svg" alt="" class="ikono-ertaina marjina-esk-10">
                <?php echo htmlspecialchars($errorea); ?>
            </div>
        <?php endif; ?>

        <form method="POST" enctype="multipart/form-data" class="modern-inprimakia">
            <div class="sareta-konfigurazioa">
                <!-- 1. ZUTABEA: Datu Pertsonalak eta Identifikazioa -->
                <div class="sareta-zutabea">
                    <div class="kutxa-zuria-itzala padding-25 marjina-behe-30">
                        <h3 class="izenburu-atal-urdina"><img src="../img/svg/user.svg" alt="" class="ikono-ertaina marjina-esk-10"> Identifikazioa</h3>
                        
                        <div class="inprimaki-taldea marjina-goi-20">
                            <label for="irudia" class="testu-lodia">Profil Argazkia</label>
                            <input type="file" id="irudia" name="irudia" class="inprimaki-kontrola" accept="image/*">
                            <small class="testu-gris-txikia">PNG/JPG formatua gomendatzen da.</small>
                        </div>

                        <div class="inprimaki-taldea">
                            <label for="nan">NAN / Identifikazio dokumentua <span class="testu-gorria">*</span></label>
                            <input type="text" id="nan" name="nan" class="inprimaki-kontrola" required placeholder="Adib: 12345678Z">
                        </div>

                        <div class="sareta-bikoa-flex">
                            <div class="inprimaki-taldea">
                                <label for="izena">Izena <span class="testu-gorria">*</span></label>
                                <input type="text" id="izena" name="izena" class="inprimaki-kontrola" required placeholder="Izena">
                            </div>
                            <div class="inprimaki-taldea">
                                <label for="abizenak">Abizenak <span class="testu-gorria">*</span></label>
                                <input type="text" id="abizenak" name="abizenak" class="inprimaki-kontrola" required placeholder="Abizenak">
                            </div>
                        </div>

                        <div class="sareta-bikoa-flex">
                            <div class="inprimaki-taldea">
                                <label for="sexua">Sexua</label>
                                <select id="sexua" name="sexua" class="inprimaki-kontrola">
                                    <option value="">Hautatu...</option>
                                    <option value="Emakumea">Emakumea</option>
                                    <option value="Gizona">Gizona</option>
                                    <option value="Bestea">Bestea</option>
                                </select>
                            </div>
                            <div class="inprimaki-taldea">
                                <label for="odol_taldea">Odol Taldea</label>
                                <select id="odol_taldea" name="odol_taldea" class="inprimaki-kontrola">
                                    <option value="">Hautatu...</option>
                                    <?php foreach(['A+','A-','B+','B-','AB+','AB-', '0+','0-'] as $ot): ?>
                                        <option value="<?php echo $ot; ?>"><?php echo $ot; ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>

                        <div class="inprimaki-taldea">
                            <label for="jaiotze_data">Jaiotze Data</label>
                            <input type="date" id="jaiotze_data" name="jaiotze_data" class="inprimaki-kontrola">
                        </div>
                    </div>
                </div>

                <!-- 2. ZUTABEA: Kontaktua eta Kokapena -->
                <div class="sareta-zutabea">
                    <div class="kutxa-zuria-itzala padding-25 marjina-behe-30">
                        <h3 class="izenburu-atal-urdina"><img src="../img/svg/map-pin.svg" alt="" class="ikono-ertaina marjina-esk-10"> Kokapena eta Kontaktua</h3>
                        
                        <div class="inprimaki-taldea marjina-goi-20">
                            <label for="helbidea">Helbidea</label>
                            <input type="text" id="helbidea" name="helbidea" class="inprimaki-kontrola" placeholder="Kale izena, ataria, solairua">
                        </div>

                        <div class="sareta-bikoa-flex">
                            <div class="inprimaki-taldea">
                                <label for="herria">Herria</label>
                                <input type="text" id="herria" name="herria" class="inprimaki-kontrola" placeholder="Herria">
                            </div>
                            <div class="inprimaki-taldea">
                                <label for="posta_kodea">Posta Kodea</label>
                                <input type="text" id="posta_kodea" name="posta_kodea" class="inprimaki-kontrola" placeholder="P.K.">
                            </div>
                        </div>

                        <div class="inprimaki-taldea">
                            <label for="telefonoa">Telefono Zenbakia</label>
                            <input type="text" id="telefonoa" name="telefonoa" class="inprimaki-kontrola" placeholder="600 000 000">
                        </div>

                        <hr class="banatzaile-marra-fin">

                        <h3 class="izenburu-atal-urdina marjina-goi-20"><img src="../img/svg/mail.svg" alt="" class="ikono-ertaina marjina-esk-10"> Kontuaren Segurtasuna</h3>
                        
                        <div class="inprimaki-taldea marjina-goi-15">
                            <label for="email">E-posta <span class="testu-gorria">*</span></label>
                            <input type="email" id="email" name="email" class="inprimaki-kontrola" required placeholder="pazientea@adibidea.eus">
                        </div>

                        <div class="sareta-bikoa-flex">
                            <div class="inprimaki-taldea">
                                <label for="pasahitza">Behin-behineko Pasahitza</label>
                                <input type="password" id="pasahitza" name="pasahitza" class="inprimaki-kontrola" value="1234">
                                <small class="testu-gris-txikia">Defektuz: 1234</small>
                            </div>
                            <div class="inprimaki-taldea">
                                <label for="hizkuntza">Hizkuntza</label>
                                <select id="hizkuntza" name="hizkuntza" class="inprimaki-kontrola">
                                    <option value="Euskara">Euskara</option>
                                    <option value="Gaztelania">Gaztelania</option>
                                    <option value="Ingelesa">Ingelesa</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="akzio-botoiak-finkoak">
                <button type="reset" class="botoia botoi-ertza marjina-esk-10">Datuak garbitu</button>
                <button type="submit" class="botoia botoi-nagusia flex-hazkundea-1">
                    <img src="../img/svg/save.svg" alt="" class="ikono-txikia marjina-esk-5 ikono-zuria"> Pazientea Gorde eta Erregistratu
                </button>
            </div>
        </form>
    </main>

    <style>
    .sareta-konfigurazioa { display: grid; grid-template-columns: 1fr 1fr; gap: 30px; margin-top: 20px; }
    .modern-inprimakia { max-width: 1000px; margin: 0 auto; }
    .izenburu-atal-urdina { font-size: 1.1rem; color: var(--primary-color); border-bottom: 2px solid #f1f5f9; padding-bottom: 15px; margin-bottom: 5px; font-weight: 600; display: flex; align-items: center; }
    .banatzaile-marra-fin { border: none; border-top: 1px solid #f1f5f9; margin: 25px 0; }
    .akzio-botoiak-finkoak { display: flex; background: white; padding: 20px 30px; border-radius: 16px; border: 1px solid var(--border-color); box-shadow: 0 -4px 15px rgba(0,0,0,0.05); margin-top: 20px; position: sticky; bottom: 20px; z-index: 10; align-items: center; }
    .testu-gorria { color: #cc0000; font-weight: bold; }
    @media (max-width: 768px) { .sareta-konfigurazioa { grid-template-columns: 1fr; } }
    </style>
    </main>

<?php include_once '../php_orri_includeak/harrera_footer.php'; ?>
