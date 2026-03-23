-- GOsasun_DB_trigger.sql
USE GOsasun_DB;

-- 1. Eguneratu_Paziente_Datuak: Azken pisua eta altuera automatikoki eguneratzeko
DROP TRIGGER IF EXISTS Eguneratu_Paziente_Datuak;

DELIMITER //

CREATE TRIGGER Eguneratu_Paziente_Datuak

AFTER INSERT ON neurketak   -- taula intermedioa (historial_neurketak) sortu beharko da? 
FOR EACH ROW
BEGIN
    UPDATE pazienteak   -- neurketak taulan insert bat egiten denean eguneratu pazienteak taulako azken_pisua eta azken_altuera zutabeak
    SET azken_pisua =   IFNULL(NEW.pisua_kg, azken_pisua),   -- pisu neurketa berriak balioa badu, eguneratu, bestela, ez
        azken_altuera = IFNULL(NEW.altuera, azken_altuera)   -- altuera neurketa berriak balioa badu, eguneratu, bestela, ez
    WHERE paziente_id = NEW.paziente_id;
END 

// DELIMITER ;

-- nahikoa da trigger hau   ? TRIGGER BAT erabili behar da erronka honetan


