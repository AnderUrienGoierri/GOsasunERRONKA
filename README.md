# GOsasun - Osasun Ataria

GOsasun pazienteen, medikuen eta harrerako langileen kudeaketarako aplikazio integral bat da. Aplikazio honek osasun-datuak jarraitzeko, hitzorduak erreserbatzeko, eta medikuaren eta pazientearen arteko komunikazio segurua bermatzeko diseinatuta dago.

## 📂 Formatu eta Karpeta Estruktura

Proiektua logika eta rol ezberdinen arabera antolatu da:

- php_hasiera/ - Atariaren atal publikoak (Saioa hasi, kontaktua).
- php_harrera/ - Harrerako langileen ataria (Paziente/mediku kudeaketa, hitzorduak, webguneko mezu publikoak).
- php_medikua/ - Medikuaren atari pribatua (Nire pazienteak, agendaren kudeaketa, errezetak, pazienteen jarraipena).
- php_pazientea/ - Pazientearen ataria (Datu pertsonalak, neurketen sarrera, hitzorduak eskatzea, abisuak).
- php_includeak/ - Webgune osoko atal komunak (goiburuak, oinak, CSS/JS loturak).
- php_laguntzaileak/ - Rolik behar ez duten puskak kudeatzeko (Login egiaztapenak, DB Konexioa, Saioa itxi).
- css/ eta js/ - Estilo grafikoak eta portaera dinamikoa (grafikoak, abisuak).
- sql/ - Datu-baseko diseinuaren eta eskemaren fitxategiak.
- pdf_txostenak/ - Sortutako txosten eta errezeta fisikoak gordetzeko karpeta.
- xml_exportableak/ - Sistemak sortzen dituen XML datuen esportazioak gordetzeko direktorioa.

### Orri Nagusiak

- index.php (Erroan): Webguneko atari nagusi publikoa, sarbide ezberdinekin.
- */index.php: Rol bakoitzaren kontrol-panela (Dashboard).
- */mezuak.php: Barne mezularitza sistemak.
- */hitzorduak.php: Orduen erreserbak eta gainbegiratzea.
- */pazienteak.php edo */medikuak.php: Kontsultarako direktorioak.

---

## 💾 Datu-Basearen Arkitektura

Datu-basea erlazio-eredu sendo batean oinarritzen da datuen osotasuna bermatzeko.

### 1. Taulak

Aplikazioaren entitate nagusiak honako taulak osatzen dute:

- **Rolak** (
ol_id, izena): Baimen maila bakoitzaren definizioa.
- **Erabiltzaileak** (rabiltzaile_id, mail, pasahitza, 
ol_id, ktibo): Sistemara sartzen diren kide guztien kontu nagusia (heredentzia gurasoa).
- **Pazienteak** (NAN, izena, abizenak, jaiotze-data, egoera klinikoa...): Erabiltzaileen taulatik heredatuta.
- **Medikuak** (elkargokide-zenbakia, espezialitatea...): Erabiltzaileen taulatik heredatuta.
- **Harrerako_Langileak**: Erabiltzaileen taulatik heredatuta.
- **Mediku_Paziente** (mediku_id, paziente_id): Lotura-taula. Paziente bakoitzari mediku bat (n:m edo 1:n) esleitzeko sistema.
- **Neurketak** (	entsioa, glukosa, pisua, etc.): Pazienteek sartutako jarraipen klinikoak.
- **Hitzorduak** (data, ordua, goera): Mediku eta pazienteen arteko agenda.
- **Errezetak**: Hitzorduekin edo medikazioekin lotutako diagnostikoak eta dokumentazioa.
- **Mezuak**: Barne mezularitza.
- **Kontaktua_Mezuak**: Webgune publikotik hasierako orrian jasotako mezuak.
- **Abisuak** (mota, 	estua, irakurrita): Neurketa anormaletan sortutako alerten taula.

### 2. Bistak (SQL Views)

Kontsultak arintzeko eta segurtasuna indartzeko, hainbat bista programatu dira datuak mozorrotu edo bateratzeko:

- V_Login: Saioa hasteko beharrezko oinarrizko datuak soilik eskaintzen ditu (pasahitza eta rola).
- V_Pazientea, V_Medikua, V_Harrera: Erabiltzaileen taula orokorra euren berezko taularekin lotzen duen ikuspegi bateratua.
- V_Mediku_Pazienteak: Mediku zehatz baten pazienteen zerrenda azkar bat ateratzeko lotura grafikoa.
- V_Hitzorduak_Osoa: Hitzorudak mediku eta paziente izenekin osatuta dakarren bista, gurutzeak saihesteko.
- V_Kanpoko_Mezuak eta V_Abisuak_Osoa: Panelen taulentzako bereziki egokitutako bistak.

