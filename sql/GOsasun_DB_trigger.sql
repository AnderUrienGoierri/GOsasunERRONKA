-- GOsasun_DB_trigger.sql
USE gosasun_db;

-- 1. Eguneratu_Paziente_Datuak: Azken pisua eta altuera automatikoki eguneratzeko (INSERT)
DROP TRIGGER IF EXISTS Trg_Jarraipena_Insert;

DELIMITER //

CREATE TRIGGER Trg_Jarraipena_Insert
AFTER INSERT ON jarraipenak
FOR EACH ROW
BEGIN
    UPDATE pazienteak
    SET azken_pisua = IFNULL(NEW.pisua_kg, azken_pisua),
        azken_altuera = IFNULL(NEW.altuera, azken_altuera)
    WHERE id = NEW.paziente_id;
END //

DELIMITER ;

-- 2. Eguneratu_Paziente_Datuak_Update: Neurketa bat aldatzean datuak sinkronizatzeko (UPDATE)
DROP TRIGGER IF EXISTS Trg_Jarraipena_Update;

DELIMITER //

CREATE TRIGGER Trg_Jarraipena_Update
AFTER UPDATE ON jarraipenak
FOR EACH ROW
BEGIN
    UPDATE pazienteak
    SET azken_pisua = IFNULL(NEW.pisua_kg, azken_pisua),
        azken_altuera = IFNULL(NEW.altuera, azken_altuera)
    WHERE id = NEW.paziente_id;
END //

DELIMITER ;

-- TRIGGER bakarra erabili behar bada, bi hauek nahikoak dira eta 
-- datu-basearen trinkotasuna (consistency) bermatzen dute.
