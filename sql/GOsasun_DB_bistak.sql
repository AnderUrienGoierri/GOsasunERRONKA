-- GOsasun_DB_bistak.sql
USE GOsasun_DB;
-- 1. V_Login: Saioa hasteko beharrezko datuak
CREATE OR REPLACE VIEW V_Login AS
SELECT e.id AS erabiltzaile_id,
    e.email,
    e.pasahitza,
    e.rol_id,
    r.izena AS rol_izena,
    e.aktibo
FROM Erabiltzaileak e
    JOIN Rolak r ON e.rol_id = r.id;
-- 2. V_Pazientea: Pazientearen datuak eta erabiltzaile kontua
CREATE OR REPLACE VIEW V_Pazientea AS
SELECT p.id AS paziente_id,
    p.nan,
    p.izena,
    p.abizenak,
    p.sexua,
    p.jaiotze_data,
    p.telefonoa,
    p.helbidea,
    p.herria,
    p.posta_kodea,
    p.odol_taldea,
    p.azken_altuera,
    p.azken_pisua,
    p.egoera_klinikoa,
    p.irudia,
    e.email,
    e.aktibo,
    e.sortze_data
FROM Pazienteak p
    JOIN Erabiltzaileak e ON p.id = e.id;
-- 3. V_Medikua: Medikuaren datuak eta erabiltzaile kontua
CREATE OR REPLACE VIEW V_Medikua AS
SELECT m.id AS mediku_id,
    m.izena,
    m.abizenak,
    m.jaiotze_data,
    m.elkargokide_zenbakia,
    m.espezialitatea,
    m.kontsulta,
    m.lanaldia,
    m.telefonoa,
    m.irudia,
    e.email,
    e.aktibo,
    e.sortze_data
FROM Medikuak m
    JOIN Erabiltzaileak e ON m.id = e.id;
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
    JOIN Pazienteak p ON mp.paziente_id = p.id
    JOIN Medikuak m ON mp.mediku_id = m.id;
-- 5. V_Hitzorduak_Osoa: Hitzorduen datu guztiak (paziente eta mediku izenekin)
CREATE OR REPLACE VIEW V_Hitzorduak_Osoa AS
SELECT h.id AS hitzordu_id,
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
    JOIN Pazienteak p ON h.paziente_id = p.id
    JOIN Medikuak m ON h.mediku_id = m.id;
-- 6. V_Harrera: Harrerako langileen datuak eta erabiltzaile kontua
CREATE OR REPLACE VIEW V_Harrera AS
SELECT hl.id AS langile_id,
    hl.izena,
    hl.abizenak,
    hl.txanda,
    hl.jaiotze_data,
    hl.telefonoa,
    hl.irudia,
    e.email,
    e.aktibo,
    e.sortze_data
FROM Harrerako_Langileak hl
    JOIN Erabiltzaileak e ON hl.id = e.id;
-- 7. V_Abisuak_Osoa: Pazienteei buruzko abisu klinikoak
CREATE OR REPLACE VIEW V_Abisuak_Osoa AS
SELECT a.id AS abisu_id,
    a.paziente_id,
    p.izena AS paziente_izena,
    p.abizenak AS paziente_abizenak,
    p.irudia AS paziente_irudia,
    a.data,
    a.mota,
    a.testua,
    a.irakurrita
FROM Abisuak a
    JOIN Pazienteak p ON a.paziente_id = p.id;