# GOsasun - XML Konfigurazio Sistema

Dokumentu honek GOsasun web aplikazioan XML bidezko konfigurazioak nola funtzionatzen duen azaltzen du.

## 1. Konfigurazio Mailak

Aplikazioak bi konfigurazio maila bereizten ditu:

### A. Konfigurazio Orokorra (`konfigurazio_orokorra.xml`)

- **Fitxategia:** `xml_konfigurazioa/konfigurazio_orokorra.xml`
- **Noiz erabiltzen da:** Saioa hasi baino lehen (index.php, kontaktua.php...) eta balio lehenetsi gisa.
- **Ezaugarria:** Orrialde publikoetan egiten diren aldaketak fitxategi honetan gordetzen dira.
- **Gordetzea:** Orrialde printzipaleko "Ezarpenak" modaletik aldatzen direnean, **ez dira erabiltzaile bakoitzarentzat gordetzen**, globalak dira.

### B. Erabiltzailearen Konfigurazioa (`konfig_erabiltzailea_{id}.xml`)

- **Fitxategia:** `xml_konfigurazioa/konfig_erabiltzailea_X.xml` (non X erabiltzailearen IDa den).
- **Noiz erabiltzen da:** Saioa hasi ondoren (Pazientea, Medikua edo Harrera panelak).
- **Ezaugarria:** Erabiltzaile bakoitzak bere interfazearen itxura (koloreak, hizkuntza, gaia) pertsonalizatu dezake.
- **Gordetzea:** Saioa hasita dagoenean, aldaketak erabiltzaileari dagokion XML fitxategi espezifikoan gordetzen dira. Hurrengoan saioa hastean, bere pertsonalizazioa kargatuko da.

## 2. Funtzionamendu Teknikoa

### Kargatzea (`php_includeak/konfigurazioa_kargatu.php`)

`kargatuKonfigurazioa()` funtzioak algoritmo hau jarraitzen du:

1. Lehenetsitako balioak kargatzen ditu (PHP array batean).
2. `konfigurazio_orokorra.xml` kargatzen du balio orokorrekin.
3. Saioa hasita badago, `konfig_erabiltzailea_{id}.xml` badagoen begiratzen du.
4. Badago, erabiltzailearen balioek aurrekoak gainidazten dituzte.

### Gordetzea (`php_laguntzaileak/ezarpenak_gorde.php`)

`ezarpenak_gorde.php` fitxategiak prozesatzen ditu inprimakiak:

- `form_type === 'orokorra'` bada eta sesioa badago -> Erabiltzailearen XML-an gorde.
- Sesioa ez badago -> `konfigurazio_orokorra.xml` orokorrean gorde.
- `reset` ekintzak erabiltzailearen XML fitxategia ezabatzen du, balio orokorretara itzuliz.

## 3. Demo Bideoa

Prozesu guztia ikusteko, kontsultatu `mp4/konfigurazio_demoa.mp4` bideoa. Bertan ikusten da:

1. Index orrian kolorea aldatzea (globala).
2. Saioa hasi eta panel barruan kolorea aldatzea (erabiltzailearena).
3. Berreskuratu botoiaren erabilera.
