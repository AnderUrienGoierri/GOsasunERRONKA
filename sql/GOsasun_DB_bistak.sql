-- GOsasun_DB_bistak.sql
USE gosasun_db;

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
SELECT e.id AS paziente_id,
    e.nan,
    e.izena,
    e.abizenak,
    p.sexua,
    e.jaiotze_data,
    e.telefonoa,
    e.helbidea,
    e.herria,
    e.posta_kodea,
    p.odol_taldea,
    p.azken_altuera,
    p.azken_pisua,
    p.egoera_klinikoa,
    e.irudia,
    e.email,
    e.aktibo,
    e.sortze_data
FROM pazienteak p
    JOIN erabiltzaileak e ON p.id = e.id;

-- 3. V_Osasun_Langilea: Langilearen datuak eta erabiltzaile kontua
CREATE OR REPLACE VIEW V_Osasun_Langilea AS
SELECT e.id AS langile_id,
    e.izena,
    e.abizenak,
    e.jaiotze_data,
    e.nan,
    ol.elkargokide_zenbakia,
    ol.espezialitatea,
    ol.kontsulta,
    ol.lanaldia,
    e.telefonoa,
    e.helbidea,
    e.herria,
    e.posta_kodea,
    e.irudia,
    e.email,
    e.aktibo,
    e.sortze_data
FROM osasun_langileak ol
    JOIN erabiltzaileak e ON ol.id = e.id;

-- 4. V_Langile_Pazienteak: Langile eta pazienteen arteko loturak
CREATE OR REPLACE VIEW V_Langile_Pazienteak AS
SELECT pl.langile_id,
    pl.paziente_id,
    ep.nan AS paziente_nan,
    ep.izena AS paziente_izena,
    ep.abizenak AS paziente_abizenak,
    ep.telefonoa AS paziente_telefonoa,
    p.odol_taldea,
    ep.irudia AS paziente_irudia,
    el.izena AS langile_izena,
    el.abizenak AS langile_abizenak,
    ol.espezialitatea
FROM pazientek_langileak pl
    JOIN pazienteak p ON pl.paziente_id = p.id
    JOIN erabiltzaileak ep ON p.id = ep.id
    JOIN osasun_langileak ol ON pl.langile_id = ol.id
    JOIN erabiltzaileak el ON ol.id = el.id;

-- 5. V_Hitzorduak_Osoa: Hitzorduen datu guztiak (paziente eta langile izenekin)
CREATE OR REPLACE VIEW V_Hitzorduak_Osoa AS
SELECT h.id AS hitzordu_id,
    h.data,
    h.hasiera_ordua,
    h.bukaera_ordua,
    h.arrazoia,
    h.egoera,
    h.paziente_id,
    ep.izena AS paziente_izena,
    ep.abizenak AS paziente_abizenak,
    ep.nan AS paziente_nan,
    ep.irudia AS paziente_irudia,
    h.osasun_langile_id AS langile_id,
    el.izena AS langile_izena,
    el.abizenak AS langile_abizenak,
    ol.espezialitatea,
    el.irudia AS langile_irudia
FROM hitzorduak h
    JOIN pazienteak p ON h.paziente_id = p.id
    JOIN erabiltzaileak ep ON p.id = ep.id
    JOIN osasun_langileak ol ON h.osasun_langile_id = ol.id
    JOIN erabiltzaileak el ON ol.id = el.id;

-- 6. V_Harrera: Harrerako langileen datuak eta erabiltzaile kontua
CREATE OR REPLACE VIEW V_Harrera AS
SELECT hl.id AS langile_id,
    e.nan,
    e.izena,
    e.abizenak,
    e.jaiotze_data,
    hl.txanda,
    e.telefonoa,
    e.helbidea,
    e.herria,
    e.posta_kodea,
    e.irudia,
    e.email,
    e.aktibo,
    e.sortze_data
FROM harrerako_langileak hl
    JOIN erabiltzaileak e ON hl.id = e.id;

-- 7. V_Jarraipenak_Osoa: Jarraipenen datuak paziente eta medikuarekin
CREATE OR REPLACE VIEW V_Jarraipenak_Osoa AS
SELECT j.id AS jarraipen_id,
    j.erregistro_data,
    j.paziente_id,
    ep.izena AS paziente_izena,
    ep.abizenak AS paziente_abizenak,
    ep.nan AS paziente_nan,
    j.osasun_langile_id AS langile_id,
    el.izena AS langile_izena,
    el.abizenak AS langile_abizenak,
    ol.espezialitatea AS langile_espezialitatea,
    j.tentsio_sistolikoa,
    j.tentsio_diastolikoa,
    j.pisua_kg,
    j.altuera,
    j.pultsua_ppm,
    j.oharrak,
    j.bidea_zerbitzarian
FROM jarraipenak j
    JOIN pazienteak p ON j.paziente_id = p.id
    JOIN erabiltzaileak ep ON p.id = ep.id
    LEFT JOIN osasun_langileak ol ON j.osasun_langile_id = ol.id
    LEFT JOIN erabiltzaileak el ON ol.id = el.id;

-- 8. V_Errezetak_Osoa: Errezeten datuak paziente eta medikuarekin
CREATE OR REPLACE VIEW V_Errezetak_Osoa AS
SELECT er.id AS errezeta_id,
    er.igorpen_data,
    er.iraungitze_data,
    er.paziente_id,
    ep.izena AS paziente_izena,
    ep.abizenak AS paziente_abizenak,
    er.osasun_langile_id AS langile_id,
    el.izena AS langile_izena,
    el.abizenak AS langile_abizenak,
    ol.espezialitatea AS langile_espezialitatea,
    er.diagnostiko_laburra,
    er.aktibo
FROM errezetak er
    JOIN pazienteak p ON er.paziente_id = p.id
    JOIN erabiltzaileak ep ON p.id = ep.id
    JOIN osasun_langileak ol ON er.osasun_langile_id = ol.id
    JOIN erabiltzaileak el ON ol.id = el.id;

-- 9. V_Dokumentuak_Osoa: Dokumentuen datuak jarraipenarekin lotuta
CREATE OR REPLACE VIEW V_Dokumentuak_Osoa AS
SELECT d.id AS dokumentu_id,
    d.jarraipena_id,
    d.dokumentu_izena,
    d.fitxategi_izena,
    d.bidea_zerbitzarian,
    d.deskribapena,
    d.igotze_data,
    j.erregistro_data AS jarraipen_data,
    j.paziente_id,
    ep.izena AS paziente_izena,
    ep.abizenak AS paziente_abizenak
FROM dokumentuak d
    JOIN jarraipenak j ON d.jarraipena_id = j.id
    JOIN pazienteak p ON j.paziente_id = p.id
    JOIN erabiltzaileak ep ON p.id = ep.id;