### 3. Triggerak

Datuen koherentzia mantentzeko prozesu automatizatu txikiak:

- Eguneratu_Paziente_Datuak: Paziente batek Neurketak taulan pisu erregistro berri bat sartzen duenean (INSERT), pazientearen berezko fitxan dagoen zken_pisua eta zken_altuera automatikoki eguneratzen du.
- *(Oharra: Abisu klinikoen triggerrak JS logikara migratu dira orain bisuak_logika.js bidez kudeatzeko)*

### 4. Indizeak

*Oinarrizko foreign-key eta primary-key indizeak sortu ohi dira modu automatikoan (adib: paziente_id, mediku_id). Honela, kontsultak optimizatzen dira batez ere JOIN operazioetan.*

---

## 📄 Lizentzia

Proiektu hau **Apache License 2.0** lizentziapean argitaratu da. Informazio gehiago nahi izanez gero, irakurri [LICENSE](LICENSE) fitxategia.

© 2026 GOsasun Proiektua. Irakaskuntza edo erabilpen profesionalean oinarritua.


## 🧑‍💻 Kodearen Xehetasunak (Funtzioak, Aldagaiak eta CSS/HTML)

Dokumentazio hau automatikoki sortu da proiektuko karpeta nagusiak miatuz.

### 📁 `php_hasiera/`

#### `C:/Xampp/htdocs/GOsasun/php_hasiera/kontaktua.php`
- **Aldagai nagusiak:** `$base_path`, `$success_msg`, `$error_msg`, `$izena`, `$email`, `$mezua`, `$page_title`, `$current_page`, `$extra_js`

#### `C:/Xampp/htdocs/GOsasun/php_hasiera/login.php`
- **Aldagai nagusiak:** `$base_path`, `$error_msg`, `$email`, `$pasahitza`, `$user`, `$pasahitza`, `$page_title`, `$current_page`, `$extra_js`, `$_SESSION['erabiltzaile_id']`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`

### 📁 `php_harrera/`

#### `C:/Xampp/htdocs/GOsasun/php_harrera/harrerako_langileak.php`
- **Aldagai nagusiak:** `$base_path`, `$msg`, `$error`, `$langileak`, `$page_title`, `$current_page`, `$custom_css`, `$extra_js`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, `$_SESSION['erabiltzaile_id']`

#### `C:/Xampp/htdocs/GOsasun/php_harrera/harrerako_langile_editatu.php`
- **Aldagai nagusiak:** `$base_path`, `$error`, `$msg`, `$id`, `$izena`, `$abizenak`, `$email`, `$stmt2`, `$stmtP`, `$langilea`, `$page_title`, `$current_page`, `$custom_css`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`

#### `C:/Xampp/htdocs/GOsasun/php_harrera/harrerako_langile_ezabatu.php`
- **Aldagai nagusiak:** `$base_path`, `$id`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, `$_SESSION['erabiltzaile_id']`

#### `C:/Xampp/htdocs/GOsasun/php_harrera/harrerako_langile_sortu.php`
- **Aldagai nagusiak:** `$base_path`, `$error`, `$msg`, `$izena`, `$abizenak`, `$email`, `$pasahitza`, `$pasahitza2`, `$berri_id`, `$stmt2`, `$page_title`, `$current_page`, `$custom_css`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`

#### `C:/Xampp/htdocs/GOsasun/php_harrera/hitzorduak.php`
- **Aldagai nagusiak:** `$base_path`, `$msg`, `$error`, `$medikuak`, `$pazienteak`, `$h_id`, `$p_id`, `$m_id`, `$data`, `$h_ordua`, `$b_ordua`, `$arrazoia`, `$egoera`, `$sqlCheck`, `$paramsCheck`, ... (gehiago)

#### `C:/Xampp/htdocs/GOsasun/php_harrera/index.php`
- **Aldagai nagusiak:** `$base_path`, `$langile_id`, `$stmtH`, `$user_data`, `$page_title`, `$current_page`, `$custom_css`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, `$_SESSION['erabiltzaile_id']`

#### `C:/Xampp/htdocs/GOsasun/php_harrera/kanpoko_mezuak.php`
- **Aldagai nagusiak:** `$base_path`, `$mezuak`, `$page_title`, `$current_page`, `$custom_css`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`

