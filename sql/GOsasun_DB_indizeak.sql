-- GOsasun_DB_indizeak.sql
-- Datu-basearen bilaketak bizkortzeko indizeak (Indexes)
USE gosasun_db;

-- 1. ERABILTZAILEAK
-- Erabiltzaileen bilaketa (izen-abizenak)
CREATE INDEX idx_erabiltzaileak_izen_abizenak ON erabiltzaileak (abizenak, izena);
-- Hizkuntzaren arabera iragazteko (UI-rako erabilgarria)
CREATE INDEX idx_erabiltzaileak_hizkuntza ON erabiltzaileak (hizkuntza);

-- 2. OSASUN LANGILEAK
-- Espezialitatearen arabera bilatzeko (Pazienteen eta harreraren paneletan)
CREATE INDEX idx_langileak_espezialitatea ON osasun_langileak (espezialitatea);

-- 3. HITZORDUAK
-- Hitzorduen data eta egoera (Agenda kudeatzeko)
CREATE INDEX idx_hitzorduak_egoera_data ON hitzorduak (data, egoera);
-- Pazientearen hitzorduen historia
CREATE INDEX idx_hitzorduak_paziente ON hitzorduak (paziente_id);

-- 4. JARRAIPENAK
-- Jarraipen historia paziente bakoitzeko, dataren arabera ordenatuta
CREATE INDEX idx_jarraipenak_paziente_data ON jarraipenak (paziente_id, erregistro_data);

-- 5. BOTIKAK
-- Botiken izenaren arabera bilatzeko (Errezetak idaztean)
CREATE INDEX idx_botikak_izena ON botikak (izena);

-- 6. DOKUMENTUAK
-- Jarraipen bati lotutako dokumentuak azkar lortzeko
CREATE INDEX idx_dokumentuak_jarraipena ON dokumentuak (jarraipena_id);
