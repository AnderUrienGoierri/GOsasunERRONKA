-- GOsasun_DB_bistak.sql
USE GOsasun_DB;
-- 1. V_Login: Saioa hasteko beharrezko datuak
CREATE OR REPLACE VIEW V_Login AS
SELECT e.erabiltzaile_id,
    e.email,
    e.pasahitza,
    e.rol_id,
    r.izena AS rol_izena,
    e.aktibo
FROM Erabiltzaileak e
    JOIN Rolak r ON e.rol_id = r.rol_id;
-- 2. V_Pazientea: Pazientearen datuak eta erabiltzaile kontua
CREATE OR REPLACE VIEW V_Pazientea AS
SELECT p.paziente_id,
    p.nan,
    p.izena,
    p.abizenak,
    p.jaiotze_data,
    p.telefonoa,
    p.odol_taldea,
    p.azken_altuera,
    p.azken_pisua,
    p.egoera_klinikoa,
    p.irudia,
    e.email,
    e.aktibo,
    e.sortze_data
FROM Pazienteak p
    JOIN Erabiltzaileak e ON p.paziente_id = e.erabiltzaile_id;
-- 3. V_Medikua: Medikuaren datuak eta erabiltzaile kontua
CREATE OR REPLACE VIEW V_Medikua AS
SELECT m.mediku_id,
    m.izena,
    m.abizenak,
    m.jaiotze_data,
    m.elkargokide_zenbakia,
    m.espezialitatea,
    m.telefonoa,
    m.irudia,
    e.email,
    e.aktibo,
    e.sortze_data
FROM Medikuak m
    JOIN Erabiltzaileak e ON m.mediku_id = e.erabiltzaile_id;
-- 4. V_Mediku_Pazienteak: Mediku eta pazienteen arteko loturak
CREATE OR REPLACE VIEW V_Mediku_Pazienteak AS
SELECT mp.mediku_id,
    mp.paziente_id,
    p.nan,
    p.izena AS paziente_izena,
    p.abizenak AS paziente_abizenak,
    p.telefonoa AS paziente_telefonoa,
    p.odol_taldea,
    p.irudia AS paziente_irudia,
    m.izena AS mediku_izena,
    m.abizenak AS mediku_abizenak,
    m.espezialitatea
FROM Mediku_Paziente mp
    JOIN Pazienteak p ON mp.paziente_id = p.paziente_id
    JOIN Medikuak m ON mp.mediku_id = m.mediku_id;
-- 5. V_Hitzorduak_Osoa: Hitzorduen datu guztiak (paziente eta mediku izenekin)
CREATE OR REPLACE VIEW V_Hitzorduak_Osoa AS
SELECT h.hitzordu_id,
    h.data,
    h.hasiera_ordua,
    h.bukaera_ordua,
    h.arrazoia,
    h.egoera,
    h.paziente_id,
    p.izena AS paziente_izena,
    p.abizenak AS paziente_abizenak,
    p.irudia AS paziente_irudia,
    h.mediku_id,
    m.izena AS mediku_izena,
    m.abizenak AS mediku_abizenak,
    m.espezialitatea,
    m.irudia AS mediku_irudia
FROM Hitzorduak h
    JOIN Pazienteak p ON h.paziente_id = p.paziente_id
    JOIN Medikuak m ON h.mediku_id = m.mediku_id;
-- 6. V_Harrera: Harrerako langileen datuak eta erabiltzaile kontua
CREATE OR REPLACE VIEW V_Harrera AS
SELECT hl.langile_id,
    hl.izena,
    hl.abizenak,
    hl.irudia,
    e.email,
    e.aktibo,
    e.sortze_data
FROM Harrerako_Langileak hl
    JOIN Erabiltzaileak e ON hl.langile_id = e.erabiltzaile_id;
-- 7. V_Abisuak_Osoa: Pazienteei buruzko abisu klinikoak
CREATE OR REPLACE VIEW V_Abisuak_Osoa AS
SELECT a.abisu_id,
    a.paziente_id,
    p.izena AS paziente_izena,
    p.abizenak AS paziente_abizenak,
    p.irudia AS paziente_irudia,
    a.data,
    a.mota,
    a.testua,
    a.irakurrita
FROM Abisuak a
    JOIN Pazienteak p ON a.paziente_id = p.paziente_id;
-- 8. V_Kanpoko_Mezuak: Webgune publikotik jasotako mezuak
CREATE OR REPLACE VIEW V_Kanpoko_Mezuak AS
SELECT mezu_id,
    izena,
    email,
    mezua,
    erantzuna,
    erantzun_data,
    irakurrita,
    bidalketa_data
FROM Kontaktua_Mezuak;  