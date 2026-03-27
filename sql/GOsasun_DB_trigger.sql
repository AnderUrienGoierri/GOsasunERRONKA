-- GOsasun_DB_trigger.sql
USE GOsasun_DB;

-- 1. Eguneratu_Paziente_Datuak: Azken pisua eta altuera automatikoki eguneratzeko
DROP TRIGGER IF EXISTS Eguneratu_Paziente_Datuak;

DELIMITER //

CREATE TRIGGER Eguneratu_Paziente_Datuak
AFTER INSERT ON Neurketak   -- taula intermedioa (historial_neurketak) sortu beharko da? 
FOR EACH ROW
BEGIN
    UPDATE Pazienteak
    SET azken_pisua = IFNULL(NEW.pisua_kg, azken_pisua),
        azken_altuera = IFNULL(NEW.altuera, azken_altuera)
    WHERE paziente_id = NEW.paziente_id;
END //

DELIMITER ;

-- nahikoa da trigger hau   ?

-- 2. TG_Abisuak_Sortu: Neurketa berrietan abisu klinikoak automatikoki sortzeko
-- (MIGRATUTA JS-RA)
-- Abisuak orain js/abisuak_logika.js bidez kudeatzen dira.
