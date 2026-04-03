-- GOsasun_DB.sql
-- Datu-basea sortu eta erabili
CREATE DATABASE IF NOT EXISTS GOsasun_DB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE GOsasun_DB;
-- 1. ROLAK TAULA
CREATE TABLE IF NOT EXISTS rolak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    izena VARCHAR(50) NOT NULL UNIQUE
);
-- 2. ERABILTZAILEAK TAULA
CREATE TABLE IF NOT EXISTS erabiltzaileak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL UNIQUE,
    pasahitza VARCHAR(255) NOT NULL,
    rol_id INT NOT NULL,
    hizkuntza ENUM('Euskara', 'Gaztelania', 'Ingelesa', 'Nederlandera') DEFAULT 'Euskara',
    aktibo BOOLEAN DEFAULT TRUE,
    sortze_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (rol_id) REFERENCES rolak(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
-- 3. PAZIENTEAK TAULA
CREATE TABLE IF NOT EXISTS pazienteak (
    id INT PRIMARY KEY,
    nan CHAR(9) NOT NULL UNIQUE,
    izena VARCHAR(50) NOT NULL,
    abizenak VARCHAR(100) NOT NULL,
    sexua ENUM('Gizona', 'Emakumea') NOT NULL,
    jaiotze_data DATE NOT NULL,
    telefonoa VARCHAR(20),
    helbidea VARCHAR(255),
    herria VARCHAR(100),
    posta_kodea VARCHAR(10),
    odol_taldea VARCHAR(5),
    azken_altuera DECIMAL(5, 2),
    azken_pisua DECIMAL(5, 2),
    egoera_klinikoa ENUM('Alta', 'Baja') DEFAULT 'Alta',
    irudia VARCHAR(255) DEFAULT 'img/lehenetsia_pazientea.png',
    FOREIGN KEY (id) REFERENCES erabiltzaileak(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
-- 4. MEDIKUAK TAULA
CREATE TABLE IF NOT EXISTS medikuak (
    id INT PRIMARY KEY,
    izena VARCHAR(50) NOT NULL,
    abizenak VARCHAR(100) NOT NULL,
    jaiotze_data DATE NOT NULL,
    elkargokide_zenbakia VARCHAR(50) NOT NULL UNIQUE,
    espezialitatea VARCHAR(100) NOT NULL,
    kontsulta VARCHAR(50),
    lanaldia ENUM('Osoa', 'Murriztua') DEFAULT 'Osoa',
    telefonoa VARCHAR(20),
    irudia VARCHAR(255) DEFAULT 'img/lehenetsia_medikua.png',
    FOREIGN KEY (id) REFERENCES erabiltzaileak(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
-- 5. HARRERAKO LANGILEAK TAULA
CREATE TABLE IF NOT EXISTS harrerako_Langileak (
    id INT PRIMARY KEY,
    izena VARCHAR(50) NOT NULL,
    abizenak VARCHAR(100) NOT NULL,
    txanda ENUM('Goizez', 'Arratsaldez', 'Gauez') DEFAULT 'Goizez',
    jaiotze_data DATE,
    telefonoa VARCHAR(20),
    irudia VARCHAR(255) DEFAULT 'img/lehenetsia_harrera.png',
    FOREIGN KEY (id) REFERENCES erabiltzaileak(id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- 6. MEDIKU-PAZIENTE LOTURA TAULA
CREATE TABLE IF NOT EXISTS mediku_Paziente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mediku_id INT NOT NULL,
    paziente_id INT NOT NULL,
    esleipen_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (mediku_id) REFERENCES medikuak(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (paziente_id) REFERENCES pazienteak(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    UNIQUE(mediku_id, paziente_id)
);
-- 7. OSASUN NEURKETAK TAULA
CREATE TABLE IF NOT EXISTS neurketak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paziente_id INT NOT NULL,
    tentsio_sistolikoa INT,
    tentsio_diastolikoa INT,
    pisua_kg DECIMAL(5, 2),
    altuera DECIMAL(5, 2),
    pultsua_ppm INT,
    sintomak TEXT,
    erregistro_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (paziente_id) REFERENCES pazienteak(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
-- 8. KONTUAK / MEZULARITZA TAULA
CREATE TABLE IF NOT EXISTS mezuak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    bidaltzaile_id INT NOT NULL,
    hartzaile_id INT NOT NULL,
    gaia VARCHAR(150) NOT NULL,
    mezua TEXT NOT NULL,
    irakurrita BOOLEAN DEFAULT FALSE,
    bidalketa_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (bidaltzaile_id) REFERENCES erabiltzaileak(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (hartzaile_id) REFERENCES erabiltzaileak(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
-- 9. DOKUMENTUAK TAULA
CREATE TABLE IF NOT EXISTS dokumentuak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paziente_id INT NOT NULL,
    igotzaile_id INT NOT NULL,
    fitxategi_izena VARCHAR(255) NOT NULL,
    bidea_zerbitzarian VARCHAR(500) NOT NULL,
    fitxategi_edukia MEDIUMBLOB,
    mota VARCHAR(50),
    igotze_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deskribapena TEXT,
    FOREIGN KEY (paziente_id) REFERENCES pazienteak(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (igotzaile_id) REFERENCES erabiltzaileak(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
-- 10. HITZORDUAK TAULA
CREATE TABLE IF NOT EXISTS hitzorduak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paziente_id INT NOT NULL,
    mediku_id INT NOT NULL,
    data DATE NOT NULL,
    hasiera_ordua TIME NOT NULL,
    bukaera_ordua TIME,
    arrazoia VARCHAR(255),
    egoera ENUM('Zain', 'Bukatuta', 'Ezeztatuta') DEFAULT 'Zain',
    sortze_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (paziente_id) REFERENCES pazienteak(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (mediku_id) REFERENCES medikuak(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
-- 11. ERREZETAK ETA DIAGNOSTIKOAK TAULA
CREATE TABLE IF NOT EXISTS errezetak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hitzordu_id INT,
    mediku_id INT NOT NULL,
    paziente_id INT NOT NULL,
    igorpen_data DATE NOT NULL,
    iraungitze_data DATE,
    xml_fitxategia_bidea VARCHAR(500),
    diagnostiko_laburra VARCHAR(255),
    aktibo BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (hitzordu_id) REFERENCES hitzorduak(id) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (mediku_id) REFERENCES medikuak(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (paziente_id) REFERENCES pazienteak(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
-- 12. KONTAKTURAKO MEZUAK
CREATE TABLE IF NOT EXISTS kontaktua_Mezuak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    izena VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    mezua TEXT NOT NULL,
    erantzuna TEXT,
    erantzun_data TIMESTAMP NULL,
    irakurrita BOOLEAN DEFAULT FALSE,
    bidalketa_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- 13. ABISUAK TAULA
CREATE TABLE IF NOT EXISTS abisuak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paziente_id INT NOT NULL,
    data DATETIME DEFAULT CURRENT_TIMESTAMP,
    mota VARCHAR(50),
    testua TEXT,
    irakurrita TINYINT(1) DEFAULT 0,
    FOREIGN KEY (paziente_id) REFERENCES pazienteak(id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- 14. BOTIKAK TAULA
CREATE TABLE IF NOT EXISTS botikak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    izena VARCHAR(100) NOT NULL UNIQUE,
    izen_kimikoa VARCHAR(150),
    nomenklatura_kimikoa VARCHAR(150),
    eragin_fokoa VARCHAR(200),
    aktibitatea TEXT
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- 15. ERREZETA-BOTIKAK LOTURA TAULA
CREATE TABLE IF NOT EXISTS errezeta_botikak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    errezeta_id INT NOT NULL,
    botika_id INT NOT NULL,
    dosia VARCHAR(100),
    maiztasuna VARCHAR(100),
    FOREIGN KEY (errezeta_id) REFERENCES errezetak(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (botika_id) REFERENCES botikak(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    UNIQUE(errezeta_id, botika_id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;