#### `C:/Xampp/htdocs/GOsasun/php_harrera/medikuak.php`
- **Aldagai nagusiak:** `$base_path`, `$msg`, `$error`, `$mid`, `$medikuak`, `$page_title`, `$current_page`, `$custom_css`, `$extra_js`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`

#### `C:/Xampp/htdocs/GOsasun/php_harrera/mediku_editatu.php`
- **Aldagai nagusiak:** `$base_path`, `$id`, `$msg`, `$error`, `$izena`, `$abizenak`, `$email`, `$elkargokide`, `$espezialitatea`, `$telefonoa`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`

#### `C:/Xampp/htdocs/GOsasun/php_harrera/mediku_fitxa.php`
- **Aldagai nagusiak:** `$base_path`, `$id`, `$medikua`, `$stmtH`, `$hitzorduak`, `$page_title`, `$current_page`, `$custom_css`, `$class`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`

#### `C:/Xampp/htdocs/GOsasun/php_harrera/mediku_sortu.php`
- **Aldagai nagusiak:** `$base_path`, `$error`, `$izena`, `$abizenak`, `$email`, `$pasahitza`, `$elkargokide`, `$espezialitatea`, `$telefonoa`, `$stmtUser`, `$new_id`, `$stmtMediku`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`

#### `C:/Xampp/htdocs/GOsasun/php_harrera/mezuak.php`
- **Aldagai nagusiak:** `$base_path`, `$erabiltzaile_id`, `$stmt_jasotakoak`, `$jasotako_mezuak`, `$stmt_bidalitakoak`, `$bidalitako_mezuak`, `$page_title`, `$current_page`, `$custom_css`, `$extra_js`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, `$_SESSION['erabiltzaile_id']`

#### `C:/Xampp/htdocs/GOsasun/php_harrera/mezu_berria.php`
- **Aldagai nagusiak:** `$base_path`, `$erabiltzaile_id`, `$stmt_pazienteak`, `$pazienteak`, `$stmt_medikuak`, `$medikuak`, `$error_msg`, `$success_msg`, `$hartzaile_id`, `$gaia`, `$mezua`, `$page_title`, `$current_page`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, ... (gehiago)

#### `C:/Xampp/htdocs/GOsasun/php_harrera/mezu_xehetasuna.php`
- **Aldagai nagusiak:** `$base_path`, `$erabiltzaile_id`, `$mezu_id`, `$mota`, `$erantzuna`, `$stmt_reply`, `$success_message`, `$error_message`, `$mota`, `$row`, `$mezua`, `$stmt_mark`, `$page_title`, `$current_page`, `$custom_css`, ... (gehiago)

#### `C:/Xampp/htdocs/GOsasun/php_harrera/pazienteak.php`
- **Aldagai nagusiak:** `$base_path`, `$msg`, `$error`, `$pid`, `$pazienteak`, `$page_title`, `$current_page`, `$custom_css`, `$egoera`, `$extra_js`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`

#### `C:/Xampp/htdocs/GOsasun/php_harrera/paziente_editatu.php`
- **Aldagai nagusiak:** `$base_path`, `$id`, `$msg`, `$error`, `$nan`, `$izena`, `$abizenak`, `$email`, `$jaiotze_data`, `$telefonoa`, `$stmtU`, `$stmtP`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`

