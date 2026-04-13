-- GOsasun_DB.sql
-- Datu-basea sortu eta erabili
CREATE DATABASE IF NOT EXISTS GOsasun_DB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE GOsasun_DB;
-- 1. ROLAK TAULA
CREATE TABLE IF NOT EXISTS rolak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    izena VARCHAR(50) NOT NULL UNIQUE
);
-- 2. ERABILTZAILEAK TAULA (ATRIBUTU KOMUNAK BARNE)
CREATE TABLE IF NOT EXISTS erabiltzaileak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL UNIQUE,
    pasahitza VARCHAR(255) NOT NULL,
    rol_id INT NOT NULL,
    hizkuntza ENUM('Euskara', 'Gaztelania', 'Ingelesa', 'Nederlandera') DEFAULT 'Euskara',
    nan CHAR(9) NOT NULL UNIQUE,
    izena VARCHAR(50) NOT NULL,
    abizenak VARCHAR(100) NOT NULL,
    jaiotze_data DATE,
    telefonoa VARCHAR(20),
    helbidea VARCHAR(255),
    herria VARCHAR(100),
    posta_kodea VARCHAR(10),
    irudia VARCHAR(255) DEFAULT 'img/lehenetsia.png',
    aktibo BOOLEAN DEFAULT TRUE,
    sortze_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (rol_id) REFERENCES rolak(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- 3. PAZIENTEAK TAULA (DATU ESPEZIFIKOAK)
CREATE TABLE IF NOT EXISTS pazienteak (
    id INT PRIMARY KEY,
    sexua ENUM('Gizona', 'Emakumea') NOT NULL,
    odol_taldea VARCHAR(5),
    azken_altuera DECIMAL(5, 2),
    azken_pisua DECIMAL(5, 2),
    egoera_klinikoa ENUM('Alta', 'Baja') DEFAULT 'Alta',
    FOREIGN KEY (id) REFERENCES erabiltzaileak(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- 4. OSASUN LANGILEAK TAULA (Lehen: medikuak)
CREATE TABLE IF NOT EXISTS osasun_langileak (
    id INT PRIMARY KEY,
    elkargokide_zenbakia VARCHAR(50) NOT NULL UNIQUE,
    espezialitatea VARCHAR(100) NOT NULL,
    kontsulta VARCHAR(50),
    lanaldia ENUM('Osoa', 'Murriztua') DEFAULT 'Osoa',
    FOREIGN KEY (id) REFERENCES erabiltzaileak(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- 5. HARRERAKO LANGILEAK TAULA
CREATE TABLE IF NOT EXISTS harrerako_langileak (
    id INT PRIMARY KEY,
    txanda ENUM('Goizez', 'Arratsaldez', 'Gauez') DEFAULT 'Goizez',
    FOREIGN KEY (id) REFERENCES erabiltzaileak(id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- 6. PAZIENTEK-LANGILEAK LOTURA TAULA (Lehen: mediku_Paziente)
CREATE TABLE IF NOT EXISTS pazientek_langileak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    langile_id INT NOT NULL,
    paziente_id INT NOT NULL,
    esleipen_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (langile_id) REFERENCES osasun_langileak(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (paziente_id) REFERENCES pazienteak(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    UNIQUE(langile_id, paziente_id)
);

-- 7. JARRAIPENAK TAULA (Lehen: neurketak)
CREATE TABLE IF NOT EXISTS jarraipenak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paziente_id INT NOT NULL,
    osasun_langile_id INT DEFAULT NULL,
    tentsio_sistolikoa INT,
    tentsio_diastolikoa INT,
    pisua_kg DECIMAL(5, 2),
    altuera DECIMAL(5, 2),
    pultsua_ppm INT,
    oharrak TEXT, -- Lehen: sintomak
    bidea_zerbitzarian VARCHAR(500), -- XML dokumentuaren helbidea
    erregistro_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (paziente_id) REFERENCES pazienteak(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (osasun_langile_id) REFERENCES osasun_langileak(id) ON DELETE SET NULL ON UPDATE CASCADE
);

-- 9. DOKUMENTUAK TAULA
CREATE TABLE IF NOT EXISTS dokumentuak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    jarraipena_id INT NOT NULL,
    fitxategi_izena VARCHAR(255) NOT NULL,
    bidea_zerbitzarian VARCHAR(500) NOT NULL,
    dokumentu_izena VARCHAR(255),
    deskribapena TEXT,
    igotze_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (jarraipena_id) REFERENCES jarraipenak(id) ON DELETE CASCADE ON UPDATE CASCADE
);
-- 10. HITZORDUAK TAULA
CREATE TABLE IF NOT EXISTS hitzorduak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paziente_id INT NOT NULL,
    osasun_langile_id INT NOT NULL,
    data DATE NOT NULL,
    hasiera_ordua TIME NOT NULL,
    bukaera_ordua TIME,
    arrazoia VARCHAR(255),
    egoera ENUM('Zain', 'Bukatuta', 'Ezeztatuta') DEFAULT 'Zain',
    sortze_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (paziente_id) REFERENCES pazienteak(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (osasun_langile_id) REFERENCES osasun_langileak(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- 11. ERREZETAK ETA DIAGNOSTIKOAK TAULA
CREATE TABLE IF NOT EXISTS errezetak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hitzordu_id INT,
    osasun_langile_id INT NOT NULL,
    paziente_id INT NOT NULL,
    igorpen_data DATE NOT NULL,
    iraungitze_data DATE,
    xml_fitxategia_bidea VARCHAR(500),
    diagnostiko_laburra VARCHAR(255),
    aktibo BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (hitzordu_id) REFERENCES hitzorduak(id) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (osasun_langile_id) REFERENCES osasun_langileak(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (paziente_id) REFERENCES pazienteak(id) ON DELETE CASCADE ON UPDATE CASCADE
);

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
    FOREIGN KEY (errezeta_id) REFERENCES errezetak(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (botika_id) REFERENCES botikak(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    UNIQUE(errezeta_id, botika_id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;