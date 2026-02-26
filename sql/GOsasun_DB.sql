-- GOsasun_DB.sql
-- Datu-basea sortu eta erabili
CREATE DATABASE IF NOT EXISTS GOsasun_DB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE GOsasun_DB;
-- 1. ROLAK TAULA
CREATE TABLE IF NOT EXISTS Rolak (
    rol_id INT AUTO_INCREMENT PRIMARY KEY,
    izena VARCHAR(50) NOT NULL UNIQUE
);
-- 2. ERABILTZAILEAK TAULA
CREATE TABLE IF NOT EXISTS Erabiltzaileak (
    erabiltzaile_id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL UNIQUE,
    pasahitza VARCHAR(255) NOT NULL,
    rol_id INT NOT NULL,
    aktibo BOOLEAN DEFAULT TRUE,
    sortze_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (rol_id) REFERENCES Rolak(rol_id) ON DELETE RESTRICT
);
-- 3. PAZIENTEAK TAULA
CREATE TABLE IF NOT EXISTS Pazienteak (
    paziente_id INT PRIMARY KEY,
    nan VARCHAR(15) NOT NULL UNIQUE,
    izena VARCHAR(50) NOT NULL,
    abizenak VARCHAR(100) NOT NULL,
    jaiotze_data DATE NOT NULL,
    telefonoa VARCHAR(20),
    odol_taldea VARCHAR(5),
    azken_altuera DECIMAL(5, 2),
    azken_pisua DECIMAL(5, 2),
    egoera_klinikoa ENUM('Alta', 'Baja') DEFAULT 'Alta',
    irudia VARCHAR(255) DEFAULT 'img/lehenetsia_pazientea.png',
    FOREIGN KEY (paziente_id) REFERENCES Erabiltzaileak(erabiltzaile_id) ON DELETE CASCADE
);
-- 4. MEDIKUAK TAULA
CREATE TABLE IF NOT EXISTS Medikuak (
    mediku_id INT PRIMARY KEY,
    izena VARCHAR(50) NOT NULL,
    abizenak VARCHAR(100) NOT NULL,
    jaiotze_data DATE NOT NULL,
    elkargokide_zenbakia VARCHAR(50) NOT NULL UNIQUE,
    espezialitatea VARCHAR(100) NOT NULL,
    telefonoa VARCHAR(20),
    irudia VARCHAR(255) DEFAULT 'img/lehenetsia_medikua.png',
    FOREIGN KEY (mediku_id) REFERENCES Erabiltzaileak(erabiltzaile_id) ON DELETE CASCADE
);
-- 5. HARRERAKO LANGILEAK TAULA
CREATE TABLE IF NOT EXISTS Harrerako_Langileak (
    langile_id INT PRIMARY KEY,
    izena VARCHAR(50) NOT NULL,
    abizenak VARCHAR(100) NOT NULL,
    irudia VARCHAR(255) DEFAULT 'img/lehenetsia_harrera.png',
    FOREIGN KEY (langile_id) REFERENCES Erabiltzaileak(erabiltzaile_id) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- 6. MEDIKU-PAZIENTE LOTURA TAULA
CREATE TABLE IF NOT EXISTS Mediku_Paziente (
    lotura_id INT AUTO_INCREMENT PRIMARY KEY,
    mediku_id INT NOT NULL,
    paziente_id INT NOT NULL,
    esleipen_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (mediku_id) REFERENCES Medikuak(mediku_id) ON DELETE CASCADE,
    FOREIGN KEY (paziente_id) REFERENCES Pazienteak(paziente_id) ON DELETE CASCADE,
    UNIQUE(mediku_id, paziente_id)
);
-- 7. OSASUN NEURKETAK TAULA
CREATE TABLE IF NOT EXISTS Neurketak (
    neurketa_id INT AUTO_INCREMENT PRIMARY KEY,
    paziente_id INT NOT NULL,
    data DATE NOT NULL,
    ordua TIME NOT NULL,
    glukosa_mg_dl DECIMAL(5, 2),
    tentsio_sistolikoa INT,
    tentsio_diastolikoa INT,
    pisua_kg DECIMAL(5, 2),
    altuera DECIMAL(5, 2),
    sintomak TEXT,
    erregistro_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (paziente_id) REFERENCES Pazienteak(paziente_id) ON DELETE CASCADE
);
-- 8. KONTUAK / MEZULARITZA TAULA
CREATE TABLE IF NOT EXISTS Mezuak (
    mezu_id INT AUTO_INCREMENT PRIMARY KEY,
    bidaltzaile_id INT NOT NULL,
    hartzaile_id INT NOT NULL,
    gaia VARCHAR(150) NOT NULL,
    mezua TEXT NOT NULL,
    irakurrita BOOLEAN DEFAULT FALSE,
    bidalketa_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (bidaltzaile_id) REFERENCES Erabiltzaileak(erabiltzaile_id) ON DELETE CASCADE,
    FOREIGN KEY (hartzaile_id) REFERENCES Erabiltzaileak(erabiltzaile_id) ON DELETE CASCADE
);
-- 9. DOKUMENTUAK TAULA
CREATE TABLE IF NOT EXISTS Dokumentuak (
    dokumentu_id INT AUTO_INCREMENT PRIMARY KEY,
    paziente_id INT NOT NULL,
    igotzaile_id INT NOT NULL,
    fitxategi_izena VARCHAR(255) NOT NULL,
    bidea_zerbitzarian VARCHAR(500) NOT NULL,
    mota VARCHAR(50),
    igotze_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deskribapena TEXT,
    FOREIGN KEY (paziente_id) REFERENCES Pazienteak(paziente_id) ON DELETE CASCADE,
    FOREIGN KEY (igotzaile_id) REFERENCES Erabiltzaileak(erabiltzaile_id) ON DELETE CASCADE
);
-- 10. HITZORDUAK TAULA
CREATE TABLE IF NOT EXISTS Hitzorduak (
    hitzordu_id INT AUTO_INCREMENT PRIMARY KEY,
    paziente_id INT NOT NULL,
    mediku_id INT NOT NULL,
    data DATE NOT NULL,
    hasiera_ordua TIME NOT NULL,
    bukaera_ordua TIME,
    arrazoia VARCHAR(255),
    egoera ENUM('Zain', 'Bukatuta', 'Ezeztatuta') DEFAULT 'Zain',
    sortze_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (paziente_id) REFERENCES Pazienteak(paziente_id) ON DELETE CASCADE,
    FOREIGN KEY (mediku_id) REFERENCES Medikuak(mediku_id) ON DELETE CASCADE
);
-- 11. ERREZETAK ETA DIAGNOSTIKOAK TAULA
CREATE TABLE IF NOT EXISTS Errezetak (
    errezeta_id INT AUTO_INCREMENT PRIMARY KEY,
    hitzordu_id INT,
    mediku_id INT NOT NULL,
    paziente_id INT NOT NULL,
    igorpen_data DATE NOT NULL,
    iraungitze_data DATE,
    xml_fitxategia_bidea VARCHAR(500),
    diagnostiko_laburra VARCHAR(255),
    aktibo BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (hitzordu_id) REFERENCES Hitzorduak(hitzordu_id) ON DELETE
    SET NULL,
        FOREIGN KEY (mediku_id) REFERENCES Medikuak(mediku_id) ON DELETE CASCADE,
        FOREIGN KEY (paziente_id) REFERENCES Pazienteak(paziente_id) ON DELETE CASCADE
);
-- 12. KONTAKTURAKO MEZUAK
CREATE TABLE IF NOT EXISTS Kontaktua_Mezuak (
    mezu_id INT AUTO_INCREMENT PRIMARY KEY,
    izena VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    mezua TEXT NOT NULL,
    erantzuna TEXT,
    erantzun_data TIMESTAMP NULL,
    irakurrita BOOLEAN DEFAULT FALSE,
    bidalketa_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- 13. ABISUAK TAULA
CREATE TABLE IF NOT EXISTS Abisuak (
    abisu_id INT AUTO_INCREMENT PRIMARY KEY,
    paziente_id INT NOT NULL,
    data DATETIME DEFAULT CURRENT_TIMESTAMP,
    mota VARCHAR(50),
    testua TEXT,
    irakurrita TINYINT(1) DEFAULT 0,
    FOREIGN KEY (paziente_id) REFERENCES Pazienteak(paziente_id) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;