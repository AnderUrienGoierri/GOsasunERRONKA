# Proiektuaren Enuntziatua

**Proiektuaren deskribapen orokorra**
Proiektu honen helburu nagusia osasun-arloko kudeaketa integrala ahalbidetuko duen sistema multzo bat garatzea da. Zehazki, bi plataforma ezberdin eta osagarri garatuko dira: alde batetik, web aplikazio bat (Apache zerbitzarian ostatatua eta HTML, CSS eta jQuery teknologien bidez inplementatua), eta bestetik idazmahaiko ordenagailuetarako C# lengoaian garatutako aplikazio bat. Sistema honek osasun-zentro baterako pazienteen, medikuen eta harrerako langileen datuak, ekintzak eta elkarrekintzak modu eraginkorrean kudeatzea ahalbidetuko du. Horrez gain, arlo teknikoari dagokionez, nahitaezkoa izango da XML formatua erabiltzea: alde batetik, pazienteen neurketa-datuak esportatu eta inportatzeko, eta bestetik, XML fitxategietatik informazioa irakurri eta modu bisualean erakusteko (irudikapen grafikoak edo bistaratzeak eginez).

**Datu-basearen diseinua eta arkitektura**
Sistemaren informazio guztia era sendo eta seguruan gordetzeko, datu-base erlazional bat erabiliko da. Datu-base mailan, ezinbestekoa izango da eredu aurreratuak garatzea sistemaren eraginkortasuna eta datuen osotasuna bermatzeko: datu-kontsultak arintzeko bistak (view) eta indizeak (index) sortuko dira, prozesu automatizatuak exekutatzeko trigger-ak (abiarazleak) inplementatuko dira, eta erregistroen arteko loturak mantentzeko ezinbestekoa izango da *ON DELETE CASCADE* eta *ON UPDATE CASCADE* murriztapenak erabiltzea.

**Web aplikazioaren pertsonalizazioa eta XML ezarpenak**
Web aplikazioaren portaera eta itxura dinamikoki kudeatzeko, XML formatuko konfigurazio-fitxategi bat erabiliko da. Fitxategi honek web gunearen hainbat ezaugarri definituko ditu, besteak beste:

- **Defektuzko hizkuntza:** Erabiltzailearen interfazea euskaraz, gaztelaniaz edo ingelesez erakusteko aukera.
- **Kolore nagusia:** Aplikazioaren itxura orokorra (adibidez, gai argia edo iluna / *modo oscuro*).
- **Bigarren mailako kolorea:** Nabarmendutako elementuetan edo botoietan erabilitako kolore osagarria.
- **Beste ezarpen batzuk:** Etorkizunean gehi litezkeen beste edozein konfigurazio-parametro.

XML fitxategi honetako informazioa irakurriko da aplikazioaren itxura zehazteko. Horrez gain, web aplikaziotik bertatik konfigurazioko XML hau aldatzeko aukera egongo da (adibidez, ezarpenen panel baten bidez), eta informazio hori XML-an gorde ondoren sisteman modu egokian bistaratuko da.

**Pazienteen profila**
Pazienteek sarrera zuzena izango dute sisteman euren osasun-datuen kudeaketa pertsonalizatua egiteko. Plataformaren bitartez, paziente bakoitzak bere fitxa mediko osoa ikusi ahal izango du, eta bere kabuz egindako neurketak (tentsioa, pisua, etab.) sisteman txertatzeko eta historikoa jarraitzeko aukera izango du. Neurketa hauen eboluzioa ondo ulertzeko formatu grafikoan ikusi ahal izango dituzte. Era berean, hitzordu medikoak eskatu eta kudeatu ditzakete, sistemaren abisuak eta oharrak jaso, eta zalantzak argitzeko zuzeneko barne-mezuak bidali ahal izango dizkiete bai euren medikuei, baita harrerako langileei ere.

**Medikuen profila**
Medikuaren rola duten erabiltzaileek euren pazienteen arreta optimizatzeko beharrezko tresna guztiak izango dituzte eskura. Sisteman sartzean, euren fitxa pertsonala eta euren kargu dauden pazienteen zerrenda osoa ikusi ahal izango dute. Egunez eguneko lana antolatzeko, hitzorduak kudeatzeko modulura sarbidea izango dute, eta hitzordu bakoitzean zehar pazienteari egindako proba edo neurketen erregistro zehatza egin ahal izango dute. Praktika medikoaren muina den tratamenduen kudeaketarako, botikak errezetatzeko eta preskripzioak egiteko ahalmena izango dute. Azkenik, barne-mezularitza sistema ere baimenduta izango dute paziente zein beste langile batzuekin harremanetan egoteko.

**Harrerako langileen profila**
Harrerako langile profilak funtzio administratiboen eta zentroko kontrol nagusiaren ardura izango du. Profil honek baimen bereziak izango ditu zentroko erabiltzaile guztien mantentze-lanak eta kudeaketa osoa egiteko; hau da, pazienteen, medikuen zein beste harrerako langileen datuak kudeatu ahalko dituzte. Zentroko hitzorduen kudeaketa orokorra bideratzea izango da euren ardura nagusietako bat, pertsonen joan-etorria gainbegiratuz. Horrez gain, komunikazio-ardatz gisa funtzionatuko dute, zentroko barne-mezu zein kanpoko mezu edo eskaera guztiak prozesatu, bideratu eta kudeatzeko ardura hartuz.
