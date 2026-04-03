-- SEGURTASUNA ETA BAIMENAK
CREATE USER IF NOT EXISTS 'adminRoot' @'%' IDENTIFIED BY 'PasahitzZaila123!';
GRANT ALL PRIVILEGES ON *.* TO 'adminRoot' @'%' WITH
GRANT OPTION;

-- ROLAK
CREATE ROLE IF NOT EXISTS 'db_admin',
'db_medikua',
'db_pazientea',
'db_harrera';
GRANT ALL PRIVILEGES ON GOsasun_DB.* TO 'db_admin';
GRANT SELECT ON GOsasun_DB.Rolak TO 'db_medikua';
GRANT SELECT,
      UPDATE ON GOsasun_DB.Erabiltzaileak TO 'db_medikua';
GRANT SELECT,
      UPDATE ON GOsasun_DB.Pazienteak TO 'db_medikua';
GRANT SELECT,
      UPDATE ON GOsasun_DB.Medikuak TO 'db_medikua';
GRANT SELECT ON GOsasun_DB.Mediku_Paziente TO 'db_medikua';
GRANT SELECT,
      INSERT,
      UPDATE,
      DELETE ON GOsasun_DB.Neurketak TO 'db_medikua';
GRANT SELECT,
      INSERT,
      UPDATE ON GOsasun_DB.Mezuak TO 'db_medikua';
GRANT SELECT,
      INSERT,
      UPDATE,
      DELETE ON GOsasun_DB.Dokumentuak TO 'db_medikua';
GRANT SELECT ON GOsasun_DB.Hitzorduak TO 'db_medikua';
GRANT SELECT,
      INSERT,
      UPDATE,
      DELETE ON GOsasun_DB.Errezetak TO 'db_medikua';
      
GRANT SELECT ON GOsasun_DB.Rolak TO 'db_pazientea';
GRANT SELECT,
      UPDATE ON GOsasun_DB.Erabiltzaileak TO 'db_pazientea';
GRANT SELECT,
      UPDATE ON GOsasun_DB.Pazienteak TO 'db_pazientea';
GRANT SELECT ON GOsasun_DB.Medikuak TO 'db_pazientea';
GRANT SELECT ON GOsasun_DB.Mediku_Paziente TO 'db_pazientea';
GRANT SELECT,
      INSERT ON GOsasun_DB.Neurketak TO 'db_pazientea';
GRANT SELECT,
      INSERT,
      UPDATE ON GOsasun_DB.Mezuak TO 'db_pazientea';
GRANT SELECT,
      INSERT ON GOsasun_DB.Dokumentuak TO 'db_pazientea';
GRANT SELECT,
      INSERT,
      UPDATE ON GOsasun_DB.Hitzorduak TO 'db_pazientea';
GRANT SELECT ON GOsasun_DB.Errezetak TO 'db_pazientea';



-- HARRERA BAIMENAK
GRANT SELECT ON GOsasun_DB.Rolak TO 'db_harrera';
GRANT SELECT,
      INSERT,
      UPDATE,
      DELETE ON GOsasun_DB.Erabiltzaileak TO 'db_harrera';
GRANT SELECT,
      INSERT,
      UPDATE,
      DELETE ON GOsasun_DB.Pazienteak TO 'db_harrera';
GRANT SELECT,
      INSERT,
      UPDATE,
      DELETE ON GOsasun_DB.Medikuak TO 'db_harrera';
GRANT SELECT,
      INSERT,
      UPDATE,
      DELETE ON GOsasun_DB.Harrerako_Langileak TO 'db_harrera';
GRANT SELECT,
      INSERT,
      UPDATE,
      DELETE ON GOsasun_DB.Mediku_Paziente TO 'db_harrera';
GRANT SELECT,
      INSERT,
      UPDATE,
      DELETE ON GOsasun_DB.Neurketak TO 'db_harrera';
GRANT SELECT,
      INSERT,
      UPDATE,
      DELETE ON GOsasun_DB.Mezuak TO 'db_harrera';
GRANT SELECT,
      INSERT,
      UPDATE,
      DELETE ON GOsasun_DB.Dokumentuak TO 'db_harrera';
GRANT SELECT,
      INSERT,
      UPDATE,
      DELETE ON GOsasun_DB.Hitzorduak TO 'db_harrera';
GRANT SELECT,
      INSERT,
      UPDATE,
      DELETE ON GOsasun_DB.Errezetak TO 'db_harrera';
GRANT SELECT ON GOsasun_DB.Abisuak TO 'db_harrera';



CREATE USER IF NOT EXISTS 'app_php_pazientea' @'localhost' IDENTIFIED BY 'AppPaziente123!';
GRANT 'db_pazientea' TO 'app_php_pazientea' @'localhost';
SET DEFAULT ROLE 'db_pazientea' TO 'app_php_pazientea' @'localhost';
CREATE USER IF NOT EXISTS 'app_csharp_medikua' @'%' IDENTIFIED BY 'AppMediku123!';
GRANT 'db_medikua' TO 'app_csharp_medikua' @'%';
SET DEFAULT ROLE 'db_medikua' TO 'app_csharp_medikua' @'%';
CREATE USER IF NOT EXISTS 'app_php_harrera' @'localhost' IDENTIFIED BY 'AppHarrera123!';
GRANT 'db_harrera' TO 'app_php_harrera' @'localhost';
SET DEFAULT ROLE 'db_harrera' TO 'app_php_harrera' @'localhost';
FLUSH PRIVILEGES;