#### `C:/Xampp/htdocs/GOsasun/php_harrera/paziente_fitxa.php`
- **Aldagai nagusiak:** `$base_path`, `$id`, `$pazientea`, `$stmtN`, `$neurketak`, `$stmtH`, `$hitzorduak`, `$page_title`, `$current_page`, `$custom_css`, `$azkena`, `$class`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`

#### `C:/Xampp/htdocs/GOsasun/php_harrera/paziente_sortu.php`
- **Aldagai nagusiak:** `$base_path`, `$msg`, `$error`, `$nan`, `$izena`, `$abizenak`, `$email`, `$pasahitza`, `$jaiotze_data`, `$telefonoa`, `$odol_taldea`, `$stmtUser`, `$new_id`, `$stmtPaziente`, `$_SESSION['rol_id']`, ... (gehiago)

### 📁 `php_medikua/`

#### `C:/Xampp/htdocs/GOsasun/php_medikua/abisuak.php`
- **Aldagai nagusiak:** `$base_path`, `$mediku_id`, `$abisuak`, `$page_title`, `$current_page`, `$custom_css`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, `$_SESSION['erabiltzaile_id']`

#### `C:/Xampp/htdocs/GOsasun/php_medikua/errezetak.php`
- **Funtzioak/Metodoak:** `openModal`, `closeModal`, `viewPrescription`, `confirmDelete`
- **Aldagai nagusiak:** `$base_path`, `$mediku_id`, `$msg`, `$error`, `$stmtP`, `$pazienteak`, `$gaur`, `$stmtH`, `$hitzordu_aukerak`, `$e_id`, `$p_id`, `$h_id`, `$i_data`, `$ir_data`, `$diag`, ... (gehiago)

#### `C:/Xampp/htdocs/GOsasun/php_medikua/grafikak.php`
- **Aldagai nagusiak:** `$base_path`, `$mediku_id`, `$pazienteZerrenda`, `$aukeratutako_pazientea`, `$neurketak`, `$baimena`, `$stmt_datuak`, `$json_neurketak`, `$page_title`, `$current_page`, `$custom_css`, `$aukeratutako_pazientea`, `$extra_js`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, ... (gehiago)

#### `C:/Xampp/htdocs/GOsasun/php_medikua/hitzorduak.php`
- **Aldagai nagusiak:** `$base_path`, `$mediku_id`, `$msg`, `$error`, `$stmtP`, `$pazienteak`, `$h_id`, `$p_id`, `$m_id`, `$data`, `$h_ordua`, `$b_ordua`, `$arrazoia`, `$egoera`, `$sqlCheck`, ... (gehiago)

#### `C:/Xampp/htdocs/GOsasun/php_medikua/index.php`
- **Aldagai nagusiak:** `$base_path`, `$mediku_id`, `$user_data`, `$stmtPaziente`, `$pazienteKopurua`, `$gaur`, `$stmtHitzordu`, `$gaurkoHitzorduak`, `$page_title`, `$current_page`, `$custom_css`, `$extra_js`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, `$_SESSION['erabiltzaile_id']`

#### `C:/Xampp/htdocs/GOsasun/php_medikua/mezuak.php`
- **Funtzioak/Metodoak:** `fitxaAldatu`
- **Aldagai nagusiak:** `$base_path`, `$erabiltzaile_id`, `$stmt_jasotakoak`, `$jasotako_mezuak`, `$stmt_bidalitakoak`, `$bidalitako_mezuak`, `$page_title`, `$current_page`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, `$_SESSION['erabiltzaile_id']`

#### `C:/Xampp/htdocs/GOsasun/php_medikua/mezu_berria.php`
- **Aldagai nagusiak:** `$base_path`, `$erabiltzaile_id`, `$stmt_pazienteak`, `$pazienteak`, `$stmt_harrera`, `$harrerakoak`, `$error_msg`, `$success_msg`, `$hartzaile_id`, `$gaia`, `$mezua`, `$page_title`, `$current_page`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, ... (gehiago)

#### `C:/Xampp/htdocs/GOsasun/php_medikua/mezu_xehetasuna.php`
- **Aldagai nagusiak:** `$base_path`, `$erabiltzaile_id`, `$mezu_id`, `$mezua`, `$stmt_mark`, `$page_title`, `$current_page`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, `$_SESSION['erabiltzaile_id']`

#### `C:/Xampp/htdocs/GOsasun/php_medikua/pazienteak.php`
- **Aldagai nagusiak:** `$base_path`, `$mediku_id`, `$pazienteak`, `$page_title`, `$current_page`, `$custom_css`, `$extra_js`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, `$_SESSION['erabiltzaile_id']`

#### `C:/Xampp/htdocs/GOsasun/php_medikua/paziente_info.php`
- **Aldagai nagusiak:** `$base_path`, `$mediku_id`, `$paziente_id`, `$msg_status`, `$berria`, `$stmtUpdate`, `$stmtCheck`, `$pazientea`, `$stmtNeurketak`, `$neurketak`, `$page_title`, `$current_page`, `$custom_css`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, ... (gehiago)

### 📁 `php_pazientea/`

#### `C:/Xampp/htdocs/GOsasun/php_pazientea/abisuak.php`
- **Aldagai nagusiak:** `$base_path`, `$paziente_id`, `$msg`, `$abisu_id`, `$abisuak`, `$page_title`, `$current_page`, `$custom_css`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, `$_SESSION['erabiltzaile_id']`

#### `C:/Xampp/htdocs/GOsasun/php_pazientea/datuak.php`
- **Aldagai nagusiak:** `$base_path`, `$paziente_id`, `$pazientea`, `$stmtMedikuak`, `$medikuak`, `$page_title`, `$current_page`, `$custom_css`, `$extra_js`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, `$_SESSION['erabiltzaile_id']`

#### `C:/Xampp/htdocs/GOsasun/php_pazientea/errezetak.php`
- **Aldagai nagusiak:** `$base_path`, `$paziente_id`, `$sql`, `$stmtErr`, `$errezetak`, `$page_title`, `$current_page`, `$custom_css`, `$gaurH`, `$iraungitzeaH`, `$egoeraKoba`, `$egoeraTestua`, `$extra_js`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, ... (gehiago)

#### `C:/Xampp/htdocs/GOsasun/php_pazientea/grafikak.php`
- **Aldagai nagusiak:** `$base_path`, `$erab_id`, `$neurketak`, `$json_neurketak`, `$page_title`, `$current_page`, `$custom_css`, `$extra_js`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, `$_SESSION['erabiltzaile_id']`

#### `C:/Xampp/htdocs/GOsasun/php_pazientea/hitzorduak.php`
- **Aldagai nagusiak:** `$base_path`, `$paziente_id`, `$msg`, `$error`, `$h_id`, `$p_id`, `$m_id`, `$data`, `$h_ordua`, `$b_ordua`, `$arrazoia`, `$sqlCheck`, `$paramsCheck`, `$stmtCheck`, `$stmtInsert`, ... (gehiago)

#### `C:/Xampp/htdocs/GOsasun/php_pazientea/index.php`
- **Aldagai nagusiak:** `$base_path`, `$erabiltzaile_id`, `$user_data`, `$stmtNeurketa`, `$azkenNeurketa`, `$gaur`, `$stmtHitzordu`, `$hurrengoHitzordua`, `$page_title`, `$current_page`, `$custom_css`, `$extra_js`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, `$_SESSION['erabiltzaile_id']`

#### `C:/Xampp/htdocs/GOsasun/php_pazientea/mezuak.php`
- **Funtzioak/Metodoak:** `fitxaAldatu`
- **Aldagai nagusiak:** `$base_path`, `$erabiltzaile_id`, `$stmt_jasotakoak`, `$jasotako_mezuak`, `$stmt_bidalitakoak`, `$bidalitako_mezuak`, `$page_title`, `$current_page`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, `$_SESSION['erabiltzaile_id']`

#### `C:/Xampp/htdocs/GOsasun/php_pazientea/mezu_berria.php`
- **Aldagai nagusiak:** `$base_path`, `$erabiltzaile_id`, `$stmt_medikuak`, `$medikuak`, `$stmt_harrera`, `$harrerakoak`, `$error_msg`, `$success_msg`, `$hartzaile_id`, `$gaia`, `$mezua`, `$page_title`, `$current_page`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, ... (gehiago)

#### `C:/Xampp/htdocs/GOsasun/php_pazientea/mezu_xehetasuna.php`
- **Aldagai nagusiak:** `$base_path`, `$erabiltzaile_id`, `$mezu_id`, `$mezua`, `$stmt_mark`, `$page_title`, `$current_page`, `$_SESSION['rol_id']`, `$_SESSION['rol_izena']`, `$_SESSION['erabiltzaile_id']`

#### `C:/Xampp/htdocs/GOsasun/php_pazientea/neurketak.php`
- **Aldagai nagusiak:** `$base_path`, `$paziente_id`, `$success_msg`, `$error_msg`, `$data`, `$ordua`, `$glukosa`, `$sistolikoa`, `$diastolikoa`, `$pisua`, `$sintomak`, `$page_title`, `$current_page`, `$custom_css`, `$_SESSION['rol_id']`, ... (gehiago)

### 📁 `php_includeak/`

#### `C:/Xampp/htdocs/GOsasun/php_includeak/goiburua.php`
- **Aldagai nagusiak:** `$orri_izena`, `$css_fitxategia`, `$current_page`

#### `C:/Xampp/htdocs/GOsasun/php_includeak/harrera_goiburua.php`
- **Aldagai nagusiak:** `$page_title`, `$orri_izena`, `$css_fitxategia`, `$current_page`

#### `C:/Xampp/htdocs/GOsasun/php_includeak/mediku_goiburua.php`
- **Aldagai nagusiak:** `$orri_izena`, `$css_fitxategia`, `$current_page`

#### `C:/Xampp/htdocs/GOsasun/php_includeak/paziente_goiburua.php`
- **Aldagai nagusiak:** `$orri_izena`, `$css_fitxategia`, `$current_page`

### 📁 `php_laguntzaileak/`

#### `C:/Xampp/htdocs/GOsasun/php_laguntzaileak/abisu_sortu_api.php`
- **Aldagai nagusiak:** `$paziente_id`, `$mota`, `$testua`, `$_SESSION['erabiltzaile_id']`

#### `C:/Xampp/htdocs/GOsasun/php_laguntzaileak/DB_konexioa.php`
- **Aldagai nagusiak:** `$host`, `$dbname`, `$username`, `$password`

#### `C:/Xampp/htdocs/GOsasun/php_laguntzaileak/pdf_sortu.php`
- **Aldagai nagusiak:** `$uploadDir`, `$erabiltzaile_id`, `$paziente_id`, `$date`, `$filename`, `$targetPath`, `$_SESSION['rol_id']`, `$_SESSION['erabiltzaile_id']`

#### `C:/Xampp/htdocs/GOsasun/php_laguntzaileak/xml_sortu.php`
- **Aldagai nagusiak:** `$erab_id`, `$rol`, `$target_paziente_id`, `$rol`, `$baimen_stmt`, `$hasiera_data`, `$bukaera_data`, `$paz_stmt`, `$paziente_info`, `$neurketak_stmt`, `$neurketak_emaitzak`, `$xml`, `$root`, `$paz_node`, `$neurketak_node`, ... (gehiago)

### 📁 `css/`

#### `C:/Xampp/htdocs/GOsasun/css/abisuak.css`
- **CSS Hautatzaileak:** `.abisu-taula`, `.paziente-izena`, `.irakurrita-badge`, `.berria-badge`, `.mota-etiketa`, `.ez-irakurrita`, `.abisu-mota`, `.mota-glukosa`, `.mota-tentsioa`, `.mota-pisua`, `.abisu-data`, `.irakurri-botoia`, `.barneko-bistarapena`, `.testu-arriskua-ezk`

#### `C:/Xampp/htdocs/GOsasun/css/estilo_orokorrak.css`
- **CSS Hautatzaileak:** `.inprimaki-taldea`, `.inprimaki-kontrola`, `.errore-mezua`, `.informazio-taldea`, `.informazio-balioa`, `.alerta`, `.alerta-errorea`, `.alerta-arrakasta`, `.hero-sekzioa`, `.hero-errenkada-1`, `.hero-logo-handia`, `.azpititulu-edukiontzia`, `.azpititulua`, `.portal-sarbideak`, `.portal-txartela`, `.portal-irudia`, `.portal-info`, `.botoia`, `.paziente-taula`, `.identifikadorea`, `.status-label`, `.status-bukatuta`, `.status-ezeztatuta`, `.status-zain`, `.taula-ekintzak`, `.botoi-ikonoa`, `.orri-goiburua`, `.flex-tartea-20`, `.marjina-behe-0`, `.kurtsore-erakuslea`, ... (gehiago)

#### `C:/Xampp/htdocs/GOsasun/css/footer.css`
- **CSS Hautatzaileak:** `.orri-oin-nabigazioa`, `.footer-logo-container`, `.footer-logo`

#### `C:/Xampp/htdocs/GOsasun/css/goiburua.css`
- **CSS Hautatzaileak:** `.nabigazio-barra`, `.logo-irudia`, `.logo-esteka`, `.logo-etiketa`, `.menu-botoia`, `.nabigazio-estekak`, `.aktiboa`, `.botoia`, `.botoi-nagusia`, `.botoi-ertza`, `.botoi-sortu`, `.panel-goiburua`

#### `C:/Xampp/htdocs/GOsasun/css/grafikak.css`
- **CSS Hautatzaileak:** `.grafika-edukiontzia`, `.grafika-goiburua`, `.grafika-kontrolak`, `.inprimaki-kontrola`, `.grafika-txartela`, `.nire-grafika`, `.daturik-ez`, `.kargatzen-mezua`

#### `C:/Xampp/htdocs/GOsasun/css/harrerako_langileak.css`
- **CSS Hautatzaileak:** `.orri-goiburua`, `.flex-tartea-20`, `.bilaketa-barra`, `.taula-inguratzailea`, `.paziente-taula`, `.irudia-txikia`, `.identifikadorea`, `.taula-ekintzak`, `.botoi-ikonoa`, `.botoi-sortu`, `.inprimaki-edukiontzia`, `.atzera-botoia`

#### `C:/Xampp/htdocs/GOsasun/css/hitzorduak.css`
- **CSS Hautatzaileak:** `.orri-goiburua`, `.laburpen-txartelak`, `.itxurazko-txartela`, `.txartel-balioa`, `.joera-etiketa`, `.joera-igoera`, `.joera-beherakada`, `.egutegia-edukiontzia`, `.egutegia-goiburua`, `.egutegia-nabigazioa`, `.egutegia-titulua`, `.bista-hautatzailea`, `.grid-egutegia`, `.grid-goiburua`, `.grid-th`, `.egun-gelaxka`, `.hutsik`, `.gaurkoa`, `.egun-zenbakia`, `.eguneko-hitzorduak`, `.hitzordu-blokea`, `.status-bukatuta`, `.status-ezeztatuta`, `.status-zain`, `.bloke-izenik`, `.bloke-mota`, `.agenda-edukiontzia`, `.egun-taldea`, `.egun-goiburua`, `.hitzordu-txartela`, ... (gehiago)

#### `C:/Xampp/htdocs/GOsasun/css/index.css`
- **CSS Hautatzaileak:** `.hero-sekzioa`, `.hero-edukia`, `.hero-botoiak`, `.hero-irudia`, `.ezaugarriak`, `.ezaugarri-txartela`, `.ezaugarri-ikonoa`

#### `C:/Xampp/htdocs/GOsasun/css/index_harrera.css`
- **CSS Hautatzaileak:** `.kaixo-atalak`, `.menu-txartela`, `.irteera-txartela`

#### `C:/Xampp/htdocs/GOsasun/css/index_medikua.css`
- **CSS Hautatzaileak:** `.menu-orria`, `.kaixo-atalak`, `.menu-txartela`, `.irteera-txartela`

#### `C:/Xampp/htdocs/GOsasun/css/index_pazientea.css`
- **CSS Hautatzaileak:** `.kaixo-atalak`, `.menu-txartela`, `.irteera-txartela`

#### `C:/Xampp/htdocs/GOsasun/css/kontaktua.css`
- **CSS Hautatzaileak:** `.kontaktu-sekzioa`, `.kontaktu-edukiontzia`, `.kontaktu-inprimakia`, `.zabalera-100`, `.kontaktu-informazioa`, `.map-placeholder`

#### `C:/Xampp/htdocs/GOsasun/css/login.css`
- **CSS Hautatzaileak:** `.hasiera-orria`, `.hasiera-edukiontzia`, `.hasiera-txartela`, `.hasiera-goiburua`, `.hasiera-oina`, `.goiko-tartea-20`, `.inprimaki-kontrola`

#### `C:/Xampp/htdocs/GOsasun/css/medikuak.css`
- **CSS Hautatzaileak:** `.espezialitatea-etiketa`, `.elkargokide-zkia`, `.fitxa-edukiontzia`, `.profil-txartela`, `.profil-irudia-handia`, `.espezialitatea-txapa`

#### `C:/Xampp/htdocs/GOsasun/css/medikua_errezetak.css`
- **CSS Hautatzaileak:** `.errezetak-edukiontzia`, `.errezeta-txartela`, `.data-blokea`, `.hilabetea`, `.eguna`, `.urtea`, `.errezeta-xehetasunak`, `.diagnostikoa`, `.iraungitzea`, `.egoera-txapa`, `.aktiboa`, `.iraungita`, `.baliogabetuta`, `.egoera-hutsa`, `.ikono-hutsa`, `.modala-inguratzailea`, `.modala-edukia`, `.modala-goiburua`

#### `C:/Xampp/htdocs/GOsasun/css/mezuak.css`
- **CSS Hautatzaileak:** `.mezu-zerrenda-edukiontzia`, `.mezu-berria`, `.egoera-berria`, `.egoera-irakurrita`, `.egoera-erantzunda`, `.mezu-xehetasun-txartela`, `.mezu-info-blokea`, `.mezu-testua`, `.erantzun-atala`, `.erantzuna-aurretik`, `.erantzun-data`

#### `C:/Xampp/htdocs/GOsasun/css/neurketak.css`
- **CSS Hautatzaileak:** `.panel-goiburua`, `.nabigazio-estekak`, `.panel-nagusia`, `.inprimaki-edukiontzia`, `.inprimaki-lerroa`, `.data-ordu-lerroa`, `.zabalera-erdia`, `.neurketa-sareta`, `.neurketa-kutxa`, `.kutxa-ikonoa`, `.zabalera-osoa`, `.goiko-tartea-20`, `.goiko-tartea-30`, `.inprimaki-ekintzak`, `.bidali-botoia`, `.active`, `.botoia`

#### `C:/Xampp/htdocs/GOsasun/css/pazienteak.css`
- **CSS Hautatzaileak:** `.orri-goiburua`, `.flex-tartea-20`, `.bilaketa-barra`, `.taula-moldakorra`, `.datu-taula`, `.irudia-txikia`, `.identifikadorea`, `.egoera-aktiboa`, `.egoera-ez-aktiboa`, `.odol-txapa`, `.inprimaki-kutxa`, `.inprimaki-lerroa`, `.zabalera-erdia`, `.botoi-taldea`, `.beharrezkoa`, `.fitxa-edukiontzia`, `.profil-txartela`, `.profil-irudia-handia`, `.txartel-klinikoa`, `.estatistika-klinikoak`, `.estatistika-kutxa`, `.param-sareta`, `.param-txartela`, `.param-balioa`, `.menu-sareta`, `.menu-txartela`, `.txartel-ikonoa`, `.neurketa-sareta`

#### `C:/Xampp/htdocs/GOsasun/css/pazientea_errezetak.css`
- **CSS Hautatzaileak:** `.errezetak-edukiontzia`, `.errezeta-txartela`, `.data-blokea`, `.hilabetea`, `.eguna`, `.urtea`, `.errezeta-xehetasunak`, `.medikua`, `.iraungitzea`, `.egoera-txapa`, `.aktiboa`, `.iraungita`, `.baliogabetuta`, `.egoera-hutsa`, `.ikono-hutsa`

### 📁 `js/`

#### `C:/Xampp/htdocs/GOsasun/js/abisuak_logika.js`
- **Funtzioak/Metodoak:** `egiaztatuAbisuak`
- **Aldagai nagusiak:** `abisuak`, `formData`

#### `C:/Xampp/htdocs/GOsasun/js/grafikak.js`
- **Funtzioak/Metodoak:** `drawChart`
- **Aldagai nagusiak:** `myChart`, `canvas`, `ctx`, `labels`, `datasets`, `element`, `alerta`, `dateObj`, `dateStr`, `opt`, `formData`, `res`, `link`

#### `C:/Xampp/htdocs/GOsasun/js/harrera_langileak.js`
- **Funtzioak/Metodoak:** `ordenatuTaula`
- **Aldagai nagusiak:** `filter`, `rows`, `row`, `nameText`, `emailText`, `gorakaLangileak`, `tbody`, `textA`, `textB`, `numA`, `numB`

#### `C:/Xampp/htdocs/GOsasun/js/harrera_medikuak.js`
- **Funtzioak/Metodoak:** `ordenatuTaula`
- **Aldagai nagusiak:** `filter`, `rows`, `row`, `nameText`, `espText`, `gorakaMedikuak`, `tbody`, `textA`, `textB`

#### `C:/Xampp/htdocs/GOsasun/js/harrera_mezuak.js`
- **Funtzioak/Metodoak:** `fitxaAldatu`

#### `C:/Xampp/htdocs/GOsasun/js/harrera_pazienteak.js`
- **Funtzioak/Metodoak:** `ordenatuTaula`
- **Aldagai nagusiak:** `filter`, `rows`, `row`, `nameText`, `nanText`, `goraka`, `tbody`, `textA`, `textB`, `numA`, `numB`

#### `C:/Xampp/htdocs/GOsasun/js/hitzorduak_egutegia.js`
- **Funtzioak/Metodoak:** `openModal`, `closeModal`, `viewAppointment`, `confirmDelete`
- **Aldagai nagusiak:** `bistaBotoiak`, `modal`, `title`, `form`, `btnDelete`, `btnSubmit`, `hitzordua`, `id`

#### `C:/Xampp/htdocs/GOsasun/js/kontaktua.js`
- **Aldagai nagusiak:** `isValid`, `izena`, `email`, `emailRegex`, `mezua`

#### `C:/Xampp/htdocs/GOsasun/js/login.js`
- **Aldagai nagusiak:** `isValid`, `email`, `emailRegex`, `pasahitza`

#### `C:/Xampp/htdocs/GOsasun/js/neurketak.js`
- **Aldagai nagusiak:** `isValid`, `requiresAtLeastOne`, `glukosa`, `sistolikoa`, `diastolikoa`, `pisua`, `sintomak`, `numPisua`, `pazienteId`, `data`

### 📁 `pdf_txostenak/`

### 📁 `xml_exportableak/`
