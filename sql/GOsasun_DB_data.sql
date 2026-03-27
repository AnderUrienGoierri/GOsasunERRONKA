-- GOsasun_DB_data.sql
USE GOsasun_DB;
-- Disable constraint checks temporarily for bulk inserts if needed (optional)
SET FOREIGN_KEY_CHECKS = 0;
-- 1. Rolak (Dagoeneko badaude, baina bistan badago berridatziko ditugu)
INSERT IGNORE INTO Rolak (rol_id, izena)
VALUES (1, 'Administratzailea'),
    (2, 'Medikua'),
    (3, 'Pazientea'),
    (4, 'Harrera');
-- 2. Erabiltzaileak (100+)
-- Medikuak (50), Pazienteak (50)
-- Pasahitz guztientzat: '1234'
INSERT INTO Erabiltzaileak (
        erabiltzaile_id,
        email,
        pasahitza,
        rol_id,
        aktibo
    )
VALUES -- Medikuak (1 - 50)
    (1, 'urrutia.j@gosasun.eus', '1234', 2, 1),
    (2, 'goiko.m@gosasun.eus', '1234', 2, 1),
    (3, 'etxe.a@gosasun.eus', '1234', 2, 1),
    (4, 'zubi.k@gosasun.eus', '1234', 2, 1),
    (5, 'agirre.o@gosasun.eus', '1234', 2, 1),
    (6, 'iturri.p@gosasun.eus', '1234', 2, 1),
    (7, 'mendizabal.r@gosasun.eus', '1234', 2, 1),
    (8, 'gara.l@gosasun.eus', '1234', 2, 1),
    (9, 'elor.s@gosasun.eus', '1234', 2, 1),
    (10, 'muru.i@gosasun.eus', '1234', 2, 1),
    (11, 'sarasola.a@gosasun.eus', '1234', 2, 1),
    (12, 'artea.e@gosasun.eus', '1234', 2, 1),
    (13, 'korta.g@gosasun.eus', '1234', 2, 1),
    (14, 'leza.m@gosasun.eus', '1234', 2, 1),
    (15, 'gari.j@gosasun.eus', '1234', 2, 1),
    (16, 'bengo.a@gosasun.eus', '1234', 2, 1),
    (17, 'iba.k@gosasun.eus', '1234', 2, 1),
    (18, 'uriza.d@gosasun.eus', '1234', 2, 1),
    (19, 'zabal.n@gosasun.eus', '1234', 2, 1),
    (20, 'arana.l@gosasun.eus', '1234', 2, 1),
    (21, 'egia.b@gosasun.eus', '1234', 2, 1),
    (22, 'ola.m@gosasun.eus', '1234', 2, 1),
    (23, 'laza.j@gosasun.eus', '1234', 2, 1),
    (24, 'ira.a@gosasun.eus', '1234', 2, 1),
    (25, 'garmendia.p@gosasun.eus', '1234', 2, 1),
    (26, 'barrena.k@gosasun.eus', '1234', 2, 1),
    (27, 'zuri.m@gosasun.eus', '1234', 2, 1),
    (28, 'txiki.n@gosasun.eus', '1234', 2, 1),
    (29, 'handi.a@gosasun.eus', '1234', 2, 1),
    (30, 'luze.o@gosasun.eus', '1234', 2, 1),
    (31, 'motz.i@gosasun.eus', '1234', 2, 1),
    (32, 'gorri.e@gosasun.eus', '1234', 2, 1),
    (33, 'beltza.k@gosasun.eus', '1234', 2, 1),
    (34, 'zilar.j@gosasun.eus', '1234', 2, 1),
    (35, 'urre.m@gosasun.eus', '1234', 2, 1),
    (36, 'kobre.p@gosasun.eus', '1234', 2, 1),
    (37, 'burni.a@gosasun.eus', '1234', 2, 1),
    (38, 'leku.n@gosasun.eus', '1234', 2, 1),
    (39, 'toki.l@gosasun.eus', '1234', 2, 1),
    (40, 'zoko.m@gosasun.eus', '1234', 2, 1),
    (41, 'ibil.j@gosasun.eus', '1234', 2, 1),
    (42, 'geld.k@gosasun.eus', '1234', 2, 1),
    (43, 'bizi.a@gosasun.eus', '1234', 2, 1),
    (44, 'osasun.o@gosasun.eus', '1234', 2, 1),
    (45, 'gaitz.r@gosasun.eus', '1234', 2, 1),
    (46, 'senda.m@gosasun.eus', '1234', 2, 1),
    (47, 'trata.i@gosasun.eus', '1234', 2, 1),
    (48, 'bide.a@gosasun.eus', '1234', 2, 1),
    (49, 'mendi.j@gosasun.eus', '1234', 2, 1),
    (50, 'haran.k@gosasun.eus', '1234', 2, 1),
    -- Pazienteak (51 - 100)
    (51, 'ander.m@paziente.eus', '1234', 3, 1),
    (52, 'maite.g@paziente.eus', '1234', 3, 1),
    (53, 'mikel.u@paziente.eus', '1234', 3, 1),
    (54, 'nerea.a@paziente.eus', '1234', 3, 1),
    (55, 'jon.z@paziente.eus', '1234', 3, 1),
    (56, 'ane.e@paziente.eus', '1234', 3, 1),
    (57, 'gorka.k@paziente.eus', '1234', 3, 1),
    (58, 'uxue.i@paziente.eus', '1234', 3, 1),
    (59, 'asier.o@paziente.eus', '1234', 3, 1),
    (60, 'leire.m@paziente.eus', '1234', 3, 1),
    (61, 'unai.j@paziente.eus', '1234', 3, 1),
    (62, 'naia.b@paziente.eus', '1234', 3, 1),
    (63, 'markel.g@paziente.eus', '1234', 3, 1),
    (64, 'irati.z@paziente.eus', '1234', 3, 1),
    (65, 'oier.p@paziente.eus', '1234', 3, 1),
    (66, 'izola.d@paziente.eus', '1234', 3, 1),
    (67, 'ibar.r@paziente.eus', '1234', 3, 1),
    (68, 'aroa.a@paziente.eus', '1234', 3, 1),
    (69, 'ibai.k@paziente.eus', '1234', 3, 1),
    (70, 'malen.s@paziente.eus', '1234', 3, 1),
    (71, 'xabier.e@paziente.eus', '1234', 3, 1),
    (72, 'haizea.t@paziente.eus', '1234', 3, 1),
    (73, 'beñat.m@paziente.eus', '1234', 3, 1),
    (74, 'maddi.r@paziente.eus', '1234', 3, 1),
    (75, 'eñaut.a@paziente.eus', '1234', 3, 1),
    (76, 'june.p@paziente.eus', '1234', 3, 1),
    (77, 'peio.o@paziente.eus', '1234', 3, 1),
    (78, 'laia.z@paziente.eus', '1234', 3, 1),
    (79, 'ekain.k@paziente.eus', '1234', 3, 1),
    (80, 'nora.g@paziente.eus', '1234', 3, 1),
    (81, 'danel.u@paziente.eus', '1234', 3, 1),
    (82, 'sara.i@paziente.eus', '1234', 3, 1),
    (83, 'oihan.m@paziente.eus', '1234', 3, 1),
    (84, 'maria.a@paziente.eus', '1234', 3, 1),
    (85, 'luken.e@paziente.eus', '1234', 3, 1),
    (86, 'olaia.b@paziente.eus', '1234', 3, 1),
    (87, 'egoitz.j@paziente.eus', '1234', 3, 1),
    (88, 'amaia.n@paziente.eus', '1234', 3, 1),
    (89, 'peru.k@paziente.eus', '1234', 3, 1),
    (90, 'elene.r@paziente.eus', '1234', 3, 1),
    (91, 'haritz.m@paziente.eus', '1234', 3, 1),
    (92, 'saioa.p@paziente.eus', '1234', 3, 1),
    (93, 'julene.s@paziente.eus', '1234', 3, 1),
    (94, 'ainhoa.g@paziente.eus', '1234', 3, 1),
    (95, 'inaxio.z@paziente.eus', '1234', 3, 1),
    (96, 'karmele.u@paziente.eus', '1234', 3, 1),
    (97, 'josu.e@paziente.eus', '1234', 3, 1),
    (98, 'bego.i@paziente.eus', '1234', 3, 1),
    (99, 'kepas.a@paziente.eus', '1234', 3, 1),
    (100, 'edurne.m@paziente.eus', '1234', 3, 1),
    -- Harrerako Langileak
    (101, 'harrera@gosasun.eus', '1234', 4, 1),
    (102, 'ane.harrera@gosasun.eus', '1234', 4, 1),
    (103, 'mikel.harrera@gosasun.eus', '1234', 4, 1),
    (104, 'leire.harrera@gosasun.eus', '1234', 4, 1);
-- 3. Medikuak (50)
INSERT INTO Medikuak (
        mediku_id,
        izena,
        abizenak,
        jaiotze_data,
        elkargokide_zenbakia,
        espezialitatea,
        telefonoa,
        irudia
    )
VALUES (
        1,
        'Jon',
        'Urrutia',
        '1975-04-12',
        'MED-001',
        'Kardiologia',
        '600111222',
        'img/medikua_1.png'
    ),
    (
        2,
        'Miren',
        'Goikoetxea',
        '1980-08-25',
        'MED-002',
        'Neurologia',
        '600222333',
        'img/medikua_2.png'
    ),
    (
        3,
        'Aitor',
        'Etxeberria',
        '1972-11-03',
        'MED-003',
        'Pediatria',
        '600333444',
        'img/medikua_3.png'
    ),
    (
        4,
        'Kepa',
        'Zubizarreta',
        '1985-02-18',
        'MED-004',
        'Traumatologia',
        '600444555',
        'img/medikua_4.png'
    ),
    (
        5,
        'Olatz',
        'Agirre',
        '1978-06-30',
        'MED-005',
        'Dermatologia',
        '600555666',
        'img/medikua_5.png'
    ),
    (
        6,
        'Patxi',
        'Iturriotz',
        '1965-09-15',
        'MED-006',
        'Psikiatria',
        '600666777',
        'img/medikua_6.png'
    ),
    (
        7,
        'Rakel',
        'Mendizabal',
        '1982-12-05',
        'MED-007',
        'Ginekologia',
        '600777888',
        'img/medikua_7.png'
    ),
    (
        8,
        'Lander',
        'Garate',
        '1990-01-20',
        'MED-008',
        'Oftalmologia',
        '600888999',
        'img/medikua_8.png'
    ),
    (
        9,
        'Sonia',
        'Elorza',
        '1973-03-08',
        'MED-009',
        'Otorrinolaringologia',
        '600999000',
        'img/medikua_9.png'
    ),
    (
        10,
        'Iker',
        'Murua',
        '1988-07-12',
        'MED-010',
        'Urologia',
        '611000111',
        'img/medikua_10.png'
    ),
    (
        11,
        'Amaia',
        'Sarasola',
        '1976-10-22',
        'MED-011',
        'Onkologia',
        '611111222',
        'img/medikua_11.png'
    ),
    (
        12,
        'Eneko',
        'Arteagabeitia',
        '1981-05-14',
        'MED-012',
        'Endokrinologia',
        '611222333',
        'img/medikua_12.png'
    ),
    (
        13,
        'Gorka',
        'Kortazar',
        '1970-12-30',
        'MED-013',
        'Erreumatologia',
        '611333444',
        'img/medikua_13.png'
    ),
    (
        14,
        'Maddi',
        'Lezama',
        '1986-04-05',
        'MED-014',
        'Digestiboa',
        '611444555',
        'img/medikua_14.png'
    ),
    (
        15,
        'Josu',
        'Garitaonandia',
        '1979-09-18',
        'MED-015',
        'Pneumologia',
        '611555666',
        'img/medikua_15.png'
    ),
    (
        16,
        'Aritz',
        'Bengoetxea',
        '1984-01-25',
        'MED-016',
        'Nefrologia',
        '611666777',
        'img/medikua_16.png'
    ),
    (
        17,
        'Karmele',
        'Ibarra',
        '1968-08-10',
        'MED-017',
        'Kardiologia',
        '611777888',
        'img/medikua_17.png'
    ),
    (
        18,
        'Danel',
        'Urizar',
        '1992-03-02',
        'MED-018',
        'Pediatria',
        '611888999',
        'img/medikua_18.png'
    ),
    (
        19,
        'Nahia',
        'Zabala',
        '1983-11-15',
        'MED-019',
        'Neurologia',
        '611999000',
        'img/medikua_19.png'
    ),
    (
        20,
        'Luzia',
        'Arana',
        '1974-06-20',
        'MED-020',
        'Dermatologia',
        '622000111',
        'img/medikua_20.png'
    ),
    (
        21,
        'Bingen',
        'Egia',
        '1987-02-08',
        'MED-021',
        'Traumatologia',
        '622111222',
        'img/medikua_21.png'
    ),
    (
        22,
        'Mikel',
        'Olabarria',
        '1971-09-28',
        'MED-022',
        'Psikiatria',
        '622222333',
        'img/medikua_22.png'
    ),
    (
        23,
        'Jone',
        'Lazkano',
        '1989-05-12',
        'MED-023',
        'Ginekologia',
        '622333444',
        'img/medikua_23.png'
    ),
    (
        24,
        'Asier',
        'Iraola',
        '1977-12-05',
        'MED-024',
        'Oftalmologia',
        '622444555',
        'img/medikua_24.png'
    ),
    (
        25,
        'Peru',
        'Garmendia',
        '1982-04-18',
        'MED-025',
        'Otorrinolaringologia',
        '622555666',
        'img/medikua_25.png'
    ),
    (
        26,
        'Koldobika',
        'Barrena',
        '1969-10-30',
        'MED-026',
        'Urologia',
        '622666777',
        'img/medikua_26.png'
    ),
    (
        27,
        'Maider',
        'Zuriarrain',
        '1986-01-15',
        'MED-027',
        'Onkologia',
        '622777888',
        'img/medikua_27.png'
    ),
    (
        28,
        'Nerea',
        'Txiki',
        '1980-08-02',
        'MED-028',
        'Endokrinologia',
        '622888999',
        'img/medikua_28.png'
    ),
    (
        29,
        'Andoni',
        'Handia',
        '1975-03-22',
        'MED-029',
        'Erreumatologia',
        '622999000',
        'img/medikua_29.png'
    ),
    (
        30,
        'Ostaizka',
        'Luze',
        '1991-07-10',
        'MED-030',
        'Digestiboa',
        '633000111',
        'img/medikua_30.png'
    ),
    (
        31,
        'Iñaki',
        'Motza',
        '1973-11-28',
        'MED-031',
        'Pneumologia',
        '633111222',
        'img/medikua_31.png'
    ),
    (
        32,
        'Eider',
        'Gorrotxategi',
        '1988-05-05',
        'MED-032',
        'Nefrologia',
        '633222333',
        'img/medikua_32.png'
    ),
    (
        33,
        'Kattalin',
        'Beltza',
        '1978-02-14',
        'MED-033',
        'Kardiologia',
        '633333444',
        'img/medikua_33.png'
    ),
    (
        34,
        'Julen',
        'Zilar',
        '1985-09-08',
        'MED-034',
        'Pediatria',
        '633444555',
        'img/medikua_34.png'
    ),
    (
        35,
        'Malen',
        'Urreisti',
        '1970-04-25',
        'MED-035',
        'Neurologia',
        '633555666',
        'img/medikua_35.png'
    ),
    (
        36,
        'Peio',
        'Kobre',
        '1983-12-12',
        'MED-036',
        'Dermatologia',
        '633666777',
        'img/medikua_36.png'
    ),
    (
        37,
        'Ane',
        'Burnik',
        '1990-06-30',
        'MED-037',
        'Traumatologia',
        '633777888',
        'img/medikua_37.png'
    ),
    (
        38,
        'Nekane',
        'Lekuona',
        '1976-01-18',
        'MED-038',
        'Psikiatria',
        '633888999',
        'img/medikua_38.png'
    ),
    (
        39,
        'Laureano',
        'Toki',
        '1981-08-05',
        'MED-039',
        'Ginekologia',
        '633999000',
        'img/medikua_39.png'
    ),
    (
        40,
        'Miren',
        'Zokotza',
        '1967-03-28',
        'MED-040',
        'Oftalmologia',
        '644000111',
        'img/medikua_40.png'
    ),
    (
        41,
        'Joseba',
        'Ibil',
        '1989-10-15',
        'MED-041',
        'Otorrinolaringologia',
        '644111222',
        'img/medikua_41.png'
    ),
    (
        42,
        'Karlos',
        'Geldi',
        '1974-05-02',
        'MED-042',
        'Urologia',
        '644222333',
        'img/medikua_42.png'
    ),
    (
        43,
        'Ainhoa',
        'Bizi',
        '1986-12-20',
        'MED-043',
        'Onkologia',
        '644333444',
        'img/medikua_43.png'
    ),
    (
        44,
        'Oier',
        'Osasun',
        '1980-07-08',
        'MED-044',
        'Endokrinologia',
        '644444555',
        'img/medikua_44.png'
    ),
    (
        45,
        'Ramuntxo',
        'Gaitz',
        '1975-02-25',
        'MED-045',
        'Erreumatologia',
        '644555666',
        'img/medikua_45.png'
    ),
    (
        46,
        'Maialen',
        'Senda',
        '1992-09-12',
        'MED-046',
        'Digestiboa',
        '644666777',
        'img/medikua_46.png'
    ),
    (
        47,
        'Iñigo',
        'Trata',
        '1979-04-30',
        'MED-047',
        'Pneumologia',
        '644777888',
        'img/medikua_47.png'
    ),
    (
        48,
        'Alazne',
        'Bide',
        '1984-11-18',
        'MED-048',
        'Nefrologia',
        '644888999',
        'img/medikua_48.png'
    ),
    (
        49,
        'Jon',
        'Mendi',
        '1968-06-05',
        'MED-049',
        'Kardiologia',
        '644999000',
        'img/medikua_49.png'
    ),
    (
        50,
        'Katalin',
        'Haran',
        '1987-01-22',
        'MED-050',
        'Pediatria',
        '655000111',
        'img/medikua_50.png'
    );
-- 4. Harrerako Langileak
INSERT INTO Harrerako_Langileak (langile_id, izena, abizenak)
VALUES (101, 'Ane', 'Martinez Mendizabal');
INSERT INTO Harrerako_Langileak (langile_id, izena, abizenak)
VALUES (102, 'Ane', 'Garcia'),
    (103, 'Mikel', 'Lopez'),
    (104, 'Leire', 'Fernandez');
-- 6. Mediku-Paziente Loturak
-- 5. Pazienteak (50)
INSERT INTO Pazienteak (
        paziente_id,
        nan,
        izena,
        abizenak,
        jaiotze_data,
        telefonoa,
        odol_taldea,
        azken_altuera,
        azken_pisua
    )
VALUES (
        51,
        '11111111A',
        'Ander',
        'MartInez',
        '1950-02-15',
        '655111222',
        'O+',
        1.75,
        64.7
    ),
    (
        52,
        '22222222B',
        'Maite',
        'Gomez',
        '1965-07-20',
        '655222333',
        'A-',
        1.62,
        65.0
    ),
    (
        53,
        '33333333C',
        'Mikel',
        'Uribarri',
        '1982-11-05',
        '655333444',
        'B+',
        1.80,
        82.3
    ),
    (
        54,
        '44444444D',
        'Nerea',
        'Alonso',
        '1995-04-18',
        '655444555',
        'O-',
        1.68,
        59.8
    ),
    (
        55,
        '55555555E',
        'Jon',
        'Zabalzeta',
        '1970-09-30',
        '655555666',
        'AB+',
        1.78,
        85.1
    ),
    (
        56,
        '66666666F',
        'Ane',
        'Espinosa',
        '1945-12-12',
        '655666777',
        'A+',
        1.55,
        62.4
    ),
    (
        57,
        '77777777G',
        'Gorka',
        'Kortazar',
        '1988-03-25',
        '655777888',
        'O+',
        1.85,
        90.0
    ),
    (
        58,
        '88888888H',
        'Uxue',
        'Iturri',
        '2005-08-08',
        '655888999',
        'B-',
        1.60,
        55.2
    ),
    (
        59,
        '99999999I',
        'Asier',
        'Ormazabal',
        '1960-01-14',
        '655999000',
        'A-',
        1.72,
        76.8
    ),
    (
        60,
        '10101010J',
        'Leire',
        'Murua',
        '1992-06-28',
        '666000111',
        'O+',
        1.65,
        61.5
    ),
    (
        61,
        '12121212K',
        'Unai',
        'Jauregi',
        '1985-10-10',
        '666111222',
        'AB-',
        1.79,
        81.0
    ),
    (
        62,
        '13131313L',
        'Naia',
        'Basterra',
        '1978-05-22',
        '666222333',
        'O-',
        1.58,
        58.7
    ),
    (
        63,
        '14141414M',
        'Markel',
        'Garaiko',
        '1955-12-05',
        '666333444',
        'B+',
        1.70,
        79.2
    ),
    (
        64,
        '15151515N',
        'Irati',
        'Zubia',
        '1998-02-18',
        '666444555',
        'A+',
        1.64,
        63.1
    ),
    (
        65,
        '16161616O',
        'Oier',
        'Perez',
        '1968-09-02',
        '666555666',
        'O+',
        1.82,
        88.5
    ),
    (
        66,
        '17171717P',
        'Izola',
        'Diaz',
        '1980-04-15',
        '666666777',
        'A-',
        1.67,
        66.3
    ),
    (
        67,
        '18181818Q',
        'Ibar',
        'Ruiz',
        '1990-11-28',
        '666777888',
        'B-',
        1.75,
        75.6
    ),
    (
        68,
        '19191919R',
        'Aroa',
        'Aizpurua',
        '1975-07-12',
        '666888999',
        'O-',
        1.61,
        60.9
    ),
    (
        69,
        '20202020S',
        'Ibai',
        'Korta',
        '1958-01-25',
        '666999000',
        'AB+',
        1.69,
        74.4
    ),
    (
        70,
        '21212121T',
        'Malen',
        'Sancho',
        '1986-08-08',
        '677000111',
        'O+',
        1.71,
        68.2
    ),
    (
        71,
        '23232323U',
        'Xabier',
        'Etxabe',
        '1962-03-20',
        '677111222',
        'A+',
        1.76,
        80.5
    ),
    (
        72,
        '24242424V',
        'Haizea',
        'Torres',
        '1994-10-05',
        '677222333',
        'B+',
        1.63,
        62.8
    ),
    (
        73,
        '25252525W',
        'Beñat',
        'Mendez',
        '1972-05-18',
        '677333444',
        'O-',
        1.74,
        77.1
    ),
    (
        74,
        '26262626X',
        'Maddi',
        'Romero',
        '1989-12-30',
        '677444555',
        'A-',
        1.66,
        64.6
    ),
    (
        75,
        '27272727Y',
        'Eñaut',
        'Alustiza',
        '1952-08-14',
        '677555666',
        'AB-',
        1.68,
        72.9
    ),
    (
        76,
        '28282828Z',
        'June',
        'Pascual',
        '2001-02-25',
        '677666777',
        'O+',
        1.59,
        56.4
    ),
    (
        77,
        '29292929A',
        'Peio',
        'Otxoa',
        '1966-09-10',
        '677777888',
        'B-',
        1.81,
        86.7
    ),
    (
        78,
        '30303030B',
        'Laia',
        'Zelai',
        '1984-04-22',
        '677888999',
        'A+',
        1.62,
        61.1
    ),
    (
        79,
        '31313131C',
        'Ekain',
        'Karmona',
        '1979-11-05',
        '677999000',
        'O-',
        1.77,
        83.4
    ),
    (
        80,
        '32323232D',
        'Nora',
        'Garcia',
        '1996-06-18',
        '688000111',
        'AB+',
        1.65,
        65.5
    ),
    (
        81,
        '34343434E',
        'Danel',
        'Ugarte',
        '1956-01-30',
        '688111222',
        'O+',
        1.73,
        78.8
    ),
    (
        82,
        '35353535F',
        'Sara',
        'Iraola',
        '1981-08-12',
        '688222333',
        'A-',
        1.60,
        59.2
    ),
    (
        83,
        '36363636G',
        'Oihan',
        'Muruaga',
        '1974-03-25',
        '688333444',
        'B+',
        1.79,
        84.6
    ),
    (
        84,
        '37373737H',
        'Maria',
        'Artola',
        '1991-10-08',
        '688444555',
        'O-',
        1.67,
        67.3
    ),
    (
        85,
        '38383838I',
        'Luken',
        'Egia',
        '1964-05-20',
        '688555666',
        'A+',
        1.71,
        75.9
    ),
    (
        86,
        '39393939J',
        'Olaia',
        'Badiola',
        '1987-12-02',
        '688666777',
        'AB-',
        1.64,
        63.7
    ),
    (
        87,
        '40404040K',
        'Egoitz',
        'Juarez',
        '1976-07-15',
        '688777888',
        'O+',
        1.83,
        89.1
    ),
    (
        88,
        '41414141L',
        'Amaia',
        'Navarro',
        '1999-02-28',
        '688888999',
        'B-',
        1.57,
        57.5
    ),
    (
        89,
        '42424242M',
        'Peru',
        'Krutxaga',
        '1959-09-10',
        '688999000',
        'A-',
        1.68,
        73.2
    ),
    (
        90,
        '43434343N',
        'Elene',
        'Rojo',
        '1983-04-25',
        '699000111',
        'O-',
        1.69,
        69.4
    ),
    (
        91,
        '45454545O',
        'Haritz',
        'Mendia',
        '1971-11-08',
        '699111222',
        'AB+',
        1.74,
        80.8
    ),
    (
        92,
        '46464646P',
        'Saioa',
        'Prieto',
        '1993-06-20',
        '699222333',
        'O+',
        1.61,
        60.3
    ),
    (
        93,
        '47474747Q',
        'Julene',
        'Sorozabal',
        '1967-01-02',
        '699333444',
        'A+',
        1.66,
        68.6
    ),
    (
        94,
        '48484848R',
        'Ainhoa',
        'Goti',
        '1985-08-15',
        '699444555',
        'B+',
        1.63,
        64.9
    ),
    (
        95,
        '49494949S',
        'Inaxio',
        'Zuloaga',
        '1954-03-28',
        '699555666',
        'O-',
        1.76,
        82.5
    ),
    (
        96,
        '50505050T',
        'Karmele',
        'Unzueta',
        '1978-10-10',
        '699666777',
        'A-',
        1.58,
        58.1
    ),
    (
        97,
        '51515151U',
        'Josu',
        'Elizondo',
        '1989-05-22',
        '699777888',
        'AB-',
        1.80,
        85.4
    ),
    (
        98,
        '52525252V',
        'Bego',
        'Ibarra',
        '1961-12-05',
        '699888999',
        'O+',
        1.62,
        62.7
    ),
    (
        99,
        '53535353W',
        'Kepas',
        'Araujo',
        '1990-07-18',
        '699999000',
        'B-',
        1.78,
        83.9
    ),
    (
        100,
        '54545454X',
        'Edurne',
        'Muruaga',
        '1973-02-28',
        '600000111',
        'A+',
        1.65,
        66.8
    );
-- 5. Mediku_Paziente Loturak (Hainbat pazientek mediku bat baino gehiago eduki dezakete, eta medikuek hainbat paziente)
-- Paziente bakoitzari 1 edo 2 mediku esleituko dizkiogu
INSERT INTO Mediku_Paziente (mediku_id, paziente_id)
VALUES (1, 51),
    (2, 51),
    -- Ander (Kardiologia, Neurologia)
    (3, 52),
    (15, 52),
    -- Maite 
    (4, 53),
    -- Mikel
    (5, 54),
    (20, 54),
    -- Nerea
    (1, 55),
    (6, 55),
    -- Jon
    (7, 56),
    -- Ane
    (8, 57),
    (24, 57),
    -- Gorka
    (3, 58),
    -- Uxue
    (10, 59),
    (26, 59),
    -- Asier
    (11, 60),
    -- Leire
    (12, 61),
    (28, 61),
    -- Unai
    (7, 62),
    (23, 62),
    -- Naia
    (1, 63),
    (17, 63),
    -- Markel
    (5, 64),
    -- Irati
    (4, 65),
    (21, 65),
    -- Oier
    (14, 66),
    (30, 66),
    -- Izola
    (8, 67),
    -- Ibar
    (11, 68),
    (27, 68),
    -- Aroa
    (15, 69),
    (31, 69),
    -- Ibai
    (7, 70),
    -- Malen
    (1, 71),
    (33, 71),
    -- Xabier
    (2, 72),
    (19, 72),
    -- Haizea
    (4, 73),
    -- Beñat
    (14, 74),
    -- Maddi
    (16, 75),
    (32, 75),
    -- Eñaut
    (3, 76),
    -- June
    (1, 77),
    (17, 77),
    -- Peio
    (5, 78),
    (20, 78),
    -- Laia
    (13, 79),
    (29, 79),
    -- Ekain
    (12, 80),
    -- Nora
    (1, 81),
    (17, 81),
    -- Danel
    (11, 82),
    -- Sara
    (4, 83),
    (21, 83),
    -- Oihan
    (7, 84),
    (23, 84),
    -- Maria
    (15, 85),
    -- Luken
    (2, 86),
    (19, 86),
    -- Olaia
    (10, 87),
    (26, 87),
    -- Egoitz
    (11, 88),
    (27, 88),
    -- Amaia
    (6, 89),
    (22, 89),
    -- Peru
    (14, 90),
    -- Elene
    (1, 91),
    (33, 91),
    -- Haritz
    (5, 92),
    -- Saioa
    (7, 93),
    (23, 93),
    -- Julene
    (12, 94),
    (28, 94),
    -- Ainhoa
    (4, 95),
    -- Inaxio
    (11, 96),
    (27, 96),
    -- Karmele
    (15, 97),
    (31, 97),
    -- Josu
    (2, 98),
    -- Bego
    (16, 99),
    (32, 99),
    -- Kepas
    (8, 100),
    (24, 100);
-- Edurne
-- 6. Neurketak (Datu errealistak dituzten 50+ neurketa pazienteentzat)
INSERT INTO Neurketak (
        paziente_id,
        erregistro_data,
        glukosa_mg_dl,
        tentsio_sistolikoa,
        tentsio_diastolikoa,
        pisua_kg,
        altuera,
        sintomak
    ) VALUES (
        51,
        '2026-02-20 08:30:00',
        95.0,
        130,
        85,
        64.5,
        1.75,
        'Arazorik gabe, medikazioa hartuta.'
    ),
    (
        51,
        '2026-02-21 08:45:00',
        98.0,
        128,
        82,
        64.8,
        1.75,
        'Lotan ondo deskantsatu dut.'
    ),
    (
        52,
        '2026-02-15 09:00:00',
        105.0,
        140,
        90,
        65.0,
        1.62,
        'Buruhauste txikiak goizean.'
    ),
    (
        52,
        '2026-02-22 09:15:00',
        102.0,
        135,
        88,
        65.4,
        1.62,
        'Hobeto sentitzen naiz gaur.'
    ),
    (
        53,
        '2026-02-18 10:30:00',
        110.0,
        125,
        80,
        82.3,
        1.80,
        'Krisi asmatikoa gaindituta.'
    ),
    (
        55,
        '2026-02-10 07:45:00',
        145.0,
        145,
        95,
        85.1,
        1.78,
        'Odol azukrea apur bat altu.'
    ),
    (
        55,
        '2026-02-17 08:00:00',
        130.0,
        140,
        90,
        84.7,
        1.78,
        'Dieta zaintzen nabil.'
    ),
    (
        55,
        '2026-02-22 08:15:00',
        125.0,
        138,
        88,
        84.5,
        1.78,
        'Emaitzak hobetzen.'
    ),
    (
        56,
        '2026-02-05 11:00:00',
        90.0,
        115,
        75,
        62.4,
        1.55,
        'Dena ondo.'
    ),
    (
        59,
        '2026-02-20 15:30:00',
        108.0,
        132,
        86,
        76.8,
        1.72,
        'Arnasestuka kirola egitean.'
    ),
    (
        61,
        '2026-02-14 09:45:00',
        96.0,
        120,
        80,
        81.0,
        1.79,
        'Normaltasuna.'
    ),
    (
        63,
        '2026-02-21 10:15:00',
        115.0,
        150,
        95,
        79.2,
        1.70,
        'Tentsioa apur bat altu.'
    ),
    (
        67,
        '2026-02-12 16:00:00',
        99.0,
        124,
        78,
        75.6,
        1.75,
        'Begi lekuan mina.'
    ),
    (
        69,
        '2026-02-19 11:30:00',
        104.0,
        128,
        84,
        74.4,
        1.69,
        'Eztula dut egun osoan.'
    ),
    (
        71,
        '2026-02-22 08:20:00',
        112.0,
        136,
        88,
        80.5,
        1.76,
        'Bularreko mina txikia.'
    ),
    (
        73,
        '2026-02-16 09:10:00',
        92.0,
        118,
        76,
        77.1,
        1.74,
        'Belauneko mina.'
    ),
    (
        75,
        '2026-02-20 14:25:00',
        101.0,
        125,
        82,
        72.9,
        1.68,
        'Urdailgo mina jan ondoren.'
    ),
    (
        77,
        '2026-02-18 10:05:00',
        107.0,
        142,
        92,
        86.7,
        1.81,
        'Takikardiak tarteka.'
    ),
    (
        79,
        '2026-02-21 12:40:00',
        98.0,
        126,
        80,
        83.4,
        1.77,
        'Aldakako mina.'
    ),
    (
        81,
        '2026-02-15 08:50:00',
        118.0,
        148,
        96,
        78.8,
        1.73,
        'Nekea eta zorabioak.'
    ),
    (
        83,
        '2026-02-22 09:35:00',
        103.0,
        130,
        85,
        84.6,
        1.79,
        'Dena ondo doa.'
    ),
    (
        85,
        '2026-02-19 11:15:00',
        95.0,
        122,
        78,
        75.9,
        1.71,
        'Arnasa hartzeko zailtasun txikiak.'
    ),
    (
        87,
        '2026-02-14 15:55:00',
        109.0,
        138,
        90,
        89.1,
        1.83,
        'Gernu arazoak.'
    ),
    (
        89,
        '2026-02-21 08:10:00',
        114.0,
        146,
        94,
        73.2,
        1.68,
        'Ahotseko urradura.'
    ),
    (
        91,
        '2026-02-17 10:45:00',
        97.0,
        124,
        82,
        80.8,
        1.74,
        'Bihotz erritmo irregularra.'
    ),
    (
        93,
        '2026-02-22 12:20:00',
        106.0,
        132,
        86,
        68.6,
        1.66,
        'Dena normaltasunean.'
    ),
    (
        95,
        '2026-02-16 09:25:00',
        111.0,
        140,
        92,
        82.5,
        1.76,
        'Hanka minduta.'
    ),
    (
        97,
        '2026-02-20 14:50:00',
        100.0,
        128,
        84,
        85.4,
        1.80,
        'Arnasketa sakona egitean mina.'
    ),
    (
        99,
        '2026-02-18 11:05:00',
        105.0,
        136,
        88,
        83.9,
        1.78,
        'Larruazaleko orbanak.'
    ),
    (
        51,
        '2026-02-22 08:35:00',
        94.0,
        128,
        84,
        64.7,
        1.75,
        'Beti bezala.'
    ),
    (
        54,
        '2026-02-22 09:10:00',
        88.0,
        115,
        75,
        59.8,
        1.68,
        'Ondo sentitzen naiz.'
    ),
    (
        58,
        '2026-02-21 10:00:00',
        92.0,
        118,
        78,
        55.2,
        1.60,
        'Eskalatzen min hartu nuen besoan.'
    ),
    (
        60,
        '2026-02-20 11:30:00',
        101.0,
        122,
        80,
        61.5,
        1.65,
        'Bizkarreko mina lanean.'
    ),
    (
        62,
        '2026-02-22 08:15:00',
        97.0,
        120,
        82,
        58.7,
        1.58,
        'Dena ondo.'
    ),
    (
        64,
        '2026-02-19 14:45:00',
        95.0,
        116,
        76,
        63.1,
        1.64,
        'Azal gorritua eguzkiagatik.'
    ),
    (
        66,
        '2026-02-21 09:30:00',
        103.0,
        128,
        85,
        66.3,
        1.67,
        'Digestio astuna atzo.'
    ),
    (
        68,
        '2026-02-22 12:00:00',
        99.0,
        124,
        80,
        60.9,
        1.61,
        'Medikazioa ahaztu nuen.'
    ),
    (
        70,
        '2026-02-20 16:15:00',
        108.0,
        135,
        88,
        68.2,
        1.71,
        'Zorabio txikia goizean.'
    ),
    (
        72,
        '2026-02-18 10:45:00',
        96.0,
        120,
        78,
        62.8,
        1.63,
        'Buruko miña.'
    ),
    (
        74,
        '2026-02-22 08:50:00',
        102.0,
        126,
        84,
        64.6,
        1.66,
        'Normal.'
    ),
    (
        76,
        '2026-02-21 11:20:00',
        90.0,
        115,
        75,
        56.4,
        1.59,
        'Lasaia.'
    ),
    (
        78,
        '2026-02-19 15:10:00',
        98.0,
        122,
        80,
        61.1,
        1.62,
        'Pixka bat ahul.'
    ),
    (
        80,
        '2026-02-22 09:25:00',
        104.0,
        130,
        86,
        65.5,
        1.65,
        'Bikain.'
    ),
    (
        82,
        '2026-02-20 13:40:00',
        95.0,
        118,
        76,
        59.2,
        1.60,
        'Tripetako mina.'
    ),
    (
        84,
        '2026-02-21 10:55:00',
        99.0,
        124,
        82,
        67.3,
        1.67,
        'Dena ondo.'
    ),
    (
        86,
        '2026-02-18 14:15:00',
        101.0,
        126,
        84,
        63.7,
        1.64,
        'Giharretako karga.'
    ),
    (
        88,
        '2026-02-22 08:40:00',
        93.0,
        116,
        78,
        57.5,
        1.57,
        'Ondo lo egin dut.'
    ),
    (
        90,
        '2026-02-21 12:30:00',
        106.0,
        132,
        88,
        69.4,
        1.69,
        'Dena bere bidean.'
    ),
    (
        92,
        '2026-02-19 16:05:00',
        97.0,
        120,
        80,
        60.3,
        1.61,
        'Ezkerreko hankan mina.'
    ),
    (
        94,
        '2026-02-22 10:10:00',
        102.0,
        128,
        85,
        64.9,
        1.63,
        'Osasuntsu.'
    ),
    (
        96,
        '2026-02-20 09:00:00',
        91.0,
        114,
        76,
        58.1,
        1.58,
        'Griparekin.'
    ),
    (
        98,
        '2026-02-21 15:20:00',
        100.0,
        125,
        82,
        62.7,
        1.62,
        'Hobetzen.'
    ),
    (
        100,
        '2026-02-22 11:45:00',
        105.0,
        130,
        86,
        66.8,
        1.65,
        'Normala.'
    );
-- 7. Hitzorduak (Gaurko, iraganeko eta etorkizuneko hitzorduak)
INSERT INTO Hitzorduak (
        paziente_id,
        mediku_id,
        data,
        hasiera_ordua,
        bukaera_ordua,
        arrazoia,
        egoera
    )
VALUES -- Gaurkoak (2026-02-22 da sistema dataren arabera)
    (
        51,
        1,
        '2026-02-22',
        '09:00:00',
        '09:30:00',
        'Errebisio kardiologikoa',
        'Zain'
    ),
    (
        55,
        1,
        '2026-02-22',
        '10:00:00',
        '10:30:00',
        'Tentsio kontrola',
        'Zain'
    ),
    (
        63,
        1,
        '2026-02-22',
        '11:30:00',
        '12:00:00',
        'Bularreko mina ohiko kontsulta',
        'Zain'
    ),
    (
        52,
        2,
        '2026-02-22',
        '09:15:00',
        '09:45:00',
        'Zefaleak eta zorabioak',
        'Zain'
    ),
    (
        72,
        2,
        '2026-02-22',
        '12:00:00',
        '12:30:00',
        'Buruko miña gogorra',
        'Zain'
    ),
    (
        52,
        15,
        '2026-02-22',
        '16:00:00',
        '16:30:00',
        'Astma jarraipena',
        'Zain'
    ),
    (
        53,
        4,
        '2026-02-22',
        '10:30:00',
        '11:00:00',
        'Belauneko mina',
        'Zain'
    ),
    (
        54,
        5,
        '2026-02-22',
        '11:00:00',
        '11:30:00',
        'Orban berrikuspena',
        'Zain'
    ),
    (
        56,
        7,
        '2026-02-22',
        '09:30:00',
        '10:00:00',
        'Urteroko azterketa',
        'Zain'
    ),
    (
        57,
        8,
        '2026-02-22',
        '17:00:00',
        '17:30:00',
        'Begi lekuan mina',
        'Zain'
    ),
    -- Iraganekoak (Bukatuta edo Ezeztatuta)
    (
        51,
        1,
        '2026-01-15',
        '10:00:00',
        '10:30:00',
        'Elektrokardiograma',
        'Bukatuta'
    ),
    (
        52,
        2,
        '2026-01-20',
        '11:00:00',
        '11:30:00',
        'Migrainak txanpona',
        'Bukatuta'
    ),
    (
        53,
        4,
        '2026-02-05',
        '09:00:00',
        '09:30:00',
        'Belaun bihurdura',
        'Bukatuta'
    ),
    (
        58,
        3,
        '2026-02-10',
        '16:30:00',
        '17:00:00',
        'Besoan min',
        'Bukatuta'
    ),
    (
        60,
        11,
        '2026-02-12',
        '10:15:00',
        '10:45:00',
        'Errebisio orokorra',
        'Ezeztatuta'
    ),
    (
        61,
        12,
        '2026-02-14',
        '11:30:00',
        '12:00:00',
        'Analitika emaitzak',
        'Bukatuta'
    ),
    (
        65,
        4,
        '2026-02-18',
        '12:30:00',
        '13:00:00',
        'Bizkarreko mina',
        'Bukatuta'
    ),
    (
        69,
        15,
        '2026-02-19',
        '15:00:00',
        '15:30:00',
        'Eztula kronikoa',
        'Bukatuta'
    ),
    (
        71,
        1,
        '2026-02-20',
        '09:45:00',
        '10:15:00',
        'Bihotz-maiztasuna alteratua',
        'Ezeztatuta'
    ),
    (
        75,
        16,
        '2026-02-21',
        '10:00:00',
        '10:30:00',
        'Giltzurrunetako harritsua',
        'Bukatuta'
    ),
    -- Etorkizunekoak
    (
        51,
        2,
        '2026-03-05',
        '10:00:00',
        '10:30:00',
        'Kontsulta neurologikoa',
        'Zain'
    ),
    (
        59,
        10,
        '2026-03-10',
        '11:00:00',
        '11:30:00',
        'Urologia jarraipena',
        'Zain'
    ),
    (
        63,
        17,
        '2026-03-12',
        '09:30:00',
        '10:00:00',
        'Tentsio kontrola kardiologia',
        'Zain'
    ),
    (
        67,
        8,
        '2026-03-15',
        '16:00:00',
        '16:30:00',
        'Ikusmen azterketa betaurrekoentzat',
        'Zain'
    ),
    (
        73,
        4,
        '2026-03-18',
        '11:15:00',
        '11:45:00',
        'Aldakako mina ebaluazioa',
        'Zain'
    ),
    (
        77,
        1,
        '2026-03-20',
        '10:30:00',
        '11:00:00',
        'Takikardiak kontsulta',
        'Zain'
    ),
    (
        81,
        17,
        '2026-03-22',
        '09:00:00',
        '09:30:00',
        'Elektrokardiograma berritzea',
        'Zain'
    ),
    (
        85,
        15,
        '2026-03-25',
        '12:00:00',
        '12:30:00',
        'Pneumonia osteko errebisioa',
        'Zain'
    ),
    (
        89,
        6,
        '2026-03-28',
        '16:30:00',
        '17:00:00',
        'Psikiatrarekin saioa',
        'Zain'
    ),
    (
        93,
        7,
        '2026-03-30',
        '10:00:00',
        '10:30:00',
        'Errebisio ginekologikoa',
        'Zain'
    ),
    (
        54,
        20,
        '2026-04-02',
        '11:30:00',
        '12:00:00',
        'Dermatologoaren interkontsulta',
        'Zain'
    ),
    (
        62,
        23,
        '2026-04-05',
        '09:15:00',
        '09:45:00',
        'Ginekologoaren analitika',
        'Zain'
    ),
    (
        66,
        30,
        '2026-04-08',
        '15:00:00',
        '15:30:00',
        'Urdaileko asaldurak',
        'Zain'
    ),
    (
        70,
        7,
        '2026-04-10',
        '10:45:00',
        '11:15:00',
        'Hauntzapen kontrol',
        'Zain'
    ),
    (
        74,
        14,
        '2026-04-12',
        '12:15:00',
        '12:45:00',
        'Kolnoskopia emaitzak',
        'Zain'
    ),
    (
        78,
        5,
        '2026-04-15',
        '09:30:00',
        '10:00:00',
        'Dermatitis atopia',
        'Zain'
    ),
    (
        82,
        11,
        '2026-04-18',
        '11:00:00',
        '11:30:00',
        'Ahultasun orokorraren azterketa',
        'Zain'
    ),
    (
        86,
        19,
        '2026-04-20',
        '16:15:00',
        '16:45:00',
        'Neurologoarekin balorazioa',
        'Zain'
    ),
    (
        90,
        14,
        '2026-04-22',
        '09:45:00',
        '10:15:00',
        'Digestiboko arazoak',
        'Zain'
    ),
    (
        94,
        28,
        '2026-04-25',
        '10:30:00',
        '11:00:00',
        'Tiroide kontrola',
        'Zain'
    ),
    (
        98,
        2,
        '2026-04-28',
        '11:45:00',
        '12:15:00',
        'Buruko miñen bilakaera',
        'Zain'
    ),
    (
        100,
        24,
        '2026-04-30',
        '09:00:00',
        '09:30:00',
        'Oftalmologoaren urterokoa',
        'Zain'
    );
SET FOREIGN_KEY_CHECKS = 1;
USE GOsasun_DB;
SET FOREIGN_KEY_CHECKS = 0;
INSERT INTO Neurketak (
        paziente_id,
        erregistro_data,
        glukosa_mg_dl,
        tentsio_sistolikoa,
        tentsio_diastolikoa,
        pisua_kg,
        altuera,
        sintomak
    ) VALUES (
        51,
        '2025-11-24 08:09:00',
        108.0,
        133,
        78,
        65.0,
        1.76,
        'Gosariaren ondoren.'
    ),
    (
        52,
        '2025-11-24 10:34:00',
        124.0,
        137,
        93,
        94.1,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        53,
        '2025-11-24 08:04:00',
        94.0,
        114,
        93,
        74.2,
        1.75,
        'Kirola egin ondoren.'
    ),
    (
        54,
        '2025-11-24 09:07:00',
        118.0,
        126,
        74,
        87.4,
        1.60,
        'Baraualdian.'
    ),
    (
        55,
        '2025-11-24 10:34:00',
        111.0,
        125,
        78,
        80.5,
        1.76,
        'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2025-11-24 08:30:00',
        94.0,
        139,
        86,
        91.0,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        57,
        '2025-11-24 09:53:00',
        89.0,
        130,
        87,
        84.0,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        58,
        '2025-11-24 09:55:00',
        112.0,
        132,
        85,
        67.5,
        1.68,
        'Apur bat nekatuta.'
    ),
    (
        60,
        '2025-11-24 10:29:00',
        123.0,
        122,
        94,
        79.0,
        1.81,
        'Baraualdian.'
    ),
    (
        61,
        '2025-11-24 10:24:00',
        133.0,
        124,
        89,
        72.1,
        1.83,
        'Gosariaren ondoren.'
    ),
    (
        62,
        '2025-11-24 07:13:00',
        123.0,
        130,
        85,
        66.1,
        1.56,
        'Dena ondo.'
    ),
    (
        64,
        '2025-11-24 09:22:00',
        120.0,
        135,
        82,
        94.8,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2025-11-24 09:41:00',
        132.0,
        131,
        78,
        90.5,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        66,
        '2025-11-24 07:19:00',
        110.0,
        129,
        85,
        74.6,
        1.59,
        'Gosariaren ondoren.'
    ),
    (
        67,
        '2025-11-24 09:26:00',
        106.0,
        131,
        84,
        71.5,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        68,
        '2025-11-24 07:34:00',
        92.0,
        131,
        84,
        60.2,
        1.85,
        'Kirola egin ondoren.'
    ),
    (
        69,
        '2025-11-24 08:38:00',
        109.0,
        125,
        86,
        94.1,
        1.66,
        'Ondo sentitzen naiz.'
    ),
    (
        70,
        '2025-11-24 08:40:00',
        118.0,
        130,
        78,
        74.0,
        1.70,
        'Baraualdian.'
    ),
    (
        72,
        '2025-11-24 08:13:00',
        88.0,
        130,
        82,
        91.9,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2025-11-24 10:42:00',
        112.0,
        128,
        81,
        95.2,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        74,
        '2025-11-24 09:00:00',
        117.0,
        111,
        80,
        64.8,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2025-11-24 10:07:00',
        123.0,
        117,
        87,
        65.1,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        78,
        '2025-11-24 07:59:00',
        92.0,
        128,
        76,
        63.6,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        79,
        '2025-11-24 07:16:00',
        95.0,
        129,
        84,
        68.0,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2025-11-24 08:29:00',
        121.0,
        130,
        88,
        63.7,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        82,
        '2025-11-24 07:13:00',
        131.0,
        134,
        80,
        89.1,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        83,
        '2025-11-24 07:08:00',
        105.0,
        116,
        81,
        64.1,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        84,
        '2025-11-24 07:20:00',
        104.0,
        135,
        90,
        79.1,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        85,
        '2025-11-24 10:34:00',
        119.0,
        130,
        91,
        80.0,
        1.72,
        'Gaur goizean neurtuta.'
    ),
    (
        86,
        '2025-11-24 07:34:00',
        124.0,
        135,
        75,
        68.3,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        87,
        '2025-11-24 08:07:00',
        122.0,
        141,
        75,
        72.4,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2025-11-24 07:05:00',
        121.0,
        125,
        85,
        90.8,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2025-11-24 10:56:00',
        122.0,
        136,
        85,
        91.1,
        1.84,
        'Kirola egin ondoren.'
    ),
    (
        91,
        '2025-11-24 08:27:00',
        87.0,
        129,
        87,
        89.7,
        1.58,
        'Baraualdian.'
    ),
    (
        92,
        '2025-11-24 08:28:00',
        110.0,
        125,
        86,
        59.9,
        1.79,
        'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2025-11-24 10:51:00',
        108.0,
        123,
        83,
        75.8,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        94,
        '2025-11-24 08:14:00',
        105.0,
        129,
        91,
        86.4,
        1.83,
        'Gosariaren ondoren.'
    ),
    (
        95,
        '2025-11-24 10:16:00',
        118.0,
        130,
        85,
        90.8,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        96,
        '2025-11-24 09:26:00',
        123.0,
        122,
        80,
        76.2,
        1.71,
        'Apur bat nekatuta.'
    ),
    (
        97,
        '2025-11-24 07:57:00',
        132.0,
        120,
        81,
        88.0,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        98,
        '2025-11-24 07:19:00',
        118.0,
        132,
        89,
        83.9,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        100,
        '2025-11-24 10:40:00',
        115.0,
        134,
        78,
        82.0,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        53,
        '2025-11-25 07:51:00',
        120.0,
        121,
        81,
        75.4,
        1.75,
        'Dena ondo.'
    ),
    (
        54,
        '2025-11-25 09:20:00',
        123.0,
        129,
        74,
        86.1,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2025-11-25 09:30:00',
        111.0,
        138,
        73,
        81.6,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        57,
        '2025-11-25 08:47:00',
        97.0,
        118,
        83,
        83.9,
        1.69,
        'Dena ondo.'
    ),
    (
        59,
        '2025-11-25 07:15:00',
        123.0,
        126,
        81,
        62.9,
        1.73,
        'Apur bat nekatuta.'
    ),
    (
        60,
        '2025-11-25 07:37:00',
        123.0,
        135,
        85,
        78.3,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2025-11-25 09:16:00',
        111.0,
        129,
        93,
        72.2,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        62,
        '2025-11-25 09:38:00',
        100.0,
        127,
        78,
        66.3,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-11-25 07:41:00',
        114.0,
        130,
        80,
        81.9,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        64,
        '2025-11-25 10:20:00',
        100.0,
        135,
        79,
        94.9,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        66,
        '2025-11-25 07:38:00',
        127.0,
        125,
        81,
        75.0,
        1.59,
        'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2025-11-25 07:03:00',
        112.0,
        143,
        82,
        71.8,
        1.72,
        'Baraualdian.'
    ),
    (
        69,
        '2025-11-25 10:35:00',
        132.0,
        127,
        83,
        94.7,
        1.66,
        'Ondo sentitzen naiz.'
    ),
    (
        70,
        '2025-11-25 09:35:00',
        103.0,
        129,
        78,
        75.5,
        1.70,
        'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2025-11-25 09:04:00',
        119.0,
        129,
        80,
        90.0,
        1.63,
        'Dena ondo.'
    ),
    (
        72,
        '2025-11-25 08:03:00',
        84.0,
        126,
        77,
        92.1,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2025-11-25 10:47:00',
        128.0,
        124,
        75,
        95.3,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2025-11-25 07:33:00',
        123.0,
        124,
        88,
        63.9,
        1.67,
        'Baraualdian.'
    ),
    (
        76,
        '2025-11-25 07:18:00',
        116.0,
        119,
        84,
        66.2,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2025-11-25 09:26:00',
        109.0,
        135,
        79,
        66.2,
        1.67,
        'Dena ondo.'
    ),
    (
        78,
        '2025-11-25 07:52:00',
        101.0,
        117,
        74,
        63.0,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        79,
        '2025-11-25 09:07:00',
        100.0,
        126,
        77,
        67.1,
        1.67,
        'Dena ondo.'
    ),
    (
        80,
        '2025-11-25 07:28:00',
        116.0,
        126,
        84,
        63.2,
        1.78,
        'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2025-11-25 07:13:00',
        122.0,
        138,
        93,
        86.3,
        1.58,
        'Ondo sentitzen naiz.'
    ),
    (
        82,
        '2025-11-25 08:39:00',
        133.0,
        124,
        84,
        89.1,
        1.77,
        'Baraualdian.'
    ),
    (
        83,
        '2025-11-25 09:25:00',
        102.0,
        119,
        79,
        64.3,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        85,
        '2025-11-25 10:40:00',
        114.0,
        139,
        93,
        80.1,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2025-11-25 10:01:00',
        118.0,
        139,
        80,
        68.2,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2025-11-25 08:18:00',
        136.0,
        127,
        84,
        73.0,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2025-11-25 09:56:00',
        119.0,
        121,
        86,
        89.2,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2025-11-25 08:35:00',
        85.0,
        143,
        82,
        89.4,
        1.58,
        'Ondo sentitzen naiz.'
    ),
    (
        92,
        '2025-11-25 07:23:00',
        109.0,
        129,
        79,
        60.5,
        1.79,
        'Dena ondo.'
    ),
    (
        95,
        '2025-11-25 08:16:00',
        117.0,
        136,
        79,
        89.9,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        96,
        '2025-11-25 09:30:00',
        110.0,
        119,
        74,
        77.3,
        1.71,
        'Dena ondo.'
    ),
    (
        97,
        '2025-11-25 08:04:00',
        108.0,
        120,
        81,
        87.2,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2025-11-25 10:08:00',
        122.0,
        120,
        77,
        85.0,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        99,
        '2025-11-25 09:06:00',
        126.0,
        123,
        73,
        86.8,
        1.71,
        'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2025-11-26 07:41:00',
        96.0,
        131,
        91,
        65.0,
        1.76,
        'Gosariaren ondoren.'
    ),
    (
        52,
        '2025-11-26 09:52:00',
        104.0,
        130,
        79,
        93.8,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        55,
        '2025-11-26 09:19:00',
        135.0,
        131,
        82,
        80.5,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        56,
        '2025-11-26 07:03:00',
        88.0,
        128,
        85,
        89.2,
        1.61,
        'Dena ondo.'
    ),
    (
        57,
        '2025-11-26 10:53:00',
        106.0,
        136,
        82,
        82.6,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        58,
        '2025-11-26 08:22:00',
        86.0,
        131,
        87,
        66.2,
        1.68,
        'Kirola egin ondoren.'
    ),
    (
        59,
        '2025-11-26 07:29:00',
        131.0,
        120,
        86,
        63.3,
        1.73,
        'Apur bat nekatuta.'
    ),
    (
        60,
        '2025-11-26 07:33:00',
        111.0,
        122,
        91,
        77.1,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        61,
        '2025-11-26 07:10:00',
        133.0,
        126,
        83,
        74.0,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        63,
        '2025-11-26 08:28:00',
        112.0,
        126,
        86,
        81.4,
        1.80,
        'Gosariaren ondoren.'
    ),
    (
        64,
        '2025-11-26 10:10:00',
        113.0,
        140,
        73,
        95.1,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2025-11-26 10:13:00',
        110.0,
        133,
        87,
        91.3,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        66,
        '2025-11-26 08:30:00',
        90.0,
        125,
        82,
        75.2,
        1.59,
        'Dena ondo.'
    ),
    (
        67,
        '2025-11-26 09:58:00',
        113.0,
        140,
        89,
        71.2,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        69,
        '2025-11-26 09:03:00',
        130.0,
        143,
        85,
        95.2,
        1.66,
        'Ondo sentitzen naiz.'
    ),
    (
        70,
        '2025-11-26 08:32:00',
        94.0,
        130,
        80,
        74.0,
        1.70,
        'Kirola egin ondoren.'
    ),
    (
        72,
        '2025-11-26 10:13:00',
        104.0,
        139,
        80,
        91.7,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        74,
        '2025-11-26 08:36:00',
        111.0,
        122,
        77,
        63.5,
        1.67,
        'Dena ondo.'
    ),
    (
        75,
        '2025-11-26 07:23:00',
        117.0,
        136,
        74,
        60.5,
        1.65,
        'Dena ondo.'
    ),
    (
        76,
        '2025-11-26 10:15:00',
        112.0,
        115,
        85,
        65.1,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2025-11-26 07:04:00',
        131.0,
        122,
        81,
        67.1,
        1.67,
        'Baraualdian.'
    ),
    (
        78,
        '2025-11-26 07:52:00',
        100.0,
        130,
        77,
        63.6,
        1.61,
        'Baraualdian.'
    ),
    (
        79,
        '2025-11-26 10:28:00',
        126.0,
        139,
        87,
        66.4,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2025-11-26 09:56:00',
        123.0,
        133,
        81,
        85.8,
        1.58,
        'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2025-11-26 08:29:00',
        131.0,
        122,
        93,
        64.9,
        1.80,
        'Kirola egin ondoren.'
    ),
    (
        84,
        '2025-11-26 09:14:00',
        86.0,
        120,
        76,
        78.3,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2025-11-26 09:34:00',
        96.0,
        122,
        84,
        80.5,
        1.72,
        'Gaur goizean neurtuta.'
    ),
    (
        86,
        '2025-11-26 10:25:00',
        92.0,
        133,
        76,
        67.4,
        1.57,
        'Kirola egin ondoren.'
    ),
    (
        87,
        '2025-11-26 09:47:00',
        111.0,
        130,
        88,
        72.0,
        1.61,
        'Baraualdian.'
    ),
    (
        89,
        '2025-11-26 10:42:00',
        113.0,
        131,
        89,
        91.7,
        1.84,
        'Dena ondo.'
    ),
    (
        91,
        '2025-11-26 10:03:00',
        78.0,
        142,
        90,
        90.8,
        1.58,
        'Kirola egin ondoren.'
    ),
    (
        92,
        '2025-11-26 09:36:00',
        121.0,
        128,
        91,
        59.6,
        1.79,
        'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2025-11-26 10:37:00',
        106.0,
        140,
        89,
        76.2,
        1.81,
        'Dena ondo.'
    ),
    (
        95,
        '2025-11-26 08:59:00',
        101.0,
        139,
        74,
        89.5,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2025-11-26 09:31:00',
        100.0,
        137,
        75,
        87.1,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        98,
        '2025-11-26 08:42:00',
        122.0,
        121,
        87,
        84.3,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        99,
        '2025-11-26 10:00:00',
        121.0,
        129,
        85,
        85.7,
        1.71,
        'Dena ondo.'
    ),
    (
        100,
        '2025-11-26 09:20:00',
        99.0,
        129,
        74,
        81.8,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        51,
        '2025-11-27 09:39:00',
        117.0,
        126,
        92,
        63.3,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2025-11-27 07:54:00',
        114.0,
        121,
        88,
        74.7,
        1.75,
        'Gosariaren ondoren.'
    ),
    (
        54,
        '2025-11-27 09:50:00',
        112.0,
        127,
        74,
        87.7,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        55,
        '2025-11-27 09:34:00',
        130.0,
        136,
        85,
        80.2,
        1.76,
        'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2025-11-27 08:00:00',
        89.0,
        138,
        90,
        90.4,
        1.61,
        'Baraualdian.'
    ),
    (
        57,
        '2025-11-27 10:40:00',
        112.0,
        122,
        89,
        82.2,
        1.69,
        'Dena ondo.'
    ),
    (
        58,
        '2025-11-27 10:51:00',
        103.0,
        138,
        87,
        67.7,
        1.68,
        'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2025-11-27 09:24:00',
        124.0,
        120,
        90,
        63.7,
        1.73,
        'Gosariaren ondoren.'
    ),
    (
        61,
        '2025-11-27 08:40:00',
        108.0,
        130,
        87,
        74.0,
        1.83,
        'Baraualdian.'
    ),
    (
        62,
        '2025-11-27 09:03:00',
        115.0,
        140,
        73,
        65.2,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-11-27 09:37:00',
        110.0,
        124,
        76,
        81.3,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2025-11-27 08:13:00',
        100.0,
        121,
        76,
        91.7,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        66,
        '2025-11-27 10:49:00',
        91.0,
        120,
        91,
        75.5,
        1.59,
        'Kirola egin ondoren.'
    ),
    (
        67,
        '2025-11-27 07:03:00',
        109.0,
        133,
        79,
        71.0,
        1.72,
        'Apur bat nekatuta.'
    ),
    (
        68,
        '2025-11-27 09:47:00',
        99.0,
        127,
        74,
        61.8,
        1.85,
        'Baraualdian.'
    ),
    (
        69,
        '2025-11-27 07:06:00',
        125.0,
        124,
        82,
        94.2,
        1.66,
        'Gosariaren ondoren.'
    ),
    (
        70,
        '2025-11-27 08:17:00',
        105.0,
        133,
        86,
        75.5,
        1.70,
        'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2025-11-27 08:16:00',
        118.0,
        139,
        85,
        89.0,
        1.63,
        'Apur bat nekatuta.'
    ),
    (
        72,
        '2025-11-27 07:16:00',
        108.0,
        124,
        75,
        91.4,
        1.69,
        'Dena ondo.'
    ),
    (
        73,
        '2025-11-27 09:00:00',
        117.0,
        123,
        84,
        95.3,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        74,
        '2025-11-27 07:07:00',
        119.0,
        119,
        89,
        63.5,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2025-11-27 08:53:00',
        124.0,
        135,
        83,
        59.0,
        1.65,
        'Ondo sentitzen naiz.'
    ),
    (
        77,
        '2025-11-27 08:51:00',
        114.0,
        134,
        80,
        66.8,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        79,
        '2025-11-27 09:25:00',
        99.0,
        132,
        88,
        66.1,
        1.67,
        'Dena ondo.'
    ),
    (
        80,
        '2025-11-27 10:51:00',
        122.0,
        138,
        89,
        62.4,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2025-11-27 08:33:00',
        106.0,
        129,
        90,
        86.4,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        83,
        '2025-11-27 10:50:00',
        105.0,
        126,
        88,
        64.5,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2025-11-27 08:36:00',
        93.0,
        120,
        89,
        78.4,
        1.67,
        'Dena ondo.'
    ),
    (
        85,
        '2025-11-27 09:31:00',
        114.0,
        119,
        79,
        80.7,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2025-11-27 07:04:00',
        103.0,
        132,
        87,
        68.0,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        87,
        '2025-11-27 08:37:00',
        136.0,
        133,
        82,
        72.9,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        88,
        '2025-11-27 09:00:00',
        100.0,
        123,
        72,
        91.0,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        89,
        '2025-11-27 07:56:00',
        103.0,
        134,
        79,
        90.4,
        1.84,
        'Ondo sentitzen naiz.'
    ),
    (
        90,
        '2025-11-27 08:04:00',
        95.0,
        128,
        90,
        65.5,
        1.60,
        'Baraualdian.'
    ),
    (
        91,
        '2025-11-27 10:44:00',
        80.0,
        137,
        91,
        90.1,
        1.58,
        'Gosariaren ondoren.'
    ),
    (
        92,
        '2025-11-27 09:20:00',
        120.0,
        145,
        82,
        60.5,
        1.79,
        'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2025-11-27 10:25:00',
        104.0,
        130,
        94,
        75.0,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        94,
        '2025-11-27 08:59:00',
        96.0,
        122,
        83,
        86.9,
        1.83,
        'Baraualdian.'
    ),
    (
        95,
        '2025-11-27 09:00:00',
        107.0,
        143,
        72,
        90.1,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        96,
        '2025-11-27 09:03:00',
        108.0,
        122,
        80,
        76.3,
        1.71,
        'Baraualdian.'
    ),
    (
        99,
        '2025-11-27 07:17:00',
        121.0,
        137,
        86,
        85.5,
        1.71,
        'Gosariaren ondoren.'
    ),
    (
        100,
        '2025-11-27 09:19:00',
        96.0,
        140,
        72,
        81.2,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2025-11-28 10:26:00',
        122.0,
        131,
        83,
        64.8,
        1.76,
        'Dena ondo.'
    ),
    (
        52,
        '2025-11-28 08:57:00',
        130.0,
        120,
        89,
        93.5,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2025-11-28 07:39:00',
        102.0,
        113,
        92,
        74.0,
        1.75,
        'Kirola egin ondoren.'
    ),
    (
        54,
        '2025-11-28 09:18:00',
        95.0,
        133,
        80,
        86.5,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        56,
        '2025-11-28 09:17:00',
        111.0,
        133,
        86,
        89.4,
        1.61,
        'Dena ondo.'
    ),
    (
        57,
        '2025-11-28 08:47:00',
        80.0,
        124,
        91,
        82.6,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        58,
        '2025-11-28 07:20:00',
        120.0,
        126,
        76,
        67.0,
        1.68,
        'Apur bat nekatuta.'
    ),
    (
        60,
        '2025-11-28 07:04:00',
        120.0,
        129,
        87,
        78.3,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        61,
        '2025-11-28 08:30:00',
        103.0,
        116,
        83,
        73.0,
        1.83,
        'Baraualdian.'
    ),
    (
        63,
        '2025-11-28 09:51:00',
        119.0,
        138,
        76,
        80.9,
        1.80,
        'Kirola egin ondoren.'
    ),
    (
        64,
        '2025-11-28 10:44:00',
        119.0,
        138,
        81,
        95.2,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2025-11-28 10:37:00',
        104.0,
        138,
        84,
        91.9,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2025-11-28 08:29:00',
        126.0,
        123,
        86,
        74.9,
        1.59,
        'Baraualdian.'
    ),
    (
        68,
        '2025-11-28 09:12:00',
        112.0,
        137,
        80,
        61.6,
        1.85,
        'Ondo sentitzen naiz.'
    ),
    (
        69,
        '2025-11-28 07:51:00',
        107.0,
        126,
        83,
        95.2,
        1.66,
        'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-11-28 09:31:00',
        89.0,
        125,
        76,
        75.4,
        1.70,
        'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2025-11-28 08:51:00',
        126.0,
        130,
        82,
        88.0,
        1.63,
        'Apur bat nekatuta.'
    ),
    (
        74,
        '2025-11-28 10:13:00',
        131.0,
        116,
        77,
        63.9,
        1.67,
        'Dena ondo.'
    ),
    (
        75,
        '2025-11-28 10:52:00',
        108.0,
        139,
        71,
        61.0,
        1.65,
        'Baraualdian.'
    ),
    (
        76,
        '2025-11-28 09:31:00',
        120.0,
        116,
        95,
        65.2,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        77,
        '2025-11-28 09:27:00',
        135.0,
        126,
        79,
        66.6,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        78,
        '2025-11-28 09:42:00',
        81.0,
        133,
        73,
        63.5,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        79,
        '2025-11-28 09:22:00',
        101.0,
        123,
        76,
        67.8,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2025-11-28 08:28:00',
        109.0,
        128,
        90,
        63.9,
        1.78,
        'Dena ondo.'
    ),
    (
        81,
        '2025-11-28 08:05:00',
        113.0,
        126,
        94,
        85.3,
        1.58,
        'Apur bat nekatuta.'
    ),
    (
        83,
        '2025-11-28 09:02:00',
        136.0,
        120,
        79,
        66.0,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2025-11-28 09:11:00',
        122.0,
        126,
        82,
        79.3,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        85,
        '2025-11-28 08:58:00',
        123.0,
        138,
        80,
        81.9,
        1.72,
        'Apur bat nekatuta.'
    ),
    (
        86,
        '2025-11-28 09:05:00',
        107.0,
        127,
        87,
        67.2,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        90,
        '2025-11-28 07:52:00',
        109.0,
        129,
        90,
        66.1,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        91,
        '2025-11-28 09:44:00',
        96.0,
        144,
        87,
        90.1,
        1.58,
        'Ondo sentitzen naiz.'
    ),
    (
        92,
        '2025-11-28 10:21:00',
        110.0,
        130,
        82,
        60.0,
        1.79,
        'Kirola egin ondoren.'
    ),
    (
        93,
        '2025-11-28 08:26:00',
        132.0,
        141,
        84,
        75.6,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        94,
        '2025-11-28 07:16:00',
        76.0,
        133,
        84,
        87.0,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2025-11-28 08:00:00',
        115.0,
        141,
        80,
        90.0,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        98,
        '2025-11-28 09:19:00',
        104.0,
        127,
        90,
        83.8,
        1.60,
        'Dena ondo.'
    ),
    (
        100,
        '2025-11-28 08:06:00',
        116.0,
        127,
        86,
        82.8,
        1.57,
        'Baraualdian.'
    ),
    (
        51,
        '2025-11-29 08:15:00',
        101.0,
        135,
        86,
        63.1,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        52,
        '2025-11-29 09:18:00',
        94.0,
        134,
        90,
        94.7,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        53,
        '2025-11-29 10:43:00',
        121.0,
        119,
        80,
        75.0,
        1.75,
        'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2025-11-29 08:53:00',
        106.0,
        134,
        88,
        87.2,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        56,
        '2025-11-29 08:01:00',
        105.0,
        131,
        85,
        89.6,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        57,
        '2025-11-29 09:11:00',
        99.0,
        130,
        92,
        82.5,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        59,
        '2025-11-29 09:02:00',
        123.0,
        123,
        90,
        62.4,
        1.73,
        'Dena ondo.'
    ),
    (
        60,
        '2025-11-29 07:05:00',
        107.0,
        131,
        94,
        78.4,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        61,
        '2025-11-29 08:26:00',
        96.0,
        118,
        83,
        73.6,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-11-29 07:53:00',
        129.0,
        126,
        82,
        81.0,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2025-11-29 07:34:00',
        116.0,
        122,
        83,
        95.5,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        65,
        '2025-11-29 07:53:00',
        128.0,
        129,
        90,
        92.0,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        66,
        '2025-11-29 07:21:00',
        111.0,
        118,
        87,
        74.2,
        1.59,
        'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2025-11-29 08:47:00',
        100.0,
        126,
        83,
        71.6,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        68,
        '2025-11-29 08:12:00',
        103.0,
        125,
        77,
        62.0,
        1.85,
        'Kirola egin ondoren.'
    ),
    (
        69,
        '2025-11-29 10:34:00',
        104.0,
        134,
        86,
        95.3,
        1.66,
        'Apur bat nekatuta.'
    ),
    (
        70,
        '2025-11-29 10:30:00',
        88.0,
        122,
        79,
        74.5,
        1.70,
        'Kirola egin ondoren.'
    ),
    (
        71,
        '2025-11-29 07:19:00',
        123.0,
        124,
        79,
        88.3,
        1.63,
        'Gosariaren ondoren.'
    ),
    (
        72,
        '2025-11-29 07:07:00',
        89.0,
        125,
        81,
        91.7,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        73,
        '2025-11-29 08:46:00',
        106.0,
        120,
        72,
        96.0,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        75,
        '2025-11-29 09:23:00',
        117.0,
        131,
        80,
        59.4,
        1.65,
        'Apur bat nekatuta.'
    ),
    (
        76,
        '2025-11-29 07:05:00',
        106.0,
        126,
        87,
        66.8,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2025-11-29 07:01:00',
        128.0,
        137,
        82,
        66.9,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        80,
        '2025-11-29 10:22:00',
        89.0,
        138,
        87,
        62.6,
        1.78,
        'Gosariaren ondoren.'
    ),
    (
        81,
        '2025-11-29 07:18:00',
        102.0,
        128,
        95,
        86.1,
        1.58,
        'Kirola egin ondoren.'
    ),
    (
        83,
        '2025-11-29 08:33:00',
        109.0,
        127,
        80,
        66.0,
        1.80,
        'Baraualdian.'
    ),
    (
        84,
        '2025-11-29 09:00:00',
        125.0,
        119,
        80,
        78.3,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2025-11-29 08:52:00',
        109.0,
        137,
        85,
        81.1,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2025-11-29 08:48:00',
        93.0,
        135,
        81,
        68.7,
        1.57,
        'Baraualdian.'
    ),
    (
        87,
        '2025-11-29 09:13:00',
        121.0,
        138,
        73,
        72.5,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        89,
        '2025-11-29 07:20:00',
        120.0,
        126,
        85,
        91.5,
        1.84,
        'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2025-11-29 07:30:00',
        105.0,
        126,
        86,
        89.5,
        1.58,
        'Ondo sentitzen naiz.'
    ),
    (
        92,
        '2025-11-29 09:19:00',
        124.0,
        130,
        85,
        60.7,
        1.79,
        'Baraualdian.'
    ),
    (
        93,
        '2025-11-29 09:26:00',
        135.0,
        141,
        82,
        76.1,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2025-11-29 08:14:00',
        79.0,
        135,
        79,
        87.8,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        95,
        '2025-11-29 08:56:00',
        114.0,
        127,
        75,
        89.8,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        96,
        '2025-11-29 09:29:00',
        116.0,
        117,
        87,
        77.3,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2025-11-29 07:33:00',
        113.0,
        134,
        81,
        87.2,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        98,
        '2025-11-29 10:58:00',
        106.0,
        126,
        88,
        83.3,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        100,
        '2025-11-29 08:22:00',
        88.0,
        121,
        83,
        82.3,
        1.57,
        'Dena ondo.'
    ),
    (
        51,
        '2025-11-30 09:02:00',
        97.0,
        134,
        80,
        63.3,
        1.76,
        'Gosariaren ondoren.'
    ),
    (
        53,
        '2025-11-30 08:04:00',
        100.0,
        118,
        90,
        75.7,
        1.75,
        'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2025-11-30 10:22:00',
        101.0,
        131,
        87,
        87.0,
        1.60,
        'Baraualdian.'
    ),
    (
        57,
        '2025-11-30 07:20:00',
        98.0,
        136,
        83,
        83.3,
        1.69,
        'Dena ondo.'
    ),
    (
        58,
        '2025-11-30 09:37:00',
        85.0,
        141,
        84,
        67.2,
        1.68,
        'Dena ondo.'
    ),
    (
        60,
        '2025-11-30 10:43:00',
        127.0,
        126,
        84,
        78.0,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        61,
        '2025-11-30 10:42:00',
        131.0,
        115,
        84,
        73.6,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-11-30 08:18:00',
        129.0,
        139,
        76,
        80.8,
        1.80,
        'Dena ondo.'
    ),
    (
        64,
        '2025-11-30 08:06:00',
        119.0,
        121,
        83,
        95.0,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        66,
        '2025-11-30 07:56:00',
        103.0,
        136,
        88,
        75.7,
        1.59,
        'Dena ondo.'
    ),
    (
        67,
        '2025-11-30 09:09:00',
        111.0,
        132,
        76,
        71.2,
        1.72,
        'Dena ondo.'
    ),
    (
        69,
        '2025-11-30 09:17:00',
        132.0,
        135,
        90,
        94.7,
        1.66,
        'Dena ondo.'
    ),
    (
        70,
        '2025-11-30 10:06:00',
        120.0,
        128,
        79,
        74.3,
        1.70,
        'Baraualdian.'
    ),
    (
        71,
        '2025-11-30 09:46:00',
        136.0,
        130,
        84,
        89.0,
        1.63,
        'Dena ondo.'
    ),
    (
        74,
        '2025-11-30 09:31:00',
        120.0,
        130,
        90,
        63.9,
        1.67,
        'Dena ondo.'
    ),
    (
        75,
        '2025-11-30 09:42:00',
        108.0,
        145,
        72,
        59.9,
        1.65,
        'Dena ondo.'
    ),
    (
        76,
        '2025-11-30 07:34:00',
        110.0,
        125,
        93,
        66.1,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        78,
        '2025-11-30 10:13:00',
        99.0,
        120,
        79,
        62.5,
        1.61,
        'Baraualdian.'
    ),
    (
        80,
        '2025-11-30 10:38:00',
        100.0,
        128,
        84,
        64.0,
        1.78,
        'Baraualdian.'
    ),
    (
        82,
        '2025-11-30 10:08:00',
        133.0,
        138,
        82,
        88.1,
        1.77,
        'Baraualdian.'
    ),
    (
        85,
        '2025-11-30 08:14:00',
        95.0,
        125,
        78,
        80.4,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        86,
        '2025-11-30 09:36:00',
        124.0,
        123,
        84,
        67.7,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2025-11-30 10:35:00',
        97.0,
        141,
        80,
        73.7,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        88,
        '2025-11-30 09:44:00',
        129.0,
        129,
        81,
        89.0,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2025-11-30 09:14:00',
        102.0,
        139,
        80,
        90.1,
        1.84,
        'Apur bat nekatuta.'
    ),
    (
        90,
        '2025-11-30 08:54:00',
        98.0,
        120,
        80,
        66.2,
        1.60,
        'Dena ondo.'
    ),
    (
        91,
        '2025-11-30 10:07:00',
        106.0,
        138,
        90,
        89.7,
        1.58,
        'Dena ondo.'
    ),
    (
        92,
        '2025-11-30 08:33:00',
        108.0,
        145,
        94,
        59.6,
        1.79,
        'Dena ondo.'
    ),
    (
        93,
        '2025-11-30 09:58:00',
        131.0,
        127,
        94,
        75.8,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2025-11-30 08:33:00',
        106.0,
        140,
        78,
        87.4,
        1.83,
        'Dena ondo.'
    ),
    (
        95,
        '2025-11-30 08:57:00',
        130.0,
        125,
        81,
        89.3,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2025-11-30 09:35:00',
        103.0,
        126,
        82,
        77.4,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        98,
        '2025-11-30 08:55:00',
        102.0,
        125,
        88,
        84.4,
        1.60,
        'Dena ondo.'
    ),
    (
        99,
        '2025-11-30 09:03:00',
        93.0,
        129,
        85,
        86.9,
        1.71,
        'Baraualdian.'
    ),
    (
        100,
        '2025-11-30 07:30:00',
        125.0,
        133,
        84,
        81.1,
        1.57,
        'Baraualdian.'
    ),
    (
        51,
        '2025-12-01 08:12:00',
        90.0,
        131,
        84,
        63.0,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        52,
        '2025-12-01 07:15:00',
        105.0,
        132,
        79,
        93.1,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2025-12-01 08:39:00',
        109.0,
        125,
        80,
        75.5,
        1.75,
        'Apur bat nekatuta.'
    ),
    (
        54,
        '2025-12-01 07:14:00',
        88.0,
        135,
        88,
        86.0,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        55,
        '2025-12-01 09:44:00',
        127.0,
        134,
        79,
        81.8,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        57,
        '2025-12-01 09:51:00',
        80.0,
        120,
        85,
        82.3,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        58,
        '2025-12-01 09:42:00',
        101.0,
        140,
        88,
        67.8,
        1.68,
        'Dena ondo.'
    ),
    (
        61,
        '2025-12-01 10:37:00',
        131.0,
        127,
        82,
        72.9,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        62,
        '2025-12-01 09:27:00',
        116.0,
        125,
        76,
        65.9,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2025-12-01 09:01:00',
        117.0,
        125,
        82,
        80.3,
        1.80,
        'Baraualdian.'
    ),
    (
        64,
        '2025-12-01 07:00:00',
        99.0,
        124,
        73,
        95.5,
        1.56,
        'Baraualdian.'
    ),
    (
        65,
        '2025-12-01 10:20:00',
        93.0,
        138,
        83,
        91.9,
        1.55,
        'Baraualdian.'
    ),
    (
        66,
        '2025-12-01 09:33:00',
        103.0,
        130,
        81,
        75.7,
        1.59,
        'Gosariaren ondoren.'
    ),
    (
        67,
        '2025-12-01 10:08:00',
        98.0,
        145,
        89,
        71.6,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        68,
        '2025-12-01 07:25:00',
        112.0,
        140,
        84,
        60.7,
        1.85,
        'Apur bat nekatuta.'
    ),
    (
        69,
        '2025-12-01 09:15:00',
        99.0,
        141,
        90,
        94.2,
        1.66,
        'Apur bat nekatuta.'
    ),
    (
        70,
        '2025-12-01 10:10:00',
        84.0,
        132,
        83,
        74.5,
        1.70,
        'Dena ondo.'
    ),
    (
        71,
        '2025-12-01 08:22:00',
        123.0,
        125,
        84,
        88.9,
        1.63,
        'Kirola egin ondoren.'
    ),
    (
        72,
        '2025-12-01 10:01:00',
        108.0,
        123,
        87,
        92.7,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        73,
        '2025-12-01 10:53:00',
        134.0,
        119,
        71,
        95.9,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2025-12-01 09:20:00',
        100.0,
        123,
        90,
        64.9,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2025-12-01 08:14:00',
        93.0,
        128,
        81,
        65.8,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        77,
        '2025-12-01 07:56:00',
        123.0,
        132,
        84,
        66.3,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2025-12-01 07:37:00',
        102.0,
        117,
        80,
        62.8,
        1.61,
        'Baraualdian.'
    ),
    (
        79,
        '2025-12-01 07:30:00',
        103.0,
        140,
        79,
        67.8,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2025-12-01 08:40:00',
        106.0,
        138,
        90,
        63.3,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2025-12-01 09:29:00',
        105.0,
        134,
        95,
        85.0,
        1.58,
        'Baraualdian.'
    ),
    (
        82,
        '2025-12-01 08:53:00',
        100.0,
        139,
        91,
        88.1,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2025-12-01 07:27:00',
        99.0,
        123,
        86,
        64.3,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        86,
        '2025-12-01 08:46:00',
        93.0,
        126,
        82,
        68.3,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        87,
        '2025-12-01 08:55:00',
        125.0,
        141,
        88,
        72.3,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        88,
        '2025-12-01 07:48:00',
        112.0,
        130,
        84,
        89.1,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        91,
        '2025-12-01 08:38:00',
        97.0,
        129,
        80,
        89.2,
        1.58,
        'Ondo sentitzen naiz.'
    ),
    (
        92,
        '2025-12-01 09:44:00',
        132.0,
        127,
        79,
        60.7,
        1.79,
        'Gosariaren ondoren.'
    ),
    (
        93,
        '2025-12-01 07:30:00',
        117.0,
        136,
        81,
        75.6,
        1.81,
        'Dena ondo.'
    ),
    (
        94,
        '2025-12-01 07:29:00',
        91.0,
        142,
        78,
        87.6,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        95,
        '2025-12-01 07:45:00',
        119.0,
        133,
        72,
        89.1,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        96,
        '2025-12-01 09:09:00',
        115.0,
        136,
        82,
        76.6,
        1.71,
        'Dena ondo.'
    ),
    (
        97,
        '2025-12-01 09:22:00',
        122.0,
        130,
        71,
        88.0,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2025-12-01 09:12:00',
        119.0,
        137,
        86,
        84.5,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2025-12-01 07:03:00',
        113.0,
        123,
        74,
        82.5,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2025-12-02 09:17:00',
        114.0,
        140,
        83,
        64.7,
        1.76,
        'Kirola egin ondoren.'
    ),
    (
        52,
        '2025-12-02 09:11:00',
        113.0,
        126,
        84,
        93.6,
        1.77,
        'Baraualdian.'
    ),
    (
        53,
        '2025-12-02 08:05:00',
        97.0,
        129,
        89,
        74.8,
        1.75,
        'Dena ondo.'
    ),
    (
        54,
        '2025-12-02 10:40:00',
        85.0,
        137,
        86,
        87.9,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        55,
        '2025-12-02 07:19:00',
        116.0,
        138,
        79,
        81.2,
        1.76,
        'Dena ondo.'
    ),
    (
        58,
        '2025-12-02 09:13:00',
        92.0,
        140,
        89,
        66.0,
        1.68,
        'Gosariaren ondoren.'
    ),
    (
        59,
        '2025-12-02 09:57:00',
        132.0,
        124,
        91,
        63.7,
        1.73,
        'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2025-12-02 09:44:00',
        110.0,
        129,
        81,
        72.6,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2025-12-02 10:21:00',
        131.0,
        128,
        78,
        81.7,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2025-12-02 09:45:00',
        104.0,
        140,
        84,
        95.5,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2025-12-02 10:12:00',
        120.0,
        117,
        91,
        74.6,
        1.59,
        'Baraualdian.'
    ),
    (
        67,
        '2025-12-02 09:40:00',
        107.0,
        133,
        83,
        72.5,
        1.72,
        'Apur bat nekatuta.'
    ),
    (
        68,
        '2025-12-02 09:07:00',
        110.0,
        123,
        79,
        61.5,
        1.85,
        'Dena ondo.'
    ),
    (
        69,
        '2025-12-02 09:57:00',
        111.0,
        133,
        76,
        95.1,
        1.66,
        'Gosariaren ondoren.'
    ),
    (
        70,
        '2025-12-02 08:59:00',
        123.0,
        119,
        76,
        74.1,
        1.70,
        'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2025-12-02 07:10:00',
        126.0,
        138,
        75,
        88.1,
        1.63,
        'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2025-12-02 08:09:00',
        103.0,
        127,
        85,
        92.3,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        73,
        '2025-12-02 09:40:00',
        130.0,
        115,
        76,
        94.0,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        76,
        '2025-12-02 07:47:00',
        96.0,
        112,
        89,
        67.0,
        1.69,
        'Baraualdian.'
    ),
    (
        78,
        '2025-12-02 10:30:00',
        119.0,
        128,
        85,
        63.6,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        80,
        '2025-12-02 09:09:00',
        121.0,
        126,
        86,
        64.0,
        1.78,
        'Ondo sentitzen naiz.'
    ),
    (
        81,
        '2025-12-02 10:53:00',
        108.0,
        125,
        92,
        86.7,
        1.58,
        'Kirola egin ondoren.'
    ),
    (
        82,
        '2025-12-02 09:30:00',
        105.0,
        135,
        92,
        88.6,
        1.77,
        'Dena ondo.'
    ),
    (
        84,
        '2025-12-02 08:05:00',
        112.0,
        120,
        78,
        79.8,
        1.67,
        'Dena ondo.'
    ),
    (
        85,
        '2025-12-02 08:09:00',
        105.0,
        124,
        93,
        80.1,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        86,
        '2025-12-02 07:31:00',
        115.0,
        126,
        78,
        68.7,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2025-12-02 09:31:00',
        130.0,
        138,
        74,
        73.4,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        88,
        '2025-12-02 10:32:00',
        96.0,
        119,
        81,
        89.8,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2025-12-02 08:34:00',
        102.0,
        125,
        85,
        90.6,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2025-12-02 09:51:00',
        130.0,
        132,
        93,
        60.5,
        1.79,
        'Apur bat nekatuta.'
    ),
    (
        94,
        '2025-12-02 07:23:00',
        103.0,
        136,
        79,
        87.9,
        1.83,
        'Dena ondo.'
    ),
    (
        95,
        '2025-12-02 10:51:00',
        133.0,
        131,
        84,
        89.1,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2025-12-02 07:17:00',
        109.0,
        127,
        88,
        77.3,
        1.71,
        'Dena ondo.'
    ),
    (
        98,
        '2025-12-02 09:57:00',
        125.0,
        132,
        86,
        84.6,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        99,
        '2025-12-02 07:07:00',
        107.0,
        131,
        86,
        86.0,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2025-12-02 09:43:00',
        121.0,
        122,
        76,
        81.6,
        1.57,
        'Gosariaren ondoren.'
    ),
    (
        51,
        '2025-12-03 08:52:00',
        124.0,
        139,
        93,
        63.9,
        1.76,
        'Baraualdian.'
    ),
    (
        52,
        '2025-12-03 07:10:00',
        115.0,
        126,
        90,
        93.0,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        54,
        '2025-12-03 10:28:00',
        123.0,
        130,
        88,
        87.3,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        56,
        '2025-12-03 08:33:00',
        101.0,
        142,
        93,
        90.8,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        57,
        '2025-12-03 09:27:00',
        87.0,
        131,
        86,
        82.9,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        58,
        '2025-12-03 10:50:00',
        95.0,
        127,
        86,
        67.4,
        1.68,
        'Dena ondo.'
    ),
    (
        59,
        '2025-12-03 08:23:00',
        124.0,
        126,
        90,
        62.2,
        1.73,
        'Baraualdian.'
    ),
    (
        60,
        '2025-12-03 07:34:00',
        101.0,
        128,
        84,
        78.1,
        1.81,
        'Baraualdian.'
    ),
    (
        62,
        '2025-12-03 09:03:00',
        112.0,
        124,
        72,
        66.9,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        64,
        '2025-12-03 07:10:00',
        111.0,
        126,
        82,
        96.0,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        65,
        '2025-12-03 08:44:00',
        113.0,
        124,
        87,
        90.3,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        67,
        '2025-12-03 08:05:00',
        106.0,
        136,
        77,
        71.1,
        1.72,
        'Dena ondo.'
    ),
    (
        69,
        '2025-12-03 09:58:00',
        125.0,
        142,
        82,
        95.6,
        1.66,
        'Baraualdian.'
    ),
    (
        70,
        '2025-12-03 07:59:00',
        108.0,
        120,
        87,
        75.7,
        1.70,
        'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2025-12-03 07:45:00',
        104.0,
        129,
        76,
        88.1,
        1.63,
        'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2025-12-03 09:13:00',
        134.0,
        112,
        81,
        94.8,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        74,
        '2025-12-03 08:01:00',
        118.0,
        129,
        82,
        63.6,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        75,
        '2025-12-03 09:03:00',
        123.0,
        142,
        80,
        59.1,
        1.65,
        'Apur bat nekatuta.'
    ),
    (
        78,
        '2025-12-03 08:53:00',
        113.0,
        121,
        74,
        62.6,
        1.61,
        'Dena ondo.'
    ),
    (
        79,
        '2025-12-03 10:47:00',
        98.0,
        134,
        82,
        67.5,
        1.67,
        'Baraualdian.'
    ),
    (
        80,
        '2025-12-03 10:16:00',
        104.0,
        129,
        79,
        63.7,
        1.78,
        'Dena ondo.'
    ),
    (
        82,
        '2025-12-03 07:12:00',
        134.0,
        130,
        83,
        89.8,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        83,
        '2025-12-03 07:39:00',
        102.0,
        129,
        89,
        66.0,
        1.80,
        'Baraualdian.'
    ),
    (
        84,
        '2025-12-03 08:54:00',
        121.0,
        129,
        79,
        78.8,
        1.67,
        'Baraualdian.'
    ),
    (
        86,
        '2025-12-03 09:40:00',
        94.0,
        140,
        79,
        67.3,
        1.57,
        'Dena ondo.'
    ),
    (
        88,
        '2025-12-03 07:42:00',
        121.0,
        126,
        75,
        89.7,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        89,
        '2025-12-03 10:15:00',
        132.0,
        143,
        82,
        90.1,
        1.84,
        'Ondo sentitzen naiz.'
    ),
    (
        91,
        '2025-12-03 09:08:00',
        99.0,
        128,
        80,
        90.5,
        1.58,
        'Kirola egin ondoren.'
    ),
    (
        92,
        '2025-12-03 09:05:00',
        114.0,
        144,
        80,
        61.0,
        1.79,
        'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2025-12-03 10:20:00',
        107.0,
        131,
        84,
        76.2,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        94,
        '2025-12-03 10:35:00',
        97.0,
        128,
        77,
        86.7,
        1.83,
        'Gosariaren ondoren.'
    ),
    (
        95,
        '2025-12-03 09:14:00',
        108.0,
        129,
        81,
        89.8,
        1.77,
        'Baraualdian.'
    ),
    (
        96,
        '2025-12-03 09:32:00',
        115.0,
        119,
        77,
        76.6,
        1.71,
        'Ondo sentitzen naiz.'
    ),
    (
        98,
        '2025-12-03 08:05:00',
        130.0,
        138,
        90,
        84.9,
        1.60,
        'Dena ondo.'
    ),
    (
        99,
        '2025-12-03 09:34:00',
        122.0,
        132,
        80,
        86.1,
        1.71,
        'Apur bat nekatuta.'
    ),
    (
        100,
        '2025-12-03 10:41:00',
        111.0,
        139,
        85,
        81.1,
        1.57,
        'Kirola egin ondoren.'
    ),
    (
        51,
        '2025-12-04 07:39:00',
        99.0,
        120,
        92,
        63.1,
        1.76,
        'Kirola egin ondoren.'
    ),
    (
        52,
        '2025-12-04 09:20:00',
        108.0,
        132,
        94,
        94.2,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        55,
        '2025-12-04 10:13:00',
        124.0,
        130,
        71,
        80.5,
        1.76,
        'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2025-12-04 09:46:00',
        106.0,
        143,
        83,
        89.3,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        57,
        '2025-12-04 07:44:00',
        79.0,
        133,
        86,
        83.6,
        1.69,
        'Baraualdian.'
    ),
    (
        58,
        '2025-12-04 09:58:00',
        82.0,
        142,
        78,
        66.2,
        1.68,
        'Gosariaren ondoren.'
    ),
    (
        59,
        '2025-12-04 08:14:00',
        94.0,
        122,
        81,
        62.1,
        1.73,
        'Baraualdian.'
    ),
    (
        60,
        '2025-12-04 07:34:00',
        102.0,
        119,
        80,
        77.5,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2025-12-04 10:34:00',
        127.0,
        120,
        78,
        72.6,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        62,
        '2025-12-04 09:20:00',
        114.0,
        136,
        72,
        66.9,
        1.56,
        'Dena ondo.'
    ),
    (
        63,
        '2025-12-04 09:46:00',
        134.0,
        137,
        89,
        81.5,
        1.80,
        'Baraualdian.'
    ),
    (
        64,
        '2025-12-04 07:02:00',
        109.0,
        139,
        82,
        95.0,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2025-12-04 10:53:00',
        130.0,
        134,
        78,
        90.4,
        1.55,
        'Baraualdian.'
    ),
    (
        67,
        '2025-12-04 07:10:00',
        114.0,
        137,
        88,
        71.1,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        68,
        '2025-12-04 07:22:00',
        93.0,
        140,
        87,
        60.6,
        1.85,
        'Baraualdian.'
    ),
    (
        69,
        '2025-12-04 09:42:00',
        116.0,
        129,
        87,
        95.3,
        1.66,
        'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-12-04 09:12:00',
        100.0,
        134,
        76,
        75.7,
        1.70,
        'Apur bat nekatuta.'
    ),
    (
        71,
        '2025-12-04 08:38:00',
        127.0,
        134,
        71,
        88.5,
        1.63,
        'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2025-12-04 07:57:00',
        111.0,
        139,
        86,
        92.7,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        73,
        '2025-12-04 09:10:00',
        124.0,
        125,
        73,
        94.6,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2025-12-04 07:22:00',
        125.0,
        122,
        76,
        64.9,
        1.67,
        'Baraualdian.'
    ),
    (
        75,
        '2025-12-04 09:00:00',
        130.0,
        143,
        78,
        60.3,
        1.65,
        'Kirola egin ondoren.'
    ),
    (
        76,
        '2025-12-04 07:12:00',
        104.0,
        122,
        85,
        65.8,
        1.69,
        'Dena ondo.'
    ),
    (
        77,
        '2025-12-04 07:47:00',
        125.0,
        124,
        90,
        67.7,
        1.67,
        'Dena ondo.'
    ),
    (
        78,
        '2025-12-04 09:01:00',
        101.0,
        127,
        80,
        63.2,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        79,
        '2025-12-04 10:27:00',
        107.0,
        131,
        80,
        66.7,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2025-12-04 09:14:00',
        123.0,
        139,
        86,
        63.3,
        1.78,
        'Baraualdian.'
    ),
    (
        82,
        '2025-12-04 09:34:00',
        121.0,
        139,
        94,
        88.9,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        84,
        '2025-12-04 09:47:00',
        108.0,
        130,
        79,
        79.8,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        85,
        '2025-12-04 07:00:00',
        96.0,
        138,
        80,
        81.7,
        1.72,
        'Apur bat nekatuta.'
    ),
    (
        87,
        '2025-12-04 07:58:00',
        135.0,
        128,
        86,
        73.9,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        88,
        '2025-12-04 10:53:00',
        116.0,
        120,
        84,
        89.3,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        90,
        '2025-12-04 08:22:00',
        106.0,
        136,
        92,
        66.2,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        91,
        '2025-12-04 10:35:00',
        115.0,
        133,
        79,
        90.7,
        1.58,
        'Dena ondo.'
    ),
    (
        92,
        '2025-12-04 09:33:00',
        138.0,
        143,
        82,
        60.0,
        1.79,
        'Gosariaren ondoren.'
    ),
    (
        94,
        '2025-12-04 07:04:00',
        107.0,
        137,
        85,
        86.9,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2025-12-04 09:51:00',
        138.0,
        125,
        79,
        90.5,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        96,
        '2025-12-04 10:30:00',
        95.0,
        125,
        89,
        77.6,
        1.71,
        'Gosariaren ondoren.'
    ),
    (
        98,
        '2025-12-04 10:42:00',
        105.0,
        137,
        89,
        83.3,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        99,
        '2025-12-04 09:17:00',
        119.0,
        128,
        77,
        86.6,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2025-12-05 09:41:00',
        89.0,
        124,
        83,
        74.8,
        1.75,
        'Dena ondo.'
    ),
    (
        54,
        '2025-12-05 09:24:00',
        118.0,
        139,
        81,
        86.1,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        55,
        '2025-12-05 09:06:00',
        116.0,
        128,
        78,
        80.6,
        1.76,
        'Dena ondo.'
    ),
    (
        57,
        '2025-12-05 09:26:00',
        87.0,
        122,
        93,
        83.1,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        58,
        '2025-12-05 08:51:00',
        81.0,
        135,
        86,
        66.0,
        1.68,
        'Kirola egin ondoren.'
    ),
    (
        59,
        '2025-12-05 07:55:00',
        131.0,
        126,
        92,
        63.8,
        1.73,
        'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2025-12-05 09:09:00',
        102.0,
        130,
        85,
        77.9,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        61,
        '2025-12-05 10:24:00',
        111.0,
        111,
        79,
        72.0,
        1.83,
        'Kirola egin ondoren.'
    ),
    (
        62,
        '2025-12-05 07:01:00',
        128.0,
        131,
        71,
        66.2,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        63,
        '2025-12-05 07:05:00',
        106.0,
        131,
        78,
        81.3,
        1.80,
        'Gosariaren ondoren.'
    ),
    (
        65,
        '2025-12-05 07:38:00',
        127.0,
        131,
        82,
        90.1,
        1.55,
        'Dena ondo.'
    ),
    (
        66,
        '2025-12-05 07:26:00',
        97.0,
        126,
        76,
        74.9,
        1.59,
        'Baraualdian.'
    ),
    (
        67,
        '2025-12-05 09:37:00',
        101.0,
        129,
        90,
        72.3,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        68,
        '2025-12-05 09:09:00',
        94.0,
        137,
        75,
        60.4,
        1.85,
        'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-12-05 09:47:00',
        110.0,
        135,
        78,
        74.2,
        1.70,
        'Kirola egin ondoren.'
    ),
    (
        71,
        '2025-12-05 08:55:00',
        113.0,
        124,
        72,
        89.2,
        1.63,
        'Gosariaren ondoren.'
    ),
    (
        72,
        '2025-12-05 08:21:00',
        99.0,
        136,
        86,
        91.4,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        73,
        '2025-12-05 10:03:00',
        110.0,
        112,
        77,
        95.4,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2025-12-05 09:25:00',
        124.0,
        123,
        84,
        63.5,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2025-12-05 08:11:00',
        129.0,
        138,
        77,
        60.5,
        1.65,
        'Apur bat nekatuta.'
    ),
    (
        76,
        '2025-12-05 08:15:00',
        128.0,
        130,
        80,
        66.1,
        1.69,
        'Dena ondo.'
    ),
    (
        77,
        '2025-12-05 09:59:00',
        116.0,
        134,
        93,
        66.4,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        78,
        '2025-12-05 08:26:00',
        94.0,
        122,
        74,
        62.3,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        79,
        '2025-12-05 08:24:00',
        121.0,
        136,
        88,
        66.0,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        81,
        '2025-12-05 08:00:00',
        121.0,
        123,
        93,
        85.5,
        1.58,
        'Baraualdian.'
    ),
    (
        82,
        '2025-12-05 08:23:00',
        115.0,
        141,
        90,
        90.0,
        1.77,
        'Baraualdian.'
    ),
    (
        84,
        '2025-12-05 09:33:00',
        103.0,
        120,
        88,
        79.0,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        85,
        '2025-12-05 10:31:00',
        92.0,
        125,
        90,
        81.5,
        1.72,
        'Baraualdian.'
    ),
    (
        86,
        '2025-12-05 07:08:00',
        97.0,
        139,
        80,
        67.7,
        1.57,
        'Kirola egin ondoren.'
    ),
    (
        87,
        '2025-12-05 09:10:00',
        134.0,
        140,
        78,
        73.5,
        1.61,
        'Baraualdian.'
    ),
    (
        88,
        '2025-12-05 10:04:00',
        122.0,
        113,
        80,
        90.7,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        89,
        '2025-12-05 09:17:00',
        134.0,
        137,
        86,
        90.9,
        1.84,
        'Apur bat nekatuta.'
    ),
    (
        90,
        '2025-12-05 10:01:00',
        115.0,
        137,
        83,
        66.8,
        1.60,
        'Baraualdian.'
    ),
    (
        92,
        '2025-12-05 09:54:00',
        99.0,
        141,
        86,
        59.6,
        1.79,
        'Kirola egin ondoren.'
    ),
    (
        93,
        '2025-12-05 07:16:00',
        124.0,
        141,
        83,
        75.2,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2025-12-05 10:02:00',
        116.0,
        138,
        81,
        86.7,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        96,
        '2025-12-05 07:09:00',
        110.0,
        128,
        82,
        77.0,
        1.71,
        'Dena ondo.'
    ),
    (
        97,
        '2025-12-05 08:35:00',
        136.0,
        132,
        71,
        86.4,
        1.56,
        'Baraualdian.'
    ),
    (
        98,
        '2025-12-05 07:43:00',
        127.0,
        120,
        75,
        84.4,
        1.60,
        'Dena ondo.'
    ),
    (
        99,
        '2025-12-05 10:37:00',
        109.0,
        117,
        88,
        86.0,
        1.71,
        'Baraualdian.'
    ),
    (
        100,
        '2025-12-05 08:31:00',
        122.0,
        139,
        79,
        82.7,
        1.57,
        'Dena ondo.'
    ),
    (
        52,
        '2025-12-06 07:42:00',
        119.0,
        130,
        87,
        94.1,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        53,
        '2025-12-06 10:10:00',
        106.0,
        130,
        84,
        75.0,
        1.75,
        'Baraualdian.'
    ),
    (
        54,
        '2025-12-06 09:21:00',
        118.0,
        138,
        87,
        87.6,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        55,
        '2025-12-06 07:51:00',
        125.0,
        124,
        78,
        81.1,
        1.76,
        'Baraualdian.'
    ),
    (
        56,
        '2025-12-06 09:09:00',
        92.0,
        142,
        91,
        90.2,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        57,
        '2025-12-06 10:01:00',
        117.0,
        119,
        88,
        83.5,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2025-12-06 08:09:00',
        106.0,
        129,
        75,
        67.4,
        1.68,
        'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2025-12-06 09:23:00',
        115.0,
        117,
        87,
        63.7,
        1.73,
        'Apur bat nekatuta.'
    ),
    (
        60,
        '2025-12-06 08:42:00',
        124.0,
        118,
        87,
        78.8,
        1.81,
        'Baraualdian.'
    ),
    (
        61,
        '2025-12-06 10:23:00',
        118.0,
        113,
        85,
        72.8,
        1.83,
        'Baraualdian.'
    ),
    (
        62,
        '2025-12-06 07:31:00',
        97.0,
        121,
        75,
        66.5,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2025-12-06 10:20:00',
        117.0,
        124,
        89,
        82.0,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        64,
        '2025-12-06 08:45:00',
        114.0,
        124,
        80,
        95.0,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        65,
        '2025-12-06 08:12:00',
        92.0,
        131,
        88,
        91.2,
        1.55,
        'Baraualdian.'
    ),
    (
        66,
        '2025-12-06 09:17:00',
        118.0,
        124,
        87,
        75.5,
        1.59,
        'Gosariaren ondoren.'
    ),
    (
        67,
        '2025-12-06 10:36:00',
        117.0,
        129,
        86,
        72.0,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        68,
        '2025-12-06 10:51:00',
        129.0,
        123,
        84,
        60.7,
        1.85,
        'Baraualdian.'
    ),
    (
        69,
        '2025-12-06 08:31:00',
        125.0,
        135,
        88,
        95.8,
        1.66,
        'Baraualdian.'
    ),
    (
        70,
        '2025-12-06 10:21:00',
        91.0,
        134,
        88,
        74.4,
        1.70,
        'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2025-12-06 10:32:00',
        133.0,
        131,
        83,
        89.0,
        1.63,
        'Kirola egin ondoren.'
    ),
    (
        72,
        '2025-12-06 07:44:00',
        98.0,
        129,
        77,
        92.6,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2025-12-06 07:33:00',
        112.0,
        112,
        86,
        95.7,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        75,
        '2025-12-06 09:52:00',
        101.0,
        134,
        84,
        60.7,
        1.65,
        'Dena ondo.'
    ),
    (
        76,
        '2025-12-06 10:37:00',
        110.0,
        117,
        87,
        66.5,
        1.69,
        'Baraualdian.'
    ),
    (
        77,
        '2025-12-06 09:41:00',
        116.0,
        137,
        91,
        67.4,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        79,
        '2025-12-06 08:54:00',
        101.0,
        134,
        85,
        66.8,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        80,
        '2025-12-06 10:24:00',
        126.0,
        125,
        90,
        62.1,
        1.78,
        'Ondo sentitzen naiz.'
    ),
    (
        81,
        '2025-12-06 10:08:00',
        121.0,
        134,
        89,
        86.6,
        1.58,
        'Apur bat nekatuta.'
    ),
    (
        82,
        '2025-12-06 10:07:00',
        105.0,
        131,
        82,
        89.7,
        1.77,
        'Baraualdian.'
    ),
    (
        83,
        '2025-12-06 09:46:00',
        128.0,
        126,
        91,
        65.3,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2025-12-06 10:52:00',
        101.0,
        132,
        79,
        78.3,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        85,
        '2025-12-06 08:03:00',
        108.0,
        125,
        81,
        81.1,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        86,
        '2025-12-06 07:59:00',
        113.0,
        127,
        81,
        67.4,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2025-12-06 08:02:00',
        120.0,
        140,
        80,
        73.2,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        88,
        '2025-12-06 07:08:00',
        126.0,
        124,
        75,
        89.7,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2025-12-06 10:48:00',
        128.0,
        131,
        85,
        91.7,
        1.84,
        'Kirola egin ondoren.'
    ),
    (
        90,
        '2025-12-06 08:44:00',
        123.0,
        138,
        84,
        65.6,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        91,
        '2025-12-06 07:17:00',
        98.0,
        135,
        87,
        90.6,
        1.58,
        'Apur bat nekatuta.'
    ),
    (
        92,
        '2025-12-06 08:30:00',
        132.0,
        135,
        89,
        59.9,
        1.79,
        'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2025-12-06 09:58:00',
        115.0,
        127,
        90,
        76.7,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2025-12-06 09:51:00',
        115.0,
        137,
        83,
        89.7,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2025-12-06 07:18:00',
        93.0,
        123,
        88,
        77.1,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        99,
        '2025-12-06 08:13:00',
        117.0,
        136,
        75,
        85.3,
        1.71,
        'Baraualdian.'
    ),
    (
        100,
        '2025-12-06 08:40:00',
        122.0,
        120,
        78,
        81.7,
        1.57,
        'Gosariaren ondoren.'
    ),
    (
        52,
        '2025-12-07 08:26:00',
        122.0,
        125,
        89,
        94.6,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        53,
        '2025-12-07 09:45:00',
        98.0,
        123,
        79,
        74.7,
        1.75,
        'Gosariaren ondoren.'
    ),
    (
        54,
        '2025-12-07 07:45:00',
        86.0,
        141,
        79,
        86.0,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        55,
        '2025-12-07 08:54:00',
        111.0,
        137,
        72,
        80.2,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        57,
        '2025-12-07 09:06:00',
        113.0,
        135,
        88,
        83.6,
        1.69,
        'Baraualdian.'
    ),
    (
        58,
        '2025-12-07 10:59:00',
        85.0,
        125,
        77,
        67.9,
        1.68,
        'Apur bat nekatuta.'
    ),
    (
        59,
        '2025-12-07 10:55:00',
        119.0,
        117,
        85,
        62.1,
        1.73,
        'Kirola egin ondoren.'
    ),
    (
        60,
        '2025-12-07 07:53:00',
        128.0,
        123,
        95,
        78.9,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        61,
        '2025-12-07 08:27:00',
        117.0,
        125,
        93,
        72.0,
        1.83,
        'Dena ondo.'
    ),
    (
        62,
        '2025-12-07 08:17:00',
        110.0,
        134,
        72,
        66.8,
        1.56,
        'Dena ondo.'
    ),
    (
        63,
        '2025-12-07 08:08:00',
        133.0,
        124,
        86,
        82.0,
        1.80,
        'Dena ondo.'
    ),
    (
        65,
        '2025-12-07 08:53:00',
        121.0,
        126,
        79,
        90.0,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        66,
        '2025-12-07 07:08:00',
        98.0,
        123,
        85,
        74.0,
        1.59,
        'Gosariaren ondoren.'
    ),
    (
        68,
        '2025-12-07 09:16:00',
        98.0,
        124,
        80,
        60.1,
        1.85,
        'Gosariaren ondoren.'
    ),
    (
        69,
        '2025-12-07 09:42:00',
        128.0,
        126,
        80,
        95.2,
        1.66,
        'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-12-07 10:24:00',
        115.0,
        124,
        88,
        75.6,
        1.70,
        'Dena ondo.'
    ),
    (
        72,
        '2025-12-07 10:54:00',
        94.0,
        133,
        75,
        91.7,
        1.69,
        'Baraualdian.'
    ),
    (
        73,
        '2025-12-07 10:19:00',
        121.0,
        126,
        86,
        95.1,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        74,
        '2025-12-07 08:42:00',
        120.0,
        118,
        86,
        65.0,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        75,
        '2025-12-07 09:38:00',
        118.0,
        127,
        82,
        59.0,
        1.65,
        'Apur bat nekatuta.'
    ),
    (
        76,
        '2025-12-07 09:41:00',
        121.0,
        119,
        94,
        66.5,
        1.69,
        'Baraualdian.'
    ),
    (
        77,
        '2025-12-07 07:07:00',
        129.0,
        138,
        79,
        66.9,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        78,
        '2025-12-07 07:27:00',
        115.0,
        120,
        86,
        63.6,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        79,
        '2025-12-07 07:16:00',
        117.0,
        123,
        77,
        67.5,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        80,
        '2025-12-07 08:16:00',
        104.0,
        136,
        81,
        62.2,
        1.78,
        'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2025-12-07 09:30:00',
        101.0,
        131,
        87,
        65.5,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2025-12-07 08:47:00',
        87.0,
        126,
        84,
        79.9,
        1.67,
        'Baraualdian.'
    ),
    (
        85,
        '2025-12-07 09:54:00',
        116.0,
        124,
        84,
        82.0,
        1.72,
        'Apur bat nekatuta.'
    ),
    (
        87,
        '2025-12-07 08:56:00',
        120.0,
        139,
        83,
        73.4,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        88,
        '2025-12-07 10:32:00',
        117.0,
        116,
        74,
        90.5,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        89,
        '2025-12-07 07:39:00',
        96.0,
        135,
        92,
        91.2,
        1.84,
        'Dena ondo.'
    ),
    (
        90,
        '2025-12-07 07:37:00',
        100.0,
        122,
        93,
        66.0,
        1.60,
        'Dena ondo.'
    ),
    (
        91,
        '2025-12-07 07:25:00',
        95.0,
        132,
        91,
        90.7,
        1.58,
        'Kirola egin ondoren.'
    ),
    (
        93,
        '2025-12-07 07:38:00',
        117.0,
        129,
        81,
        76.3,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        94,
        '2025-12-07 07:43:00',
        77.0,
        128,
        78,
        87.4,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        95,
        '2025-12-07 07:57:00',
        101.0,
        138,
        75,
        89.2,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        96,
        '2025-12-07 08:56:00',
        91.0,
        117,
        88,
        76.4,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        97,
        '2025-12-07 08:07:00',
        106.0,
        134,
        71,
        88.0,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        98,
        '2025-12-07 08:02:00',
        131.0,
        124,
        84,
        84.3,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        99,
        '2025-12-07 08:49:00',
        100.0,
        135,
        76,
        86.7,
        1.71,
        'Dena ondo.'
    ),
    (
        100,
        '2025-12-07 08:35:00',
        110.0,
        132,
        79,
        82.4,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        51,
        '2025-12-08 07:09:00',
        99.0,
        121,
        85,
        63.7,
        1.76,
        'Dena ondo.'
    ),
    (
        52,
        '2025-12-08 08:28:00',
        120.0,
        137,
        82,
        94.6,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2025-12-08 08:22:00',
        95.0,
        124,
        93,
        74.0,
        1.75,
        'Gosariaren ondoren.'
    ),
    (
        55,
        '2025-12-08 07:10:00',
        106.0,
        137,
        84,
        81.0,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        56,
        '2025-12-08 07:31:00',
        109.0,
        138,
        86,
        89.5,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        57,
        '2025-12-08 07:09:00',
        86.0,
        126,
        80,
        82.8,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        58,
        '2025-12-08 10:45:00',
        107.0,
        125,
        79,
        66.3,
        1.68,
        'Dena ondo.'
    ),
    (
        59,
        '2025-12-08 10:04:00',
        104.0,
        117,
        91,
        63.4,
        1.73,
        'Dena ondo.'
    ),
    (
        60,
        '2025-12-08 07:51:00',
        136.0,
        118,
        87,
        78.1,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        61,
        '2025-12-08 09:44:00',
        128.0,
        122,
        85,
        73.8,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        62,
        '2025-12-08 10:59:00',
        113.0,
        122,
        76,
        66.1,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        63,
        '2025-12-08 10:22:00',
        117.0,
        144,
        83,
        81.6,
        1.80,
        'Dena ondo.'
    ),
    (
        65,
        '2025-12-08 09:17:00',
        113.0,
        131,
        91,
        91.1,
        1.55,
        'Dena ondo.'
    ),
    (
        66,
        '2025-12-08 07:39:00',
        94.0,
        120,
        84,
        74.2,
        1.59,
        'Kirola egin ondoren.'
    ),
    (
        67,
        '2025-12-08 07:29:00',
        103.0,
        127,
        79,
        73.0,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-12-08 07:27:00',
        83.0,
        116,
        88,
        74.5,
        1.70,
        'Baraualdian.'
    ),
    (
        71,
        '2025-12-08 08:08:00',
        137.0,
        129,
        77,
        88.6,
        1.63,
        'Dena ondo.'
    ),
    (
        72,
        '2025-12-08 07:29:00',
        115.0,
        137,
        80,
        92.4,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2025-12-08 08:54:00',
        104.0,
        128,
        75,
        95.0,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2025-12-08 07:03:00',
        128.0,
        119,
        89,
        64.3,
        1.67,
        'Dena ondo.'
    ),
    (
        76,
        '2025-12-08 07:26:00',
        98.0,
        120,
        92,
        65.8,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        77,
        '2025-12-08 10:02:00',
        123.0,
        126,
        79,
        67.5,
        1.67,
        'Dena ondo.'
    ),
    (
        78,
        '2025-12-08 09:30:00',
        103.0,
        130,
        85,
        63.7,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        79,
        '2025-12-08 09:07:00',
        124.0,
        142,
        78,
        66.8,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        80,
        '2025-12-08 09:14:00',
        96.0,
        119,
        87,
        63.8,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2025-12-08 08:48:00',
        114.0,
        128,
        85,
        85.1,
        1.58,
        'Dena ondo.'
    ),
    (
        82,
        '2025-12-08 07:16:00',
        101.0,
        135,
        81,
        89.7,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        83,
        '2025-12-08 09:47:00',
        129.0,
        116,
        88,
        65.5,
        1.80,
        'Gosariaren ondoren.'
    ),
    (
        84,
        '2025-12-08 10:36:00',
        112.0,
        137,
        83,
        78.8,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        85,
        '2025-12-08 08:48:00',
        116.0,
        134,
        92,
        81.8,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        86,
        '2025-12-08 09:49:00',
        117.0,
        132,
        73,
        68.3,
        1.57,
        'Kirola egin ondoren.'
    ),
    (
        87,
        '2025-12-08 08:10:00',
        115.0,
        137,
        85,
        72.9,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        88,
        '2025-12-08 09:39:00',
        101.0,
        119,
        81,
        90.6,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        89,
        '2025-12-08 08:39:00',
        111.0,
        138,
        79,
        90.9,
        1.84,
        'Dena ondo.'
    ),
    (
        92,
        '2025-12-08 07:21:00',
        120.0,
        128,
        93,
        60.4,
        1.79,
        'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2025-12-08 10:41:00',
        111.0,
        133,
        86,
        76.6,
        1.81,
        'Baraualdian.'
    ),
    (
        94,
        '2025-12-08 09:39:00',
        77.0,
        127,
        86,
        86.6,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        95,
        '2025-12-08 09:57:00',
        134.0,
        137,
        82,
        89.0,
        1.77,
        'Dena ondo.'
    ),
    (
        97,
        '2025-12-08 07:36:00',
        128.0,
        128,
        86,
        86.3,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        98,
        '2025-12-08 08:18:00',
        107.0,
        126,
        79,
        84.1,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        99,
        '2025-12-08 10:26:00',
        112.0,
        134,
        88,
        85.9,
        1.71,
        'Gosariaren ondoren.'
    ),
    (
        100,
        '2025-12-08 10:46:00',
        105.0,
        131,
        74,
        82.5,
        1.57,
        'Baraualdian.'
    ),
    (
        51,
        '2025-12-09 10:33:00',
        105.0,
        125,
        80,
        63.8,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2025-12-09 10:50:00',
        90.0,
        125,
        78,
        75.3,
        1.75,
        'Dena ondo.'
    ),
    (
        54,
        '2025-12-09 09:50:00',
        113.0,
        125,
        79,
        87.7,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        55,
        '2025-12-09 09:33:00',
        116.0,
        131,
        82,
        80.6,
        1.76,
        'Baraualdian.'
    ),
    (
        57,
        '2025-12-09 07:23:00',
        104.0,
        135,
        87,
        82.3,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2025-12-09 10:27:00',
        110.0,
        125,
        77,
        66.3,
        1.68,
        'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2025-12-09 10:53:00',
        129.0,
        117,
        90,
        63.2,
        1.73,
        'Ondo sentitzen naiz.'
    ),
    (
        60,
        '2025-12-09 09:30:00',
        119.0,
        128,
        88,
        77.1,
        1.81,
        'Baraualdian.'
    ),
    (
        61,
        '2025-12-09 10:48:00',
        103.0,
        126,
        88,
        72.6,
        1.83,
        'Baraualdian.'
    ),
    (
        62,
        '2025-12-09 08:42:00',
        107.0,
        124,
        80,
        65.6,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-12-09 08:20:00',
        107.0,
        133,
        80,
        81.0,
        1.80,
        'Baraualdian.'
    ),
    (
        64,
        '2025-12-09 09:10:00',
        99.0,
        139,
        84,
        95.1,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        65,
        '2025-12-09 10:18:00',
        111.0,
        122,
        87,
        90.2,
        1.55,
        'Kirola egin ondoren.'
    ),
    (
        66,
        '2025-12-09 10:14:00',
        101.0,
        118,
        85,
        75.8,
        1.59,
        'Apur bat nekatuta.'
    ),
    (
        67,
        '2025-12-09 10:41:00',
        114.0,
        131,
        84,
        71.5,
        1.72,
        'Apur bat nekatuta.'
    ),
    (
        68,
        '2025-12-09 09:37:00',
        99.0,
        124,
        73,
        60.4,
        1.85,
        'Apur bat nekatuta.'
    ),
    (
        69,
        '2025-12-09 07:49:00',
        130.0,
        133,
        91,
        95.3,
        1.66,
        'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2025-12-09 08:45:00',
        121.0,
        121,
        75,
        75.8,
        1.70,
        'Kirola egin ondoren.'
    ),
    (
        71,
        '2025-12-09 10:55:00',
        139.0,
        138,
        82,
        88.8,
        1.63,
        'Gosariaren ondoren.'
    ),
    (
        72,
        '2025-12-09 09:59:00',
        113.0,
        139,
        77,
        91.3,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2025-12-09 09:17:00',
        133.0,
        119,
        79,
        95.0,
        1.55,
        'Baraualdian.'
    ),
    (
        75,
        '2025-12-09 07:51:00',
        114.0,
        134,
        82,
        60.4,
        1.65,
        'Apur bat nekatuta.'
    ),
    (
        76,
        '2025-12-09 08:13:00',
        117.0,
        114,
        82,
        65.8,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        78,
        '2025-12-09 09:37:00',
        108.0,
        132,
        80,
        62.5,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        79,
        '2025-12-09 07:35:00',
        93.0,
        128,
        81,
        66.2,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2025-12-09 10:03:00',
        100.0,
        136,
        81,
        62.4,
        1.78,
        'Gosariaren ondoren.'
    ),
    (
        82,
        '2025-12-09 10:23:00',
        123.0,
        142,
        80,
        89.7,
        1.77,
        'Dena ondo.'
    ),
    (
        84,
        '2025-12-09 08:18:00',
        93.0,
        132,
        83,
        80.0,
        1.67,
        'Dena ondo.'
    ),
    (
        85,
        '2025-12-09 10:59:00',
        92.0,
        131,
        89,
        80.0,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        86,
        '2025-12-09 09:59:00',
        119.0,
        139,
        74,
        68.7,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2025-12-09 10:56:00',
        132.0,
        125,
        85,
        72.8,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        89,
        '2025-12-09 09:15:00',
        127.0,
        131,
        80,
        91.3,
        1.84,
        'Ondo sentitzen naiz.'
    ),
    (
        91,
        '2025-12-09 09:07:00',
        115.0,
        125,
        80,
        90.0,
        1.58,
        'Apur bat nekatuta.'
    ),
    (
        93,
        '2025-12-09 08:49:00',
        114.0,
        138,
        88,
        76.6,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        94,
        '2025-12-09 08:27:00',
        86.0,
        142,
        83,
        86.0,
        1.83,
        'Dena ondo.'
    ),
    (
        95,
        '2025-12-09 07:48:00',
        118.0,
        125,
        74,
        90.4,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2025-12-09 08:52:00',
        118.0,
        130,
        76,
        76.1,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2025-12-09 10:07:00',
        113.0,
        139,
        75,
        86.8,
        1.56,
        'Dena ondo.'
    ),
    (
        99,
        '2025-12-09 09:21:00',
        124.0,
        130,
        81,
        86.7,
        1.71,
        'Apur bat nekatuta.'
    ),
    (
        51,
        '2025-12-10 07:58:00',
        112.0,
        133,
        83,
        63.5,
        1.76,
        'Ondo sentitzen naiz.'
    ),
    (
        53,
        '2025-12-10 09:59:00',
        87.0,
        119,
        78,
        74.3,
        1.75,
        'Dena ondo.'
    ),
    (
        54,
        '2025-12-10 09:02:00',
        107.0,
        142,
        86,
        87.4,
        1.60,
        'Baraualdian.'
    ),
    (
        55,
        '2025-12-10 10:02:00',
        102.0,
        127,
        78,
        81.2,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        57,
        '2025-12-10 08:03:00',
        110.0,
        136,
        88,
        82.9,
        1.69,
        'Baraualdian.'
    ),
    (
        58,
        '2025-12-10 07:29:00',
        99.0,
        139,
        82,
        67.6,
        1.68,
        'Apur bat nekatuta.'
    ),
    (
        59,
        '2025-12-10 09:20:00',
        119.0,
        117,
        84,
        63.7,
        1.73,
        'Dena ondo.'
    ),
    (
        61,
        '2025-12-10 08:20:00',
        104.0,
        130,
        78,
        72.1,
        1.83,
        'Dena ondo.'
    ),
    (
        62,
        '2025-12-10 09:30:00',
        123.0,
        123,
        78,
        66.4,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        63,
        '2025-12-10 10:55:00',
        116.0,
        139,
        89,
        80.1,
        1.80,
        'Kirola egin ondoren.'
    ),
    (
        65,
        '2025-12-10 09:46:00',
        100.0,
        127,
        85,
        90.8,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        66,
        '2025-12-10 07:10:00',
        108.0,
        136,
        78,
        74.8,
        1.59,
        'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2025-12-10 07:04:00',
        98.0,
        135,
        87,
        72.8,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        68,
        '2025-12-10 08:47:00',
        100.0,
        137,
        72,
        60.0,
        1.85,
        'Gosariaren ondoren.'
    ),
    (
        69,
        '2025-12-10 08:28:00',
        114.0,
        136,
        86,
        94.5,
        1.66,
        'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-12-10 09:38:00',
        89.0,
        126,
        76,
        74.9,
        1.70,
        'Dena ondo.'
    ),
    (
        71,
        '2025-12-10 08:45:00',
        111.0,
        140,
        82,
        89.0,
        1.63,
        'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2025-12-10 09:48:00',
        80.0,
        130,
        76,
        93.0,
        1.69,
        'Dena ondo.'
    ),
    (
        73,
        '2025-12-10 08:51:00',
        125.0,
        122,
        71,
        95.5,
        1.55,
        'Baraualdian.'
    ),
    (
        74,
        '2025-12-10 09:58:00',
        100.0,
        118,
        77,
        64.6,
        1.67,
        'Dena ondo.'
    ),
    (
        75,
        '2025-12-10 09:18:00',
        116.0,
        144,
        71,
        59.4,
        1.65,
        'Kirola egin ondoren.'
    ),
    (
        76,
        '2025-12-10 08:32:00',
        122.0,
        124,
        89,
        66.3,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        77,
        '2025-12-10 09:27:00',
        112.0,
        141,
        85,
        66.4,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        78,
        '2025-12-10 08:34:00',
        119.0,
        133,
        76,
        64.0,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        80,
        '2025-12-10 07:17:00',
        111.0,
        135,
        87,
        63.3,
        1.78,
        'Baraualdian.'
    ),
    (
        81,
        '2025-12-10 08:04:00',
        100.0,
        123,
        92,
        87.0,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2025-12-10 08:18:00',
        118.0,
        137,
        88,
        88.4,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        83,
        '2025-12-10 08:57:00',
        103.0,
        124,
        92,
        64.2,
        1.80,
        'Dena ondo.'
    ),
    (
        84,
        '2025-12-10 09:16:00',
        117.0,
        129,
        90,
        78.3,
        1.67,
        'Baraualdian.'
    ),
    (
        85,
        '2025-12-10 08:58:00',
        106.0,
        138,
        92,
        81.3,
        1.72,
        'Baraualdian.'
    ),
    (
        86,
        '2025-12-10 07:33:00',
        95.0,
        131,
        79,
        67.8,
        1.57,
        'Dena ondo.'
    ),
    (
        87,
        '2025-12-10 08:58:00',
        115.0,
        128,
        87,
        73.0,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        88,
        '2025-12-10 09:35:00',
        110.0,
        121,
        81,
        90.7,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        89,
        '2025-12-10 07:27:00',
        120.0,
        124,
        92,
        91.6,
        1.84,
        'Baraualdian.'
    ),
    (
        90,
        '2025-12-10 07:14:00',
        94.0,
        132,
        87,
        65.7,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        92,
        '2025-12-10 07:00:00',
        129.0,
        140,
        83,
        59.0,
        1.79,
        'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2025-12-10 09:59:00',
        128.0,
        124,
        80,
        75.2,
        1.81,
        'Dena ondo.'
    ),
    (
        94,
        '2025-12-10 10:37:00',
        87.0,
        131,
        85,
        86.2,
        1.83,
        'Dena ondo.'
    ),
    (
        95,
        '2025-12-10 09:44:00',
        100.0,
        144,
        73,
        89.6,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        97,
        '2025-12-10 07:38:00',
        124.0,
        125,
        76,
        87.3,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        99,
        '2025-12-10 10:54:00',
        107.0,
        137,
        88,
        86.1,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2025-12-10 10:03:00',
        91.0,
        123,
        77,
        82.3,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        51,
        '2025-12-11 07:52:00',
        98.0,
        121,
        80,
        63.9,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2025-12-11 07:07:00',
        106.0,
        126,
        83,
        76.0,
        1.75,
        'Dena ondo.'
    ),
    (
        55,
        '2025-12-11 08:43:00',
        106.0,
        133,
        85,
        80.8,
        1.76,
        'Baraualdian.'
    ),
    (
        56,
        '2025-12-11 07:32:00',
        114.0,
        139,
        86,
        89.4,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        57,
        '2025-12-11 08:52:00',
        90.0,
        117,
        89,
        83.3,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2025-12-11 07:42:00',
        99.0,
        117,
        84,
        62.5,
        1.73,
        'Ondo sentitzen naiz.'
    ),
    (
        62,
        '2025-12-11 09:24:00',
        108.0,
        125,
        79,
        66.6,
        1.56,
        'Dena ondo.'
    ),
    (
        63,
        '2025-12-11 07:26:00',
        138.0,
        131,
        83,
        80.6,
        1.80,
        'Dena ondo.'
    ),
    (
        64,
        '2025-12-11 07:26:00',
        95.0,
        140,
        84,
        96.0,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2025-12-11 09:04:00',
        103.0,
        122,
        91,
        90.3,
        1.55,
        'Dena ondo.'
    ),
    (
        66,
        '2025-12-11 07:50:00',
        102.0,
        130,
        85,
        74.1,
        1.59,
        'Gosariaren ondoren.'
    ),
    (
        67,
        '2025-12-11 08:25:00',
        112.0,
        133,
        83,
        71.8,
        1.72,
        'Gaur goizean neurtuta.'
    ),
    (
        68,
        '2025-12-11 07:02:00',
        94.0,
        125,
        77,
        60.8,
        1.85,
        'Gosariaren ondoren.'
    ),
    (
        69,
        '2025-12-11 08:08:00',
        101.0,
        143,
        85,
        94.7,
        1.66,
        'Gosariaren ondoren.'
    ),
    (
        70,
        '2025-12-11 08:16:00',
        104.0,
        118,
        77,
        74.3,
        1.70,
        'Kirola egin ondoren.'
    ),
    (
        71,
        '2025-12-11 10:53:00',
        121.0,
        124,
        72,
        89.5,
        1.63,
        'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2025-12-11 07:12:00',
        109.0,
        134,
        82,
        91.3,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        73,
        '2025-12-11 08:29:00',
        118.0,
        124,
        77,
        95.7,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2025-12-11 08:44:00',
        119.0,
        121,
        87,
        63.9,
        1.67,
        'Dena ondo.'
    ),
    (
        75,
        '2025-12-11 08:14:00',
        131.0,
        134,
        70,
        59.5,
        1.65,
        'Dena ondo.'
    ),
    (
        76,
        '2025-12-11 10:05:00',
        115.0,
        114,
        87,
        65.6,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        77,
        '2025-12-11 08:24:00',
        137.0,
        134,
        92,
        67.7,
        1.67,
        'Baraualdian.'
    ),
    (
        78,
        '2025-12-11 10:24:00',
        99.0,
        122,
        83,
        63.4,
        1.61,
        'Dena ondo.'
    ),
    (
        79,
        '2025-12-11 07:34:00',
        103.0,
        123,
        80,
        67.8,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        80,
        '2025-12-11 07:03:00',
        104.0,
        126,
        80,
        63.6,
        1.78,
        'Ondo sentitzen naiz.'
    ),
    (
        82,
        '2025-12-11 07:22:00',
        114.0,
        126,
        81,
        89.5,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2025-12-11 09:20:00',
        101.0,
        135,
        84,
        79.0,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        86,
        '2025-12-11 08:49:00',
        97.0,
        143,
        80,
        67.8,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        88,
        '2025-12-11 10:42:00',
        95.0,
        127,
        81,
        90.5,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        89,
        '2025-12-11 10:10:00',
        124.0,
        137,
        91,
        91.0,
        1.84,
        'Apur bat nekatuta.'
    ),
    (
        90,
        '2025-12-11 08:44:00',
        99.0,
        120,
        79,
        65.0,
        1.60,
        'Dena ondo.'
    ),
    (
        91,
        '2025-12-11 07:38:00',
        83.0,
        125,
        76,
        90.7,
        1.58,
        'Apur bat nekatuta.'
    ),
    (
        94,
        '2025-12-11 07:49:00',
        79.0,
        138,
        80,
        87.0,
        1.83,
        'Baraualdian.'
    ),
    (
        96,
        '2025-12-11 09:12:00',
        123.0,
        130,
        76,
        77.4,
        1.71,
        'Baraualdian.'
    ),
    (
        98,
        '2025-12-11 07:40:00',
        132.0,
        127,
        78,
        84.2,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        99,
        '2025-12-11 08:15:00',
        100.0,
        126,
        75,
        85.9,
        1.71,
        'Gosariaren ondoren.'
    ),
    (
        100,
        '2025-12-11 08:43:00',
        99.0,
        132,
        81,
        82.7,
        1.57,
        'Baraualdian.'
    ),
    (
        51,
        '2025-12-12 10:15:00',
        122.0,
        140,
        84,
        64.9,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        52,
        '2025-12-12 08:29:00',
        120.0,
        120,
        85,
        93.2,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        54,
        '2025-12-12 10:30:00',
        108.0,
        128,
        80,
        87.3,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        55,
        '2025-12-12 07:52:00',
        113.0,
        133,
        84,
        81.0,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        56,
        '2025-12-12 10:33:00',
        112.0,
        125,
        79,
        90.8,
        1.61,
        'Baraualdian.'
    ),
    (
        57,
        '2025-12-12 09:29:00',
        82.0,
        120,
        89,
        83.3,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        59,
        '2025-12-12 07:52:00',
        121.0,
        114,
        82,
        63.5,
        1.73,
        'Gosariaren ondoren.'
    ),
    (
        61,
        '2025-12-12 08:09:00',
        108.0,
        112,
        80,
        73.5,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-12-12 08:05:00',
        127.0,
        129,
        84,
        81.2,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        64,
        '2025-12-12 07:32:00',
        105.0,
        137,
        74,
        94.1,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        65,
        '2025-12-12 09:06:00',
        115.0,
        121,
        78,
        91.5,
        1.55,
        'Baraualdian.'
    ),
    (
        66,
        '2025-12-12 08:07:00',
        105.0,
        116,
        78,
        74.3,
        1.59,
        'Kirola egin ondoren.'
    ),
    (
        67,
        '2025-12-12 09:50:00',
        111.0,
        141,
        76,
        73.0,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        70,
        '2025-12-12 09:54:00',
        88.0,
        125,
        77,
        75.8,
        1.70,
        'Baraualdian.'
    ),
    (
        73,
        '2025-12-12 07:05:00',
        102.0,
        112,
        72,
        95.1,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2025-12-12 08:14:00',
        125.0,
        127,
        90,
        65.0,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        75,
        '2025-12-12 07:15:00',
        101.0,
        130,
        71,
        59.3,
        1.65,
        'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2025-12-12 08:07:00',
        122.0,
        111,
        80,
        65.2,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        77,
        '2025-12-12 09:40:00',
        134.0,
        141,
        86,
        67.0,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        78,
        '2025-12-12 07:29:00',
        118.0,
        135,
        83,
        62.5,
        1.61,
        'Baraualdian.'
    ),
    (
        79,
        '2025-12-12 07:41:00',
        132.0,
        128,
        84,
        66.1,
        1.67,
        'Baraualdian.'
    ),
    (
        80,
        '2025-12-12 10:22:00',
        100.0,
        129,
        92,
        63.4,
        1.78,
        'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2025-12-12 07:50:00',
        112.0,
        135,
        93,
        86.0,
        1.58,
        'Gosariaren ondoren.'
    ),
    (
        82,
        '2025-12-12 09:30:00',
        133.0,
        127,
        85,
        88.7,
        1.77,
        'Dena ondo.'
    ),
    (
        83,
        '2025-12-12 07:11:00',
        118.0,
        136,
        94,
        64.8,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        84,
        '2025-12-12 09:20:00',
        101.0,
        118,
        76,
        79.4,
        1.67,
        'Baraualdian.'
    ),
    (
        85,
        '2025-12-12 07:27:00',
        85.0,
        139,
        84,
        80.2,
        1.72,
        'Apur bat nekatuta.'
    ),
    (
        86,
        '2025-12-12 08:58:00',
        101.0,
        132,
        76,
        67.3,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2025-12-12 08:21:00',
        121.0,
        124,
        76,
        74.0,
        1.61,
        'Dena ondo.'
    ),
    (
        88,
        '2025-12-12 09:22:00',
        91.0,
        111,
        84,
        90.3,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2025-12-12 07:01:00',
        101.0,
        133,
        79,
        90.1,
        1.84,
        'Gaur goizean neurtuta.'
    ),
    (
        90,
        '2025-12-12 08:05:00',
        117.0,
        138,
        88,
        66.7,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        91,
        '2025-12-12 09:52:00',
        109.0,
        142,
        79,
        91.0,
        1.58,
        'Kirola egin ondoren.'
    ),
    (
        92,
        '2025-12-12 09:50:00',
        117.0,
        135,
        84,
        59.1,
        1.79,
        'Dena ondo.'
    ),
    (
        93,
        '2025-12-12 07:24:00',
        109.0,
        141,
        91,
        76.6,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        94,
        '2025-12-12 10:23:00',
        89.0,
        139,
        76,
        86.1,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2025-12-12 10:52:00',
        122.0,
        134,
        79,
        89.6,
        1.77,
        'Dena ondo.'
    ),
    (
        96,
        '2025-12-12 08:44:00',
        118.0,
        135,
        78,
        76.7,
        1.71,
        'Dena ondo.'
    ),
    (
        97,
        '2025-12-12 07:35:00',
        104.0,
        133,
        80,
        86.6,
        1.56,
        'Baraualdian.'
    ),
    (
        98,
        '2025-12-12 09:33:00',
        113.0,
        125,
        75,
        83.6,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        99,
        '2025-12-12 08:03:00',
        114.0,
        125,
        73,
        86.2,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        100,
        '2025-12-12 07:52:00',
        124.0,
        131,
        77,
        81.6,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2025-12-13 09:30:00',
        87.0,
        120,
        92,
        64.0,
        1.76,
        'Gosariaren ondoren.'
    ),
    (
        52,
        '2025-12-13 08:00:00',
        127.0,
        121,
        81,
        94.5,
        1.77,
        'Baraualdian.'
    ),
    (
        53,
        '2025-12-13 10:42:00',
        120.0,
        129,
        82,
        74.0,
        1.75,
        'Kirola egin ondoren.'
    ),
    (
        54,
        '2025-12-13 09:58:00',
        109.0,
        128,
        82,
        87.1,
        1.60,
        'Baraualdian.'
    ),
    (
        55,
        '2025-12-13 08:31:00',
        113.0,
        138,
        86,
        80.6,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        56,
        '2025-12-13 09:40:00',
        83.0,
        136,
        94,
        90.0,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        57,
        '2025-12-13 08:51:00',
        85.0,
        128,
        82,
        84.0,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        58,
        '2025-12-13 08:46:00',
        96.0,
        128,
        85,
        67.5,
        1.68,
        'Baraualdian.'
    ),
    (
        59,
        '2025-12-13 10:49:00',
        98.0,
        122,
        93,
        63.2,
        1.73,
        'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2025-12-13 07:29:00',
        103.0,
        125,
        86,
        79.0,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        61,
        '2025-12-13 08:52:00',
        134.0,
        130,
        92,
        72.3,
        1.83,
        'Dena ondo.'
    ),
    (
        62,
        '2025-12-13 08:48:00',
        120.0,
        137,
        86,
        65.7,
        1.56,
        'Baraualdian.'
    ),
    (
        64,
        '2025-12-13 07:40:00',
        95.0,
        129,
        76,
        94.1,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2025-12-13 08:49:00',
        104.0,
        133,
        77,
        90.3,
        1.55,
        'Dena ondo.'
    ),
    (
        66,
        '2025-12-13 08:47:00',
        92.0,
        121,
        76,
        74.6,
        1.59,
        'Dena ondo.'
    ),
    (
        67,
        '2025-12-13 09:54:00',
        81.0,
        138,
        90,
        71.9,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        68,
        '2025-12-13 10:13:00',
        101.0,
        120,
        72,
        61.3,
        1.85,
        'Dena ondo.'
    ),
    (
        69,
        '2025-12-13 08:55:00',
        134.0,
        133,
        89,
        95.6,
        1.66,
        'Apur bat nekatuta.'
    ),
    (
        70,
        '2025-12-13 07:12:00',
        93.0,
        120,
        79,
        74.9,
        1.70,
        'Dena ondo.'
    ),
    (
        71,
        '2025-12-13 08:52:00',
        132.0,
        129,
        72,
        89.3,
        1.63,
        'Apur bat nekatuta.'
    ),
    (
        73,
        '2025-12-13 09:27:00',
        100.0,
        131,
        76,
        94.7,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        74,
        '2025-12-13 07:14:00',
        111.0,
        121,
        84,
        64.7,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2025-12-13 07:26:00',
        102.0,
        111,
        83,
        66.9,
        1.69,
        'Dena ondo.'
    ),
    (
        77,
        '2025-12-13 08:30:00',
        105.0,
        131,
        85,
        66.7,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        78,
        '2025-12-13 09:53:00',
        109.0,
        131,
        83,
        62.1,
        1.61,
        'Dena ondo.'
    ),
    (
        80,
        '2025-12-13 08:58:00',
        126.0,
        138,
        92,
        62.4,
        1.78,
        'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2025-12-13 08:36:00',
        101.0,
        134,
        95,
        86.3,
        1.58,
        'Baraualdian.'
    ),
    (
        82,
        '2025-12-13 10:37:00',
        136.0,
        125,
        84,
        88.7,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        83,
        '2025-12-13 08:10:00',
        119.0,
        116,
        93,
        66.0,
        1.80,
        'Dena ondo.'
    ),
    (
        84,
        '2025-12-13 10:30:00',
        111.0,
        135,
        87,
        78.8,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        85,
        '2025-12-13 08:30:00',
        97.0,
        139,
        83,
        81.7,
        1.72,
        'Dena ondo.'
    ),
    (
        86,
        '2025-12-13 08:17:00',
        117.0,
        128,
        85,
        67.3,
        1.57,
        'Kirola egin ondoren.'
    ),
    (
        87,
        '2025-12-13 09:39:00',
        131.0,
        128,
        75,
        73.5,
        1.61,
        'Baraualdian.'
    ),
    (
        88,
        '2025-12-13 09:29:00',
        101.0,
        118,
        83,
        90.7,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        90,
        '2025-12-13 09:54:00',
        98.0,
        118,
        86,
        65.0,
        1.60,
        'Dena ondo.'
    ),
    (
        92,
        '2025-12-13 07:54:00',
        118.0,
        127,
        79,
        60.3,
        1.79,
        'Apur bat nekatuta.'
    ),
    (
        93,
        '2025-12-13 08:10:00',
        127.0,
        127,
        80,
        75.1,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        94,
        '2025-12-13 10:25:00',
        93.0,
        135,
        76,
        87.6,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2025-12-13 08:25:00',
        106.0,
        135,
        77,
        89.4,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2025-12-13 08:06:00',
        116.0,
        134,
        80,
        78.0,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2025-12-13 10:21:00',
        112.0,
        126,
        85,
        87.3,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        98,
        '2025-12-13 09:32:00',
        122.0,
        118,
        83,
        84.9,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        99,
        '2025-12-13 08:04:00',
        92.0,
        121,
        80,
        86.5,
        1.71,
        'Dena ondo.'
    ),
    (
        100,
        '2025-12-13 09:53:00',
        93.0,
        122,
        83,
        82.0,
        1.57,
        'Dena ondo.'
    ),
    (
        51,
        '2025-12-14 09:08:00',
        103.0,
        120,
        93,
        65.0,
        1.76,
        'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2025-12-14 08:45:00',
        83.0,
        142,
        83,
        89.7,
        1.61,
        'Dena ondo.'
    ),
    (
        57,
        '2025-12-14 07:39:00',
        81.0,
        122,
        86,
        83.9,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        59,
        '2025-12-14 10:31:00',
        97.0,
        113,
        81,
        62.6,
        1.73,
        'Baraualdian.'
    ),
    (
        60,
        '2025-12-14 08:03:00',
        125.0,
        134,
        89,
        78.1,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        61,
        '2025-12-14 08:07:00',
        106.0,
        121,
        86,
        73.3,
        1.83,
        'Gosariaren ondoren.'
    ),
    (
        62,
        '2025-12-14 07:12:00',
        128.0,
        126,
        73,
        66.2,
        1.56,
        'Baraualdian.'
    ),
    (
        64,
        '2025-12-14 10:26:00',
        118.0,
        133,
        76,
        94.6,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2025-12-14 07:43:00',
        124.0,
        123,
        87,
        91.5,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        66,
        '2025-12-14 09:13:00',
        118.0,
        135,
        84,
        75.4,
        1.59,
        'Dena ondo.'
    ),
    (
        67,
        '2025-12-14 07:57:00',
        100.0,
        130,
        91,
        72.7,
        1.72,
        'Apur bat nekatuta.'
    ),
    (
        68,
        '2025-12-14 08:50:00',
        103.0,
        139,
        80,
        60.2,
        1.85,
        'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2025-12-14 10:32:00',
        104.0,
        126,
        87,
        95.7,
        1.66,
        'Ondo sentitzen naiz.'
    ),
    (
        70,
        '2025-12-14 09:48:00',
        101.0,
        130,
        88,
        74.5,
        1.70,
        'Baraualdian.'
    ),
    (
        71,
        '2025-12-14 10:58:00',
        103.0,
        133,
        73,
        89.9,
        1.63,
        'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2025-12-14 08:01:00',
        89.0,
        135,
        80,
        91.5,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2025-12-14 09:53:00',
        133.0,
        120,
        74,
        96.0,
        1.55,
        'Baraualdian.'
    ),
    (
        75,
        '2025-12-14 09:43:00',
        127.0,
        144,
        80,
        60.5,
        1.65,
        'Kirola egin ondoren.'
    ),
    (
        77,
        '2025-12-14 08:23:00',
        130.0,
        123,
        83,
        67.9,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        79,
        '2025-12-14 10:13:00',
        106.0,
        133,
        84,
        67.1,
        1.67,
        'Baraualdian.'
    ),
    (
        81,
        '2025-12-14 08:23:00',
        106.0,
        129,
        83,
        85.8,
        1.58,
        'Baraualdian.'
    ),
    (
        82,
        '2025-12-14 08:29:00',
        114.0,
        139,
        80,
        88.4,
        1.77,
        'Baraualdian.'
    ),
    (
        83,
        '2025-12-14 09:14:00',
        113.0,
        122,
        83,
        65.4,
        1.80,
        'Dena ondo.'
    ),
    (
        84,
        '2025-12-14 08:23:00',
        124.0,
        123,
        80,
        78.8,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2025-12-14 07:35:00',
        98.0,
        123,
        90,
        81.0,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        86,
        '2025-12-14 08:05:00',
        92.0,
        143,
        74,
        68.7,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        87,
        '2025-12-14 08:06:00',
        120.0,
        141,
        88,
        73.1,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        88,
        '2025-12-14 08:19:00',
        116.0,
        125,
        78,
        90.5,
        1.81,
        'Baraualdian.'
    ),
    (
        89,
        '2025-12-14 08:24:00',
        107.0,
        136,
        92,
        90.8,
        1.84,
        'Baraualdian.'
    ),
    (
        91,
        '2025-12-14 09:32:00',
        103.0,
        144,
        81,
        89.8,
        1.58,
        'Kirola egin ondoren.'
    ),
    (
        93,
        '2025-12-14 08:53:00',
        128.0,
        135,
        83,
        75.7,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        94,
        '2025-12-14 10:27:00',
        91.0,
        135,
        87,
        86.2,
        1.83,
        'Baraualdian.'
    ),
    (
        96,
        '2025-12-14 07:22:00',
        116.0,
        124,
        82,
        77.3,
        1.71,
        'Apur bat nekatuta.'
    ),
    (
        98,
        '2025-12-14 09:09:00',
        103.0,
        127,
        83,
        83.3,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        100,
        '2025-12-14 07:28:00',
        103.0,
        140,
        81,
        82.9,
        1.57,
        'Baraualdian.'
    ),
    (
        51,
        '2025-12-15 07:45:00',
        98.0,
        130,
        85,
        65.0,
        1.76,
        'Baraualdian.'
    ),
    (
        52,
        '2025-12-15 08:49:00',
        115.0,
        122,
        86,
        93.6,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        53,
        '2025-12-15 09:26:00',
        117.0,
        132,
        93,
        75.2,
        1.75,
        'Kirola egin ondoren.'
    ),
    (
        55,
        '2025-12-15 09:23:00',
        132.0,
        138,
        72,
        81.3,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        56,
        '2025-12-15 09:45:00',
        94.0,
        140,
        86,
        89.9,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        57,
        '2025-12-15 10:54:00',
        84.0,
        136,
        90,
        83.4,
        1.69,
        'Dena ondo.'
    ),
    (
        58,
        '2025-12-15 09:19:00',
        92.0,
        144,
        83,
        67.1,
        1.68,
        'Ondo sentitzen naiz.'
    ),
    (
        59,
        '2025-12-15 09:28:00',
        115.0,
        119,
        92,
        62.3,
        1.73,
        'Kirola egin ondoren.'
    ),
    (
        60,
        '2025-12-15 09:28:00',
        110.0,
        127,
        85,
        78.1,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        62,
        '2025-12-15 10:29:00',
        115.0,
        134,
        77,
        66.9,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        65,
        '2025-12-15 10:36:00',
        119.0,
        138,
        78,
        91.5,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2025-12-15 10:36:00',
        106.0,
        133,
        86,
        72.5,
        1.72,
        'Dena ondo.'
    ),
    (
        68,
        '2025-12-15 09:32:00',
        112.0,
        132,
        87,
        61.1,
        1.85,
        'Apur bat nekatuta.'
    ),
    (
        70,
        '2025-12-15 08:10:00',
        98.0,
        136,
        79,
        76.0,
        1.70,
        'Baraualdian.'
    ),
    (
        71,
        '2025-12-15 09:27:00',
        127.0,
        120,
        78,
        89.4,
        1.63,
        'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2025-12-15 10:52:00',
        92.0,
        131,
        79,
        92.7,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        73,
        '2025-12-15 10:24:00',
        102.0,
        115,
        74,
        94.3,
        1.55,
        'Kirola egin ondoren.'
    ),
    (
        74,
        '2025-12-15 10:24:00',
        102.0,
        120,
        83,
        64.0,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2025-12-15 07:08:00',
        113.0,
        131,
        76,
        59.5,
        1.65,
        'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2025-12-15 09:17:00',
        102.0,
        114,
        81,
        66.6,
        1.69,
        'Dena ondo.'
    ),
    (
        77,
        '2025-12-15 08:16:00',
        116.0,
        137,
        81,
        68.0,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        78,
        '2025-12-15 10:33:00',
        86.0,
        121,
        75,
        63.7,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        79,
        '2025-12-15 10:39:00',
        100.0,
        125,
        77,
        66.0,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2025-12-15 10:28:00',
        101.0,
        122,
        85,
        62.7,
        1.78,
        'Gosariaren ondoren.'
    ),
    (
        81,
        '2025-12-15 10:34:00',
        97.0,
        135,
        80,
        86.1,
        1.58,
        'Kirola egin ondoren.'
    ),
    (
        82,
        '2025-12-15 09:46:00',
        134.0,
        141,
        80,
        90.0,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        84,
        '2025-12-15 08:55:00',
        99.0,
        134,
        87,
        79.2,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        85,
        '2025-12-15 08:27:00',
        106.0,
        137,
        83,
        81.2,
        1.72,
        'Baraualdian.'
    ),
    (
        88,
        '2025-12-15 08:21:00',
        105.0,
        129,
        74,
        89.8,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        89,
        '2025-12-15 07:45:00',
        129.0,
        137,
        86,
        91.0,
        1.84,
        'Dena ondo.'
    ),
    (
        90,
        '2025-12-15 10:58:00',
        96.0,
        138,
        82,
        66.8,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2025-12-15 10:01:00',
        84.0,
        132,
        90,
        89.1,
        1.58,
        'Baraualdian.'
    ),
    (
        93,
        '2025-12-15 10:30:00',
        130.0,
        141,
        88,
        76.5,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        94,
        '2025-12-15 07:34:00',
        85.0,
        132,
        90,
        87.9,
        1.83,
        'Baraualdian.'
    ),
    (
        95,
        '2025-12-15 09:57:00',
        107.0,
        131,
        77,
        89.3,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        96,
        '2025-12-15 10:21:00',
        90.0,
        117,
        80,
        76.2,
        1.71,
        'Ondo sentitzen naiz.'
    ),
    (
        97,
        '2025-12-15 08:11:00',
        128.0,
        132,
        72,
        86.7,
        1.56,
        'Dena ondo.'
    ),
    (
        100,
        '2025-12-15 07:06:00',
        96.0,
        121,
        84,
        82.8,
        1.57,
        'Kirola egin ondoren.'
    ),
    (
        51,
        '2025-12-16 08:47:00',
        114.0,
        127,
        87,
        63.4,
        1.76,
        'Ondo sentitzen naiz.'
    ),
    (
        53,
        '2025-12-16 09:42:00',
        86.0,
        127,
        86,
        75.4,
        1.75,
        'Kirola egin ondoren.'
    ),
    (
        54,
        '2025-12-16 07:10:00',
        92.0,
        140,
        83,
        87.7,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        55,
        '2025-12-16 09:39:00',
        120.0,
        130,
        71,
        81.6,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        56,
        '2025-12-16 09:58:00',
        97.0,
        133,
        94,
        89.1,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        58,
        '2025-12-16 09:04:00',
        108.0,
        126,
        81,
        66.0,
        1.68,
        'Dena ondo.'
    ),
    (
        60,
        '2025-12-16 09:49:00',
        105.0,
        123,
        80,
        77.2,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        61,
        '2025-12-16 08:43:00',
        134.0,
        114,
        87,
        73.6,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        62,
        '2025-12-16 08:05:00',
        119.0,
        134,
        75,
        66.2,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        63,
        '2025-12-16 09:21:00',
        101.0,
        133,
        79,
        81.8,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        64,
        '2025-12-16 07:18:00',
        103.0,
        130,
        77,
        94.8,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        65,
        '2025-12-16 08:45:00',
        108.0,
        128,
        85,
        90.4,
        1.55,
        'Dena ondo.'
    ),
    (
        67,
        '2025-12-16 10:53:00',
        119.0,
        144,
        84,
        71.2,
        1.72,
        'Baraualdian.'
    ),
    (
        68,
        '2025-12-16 10:23:00',
        101.0,
        126,
        75,
        61.5,
        1.85,
        'Gosariaren ondoren.'
    ),
    (
        69,
        '2025-12-16 10:42:00',
        123.0,
        132,
        83,
        95.8,
        1.66,
        'Kirola egin ondoren.'
    ),
    (
        71,
        '2025-12-16 09:50:00',
        137.0,
        139,
        82,
        88.5,
        1.63,
        'Apur bat nekatuta.'
    ),
    (
        72,
        '2025-12-16 08:16:00',
        120.0,
        135,
        88,
        91.3,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2025-12-16 08:16:00',
        124.0,
        129,
        78,
        63.2,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        75,
        '2025-12-16 09:26:00',
        134.0,
        143,
        74,
        60.6,
        1.65,
        'Apur bat nekatuta.'
    ),
    (
        76,
        '2025-12-16 09:37:00',
        127.0,
        121,
        81,
        66.0,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        77,
        '2025-12-16 07:05:00',
        134.0,
        128,
        80,
        67.9,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        78,
        '2025-12-16 09:14:00',
        103.0,
        130,
        73,
        62.2,
        1.61,
        'Dena ondo.'
    ),
    (
        79,
        '2025-12-16 08:57:00',
        131.0,
        132,
        77,
        66.6,
        1.67,
        'Dena ondo.'
    ),
    (
        80,
        '2025-12-16 10:20:00',
        126.0,
        121,
        84,
        62.0,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        82,
        '2025-12-16 08:31:00',
        127.0,
        137,
        87,
        88.6,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2025-12-16 07:50:00',
        126.0,
        132,
        81,
        79.1,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        85,
        '2025-12-16 10:16:00',
        90.0,
        129,
        86,
        81.4,
        1.72,
        'Dena ondo.'
    ),
    (
        87,
        '2025-12-16 07:09:00',
        136.0,
        121,
        86,
        74.0,
        1.61,
        'Dena ondo.'
    ),
    (
        88,
        '2025-12-16 09:58:00',
        117.0,
        114,
        85,
        89.1,
        1.81,
        'Baraualdian.'
    ),
    (
        89,
        '2025-12-16 07:01:00',
        118.0,
        131,
        80,
        91.5,
        1.84,
        'Ondo sentitzen naiz.'
    ),
    (
        90,
        '2025-12-16 10:11:00',
        125.0,
        124,
        87,
        66.6,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        91,
        '2025-12-16 09:03:00',
        110.0,
        130,
        88,
        90.3,
        1.58,
        'Kirola egin ondoren.'
    ),
    (
        93,
        '2025-12-16 08:28:00',
        135.0,
        124,
        87,
        75.6,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        94,
        '2025-12-16 09:38:00',
        98.0,
        131,
        86,
        87.0,
        1.83,
        'Kirola egin ondoren.'
    ),
    (
        95,
        '2025-12-16 10:56:00',
        119.0,
        139,
        74,
        89.6,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2025-12-16 09:55:00',
        121.0,
        135,
        85,
        76.5,
        1.71,
        'Ondo sentitzen naiz.'
    ),
    (
        99,
        '2025-12-16 09:21:00',
        108.0,
        121,
        77,
        85.8,
        1.71,
        'Dena ondo.'
    ),
    (
        100,
        '2025-12-16 10:21:00',
        128.0,
        126,
        72,
        82.1,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        51,
        '2025-12-17 09:35:00',
        97.0,
        135,
        86,
        63.7,
        1.76,
        'Dena ondo.'
    ),
    (
        52,
        '2025-12-17 07:40:00',
        107.0,
        128,
        92,
        94.2,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        53,
        '2025-12-17 09:23:00',
        108.0,
        119,
        85,
        74.5,
        1.75,
        'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2025-12-17 10:54:00',
        91.0,
        140,
        76,
        87.7,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        55,
        '2025-12-17 07:37:00',
        117.0,
        136,
        79,
        80.0,
        1.76,
        'Dena ondo.'
    ),
    (
        56,
        '2025-12-17 09:57:00',
        101.0,
        133,
        91,
        90.8,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        57,
        '2025-12-17 07:58:00',
        94.0,
        132,
        82,
        82.6,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        58,
        '2025-12-17 08:57:00',
        82.0,
        140,
        89,
        66.7,
        1.68,
        'Kirola egin ondoren.'
    ),
    (
        59,
        '2025-12-17 10:39:00',
        130.0,
        115,
        86,
        64.0,
        1.73,
        'Baraualdian.'
    ),
    (
        60,
        '2025-12-17 07:42:00',
        114.0,
        128,
        90,
        77.5,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2025-12-17 10:00:00',
        101.0,
        130,
        84,
        73.7,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-12-17 10:01:00',
        134.0,
        133,
        84,
        81.9,
        1.80,
        'Baraualdian.'
    ),
    (
        66,
        '2025-12-17 08:21:00',
        115.0,
        129,
        83,
        74.7,
        1.59,
        'Dena ondo.'
    ),
    (
        67,
        '2025-12-17 10:46:00',
        101.0,
        126,
        80,
        72.6,
        1.72,
        'Gaur goizean neurtuta.'
    ),
    (
        68,
        '2025-12-17 08:32:00',
        101.0,
        128,
        73,
        61.9,
        1.85,
        'Gosariaren ondoren.'
    ),
    (
        70,
        '2025-12-17 10:39:00',
        92.0,
        116,
        75,
        74.4,
        1.70,
        'Dena ondo.'
    ),
    (
        72,
        '2025-12-17 07:20:00',
        119.0,
        128,
        77,
        91.2,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        73,
        '2025-12-17 10:25:00',
        124.0,
        126,
        81,
        95.5,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2025-12-17 07:39:00',
        107.0,
        130,
        90,
        63.1,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2025-12-17 07:30:00',
        131.0,
        117,
        83,
        66.2,
        1.69,
        'Baraualdian.'
    ),
    (
        77,
        '2025-12-17 09:01:00',
        128.0,
        140,
        93,
        67.2,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2025-12-17 07:19:00',
        89.0,
        122,
        82,
        62.9,
        1.61,
        'Dena ondo.'
    ),
    (
        79,
        '2025-12-17 10:17:00',
        106.0,
        142,
        77,
        67.6,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2025-12-17 10:44:00',
        126.0,
        126,
        94,
        85.2,
        1.58,
        'Dena ondo.'
    ),
    (
        82,
        '2025-12-17 09:15:00',
        116.0,
        130,
        94,
        88.2,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2025-12-17 08:03:00',
        115.0,
        126,
        87,
        65.4,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2025-12-17 08:48:00',
        118.0,
        119,
        88,
        81.5,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        86,
        '2025-12-17 07:01:00',
        101.0,
        131,
        84,
        69.0,
        1.57,
        'Dena ondo.'
    ),
    (
        88,
        '2025-12-17 10:07:00',
        119.0,
        122,
        80,
        90.2,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2025-12-17 10:07:00',
        133.0,
        136,
        91,
        90.7,
        1.84,
        'Gaur goizean neurtuta.'
    ),
    (
        90,
        '2025-12-17 07:57:00',
        120.0,
        122,
        79,
        66.1,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        91,
        '2025-12-17 08:08:00',
        118.0,
        128,
        87,
        90.9,
        1.58,
        'Gosariaren ondoren.'
    ),
    (
        92,
        '2025-12-17 09:12:00',
        119.0,
        131,
        83,
        60.8,
        1.79,
        'Kirola egin ondoren.'
    ),
    (
        94,
        '2025-12-17 10:52:00',
        106.0,
        126,
        87,
        86.5,
        1.83,
        'Dena ondo.'
    ),
    (
        95,
        '2025-12-17 10:36:00',
        100.0,
        134,
        85,
        89.9,
        1.77,
        'Dena ondo.'
    ),
    (
        96,
        '2025-12-17 07:45:00',
        89.0,
        122,
        82,
        76.5,
        1.71,
        'Gosariaren ondoren.'
    ),
    (
        97,
        '2025-12-17 09:52:00',
        140.0,
        123,
        72,
        86.0,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        98,
        '2025-12-17 07:37:00',
        113.0,
        135,
        77,
        84.3,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        99,
        '2025-12-17 10:36:00',
        114.0,
        131,
        79,
        86.7,
        1.71,
        'Apur bat nekatuta.'
    ),
    (
        100,
        '2025-12-17 10:26:00',
        105.0,
        123,
        72,
        82.1,
        1.57,
        'Baraualdian.'
    ),
    (
        51,
        '2025-12-18 08:07:00',
        105.0,
        120,
        83,
        64.0,
        1.76,
        'Kirola egin ondoren.'
    ),
    (
        52,
        '2025-12-18 07:48:00',
        92.0,
        125,
        90,
        93.9,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        53,
        '2025-12-18 08:51:00',
        105.0,
        121,
        84,
        74.7,
        1.75,
        'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2025-12-18 07:02:00',
        85.0,
        139,
        84,
        90.1,
        1.61,
        'Dena ondo.'
    ),
    (
        57,
        '2025-12-18 07:48:00',
        109.0,
        131,
        91,
        83.9,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2025-12-18 09:55:00',
        100.0,
        116,
        86,
        72.8,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        62,
        '2025-12-18 08:46:00',
        99.0,
        126,
        77,
        67.0,
        1.56,
        'Dena ondo.'
    ),
    (
        63,
        '2025-12-18 08:41:00',
        140.0,
        139,
        81,
        80.3,
        1.80,
        'Dena ondo.'
    ),
    (
        64,
        '2025-12-18 09:33:00',
        123.0,
        129,
        79,
        96.0,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        66,
        '2025-12-18 10:18:00',
        104.0,
        124,
        85,
        75.1,
        1.59,
        'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2025-12-18 07:48:00',
        102.0,
        127,
        79,
        71.7,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        68,
        '2025-12-18 08:15:00',
        124.0,
        130,
        87,
        61.7,
        1.85,
        'Ondo sentitzen naiz.'
    ),
    (
        69,
        '2025-12-18 08:13:00',
        134.0,
        129,
        87,
        95.2,
        1.66,
        'Dena ondo.'
    ),
    (
        70,
        '2025-12-18 08:40:00',
        88.0,
        120,
        83,
        74.7,
        1.70,
        'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2025-12-18 10:29:00',
        108.0,
        121,
        75,
        88.8,
        1.63,
        'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2025-12-18 07:56:00',
        96.0,
        125,
        76,
        92.3,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        73,
        '2025-12-18 10:10:00',
        103.0,
        119,
        82,
        94.0,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        74,
        '2025-12-18 08:44:00',
        138.0,
        111,
        76,
        64.5,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2025-12-18 10:38:00',
        118.0,
        120,
        81,
        65.7,
        1.69,
        'Dena ondo.'
    ),
    (
        79,
        '2025-12-18 08:24:00',
        120.0,
        131,
        86,
        67.4,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2025-12-18 09:01:00',
        102.0,
        129,
        91,
        62.7,
        1.78,
        'Ondo sentitzen naiz.'
    ),
    (
        82,
        '2025-12-18 07:37:00',
        103.0,
        128,
        88,
        88.4,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        83,
        '2025-12-18 10:01:00',
        103.0,
        124,
        80,
        65.6,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2025-12-18 10:18:00',
        86.0,
        136,
        78,
        78.4,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2025-12-18 09:15:00',
        121.0,
        127,
        83,
        82.0,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        86,
        '2025-12-18 10:45:00',
        112.0,
        128,
        81,
        68.3,
        1.57,
        'Gosariaren ondoren.'
    ),
    (
        88,
        '2025-12-18 09:36:00',
        103.0,
        130,
        76,
        90.9,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        89,
        '2025-12-18 09:18:00',
        99.0,
        129,
        82,
        91.2,
        1.84,
        'Gosariaren ondoren.'
    ),
    (
        90,
        '2025-12-18 09:28:00',
        127.0,
        133,
        82,
        66.1,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        93,
        '2025-12-18 09:51:00',
        128.0,
        127,
        86,
        76.3,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        94,
        '2025-12-18 07:29:00',
        82.0,
        126,
        78,
        86.2,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2025-12-18 08:05:00',
        113.0,
        137,
        87,
        90.0,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        96,
        '2025-12-18 10:21:00',
        93.0,
        117,
        86,
        77.1,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        52,
        '2025-12-19 09:12:00',
        131.0,
        136,
        94,
        95.0,
        1.77,
        'Baraualdian.'
    ),
    (
        53,
        '2025-12-19 07:34:00',
        121.0,
        117,
        82,
        74.6,
        1.75,
        'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2025-12-19 07:35:00',
        95.0,
        130,
        84,
        87.6,
        1.60,
        'Dena ondo.'
    ),
    (
        55,
        '2025-12-19 10:08:00',
        114.0,
        137,
        78,
        81.8,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        58,
        '2025-12-19 07:23:00',
        90.0,
        129,
        82,
        67.6,
        1.68,
        'Ondo sentitzen naiz.'
    ),
    (
        59,
        '2025-12-19 07:27:00',
        124.0,
        124,
        81,
        62.5,
        1.73,
        'Apur bat nekatuta.'
    ),
    (
        60,
        '2025-12-19 07:44:00',
        118.0,
        115,
        92,
        77.2,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        61,
        '2025-12-19 10:37:00',
        111.0,
        130,
        79,
        72.1,
        1.83,
        'Baraualdian.'
    ),
    (
        62,
        '2025-12-19 09:03:00',
        131.0,
        127,
        84,
        66.5,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2025-12-19 10:55:00',
        120.0,
        138,
        85,
        94.9,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2025-12-19 09:54:00',
        123.0,
        124,
        91,
        91.0,
        1.55,
        'Baraualdian.'
    ),
    (
        66,
        '2025-12-19 07:47:00',
        106.0,
        116,
        76,
        74.5,
        1.59,
        'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2025-12-19 08:45:00',
        94.0,
        142,
        79,
        72.7,
        1.72,
        'Baraualdian.'
    ),
    (
        68,
        '2025-12-19 10:15:00',
        123.0,
        123,
        84,
        61.0,
        1.85,
        'Kirola egin ondoren.'
    ),
    (
        69,
        '2025-12-19 10:15:00',
        122.0,
        136,
        78,
        95.7,
        1.66,
        'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-12-19 10:33:00',
        85.0,
        128,
        82,
        74.5,
        1.70,
        'Gosariaren ondoren.'
    ),
    (
        71,
        '2025-12-19 08:20:00',
        110.0,
        126,
        72,
        90.0,
        1.63,
        'Apur bat nekatuta.'
    ),
    (
        72,
        '2025-12-19 09:08:00',
        113.0,
        131,
        89,
        92.9,
        1.69,
        'Dena ondo.'
    ),
    (
        73,
        '2025-12-19 09:44:00',
        136.0,
        131,
        81,
        94.4,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        74,
        '2025-12-19 08:40:00',
        128.0,
        111,
        89,
        64.9,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        75,
        '2025-12-19 07:03:00',
        129.0,
        126,
        71,
        61.0,
        1.65,
        'Kirola egin ondoren.'
    ),
    (
        76,
        '2025-12-19 09:08:00',
        95.0,
        126,
        90,
        65.5,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        77,
        '2025-12-19 10:02:00',
        97.0,
        130,
        79,
        67.2,
        1.67,
        'Dena ondo.'
    ),
    (
        78,
        '2025-12-19 09:45:00',
        101.0,
        117,
        83,
        63.7,
        1.61,
        'Baraualdian.'
    ),
    (
        79,
        '2025-12-19 07:52:00',
        100.0,
        140,
        78,
        66.7,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2025-12-19 08:18:00',
        114.0,
        130,
        86,
        63.1,
        1.78,
        'Dena ondo.'
    ),
    (
        81,
        '2025-12-19 10:07:00',
        92.0,
        130,
        83,
        86.5,
        1.58,
        'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2025-12-19 08:09:00',
        109.0,
        135,
        86,
        65.2,
        1.80,
        'Kirola egin ondoren.'
    ),
    (
        84,
        '2025-12-19 08:16:00',
        111.0,
        137,
        88,
        79.5,
        1.67,
        'Baraualdian.'
    ),
    (
        86,
        '2025-12-19 10:43:00',
        130.0,
        129,
        82,
        67.7,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        87,
        '2025-12-19 08:40:00',
        136.0,
        133,
        81,
        72.7,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2025-12-19 08:09:00',
        91.0,
        111,
        87,
        90.4,
        1.81,
        'Baraualdian.'
    ),
    (
        89,
        '2025-12-19 09:00:00',
        108.0,
        140,
        80,
        91.9,
        1.84,
        'Apur bat nekatuta.'
    ),
    (
        90,
        '2025-12-19 09:48:00',
        101.0,
        134,
        79,
        66.3,
        1.60,
        'Dena ondo.'
    ),
    (
        92,
        '2025-12-19 09:07:00',
        121.0,
        141,
        93,
        59.5,
        1.79,
        'Dena ondo.'
    ),
    (
        93,
        '2025-12-19 07:44:00',
        96.0,
        136,
        90,
        76.9,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2025-12-19 10:14:00',
        100.0,
        143,
        82,
        90.8,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2025-12-19 09:49:00',
        93.0,
        129,
        88,
        77.4,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2025-12-19 10:00:00',
        135.0,
        131,
        90,
        84.4,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        99,
        '2025-12-19 08:19:00',
        122.0,
        127,
        80,
        85.0,
        1.71,
        'Dena ondo.'
    ),
    (
        100,
        '2025-12-19 09:08:00',
        115.0,
        122,
        72,
        82.0,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2025-12-20 10:48:00',
        123.0,
        140,
        84,
        63.4,
        1.76,
        'Baraualdian.'
    ),
    (
        53,
        '2025-12-20 08:07:00',
        100.0,
        123,
        93,
        75.3,
        1.75,
        'Kirola egin ondoren.'
    ),
    (
        54,
        '2025-12-20 10:13:00',
        107.0,
        127,
        80,
        86.0,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        55,
        '2025-12-20 10:33:00',
        104.0,
        144,
        84,
        81.7,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        56,
        '2025-12-20 08:58:00',
        97.0,
        134,
        80,
        89.1,
        1.61,
        'Baraualdian.'
    ),
    (
        57,
        '2025-12-20 08:19:00',
        115.0,
        119,
        80,
        83.2,
        1.69,
        'Dena ondo.'
    ),
    (
        59,
        '2025-12-20 09:14:00',
        117.0,
        121,
        87,
        62.9,
        1.73,
        'Apur bat nekatuta.'
    ),
    (
        60,
        '2025-12-20 07:24:00',
        120.0,
        122,
        80,
        77.4,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2025-12-20 07:19:00',
        105.0,
        116,
        83,
        72.9,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        62,
        '2025-12-20 08:00:00',
        104.0,
        123,
        86,
        65.3,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        63,
        '2025-12-20 08:57:00',
        105.0,
        141,
        91,
        81.2,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2025-12-20 09:12:00',
        125.0,
        129,
        78,
        95.0,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        65,
        '2025-12-20 10:41:00',
        119.0,
        120,
        81,
        91.2,
        1.55,
        'Kirola egin ondoren.'
    ),
    (
        66,
        '2025-12-20 09:17:00',
        120.0,
        136,
        83,
        76.0,
        1.59,
        'Dena ondo.'
    ),
    (
        67,
        '2025-12-20 08:49:00',
        113.0,
        136,
        80,
        71.0,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        68,
        '2025-12-20 09:57:00',
        112.0,
        133,
        82,
        60.1,
        1.85,
        'Kirola egin ondoren.'
    ),
    (
        69,
        '2025-12-20 10:52:00',
        111.0,
        132,
        84,
        95.8,
        1.66,
        'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-12-20 10:34:00',
        110.0,
        130,
        86,
        75.9,
        1.70,
        'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2025-12-20 07:07:00',
        105.0,
        125,
        84,
        88.2,
        1.63,
        'Dena ondo.'
    ),
    (
        72,
        '2025-12-20 09:17:00',
        89.0,
        135,
        86,
        91.4,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2025-12-20 08:36:00',
        133.0,
        119,
        84,
        95.4,
        1.55,
        'Dena ondo.'
    ),
    (
        74,
        '2025-12-20 08:51:00',
        100.0,
        129,
        81,
        63.7,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        75,
        '2025-12-20 10:43:00',
        118.0,
        125,
        85,
        60.4,
        1.65,
        'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2025-12-20 07:19:00',
        95.0,
        117,
        89,
        65.0,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        79,
        '2025-12-20 09:45:00',
        127.0,
        134,
        74,
        67.7,
        1.67,
        'Baraualdian.'
    ),
    (
        80,
        '2025-12-20 08:50:00',
        123.0,
        125,
        81,
        62.5,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2025-12-20 07:41:00',
        90.0,
        123,
        83,
        86.2,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        83,
        '2025-12-20 07:13:00',
        112.0,
        122,
        83,
        65.3,
        1.80,
        'Kirola egin ondoren.'
    ),
    (
        84,
        '2025-12-20 09:13:00',
        94.0,
        134,
        86,
        79.3,
        1.67,
        'Baraualdian.'
    ),
    (
        86,
        '2025-12-20 08:52:00',
        117.0,
        139,
        74,
        67.3,
        1.57,
        'Gosariaren ondoren.'
    ),
    (
        87,
        '2025-12-20 08:29:00',
        121.0,
        130,
        86,
        72.4,
        1.61,
        'Baraualdian.'
    ),
    (
        89,
        '2025-12-20 09:34:00',
        106.0,
        140,
        92,
        91.6,
        1.84,
        'Apur bat nekatuta.'
    ),
    (
        92,
        '2025-12-20 07:41:00',
        134.0,
        129,
        92,
        60.6,
        1.79,
        'Apur bat nekatuta.'
    ),
    (
        93,
        '2025-12-20 08:22:00',
        131.0,
        136,
        81,
        75.5,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2025-12-20 09:37:00',
        87.0,
        129,
        85,
        87.4,
        1.83,
        'Dena ondo.'
    ),
    (
        95,
        '2025-12-20 09:22:00',
        113.0,
        125,
        85,
        89.0,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2025-12-20 08:22:00',
        98.0,
        127,
        79,
        76.4,
        1.71,
        'Ondo sentitzen naiz.'
    ),
    (
        97,
        '2025-12-20 10:19:00',
        113.0,
        128,
        76,
        87.4,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        98,
        '2025-12-20 10:23:00',
        138.0,
        127,
        83,
        83.5,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        100,
        '2025-12-20 09:33:00',
        114.0,
        135,
        77,
        81.6,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        51,
        '2025-12-21 09:37:00',
        110.0,
        140,
        80,
        63.9,
        1.76,
        'Baraualdian.'
    ),
    (
        52,
        '2025-12-21 09:36:00',
        92.0,
        137,
        80,
        93.7,
        1.77,
        'Baraualdian.'
    ),
    (
        53,
        '2025-12-21 09:31:00',
        108.0,
        120,
        87,
        74.6,
        1.75,
        'Ondo sentitzen naiz.'
    ),
    (
        54,
        '2025-12-21 09:38:00',
        124.0,
        135,
        74,
        87.4,
        1.60,
        'Baraualdian.'
    ),
    (
        55,
        '2025-12-21 08:45:00',
        100.0,
        132,
        86,
        80.4,
        1.76,
        'Ondo sentitzen naiz.'
    ),
    (
        57,
        '2025-12-21 07:50:00',
        85.0,
        131,
        79,
        82.3,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        58,
        '2025-12-21 09:05:00',
        93.0,
        128,
        84,
        67.1,
        1.68,
        'Apur bat nekatuta.'
    ),
    (
        59,
        '2025-12-21 10:27:00',
        118.0,
        117,
        93,
        62.5,
        1.73,
        'Apur bat nekatuta.'
    ),
    (
        61,
        '2025-12-21 07:13:00',
        111.0,
        130,
        90,
        73.2,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        62,
        '2025-12-21 08:28:00',
        102.0,
        126,
        80,
        66.7,
        1.56,
        'Dena ondo.'
    ),
    (
        63,
        '2025-12-21 08:49:00',
        131.0,
        129,
        76,
        81.0,
        1.80,
        'Kirola egin ondoren.'
    ),
    (
        64,
        '2025-12-21 10:41:00',
        111.0,
        124,
        73,
        94.1,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2025-12-21 08:54:00',
        109.0,
        132,
        80,
        71.9,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        68,
        '2025-12-21 08:53:00',
        120.0,
        123,
        74,
        60.7,
        1.85,
        'Baraualdian.'
    ),
    (
        69,
        '2025-12-21 10:57:00',
        108.0,
        132,
        78,
        95.1,
        1.66,
        'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2025-12-21 08:39:00',
        128.0,
        131,
        80,
        88.9,
        1.63,
        'Baraualdian.'
    ),
    (
        74,
        '2025-12-21 08:24:00',
        105.0,
        124,
        83,
        64.3,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        76,
        '2025-12-21 08:08:00',
        105.0,
        111,
        89,
        66.1,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        77,
        '2025-12-21 08:05:00',
        97.0,
        141,
        78,
        67.9,
        1.67,
        'Dena ondo.'
    ),
    (
        78,
        '2025-12-21 07:30:00',
        121.0,
        130,
        80,
        63.9,
        1.61,
        'Baraualdian.'
    ),
    (
        79,
        '2025-12-21 09:24:00',
        127.0,
        138,
        88,
        68.0,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        80,
        '2025-12-21 09:47:00',
        110.0,
        121,
        87,
        62.4,
        1.78,
        'Gosariaren ondoren.'
    ),
    (
        81,
        '2025-12-21 10:47:00',
        114.0,
        132,
        94,
        85.1,
        1.58,
        'Apur bat nekatuta.'
    ),
    (
        82,
        '2025-12-21 08:20:00',
        113.0,
        129,
        94,
        88.2,
        1.77,
        'Dena ondo.'
    ),
    (
        83,
        '2025-12-21 09:50:00',
        104.0,
        130,
        79,
        65.8,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2025-12-21 07:02:00',
        107.0,
        129,
        87,
        78.2,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        85,
        '2025-12-21 07:31:00',
        91.0,
        131,
        79,
        81.6,
        1.72,
        'Gaur goizean neurtuta.'
    ),
    (
        86,
        '2025-12-21 07:57:00',
        128.0,
        127,
        77,
        68.2,
        1.57,
        'Dena ondo.'
    ),
    (
        87,
        '2025-12-21 07:28:00',
        131.0,
        124,
        75,
        73.4,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        88,
        '2025-12-21 08:12:00',
        108.0,
        123,
        86,
        90.9,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        90,
        '2025-12-21 07:31:00',
        102.0,
        127,
        80,
        65.8,
        1.60,
        'Dena ondo.'
    ),
    (
        91,
        '2025-12-21 08:40:00',
        114.0,
        132,
        84,
        90.1,
        1.58,
        'Kirola egin ondoren.'
    ),
    (
        92,
        '2025-12-21 08:20:00',
        125.0,
        129,
        92,
        59.8,
        1.79,
        'Apur bat nekatuta.'
    ),
    (
        93,
        '2025-12-21 10:05:00',
        103.0,
        125,
        92,
        76.8,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        94,
        '2025-12-21 10:15:00',
        92.0,
        137,
        79,
        86.5,
        1.83,
        'Kirola egin ondoren.'
    ),
    (
        95,
        '2025-12-21 10:55:00',
        114.0,
        131,
        78,
        90.5,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        96,
        '2025-12-21 09:40:00',
        92.0,
        132,
        87,
        76.7,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        97,
        '2025-12-21 07:00:00',
        100.0,
        120,
        71,
        86.9,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2025-12-21 10:32:00',
        104.0,
        122,
        75,
        84.3,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        99,
        '2025-12-21 08:06:00',
        114.0,
        133,
        87,
        85.8,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        51,
        '2025-12-22 10:25:00',
        116.0,
        139,
        84,
        64.5,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        52,
        '2025-12-22 10:48:00',
        111.0,
        118,
        81,
        93.6,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        53,
        '2025-12-22 07:15:00',
        118.0,
        116,
        85,
        75.2,
        1.75,
        'Kirola egin ondoren.'
    ),
    (
        54,
        '2025-12-22 08:02:00',
        121.0,
        126,
        82,
        87.5,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        55,
        '2025-12-22 09:08:00',
        99.0,
        132,
        75,
        80.7,
        1.76,
        'Kirola egin ondoren.'
    ),
    (
        56,
        '2025-12-22 10:37:00',
        94.0,
        143,
        80,
        89.0,
        1.61,
        'Baraualdian.'
    ),
    (
        58,
        '2025-12-22 08:00:00',
        97.0,
        133,
        79,
        66.2,
        1.68,
        'Dena ondo.'
    ),
    (
        59,
        '2025-12-22 10:49:00',
        117.0,
        115,
        85,
        63.2,
        1.73,
        'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2025-12-22 07:18:00',
        114.0,
        116,
        84,
        77.7,
        1.81,
        'Dena ondo.'
    ),
    (
        61,
        '2025-12-22 09:52:00',
        117.0,
        116,
        81,
        72.4,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        62,
        '2025-12-22 09:58:00',
        122.0,
        139,
        84,
        66.5,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-12-22 08:59:00',
        116.0,
        139,
        88,
        81.3,
        1.80,
        'Gosariaren ondoren.'
    ),
    (
        64,
        '2025-12-22 09:05:00',
        100.0,
        125,
        79,
        94.6,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        66,
        '2025-12-22 07:10:00',
        111.0,
        134,
        88,
        74.0,
        1.59,
        'Apur bat nekatuta.'
    ),
    (
        67,
        '2025-12-22 10:21:00',
        115.0,
        135,
        83,
        71.2,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        68,
        '2025-12-22 07:24:00',
        98.0,
        136,
        79,
        61.1,
        1.85,
        'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2025-12-22 08:34:00',
        83.0,
        136,
        90,
        74.7,
        1.70,
        'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2025-12-22 10:44:00',
        128.0,
        129,
        83,
        88.7,
        1.63,
        'Gosariaren ondoren.'
    ),
    (
        72,
        '2025-12-22 08:46:00',
        95.0,
        132,
        81,
        92.7,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        73,
        '2025-12-22 10:12:00',
        99.0,
        125,
        81,
        94.4,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2025-12-22 07:35:00',
        108.0,
        129,
        79,
        64.7,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2025-12-22 07:07:00',
        129.0,
        131,
        72,
        59.0,
        1.65,
        'Baraualdian.'
    ),
    (
        79,
        '2025-12-22 07:40:00',
        102.0,
        126,
        79,
        66.2,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        81,
        '2025-12-22 10:18:00',
        93.0,
        123,
        82,
        85.1,
        1.58,
        'Baraualdian.'
    ),
    (
        82,
        '2025-12-22 08:59:00',
        136.0,
        131,
        94,
        89.0,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        83,
        '2025-12-22 10:00:00',
        128.0,
        123,
        93,
        66.0,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        84,
        '2025-12-22 10:36:00',
        122.0,
        122,
        77,
        78.2,
        1.67,
        'Dena ondo.'
    ),
    (
        85,
        '2025-12-22 07:32:00',
        108.0,
        135,
        87,
        81.2,
        1.72,
        'Dena ondo.'
    ),
    (
        86,
        '2025-12-22 07:31:00',
        108.0,
        133,
        74,
        67.0,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        87,
        '2025-12-22 08:56:00',
        122.0,
        122,
        82,
        73.8,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        88,
        '2025-12-22 09:55:00',
        115.0,
        129,
        86,
        89.8,
        1.81,
        'Dena ondo.'
    ),
    (
        89,
        '2025-12-22 10:50:00',
        110.0,
        139,
        78,
        90.2,
        1.84,
        'Gosariaren ondoren.'
    ),
    (
        90,
        '2025-12-22 10:54:00',
        120.0,
        138,
        87,
        66.3,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        92,
        '2025-12-22 09:12:00',
        107.0,
        144,
        87,
        59.1,
        1.79,
        'Gosariaren ondoren.'
    ),
    (
        93,
        '2025-12-22 08:01:00',
        105.0,
        131,
        91,
        76.1,
        1.81,
        'Baraualdian.'
    ),
    (
        94,
        '2025-12-22 10:51:00',
        98.0,
        128,
        90,
        86.5,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        95,
        '2025-12-22 09:15:00',
        125.0,
        132,
        83,
        89.2,
        1.77,
        'Baraualdian.'
    ),
    (
        96,
        '2025-12-22 09:35:00',
        102.0,
        125,
        79,
        76.8,
        1.71,
        'Apur bat nekatuta.'
    ),
    (
        97,
        '2025-12-22 09:49:00',
        109.0,
        136,
        76,
        86.2,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        98,
        '2025-12-22 07:32:00',
        99.0,
        118,
        84,
        83.6,
        1.60,
        'Baraualdian.'
    ),
    (
        99,
        '2025-12-22 08:47:00',
        117.0,
        129,
        85,
        85.2,
        1.71,
        'Gosariaren ondoren.'
    ),
    (
        100,
        '2025-12-22 10:17:00',
        126.0,
        129,
        75,
        82.3,
        1.57,
        'Kirola egin ondoren.'
    ),
    (
        52,
        '2025-12-23 08:00:00',
        118.0,
        127,
        81,
        93.0,
        1.77,
        'Dena ondo.'
    ),
    (
        53,
        '2025-12-23 10:50:00',
        97.0,
        120,
        80,
        74.7,
        1.75,
        'Ondo sentitzen naiz.'
    ),
    (
        54,
        '2025-12-23 07:27:00',
        86.0,
        126,
        76,
        86.2,
        1.60,
        'Dena ondo.'
    ),
    (
        56,
        '2025-12-23 09:45:00',
        89.0,
        144,
        83,
        90.0,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        57,
        '2025-12-23 07:11:00',
        107.0,
        130,
        91,
        82.8,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2025-12-23 07:41:00',
        128.0,
        127,
        86,
        63.2,
        1.73,
        'Gosariaren ondoren.'
    ),
    (
        60,
        '2025-12-23 10:41:00',
        138.0,
        122,
        86,
        78.9,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2025-12-23 07:14:00',
        108.0,
        119,
        78,
        73.1,
        1.83,
        'Baraualdian.'
    ),
    (
        62,
        '2025-12-23 07:33:00',
        121.0,
        130,
        75,
        65.5,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        63,
        '2025-12-23 09:07:00',
        124.0,
        125,
        85,
        81.6,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2025-12-23 09:30:00',
        119.0,
        125,
        84,
        91.1,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        66,
        '2025-12-23 09:39:00',
        119.0,
        124,
        76,
        74.0,
        1.59,
        'Gosariaren ondoren.'
    ),
    (
        68,
        '2025-12-23 07:23:00',
        98.0,
        126,
        85,
        61.8,
        1.85,
        'Gosariaren ondoren.'
    ),
    (
        69,
        '2025-12-23 09:13:00',
        134.0,
        126,
        87,
        95.5,
        1.66,
        'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2025-12-23 08:14:00',
        106.0,
        130,
        88,
        74.1,
        1.70,
        'Dena ondo.'
    ),
    (
        71,
        '2025-12-23 07:28:00',
        104.0,
        123,
        76,
        89.5,
        1.63,
        'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2025-12-23 08:40:00',
        98.0,
        141,
        76,
        91.3,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2025-12-23 10:36:00',
        131.0,
        122,
        79,
        94.3,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        74,
        '2025-12-23 09:44:00',
        104.0,
        131,
        85,
        64.3,
        1.67,
        'Dena ondo.'
    ),
    (
        75,
        '2025-12-23 08:40:00',
        121.0,
        125,
        74,
        60.6,
        1.65,
        'Dena ondo.'
    ),
    (
        76,
        '2025-12-23 09:55:00',
        127.0,
        130,
        93,
        65.6,
        1.69,
        'Baraualdian.'
    ),
    (
        77,
        '2025-12-23 07:26:00',
        111.0,
        128,
        93,
        66.3,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        78,
        '2025-12-23 10:56:00',
        96.0,
        124,
        78,
        62.5,
        1.61,
        'Baraualdian.'
    ),
    (
        79,
        '2025-12-23 10:46:00',
        96.0,
        141,
        81,
        66.8,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        82,
        '2025-12-23 09:03:00',
        133.0,
        141,
        86,
        89.0,
        1.77,
        'Dena ondo.'
    ),
    (
        83,
        '2025-12-23 09:07:00',
        132.0,
        128,
        83,
        65.2,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2025-12-23 08:31:00',
        103.0,
        125,
        79,
        79.7,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        85,
        '2025-12-23 07:16:00',
        89.0,
        124,
        90,
        80.9,
        1.72,
        'Apur bat nekatuta.'
    ),
    (
        86,
        '2025-12-23 09:46:00',
        107.0,
        126,
        74,
        68.8,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2025-12-23 10:18:00',
        106.0,
        124,
        88,
        73.4,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        88,
        '2025-12-23 08:40:00',
        108.0,
        125,
        72,
        91.0,
        1.81,
        'Dena ondo.'
    ),
    (
        91,
        '2025-12-23 08:48:00',
        80.0,
        134,
        81,
        89.1,
        1.58,
        'Baraualdian.'
    ),
    (
        92,
        '2025-12-23 10:29:00',
        124.0,
        131,
        92,
        59.0,
        1.79,
        'Baraualdian.'
    ),
    (
        93,
        '2025-12-23 07:54:00',
        128.0,
        129,
        89,
        76.7,
        1.81,
        'Baraualdian.'
    ),
    (
        95,
        '2025-12-23 07:54:00',
        120.0,
        143,
        74,
        90.3,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        96,
        '2025-12-23 09:30:00',
        111.0,
        125,
        74,
        77.8,
        1.71,
        'Baraualdian.'
    ),
    (
        98,
        '2025-12-23 09:13:00',
        98.0,
        136,
        85,
        83.3,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        99,
        '2025-12-23 09:17:00',
        99.0,
        123,
        75,
        85.0,
        1.71,
        'Gosariaren ondoren.'
    ),
    (
        51,
        '2025-12-24 09:56:00',
        123.0,
        134,
        86,
        64.0,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2025-12-24 09:31:00',
        84.0,
        119,
        80,
        74.1,
        1.75,
        'Apur bat nekatuta.'
    ),
    (
        54,
        '2025-12-24 09:33:00',
        120.0,
        138,
        88,
        87.9,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        55,
        '2025-12-24 09:18:00',
        99.0,
        130,
        73,
        80.7,
        1.76,
        'Ondo sentitzen naiz.'
    ),
    (
        57,
        '2025-12-24 08:06:00',
        98.0,
        123,
        79,
        83.7,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        58,
        '2025-12-24 08:10:00',
        103.0,
        134,
        84,
        66.9,
        1.68,
        'Gosariaren ondoren.'
    ),
    (
        59,
        '2025-12-24 10:37:00',
        107.0,
        128,
        95,
        62.3,
        1.73,
        'Dena ondo.'
    ),
    (
        60,
        '2025-12-24 07:01:00',
        133.0,
        130,
        82,
        79.0,
        1.81,
        'Dena ondo.'
    ),
    (
        61,
        '2025-12-24 07:06:00',
        111.0,
        125,
        93,
        73.6,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        62,
        '2025-12-24 08:56:00',
        135.0,
        131,
        75,
        65.1,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2025-12-24 09:58:00',
        131.0,
        130,
        86,
        81.3,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        64,
        '2025-12-24 10:04:00',
        121.0,
        130,
        83,
        95.4,
        1.56,
        'Baraualdian.'
    ),
    (
        65,
        '2025-12-24 08:13:00',
        98.0,
        136,
        86,
        91.8,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2025-12-24 08:20:00',
        88.0,
        137,
        77,
        71.3,
        1.72,
        'Baraualdian.'
    ),
    (
        68,
        '2025-12-24 09:05:00',
        111.0,
        126,
        86,
        60.9,
        1.85,
        'Baraualdian.'
    ),
    (
        69,
        '2025-12-24 07:19:00',
        105.0,
        144,
        91,
        95.7,
        1.66,
        'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-12-24 10:26:00',
        91.0,
        136,
        80,
        75.9,
        1.70,
        'Baraualdian.'
    ),
    (
        71,
        '2025-12-24 07:17:00',
        119.0,
        138,
        79,
        88.0,
        1.63,
        'Baraualdian.'
    ),
    (
        73,
        '2025-12-24 09:01:00',
        126.0,
        130,
        79,
        95.7,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        74,
        '2025-12-24 09:33:00',
        119.0,
        127,
        78,
        63.0,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2025-12-24 10:31:00',
        133.0,
        129,
        83,
        59.6,
        1.65,
        'Baraualdian.'
    ),
    (
        76,
        '2025-12-24 07:57:00',
        111.0,
        116,
        88,
        66.9,
        1.69,
        'Baraualdian.'
    ),
    (
        77,
        '2025-12-24 09:56:00',
        133.0,
        125,
        79,
        66.9,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        78,
        '2025-12-24 08:02:00',
        85.0,
        131,
        73,
        64.0,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        81,
        '2025-12-24 09:35:00',
        116.0,
        121,
        88,
        86.9,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2025-12-24 08:55:00',
        119.0,
        133,
        93,
        88.0,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        83,
        '2025-12-24 10:31:00',
        120.0,
        117,
        80,
        64.7,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        85,
        '2025-12-24 08:20:00',
        101.0,
        139,
        82,
        81.4,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        86,
        '2025-12-24 07:23:00',
        114.0,
        139,
        81,
        68.8,
        1.57,
        'Kirola egin ondoren.'
    ),
    (
        87,
        '2025-12-24 08:08:00',
        130.0,
        129,
        74,
        73.2,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2025-12-24 08:38:00',
        92.0,
        117,
        76,
        89.8,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2025-12-24 07:11:00',
        103.0,
        144,
        82,
        59.4,
        1.79,
        'Gosariaren ondoren.'
    ),
    (
        93,
        '2025-12-24 10:58:00',
        98.0,
        133,
        84,
        76.2,
        1.81,
        'Dena ondo.'
    ),
    (
        95,
        '2025-12-24 07:01:00',
        134.0,
        143,
        86,
        89.6,
        1.77,
        'Baraualdian.'
    ),
    (
        96,
        '2025-12-24 09:55:00',
        90.0,
        120,
        80,
        76.0,
        1.71,
        'Dena ondo.'
    ),
    (
        97,
        '2025-12-24 10:11:00',
        108.0,
        124,
        78,
        86.2,
        1.56,
        'Baraualdian.'
    ),
    (
        98,
        '2025-12-24 08:19:00',
        116.0,
        129,
        83,
        83.2,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2025-12-24 07:16:00',
        97.0,
        136,
        72,
        83.0,
        1.57,
        'Dena ondo.'
    ),
    (
        54,
        '2025-12-25 09:02:00',
        117.0,
        137,
        78,
        86.4,
        1.60,
        'Baraualdian.'
    ),
    (
        55,
        '2025-12-25 08:41:00',
        125.0,
        139,
        75,
        80.5,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        57,
        '2025-12-25 08:01:00',
        80.0,
        136,
        94,
        83.9,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        58,
        '2025-12-25 09:31:00',
        111.0,
        136,
        84,
        67.9,
        1.68,
        'Baraualdian.'
    ),
    (
        59,
        '2025-12-25 09:17:00',
        123.0,
        129,
        86,
        62.3,
        1.73,
        'Kirola egin ondoren.'
    ),
    (
        60,
        '2025-12-25 09:53:00',
        125.0,
        116,
        86,
        78.6,
        1.81,
        'Dena ondo.'
    ),
    (
        61,
        '2025-12-25 10:21:00',
        130.0,
        123,
        80,
        73.2,
        1.83,
        'Gosariaren ondoren.'
    ),
    (
        62,
        '2025-12-25 07:45:00',
        109.0,
        130,
        72,
        66.1,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-12-25 10:25:00',
        104.0,
        126,
        90,
        81.7,
        1.80,
        'Dena ondo.'
    ),
    (
        64,
        '2025-12-25 08:04:00',
        112.0,
        139,
        81,
        94.2,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        65,
        '2025-12-25 10:37:00',
        102.0,
        121,
        91,
        91.2,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        66,
        '2025-12-25 08:04:00',
        128.0,
        125,
        91,
        74.0,
        1.59,
        'Baraualdian.'
    ),
    (
        67,
        '2025-12-25 07:18:00',
        86.0,
        128,
        85,
        73.0,
        1.72,
        'Gaur goizean neurtuta.'
    ),
    (
        68,
        '2025-12-25 10:46:00',
        96.0,
        140,
        82,
        60.1,
        1.85,
        'Ondo sentitzen naiz.'
    ),
    (
        69,
        '2025-12-25 07:22:00',
        94.0,
        137,
        87,
        95.7,
        1.66,
        'Ondo sentitzen naiz.'
    ),
    (
        70,
        '2025-12-25 07:44:00',
        84.0,
        124,
        85,
        74.7,
        1.70,
        'Gosariaren ondoren.'
    ),
    (
        72,
        '2025-12-25 07:03:00',
        108.0,
        127,
        83,
        92.0,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        73,
        '2025-12-25 09:07:00',
        129.0,
        129,
        78,
        94.3,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        74,
        '2025-12-25 09:50:00',
        121.0,
        122,
        82,
        63.7,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2025-12-25 07:50:00',
        101.0,
        138,
        74,
        59.5,
        1.65,
        'Dena ondo.'
    ),
    (
        78,
        '2025-12-25 09:36:00',
        117.0,
        131,
        84,
        63.9,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        79,
        '2025-12-25 08:37:00',
        110.0,
        133,
        77,
        66.4,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        80,
        '2025-12-25 10:52:00',
        92.0,
        136,
        92,
        62.8,
        1.78,
        'Baraualdian.'
    ),
    (
        82,
        '2025-12-25 09:56:00',
        116.0,
        135,
        86,
        89.8,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2025-12-25 08:47:00',
        136.0,
        119,
        92,
        64.1,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        84,
        '2025-12-25 10:59:00',
        105.0,
        134,
        77,
        78.3,
        1.67,
        'Dena ondo.'
    ),
    (
        85,
        '2025-12-25 08:27:00',
        96.0,
        126,
        86,
        80.9,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        86,
        '2025-12-25 07:17:00',
        103.0,
        143,
        81,
        68.4,
        1.57,
        'Baraualdian.'
    ),
    (
        87,
        '2025-12-25 09:05:00',
        131.0,
        133,
        88,
        73.0,
        1.61,
        'Baraualdian.'
    ),
    (
        88,
        '2025-12-25 09:21:00',
        108.0,
        113,
        83,
        90.6,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        89,
        '2025-12-25 07:59:00',
        134.0,
        137,
        91,
        91.6,
        1.84,
        'Kirola egin ondoren.'
    ),
    (
        90,
        '2025-12-25 07:46:00',
        124.0,
        132,
        79,
        65.7,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        91,
        '2025-12-25 08:58:00',
        81.0,
        127,
        83,
        90.9,
        1.58,
        'Gosariaren ondoren.'
    ),
    (
        92,
        '2025-12-25 09:58:00',
        132.0,
        132,
        80,
        61.0,
        1.79,
        'Gosariaren ondoren.'
    ),
    (
        93,
        '2025-12-25 09:35:00',
        120.0,
        132,
        92,
        76.9,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2025-12-25 10:27:00',
        105.0,
        128,
        85,
        87.1,
        1.83,
        'Kirola egin ondoren.'
    ),
    (
        95,
        '2025-12-25 08:53:00',
        124.0,
        131,
        82,
        89.0,
        1.77,
        'Baraualdian.'
    ),
    (
        96,
        '2025-12-25 07:25:00',
        113.0,
        131,
        81,
        76.1,
        1.71,
        'Dena ondo.'
    ),
    (
        97,
        '2025-12-25 07:59:00',
        113.0,
        135,
        75,
        88.0,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        98,
        '2025-12-25 10:05:00',
        119.0,
        132,
        77,
        84.4,
        1.60,
        'Baraualdian.'
    ),
    (
        100,
        '2025-12-25 08:49:00',
        103.0,
        136,
        83,
        82.8,
        1.57,
        'Gosariaren ondoren.'
    ),
    (
        51,
        '2025-12-26 07:29:00',
        90.0,
        128,
        93,
        63.6,
        1.76,
        'Gosariaren ondoren.'
    ),
    (
        52,
        '2025-12-26 09:43:00',
        109.0,
        122,
        81,
        95.0,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        53,
        '2025-12-26 10:20:00',
        90.0,
        113,
        92,
        74.0,
        1.75,
        'Kirola egin ondoren.'
    ),
    (
        54,
        '2025-12-26 08:17:00',
        114.0,
        135,
        80,
        86.9,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2025-12-26 07:57:00',
        123.0,
        142,
        79,
        81.0,
        1.76,
        'Kirola egin ondoren.'
    ),
    (
        56,
        '2025-12-26 07:03:00',
        109.0,
        139,
        83,
        89.1,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        57,
        '2025-12-26 07:33:00',
        99.0,
        119,
        82,
        82.1,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2025-12-26 07:26:00',
        93.0,
        138,
        81,
        66.5,
        1.68,
        'Ondo sentitzen naiz.'
    ),
    (
        60,
        '2025-12-26 09:34:00',
        129.0,
        128,
        83,
        77.2,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        61,
        '2025-12-26 08:05:00',
        134.0,
        126,
        88,
        72.5,
        1.83,
        'Dena ondo.'
    ),
    (
        63,
        '2025-12-26 10:00:00',
        108.0,
        136,
        90,
        81.2,
        1.80,
        'Dena ondo.'
    ),
    (
        64,
        '2025-12-26 08:18:00',
        111.0,
        127,
        85,
        94.3,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        66,
        '2025-12-26 10:26:00',
        123.0,
        120,
        78,
        74.1,
        1.59,
        'Gosariaren ondoren.'
    ),
    (
        67,
        '2025-12-26 09:13:00',
        84.0,
        134,
        88,
        72.7,
        1.72,
        'Gaur goizean neurtuta.'
    ),
    (
        68,
        '2025-12-26 09:46:00',
        119.0,
        138,
        72,
        60.0,
        1.85,
        'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2025-12-26 09:28:00',
        133.0,
        142,
        76,
        95.0,
        1.66,
        'Dena ondo.'
    ),
    (
        70,
        '2025-12-26 10:33:00',
        102.0,
        117,
        76,
        74.1,
        1.70,
        'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2025-12-26 07:41:00',
        109.0,
        129,
        86,
        64.8,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        75,
        '2025-12-26 07:48:00',
        126.0,
        126,
        77,
        60.6,
        1.65,
        'Kirola egin ondoren.'
    ),
    (
        78,
        '2025-12-26 10:49:00',
        90.0,
        121,
        84,
        63.8,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        79,
        '2025-12-26 07:16:00',
        119.0,
        142,
        74,
        66.4,
        1.67,
        'Baraualdian.'
    ),
    (
        80,
        '2025-12-26 07:32:00',
        110.0,
        131,
        90,
        62.5,
        1.78,
        'Baraualdian.'
    ),
    (
        81,
        '2025-12-26 07:33:00',
        119.0,
        129,
        80,
        85.6,
        1.58,
        'Gosariaren ondoren.'
    ),
    (
        82,
        '2025-12-26 10:16:00',
        130.0,
        124,
        80,
        89.2,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2025-12-26 10:22:00',
        128.0,
        119,
        93,
        64.2,
        1.80,
        'Dena ondo.'
    ),
    (
        85,
        '2025-12-26 07:20:00',
        99.0,
        120,
        80,
        80.5,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        86,
        '2025-12-26 08:01:00',
        113.0,
        132,
        76,
        67.1,
        1.57,
        'Kirola egin ondoren.'
    ),
    (
        88,
        '2025-12-26 10:47:00',
        108.0,
        121,
        73,
        89.6,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        89,
        '2025-12-26 07:38:00',
        111.0,
        138,
        89,
        91.7,
        1.84,
        'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2025-12-26 08:05:00',
        131.0,
        136,
        87,
        60.2,
        1.79,
        'Gosariaren ondoren.'
    ),
    (
        93,
        '2025-12-26 08:41:00',
        133.0,
        139,
        91,
        76.8,
        1.81,
        'Baraualdian.'
    ),
    (
        94,
        '2025-12-26 08:29:00',
        78.0,
        127,
        79,
        87.5,
        1.83,
        'Kirola egin ondoren.'
    ),
    (
        95,
        '2025-12-26 08:43:00',
        102.0,
        126,
        76,
        89.9,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        96,
        '2025-12-26 10:57:00',
        104.0,
        121,
        80,
        77.3,
        1.71,
        'Dena ondo.'
    ),
    (
        97,
        '2025-12-26 10:15:00',
        126.0,
        137,
        82,
        87.5,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2025-12-26 07:21:00',
        129.0,
        123,
        90,
        85.0,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        99,
        '2025-12-26 08:27:00',
        99.0,
        136,
        75,
        85.7,
        1.71,
        'Gosariaren ondoren.'
    ),
    (
        100,
        '2025-12-26 08:19:00',
        95.0,
        133,
        83,
        81.4,
        1.57,
        'Kirola egin ondoren.'
    ),
    (
        52,
        '2025-12-27 09:37:00',
        113.0,
        119,
        91,
        94.7,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2025-12-27 10:23:00',
        104.0,
        133,
        85,
        86.5,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        55,
        '2025-12-27 07:30:00',
        108.0,
        133,
        73,
        81.1,
        1.76,
        'Kirola egin ondoren.'
    ),
    (
        56,
        '2025-12-27 10:08:00',
        89.0,
        145,
        90,
        90.2,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        57,
        '2025-12-27 08:41:00',
        94.0,
        135,
        94,
        82.9,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2025-12-27 09:35:00',
        89.0,
        128,
        81,
        67.8,
        1.68,
        'Ondo sentitzen naiz.'
    ),
    (
        59,
        '2025-12-27 08:36:00',
        115.0,
        121,
        93,
        62.1,
        1.73,
        'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2025-12-27 09:27:00',
        124.0,
        131,
        90,
        77.1,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2025-12-27 07:27:00',
        114.0,
        112,
        86,
        73.4,
        1.83,
        'Baraualdian.'
    ),
    (
        62,
        '2025-12-27 08:03:00',
        122.0,
        131,
        71,
        66.2,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-12-27 08:26:00',
        111.0,
        133,
        90,
        81.2,
        1.80,
        'Dena ondo.'
    ),
    (
        64,
        '2025-12-27 10:48:00',
        112.0,
        136,
        81,
        95.8,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        65,
        '2025-12-27 07:11:00',
        127.0,
        123,
        85,
        90.9,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2025-12-27 09:44:00',
        125.0,
        129,
        78,
        74.6,
        1.59,
        'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2025-12-27 10:12:00',
        92.0,
        128,
        87,
        72.4,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        68,
        '2025-12-27 08:30:00',
        93.0,
        134,
        83,
        61.7,
        1.85,
        'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2025-12-27 10:04:00',
        112.0,
        126,
        80,
        94.9,
        1.66,
        'Baraualdian.'
    ),
    (
        71,
        '2025-12-27 08:55:00',
        139.0,
        129,
        71,
        89.6,
        1.63,
        'Kirola egin ondoren.'
    ),
    (
        72,
        '2025-12-27 10:46:00',
        108.0,
        125,
        86,
        92.1,
        1.69,
        'Baraualdian.'
    ),
    (
        75,
        '2025-12-27 10:30:00',
        129.0,
        130,
        85,
        59.4,
        1.65,
        'Gosariaren ondoren.'
    ),
    (
        76,
        '2025-12-27 10:25:00',
        117.0,
        121,
        93,
        66.8,
        1.69,
        'Baraualdian.'
    ),
    (
        78,
        '2025-12-27 07:44:00',
        90.0,
        119,
        85,
        62.8,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        79,
        '2025-12-27 10:47:00',
        100.0,
        138,
        80,
        66.5,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2025-12-27 09:47:00',
        90.0,
        134,
        81,
        62.3,
        1.78,
        'Ondo sentitzen naiz.'
    ),
    (
        81,
        '2025-12-27 09:10:00',
        126.0,
        134,
        83,
        86.1,
        1.58,
        'Gosariaren ondoren.'
    ),
    (
        82,
        '2025-12-27 08:20:00',
        111.0,
        138,
        89,
        88.8,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        83,
        '2025-12-27 09:39:00',
        107.0,
        122,
        91,
        64.8,
        1.80,
        'Kirola egin ondoren.'
    ),
    (
        84,
        '2025-12-27 08:43:00',
        86.0,
        127,
        84,
        78.7,
        1.67,
        'Dena ondo.'
    ),
    (
        85,
        '2025-12-27 10:54:00',
        88.0,
        124,
        86,
        81.2,
        1.72,
        'Baraualdian.'
    ),
    (
        86,
        '2025-12-27 08:37:00',
        122.0,
        133,
        74,
        69.0,
        1.57,
        'Gosariaren ondoren.'
    ),
    (
        88,
        '2025-12-27 07:05:00',
        95.0,
        113,
        85,
        89.2,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        90,
        '2025-12-27 09:21:00',
        95.0,
        122,
        91,
        65.1,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        91,
        '2025-12-27 08:09:00',
        92.0,
        143,
        91,
        90.8,
        1.58,
        'Dena ondo.'
    ),
    (
        92,
        '2025-12-27 08:22:00',
        104.0,
        130,
        85,
        59.0,
        1.79,
        'Gosariaren ondoren.'
    ),
    (
        93,
        '2025-12-27 08:57:00',
        134.0,
        137,
        94,
        75.0,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        94,
        '2025-12-27 10:51:00',
        80.0,
        133,
        85,
        87.2,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        95,
        '2025-12-27 10:31:00',
        114.0,
        141,
        74,
        89.9,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        96,
        '2025-12-27 10:36:00',
        110.0,
        131,
        81,
        77.5,
        1.71,
        'Dena ondo.'
    ),
    (
        97,
        '2025-12-27 08:24:00',
        106.0,
        126,
        75,
        86.3,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        98,
        '2025-12-27 09:42:00',
        100.0,
        138,
        83,
        83.0,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        99,
        '2025-12-27 10:43:00',
        103.0,
        136,
        76,
        85.6,
        1.71,
        'Baraualdian.'
    ),
    (
        100,
        '2025-12-27 08:16:00',
        100.0,
        134,
        83,
        81.1,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        52,
        '2025-12-28 08:33:00',
        102.0,
        133,
        88,
        94.0,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        53,
        '2025-12-28 08:35:00',
        102.0,
        116,
        92,
        75.2,
        1.75,
        'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2025-12-28 10:53:00',
        92.0,
        136,
        84,
        86.1,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2025-12-28 08:03:00',
        113.0,
        135,
        82,
        80.7,
        1.76,
        'Gosariaren ondoren.'
    ),
    (
        56,
        '2025-12-28 07:09:00',
        84.0,
        128,
        91,
        90.6,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        57,
        '2025-12-28 08:16:00',
        87.0,
        129,
        85,
        84.0,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2025-12-28 08:53:00',
        131.0,
        115,
        93,
        62.3,
        1.73,
        'Gosariaren ondoren.'
    ),
    (
        60,
        '2025-12-28 08:36:00',
        99.0,
        118,
        82,
        77.5,
        1.81,
        'Dena ondo.'
    ),
    (
        61,
        '2025-12-28 07:46:00',
        115.0,
        111,
        82,
        73.9,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        62,
        '2025-12-28 07:56:00',
        125.0,
        123,
        83,
        66.4,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        64,
        '2025-12-28 07:23:00',
        129.0,
        131,
        88,
        94.9,
        1.56,
        'Baraualdian.'
    ),
    (
        65,
        '2025-12-28 08:14:00',
        105.0,
        137,
        87,
        90.2,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2025-12-28 09:04:00',
        103.0,
        117,
        81,
        75.7,
        1.59,
        'Dena ondo.'
    ),
    (
        67,
        '2025-12-28 10:59:00',
        98.0,
        125,
        84,
        71.9,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        68,
        '2025-12-28 08:18:00',
        121.0,
        127,
        73,
        60.1,
        1.85,
        'Baraualdian.'
    ),
    (
        69,
        '2025-12-28 10:31:00',
        116.0,
        126,
        76,
        94.4,
        1.66,
        'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2025-12-28 09:41:00',
        91.0,
        117,
        79,
        74.3,
        1.70,
        'Apur bat nekatuta.'
    ),
    (
        71,
        '2025-12-28 07:28:00',
        101.0,
        134,
        72,
        89.5,
        1.63,
        'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2025-12-28 09:23:00',
        120.0,
        136,
        78,
        92.9,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2025-12-28 07:43:00',
        105.0,
        118,
        83,
        95.6,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        74,
        '2025-12-28 08:08:00',
        99.0,
        114,
        86,
        63.0,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        75,
        '2025-12-28 08:22:00',
        109.0,
        127,
        76,
        59.3,
        1.65,
        'Gosariaren ondoren.'
    ),
    (
        76,
        '2025-12-28 10:25:00',
        113.0,
        130,
        84,
        65.7,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2025-12-28 10:31:00',
        106.0,
        120,
        86,
        63.7,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        79,
        '2025-12-28 08:57:00',
        96.0,
        125,
        82,
        66.5,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2025-12-28 07:01:00',
        89.0,
        138,
        85,
        63.3,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2025-12-28 10:42:00',
        104.0,
        136,
        82,
        86.6,
        1.58,
        'Gosariaren ondoren.'
    ),
    (
        83,
        '2025-12-28 10:02:00',
        96.0,
        130,
        94,
        65.5,
        1.80,
        'Dena ondo.'
    ),
    (
        84,
        '2025-12-28 10:05:00',
        122.0,
        136,
        84,
        79.6,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        85,
        '2025-12-28 08:48:00',
        120.0,
        132,
        88,
        81.9,
        1.72,
        'Apur bat nekatuta.'
    ),
    (
        87,
        '2025-12-28 10:18:00',
        106.0,
        125,
        74,
        72.5,
        1.61,
        'Dena ondo.'
    ),
    (
        88,
        '2025-12-28 08:15:00',
        93.0,
        122,
        84,
        89.2,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        89,
        '2025-12-28 07:09:00',
        110.0,
        139,
        79,
        91.8,
        1.84,
        'Ondo sentitzen naiz.'
    ),
    (
        90,
        '2025-12-28 08:24:00',
        114.0,
        130,
        82,
        65.0,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        93,
        '2025-12-28 07:40:00',
        98.0,
        125,
        94,
        76.3,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        94,
        '2025-12-28 09:32:00',
        109.0,
        135,
        79,
        87.3,
        1.83,
        'Dena ondo.'
    ),
    (
        95,
        '2025-12-28 07:11:00',
        126.0,
        125,
        75,
        89.9,
        1.77,
        'Dena ondo.'
    ),
    (
        97,
        '2025-12-28 08:20:00',
        111.0,
        136,
        80,
        86.7,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        98,
        '2025-12-28 07:36:00',
        127.0,
        129,
        78,
        84.7,
        1.60,
        'Dena ondo.'
    ),
    (
        99,
        '2025-12-28 09:24:00',
        100.0,
        121,
        86,
        86.1,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        100,
        '2025-12-28 07:32:00',
        97.0,
        133,
        73,
        82.9,
        1.57,
        'Baraualdian.'
    ),
    (
        52,
        '2025-12-29 07:32:00',
        100.0,
        119,
        93,
        93.8,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        53,
        '2025-12-29 09:25:00',
        112.0,
        130,
        79,
        74.0,
        1.75,
        'Baraualdian.'
    ),
    (
        54,
        '2025-12-29 08:36:00',
        89.0,
        126,
        78,
        86.2,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        55,
        '2025-12-29 07:31:00',
        134.0,
        124,
        81,
        81.6,
        1.76,
        'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2025-12-29 08:15:00',
        101.0,
        138,
        93,
        90.4,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        58,
        '2025-12-29 07:55:00',
        87.0,
        132,
        84,
        66.8,
        1.68,
        'Baraualdian.'
    ),
    (
        59,
        '2025-12-29 07:13:00',
        94.0,
        122,
        95,
        62.6,
        1.73,
        'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2025-12-29 07:19:00',
        101.0,
        123,
        80,
        78.6,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        61,
        '2025-12-29 08:14:00',
        120.0,
        113,
        93,
        72.9,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-12-29 07:54:00',
        113.0,
        138,
        83,
        81.9,
        1.80,
        'Dena ondo.'
    ),
    (
        64,
        '2025-12-29 08:19:00',
        132.0,
        126,
        86,
        95.6,
        1.56,
        'Dena ondo.'
    ),
    (
        66,
        '2025-12-29 09:42:00',
        123.0,
        120,
        88,
        75.9,
        1.59,
        'Dena ondo.'
    ),
    (
        67,
        '2025-12-29 08:01:00',
        83.0,
        130,
        81,
        72.5,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        69,
        '2025-12-29 09:59:00',
        132.0,
        125,
        88,
        94.1,
        1.66,
        'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-12-29 08:17:00',
        92.0,
        122,
        75,
        75.5,
        1.70,
        'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2025-12-29 08:14:00',
        124.0,
        135,
        77,
        89.5,
        1.63,
        'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2025-12-29 08:02:00',
        113.0,
        138,
        74,
        92.8,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        73,
        '2025-12-29 07:50:00',
        111.0,
        123,
        73,
        95.4,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2025-12-29 08:35:00',
        121.0,
        117,
        88,
        64.0,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        75,
        '2025-12-29 08:31:00',
        111.0,
        128,
        82,
        59.6,
        1.65,
        'Gosariaren ondoren.'
    ),
    (
        77,
        '2025-12-29 09:24:00',
        103.0,
        126,
        88,
        66.1,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        78,
        '2025-12-29 09:14:00',
        121.0,
        117,
        78,
        62.2,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        81,
        '2025-12-29 09:15:00',
        115.0,
        122,
        95,
        86.2,
        1.58,
        'Baraualdian.'
    ),
    (
        82,
        '2025-12-29 07:15:00',
        102.0,
        125,
        84,
        89.1,
        1.77,
        'Dena ondo.'
    ),
    (
        83,
        '2025-12-29 07:05:00',
        131.0,
        125,
        86,
        65.9,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        85,
        '2025-12-29 08:16:00',
        115.0,
        131,
        87,
        80.5,
        1.72,
        'Apur bat nekatuta.'
    ),
    (
        86,
        '2025-12-29 10:11:00',
        123.0,
        126,
        79,
        68.8,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        87,
        '2025-12-29 07:41:00',
        122.0,
        133,
        87,
        72.8,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        88,
        '2025-12-29 09:44:00',
        118.0,
        111,
        80,
        91.0,
        1.81,
        'Baraualdian.'
    ),
    (
        90,
        '2025-12-29 07:12:00',
        126.0,
        130,
        88,
        66.1,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        91,
        '2025-12-29 07:39:00',
        101.0,
        127,
        76,
        89.6,
        1.58,
        'Baraualdian.'
    ),
    (
        92,
        '2025-12-29 08:15:00',
        113.0,
        127,
        83,
        59.3,
        1.79,
        'Dena ondo.'
    ),
    (
        93,
        '2025-12-29 09:33:00',
        113.0,
        132,
        86,
        76.4,
        1.81,
        'Dena ondo.'
    ),
    (
        94,
        '2025-12-29 07:41:00',
        82.0,
        122,
        87,
        86.8,
        1.83,
        'Baraualdian.'
    ),
    (
        95,
        '2025-12-29 07:11:00',
        119.0,
        144,
        86,
        90.2,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        96,
        '2025-12-29 07:54:00',
        108.0,
        129,
        87,
        77.9,
        1.71,
        'Ondo sentitzen naiz.'
    ),
    (
        97,
        '2025-12-29 08:08:00',
        119.0,
        126,
        79,
        87.1,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        98,
        '2025-12-29 07:41:00',
        120.0,
        120,
        88,
        85.0,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        100,
        '2025-12-29 09:10:00',
        111.0,
        125,
        78,
        82.6,
        1.57,
        'Dena ondo.'
    ),
    (
        51,
        '2025-12-30 09:02:00',
        100.0,
        122,
        88,
        65.0,
        1.76,
        'Gosariaren ondoren.'
    ),
    (
        52,
        '2025-12-30 07:50:00',
        104.0,
        128,
        85,
        93.8,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        53,
        '2025-12-30 09:08:00',
        115.0,
        119,
        91,
        74.2,
        1.75,
        'Baraualdian.'
    ),
    (
        54,
        '2025-12-30 08:44:00',
        98.0,
        143,
        81,
        86.8,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        55,
        '2025-12-30 10:27:00',
        121.0,
        139,
        82,
        80.4,
        1.76,
        'Dena ondo.'
    ),
    (
        56,
        '2025-12-30 10:07:00',
        84.0,
        131,
        91,
        89.9,
        1.61,
        'Dena ondo.'
    ),
    (
        57,
        '2025-12-30 10:06:00',
        99.0,
        124,
        83,
        82.0,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        58,
        '2025-12-30 10:04:00',
        103.0,
        125,
        76,
        67.5,
        1.68,
        'Baraualdian.'
    ),
    (
        59,
        '2025-12-30 09:14:00',
        125.0,
        129,
        87,
        63.9,
        1.73,
        'Dena ondo.'
    ),
    (
        60,
        '2025-12-30 07:55:00',
        115.0,
        128,
        94,
        78.7,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        61,
        '2025-12-30 09:12:00',
        118.0,
        129,
        88,
        72.1,
        1.83,
        'Gosariaren ondoren.'
    ),
    (
        62,
        '2025-12-30 07:24:00',
        132.0,
        123,
        79,
        66.1,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        63,
        '2025-12-30 08:48:00',
        125.0,
        129,
        88,
        80.8,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        64,
        '2025-12-30 09:44:00',
        126.0,
        131,
        81,
        95.9,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        65,
        '2025-12-30 10:38:00',
        124.0,
        135,
        76,
        91.5,
        1.55,
        'Dena ondo.'
    ),
    (
        66,
        '2025-12-30 10:00:00',
        108.0,
        122,
        84,
        74.7,
        1.59,
        'Gosariaren ondoren.'
    ),
    (
        67,
        '2025-12-30 08:56:00',
        121.0,
        134,
        82,
        72.8,
        1.72,
        'Apur bat nekatuta.'
    ),
    (
        69,
        '2025-12-30 09:12:00',
        102.0,
        143,
        82,
        94.6,
        1.66,
        'Apur bat nekatuta.'
    ),
    (
        70,
        '2025-12-30 10:30:00',
        87.0,
        119,
        80,
        75.3,
        1.70,
        'Gosariaren ondoren.'
    ),
    (
        71,
        '2025-12-30 07:28:00',
        136.0,
        140,
        83,
        88.9,
        1.63,
        'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2025-12-30 09:40:00',
        107.0,
        135,
        87,
        91.6,
        1.69,
        'Dena ondo.'
    ),
    (
        73,
        '2025-12-30 08:08:00',
        124.0,
        123,
        84,
        94.3,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        74,
        '2025-12-30 10:19:00',
        135.0,
        127,
        84,
        63.8,
        1.67,
        'Dena ondo.'
    ),
    (
        76,
        '2025-12-30 08:02:00',
        118.0,
        123,
        89,
        65.6,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        78,
        '2025-12-30 08:39:00',
        93.0,
        135,
        74,
        63.4,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        79,
        '2025-12-30 09:54:00',
        128.0,
        132,
        82,
        67.7,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2025-12-30 07:03:00',
        111.0,
        129,
        81,
        64.0,
        1.78,
        'Ondo sentitzen naiz.'
    ),
    (
        81,
        '2025-12-30 10:16:00',
        115.0,
        125,
        93,
        85.5,
        1.58,
        'Dena ondo.'
    ),
    (
        83,
        '2025-12-30 08:24:00',
        96.0,
        136,
        82,
        65.6,
        1.80,
        'Baraualdian.'
    ),
    (
        87,
        '2025-12-30 10:46:00',
        134.0,
        136,
        85,
        72.5,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        88,
        '2025-12-30 10:06:00',
        118.0,
        121,
        86,
        90.7,
        1.81,
        'Baraualdian.'
    ),
    (
        89,
        '2025-12-30 08:09:00',
        130.0,
        137,
        89,
        90.8,
        1.84,
        'Gosariaren ondoren.'
    ),
    (
        90,
        '2025-12-30 07:11:00',
        90.0,
        133,
        84,
        66.9,
        1.60,
        'Baraualdian.'
    ),
    (
        91,
        '2025-12-30 09:04:00',
        118.0,
        135,
        88,
        89.4,
        1.58,
        'Baraualdian.'
    ),
    (
        92,
        '2025-12-30 09:07:00',
        129.0,
        127,
        92,
        59.7,
        1.79,
        'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2025-12-30 07:20:00',
        116.0,
        124,
        88,
        76.5,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        94,
        '2025-12-30 07:52:00',
        103.0,
        129,
        77,
        87.3,
        1.83,
        'Baraualdian.'
    ),
    (
        95,
        '2025-12-30 08:33:00',
        120.0,
        136,
        82,
        91.0,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        97,
        '2025-12-30 08:43:00',
        126.0,
        125,
        82,
        86.2,
        1.56,
        'Dena ondo.'
    ),
    (
        98,
        '2025-12-30 07:11:00',
        98.0,
        131,
        79,
        84.5,
        1.60,
        'Baraualdian.'
    ),
    (
        99,
        '2025-12-30 07:39:00',
        96.0,
        123,
        73,
        86.3,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        100,
        '2025-12-30 08:27:00',
        115.0,
        138,
        82,
        81.2,
        1.57,
        'Gosariaren ondoren.'
    ),
    (
        51,
        '2025-12-31 09:24:00',
        98.0,
        124,
        88,
        63.1,
        1.76,
        'Dena ondo.'
    ),
    (
        52,
        '2025-12-31 07:07:00',
        106.0,
        136,
        79,
        93.4,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        53,
        '2025-12-31 09:49:00',
        93.0,
        132,
        89,
        74.8,
        1.75,
        'Kirola egin ondoren.'
    ),
    (
        54,
        '2025-12-31 09:54:00',
        109.0,
        134,
        80,
        86.8,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        55,
        '2025-12-31 07:30:00',
        128.0,
        128,
        75,
        80.9,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        56,
        '2025-12-31 07:12:00',
        84.0,
        143,
        94,
        90.0,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        57,
        '2025-12-31 07:05:00',
        81.0,
        130,
        86,
        82.3,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        58,
        '2025-12-31 10:00:00',
        103.0,
        134,
        82,
        66.4,
        1.68,
        'Gosariaren ondoren.'
    ),
    (
        59,
        '2025-12-31 09:09:00',
        103.0,
        112,
        94,
        63.4,
        1.73,
        'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2025-12-31 08:16:00',
        103.0,
        119,
        90,
        77.0,
        1.81,
        'Dena ondo.'
    ),
    (
        61,
        '2025-12-31 10:41:00',
        134.0,
        128,
        83,
        72.9,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        63,
        '2025-12-31 07:39:00',
        101.0,
        125,
        87,
        80.6,
        1.80,
        'Kirola egin ondoren.'
    ),
    (
        64,
        '2025-12-31 09:48:00',
        116.0,
        128,
        79,
        94.9,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        65,
        '2025-12-31 10:15:00',
        98.0,
        133,
        87,
        92.0,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        66,
        '2025-12-31 10:00:00',
        92.0,
        136,
        89,
        75.5,
        1.59,
        'Gosariaren ondoren.'
    ),
    (
        69,
        '2025-12-31 07:36:00',
        109.0,
        141,
        86,
        94.1,
        1.66,
        'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2025-12-31 09:25:00',
        84.0,
        135,
        83,
        75.4,
        1.70,
        'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2025-12-31 07:24:00',
        100.0,
        131,
        81,
        88.2,
        1.63,
        'Dena ondo.'
    ),
    (
        74,
        '2025-12-31 10:18:00',
        130.0,
        120,
        86,
        64.3,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        75,
        '2025-12-31 08:55:00',
        102.0,
        126,
        71,
        60.3,
        1.65,
        'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2025-12-31 09:22:00',
        96.0,
        116,
        94,
        65.9,
        1.69,
        'Dena ondo.'
    ),
    (
        77,
        '2025-12-31 08:07:00',
        135.0,
        128,
        92,
        66.1,
        1.67,
        'Baraualdian.'
    ),
    (
        78,
        '2025-12-31 07:19:00',
        89.0,
        123,
        81,
        63.2,
        1.61,
        'Dena ondo.'
    ),
    (
        79,
        '2025-12-31 08:06:00',
        110.0,
        128,
        80,
        66.9,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        80,
        '2025-12-31 07:54:00',
        103.0,
        127,
        88,
        62.3,
        1.78,
        'Baraualdian.'
    ),
    (
        82,
        '2025-12-31 10:52:00',
        108.0,
        141,
        89,
        89.5,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        85,
        '2025-12-31 09:26:00',
        112.0,
        125,
        80,
        81.0,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        86,
        '2025-12-31 08:36:00',
        121.0,
        124,
        80,
        69.0,
        1.57,
        'Dena ondo.'
    ),
    (
        87,
        '2025-12-31 09:29:00',
        126.0,
        135,
        77,
        73.4,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        88,
        '2025-12-31 07:35:00',
        111.0,
        123,
        73,
        90.3,
        1.81,
        'Baraualdian.'
    ),
    (
        90,
        '2025-12-31 08:27:00',
        118.0,
        119,
        79,
        65.1,
        1.60,
        'Dena ondo.'
    ),
    (
        91,
        '2025-12-31 09:13:00',
        109.0,
        127,
        90,
        90.6,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2025-12-31 10:45:00',
        132.0,
        127,
        92,
        60.2,
        1.79,
        'Kirola egin ondoren.'
    ),
    (
        93,
        '2025-12-31 10:39:00',
        120.0,
        141,
        85,
        76.0,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2025-12-31 09:49:00',
        98.0,
        131,
        91,
        86.8,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        95,
        '2025-12-31 10:29:00',
        117.0,
        139,
        72,
        89.0,
        1.77,
        'Baraualdian.'
    ),
    (
        96,
        '2025-12-31 07:22:00',
        121.0,
        134,
        88,
        76.2,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2025-12-31 07:29:00',
        139.0,
        136,
        72,
        86.6,
        1.56,
        'Baraualdian.'
    ),
    (
        98,
        '2025-12-31 10:58:00',
        107.0,
        134,
        89,
        83.2,
        1.60,
        'Baraualdian.'
    ),
    (
        100,
        '2025-12-31 07:53:00',
        88.0,
        120,
        80,
        82.2,
        1.57,
        'Baraualdian.'
    ),
    (
        51,
        '2026-01-01 09:07:00',
        99.0,
        131,
        82,
        64.1,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        52,
        '2026-01-01 09:20:00',
        101.0,
        125,
        93,
        94.9,
        1.77,
        'Dena ondo.'
    ),
    (
        53,
        '2026-01-01 09:32:00',
        120.0,
        119,
        86,
        74.6,
        1.75,
        'Gosariaren ondoren.'
    ),
    (
        54,
        '2026-01-01 07:20:00',
        121.0,
        137,
        82,
        87.4,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        55,
        '2026-01-01 09:13:00',
        112.0,
        127,
        84,
        80.0,
        1.76,
        'Kirola egin ondoren.'
    ),
    (
        56,
        '2026-01-01 08:41:00',
        109.0,
        141,
        87,
        89.5,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        57,
        '2026-01-01 08:11:00',
        90.0,
        128,
        80,
        83.7,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2026-01-01 10:18:00',
        117.0,
        114,
        92,
        62.9,
        1.73,
        'Ondo sentitzen naiz.'
    ),
    (
        60,
        '2026-01-01 09:32:00',
        115.0,
        135,
        89,
        77.2,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        61,
        '2026-01-01 07:40:00',
        114.0,
        113,
        78,
        73.6,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        62,
        '2026-01-01 09:01:00',
        104.0,
        139,
        82,
        65.6,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2026-01-01 08:17:00',
        110.0,
        129,
        90,
        82.0,
        1.80,
        'Dena ondo.'
    ),
    (
        64,
        '2026-01-01 10:17:00',
        93.0,
        130,
        73,
        95.7,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        65,
        '2026-01-01 10:38:00',
        128.0,
        136,
        76,
        91.1,
        1.55,
        'Dena ondo.'
    ),
    (
        66,
        '2026-01-01 07:31:00',
        108.0,
        119,
        85,
        74.7,
        1.59,
        'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2026-01-01 10:21:00',
        107.0,
        140,
        82,
        72.7,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        68,
        '2026-01-01 08:01:00',
        119.0,
        128,
        86,
        61.7,
        1.85,
        'Kirola egin ondoren.'
    ),
    (
        69,
        '2026-01-01 07:52:00',
        110.0,
        127,
        82,
        95.7,
        1.66,
        'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2026-01-01 10:13:00',
        90.0,
        135,
        86,
        74.7,
        1.70,
        'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-01-01 07:57:00',
        131.0,
        122,
        77,
        88.8,
        1.63,
        'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2026-01-01 10:08:00',
        133.0,
        121,
        80,
        94.7,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        74,
        '2026-01-01 09:00:00',
        138.0,
        127,
        82,
        63.5,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        75,
        '2026-01-01 09:03:00',
        132.0,
        144,
        85,
        59.9,
        1.65,
        'Apur bat nekatuta.'
    ),
    (
        76,
        '2026-01-01 07:18:00',
        98.0,
        130,
        92,
        65.9,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        78,
        '2026-01-01 07:45:00',
        115.0,
        117,
        83,
        62.9,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-01-01 09:26:00',
        114.0,
        133,
        92,
        62.2,
        1.78,
        'Gosariaren ondoren.'
    ),
    (
        81,
        '2026-01-01 07:53:00',
        107.0,
        138,
        88,
        86.4,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-01-01 10:15:00',
        131.0,
        137,
        92,
        89.7,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        84,
        '2026-01-01 10:52:00',
        114.0,
        137,
        86,
        79.5,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        88,
        '2026-01-01 08:38:00',
        101.0,
        120,
        81,
        90.3,
        1.81,
        'Dena ondo.'
    ),
    (
        89,
        '2026-01-01 07:53:00',
        124.0,
        123,
        78,
        92.0,
        1.84,
        'Apur bat nekatuta.'
    ),
    (
        90,
        '2026-01-01 08:27:00',
        119.0,
        131,
        80,
        65.3,
        1.60,
        'Dena ondo.'
    ),
    (
        93,
        '2026-01-01 07:47:00',
        119.0,
        133,
        79,
        75.7,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        94,
        '2026-01-01 09:49:00',
        108.0,
        122,
        82,
        86.8,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        96,
        '2026-01-01 09:50:00',
        103.0,
        129,
        83,
        77.7,
        1.71,
        'Baraualdian.'
    ),
    (
        97,
        '2026-01-01 10:20:00',
        106.0,
        131,
        77,
        87.3,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        98,
        '2026-01-01 09:39:00',
        105.0,
        120,
        81,
        84.0,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        100,
        '2026-01-01 09:46:00',
        95.0,
        138,
        81,
        82.9,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2026-01-02 07:53:00',
        107.0,
        140,
        84,
        63.4,
        1.76,
        'Dena ondo.'
    ),
    (
        53,
        '2026-01-02 10:16:00',
        100.0,
        119,
        83,
        75.4,
        1.75,
        'Gosariaren ondoren.'
    ),
    (
        55,
        '2026-01-02 10:03:00',
        102.0,
        136,
        84,
        80.8,
        1.76,
        'Dena ondo.'
    ),
    (
        56,
        '2026-01-02 10:55:00',
        110.0,
        138,
        87,
        90.1,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        57,
        '2026-01-02 07:36:00',
        106.0,
        123,
        93,
        82.6,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        58,
        '2026-01-02 09:22:00',
        118.0,
        130,
        79,
        67.9,
        1.68,
        'Gosariaren ondoren.'
    ),
    (
        59,
        '2026-01-02 10:25:00',
        124.0,
        123,
        81,
        62.6,
        1.73,
        'Ondo sentitzen naiz.'
    ),
    (
        61,
        '2026-01-02 08:06:00',
        117.0,
        122,
        82,
        73.6,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2026-01-02 09:03:00',
        101.0,
        139,
        78,
        82.0,
        1.80,
        'Gosariaren ondoren.'
    ),
    (
        64,
        '2026-01-02 09:56:00',
        108.0,
        141,
        73,
        95.1,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2026-01-02 07:13:00',
        97.0,
        138,
        81,
        90.6,
        1.55,
        'Dena ondo.'
    ),
    (
        69,
        '2026-01-02 07:20:00',
        120.0,
        142,
        88,
        95.6,
        1.66,
        'Apur bat nekatuta.'
    ),
    (
        70,
        '2026-01-02 10:23:00',
        105.0,
        121,
        86,
        75.1,
        1.70,
        'Dena ondo.'
    ),
    (
        72,
        '2026-01-02 09:35:00',
        109.0,
        138,
        81,
        92.4,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-01-02 08:57:00',
        128.0,
        119,
        80,
        94.6,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2026-01-02 10:10:00',
        137.0,
        119,
        87,
        63.2,
        1.67,
        'Baraualdian.'
    ),
    (
        75,
        '2026-01-02 09:59:00',
        125.0,
        127,
        83,
        59.6,
        1.65,
        'Baraualdian.'
    ),
    (
        77,
        '2026-01-02 09:00:00',
        116.0,
        134,
        86,
        66.6,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        78,
        '2026-01-02 09:47:00',
        98.0,
        123,
        82,
        62.9,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        79,
        '2026-01-02 09:22:00',
        114.0,
        141,
        78,
        67.3,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        81,
        '2026-01-02 10:48:00',
        99.0,
        133,
        93,
        86.9,
        1.58,
        'Gosariaren ondoren.'
    ),
    (
        82,
        '2026-01-02 10:04:00',
        109.0,
        127,
        93,
        88.1,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        83,
        '2026-01-02 08:50:00',
        113.0,
        130,
        94,
        65.8,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2026-01-02 08:48:00',
        86.0,
        130,
        76,
        78.8,
        1.67,
        'Dena ondo.'
    ),
    (
        85,
        '2026-01-02 08:03:00',
        86.0,
        137,
        91,
        81.1,
        1.72,
        'Dena ondo.'
    ),
    (
        86,
        '2026-01-02 10:08:00',
        127.0,
        134,
        83,
        67.7,
        1.57,
        'Baraualdian.'
    ),
    (
        87,
        '2026-01-02 08:28:00',
        121.0,
        137,
        84,
        74.0,
        1.61,
        'Baraualdian.'
    ),
    (
        88,
        '2026-01-02 07:00:00',
        94.0,
        123,
        86,
        89.9,
        1.81,
        'Baraualdian.'
    ),
    (
        89,
        '2026-01-02 10:19:00',
        134.0,
        139,
        83,
        90.0,
        1.84,
        'Ondo sentitzen naiz.'
    ),
    (
        90,
        '2026-01-02 08:41:00',
        116.0,
        136,
        79,
        65.5,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        91,
        '2026-01-02 09:20:00',
        97.0,
        130,
        89,
        90.2,
        1.58,
        'Apur bat nekatuta.'
    ),
    (
        92,
        '2026-01-02 07:20:00',
        112.0,
        126,
        93,
        59.0,
        1.79,
        'Kirola egin ondoren.'
    ),
    (
        93,
        '2026-01-02 10:39:00',
        131.0,
        129,
        80,
        76.5,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        94,
        '2026-01-02 08:06:00',
        110.0,
        135,
        86,
        87.0,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2026-01-02 07:01:00',
        112.0,
        139,
        73,
        89.9,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2026-01-02 07:31:00',
        102.0,
        126,
        74,
        77.1,
        1.71,
        'Apur bat nekatuta.'
    ),
    (
        97,
        '2026-01-02 10:14:00',
        110.0,
        120,
        86,
        87.4,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        98,
        '2026-01-02 08:19:00',
        118.0,
        138,
        76,
        83.6,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        99,
        '2026-01-02 09:10:00',
        105.0,
        122,
        74,
        86.8,
        1.71,
        'Apur bat nekatuta.'
    ),
    (
        100,
        '2026-01-02 09:03:00',
        109.0,
        133,
        79,
        81.2,
        1.57,
        'Kirola egin ondoren.'
    ),
    (
        51,
        '2026-01-03 10:54:00',
        88.0,
        128,
        81,
        64.9,
        1.76,
        'Dena ondo.'
    ),
    (
        52,
        '2026-01-03 10:33:00',
        104.0,
        123,
        94,
        94.7,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        53,
        '2026-01-03 08:00:00',
        97.0,
        131,
        85,
        74.8,
        1.75,
        'Baraualdian.'
    ),
    (
        54,
        '2026-01-03 10:42:00',
        95.0,
        139,
        89,
        87.8,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        56,
        '2026-01-03 10:55:00',
        120.0,
        143,
        82,
        90.8,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        57,
        '2026-01-03 07:40:00',
        100.0,
        128,
        85,
        84.0,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2026-01-03 08:44:00',
        116.0,
        132,
        85,
        66.5,
        1.68,
        'Dena ondo.'
    ),
    (
        59,
        '2026-01-03 09:40:00',
        107.0,
        112,
        88,
        62.7,
        1.73,
        'Dena ondo.'
    ),
    (
        60,
        '2026-01-03 07:55:00',
        127.0,
        135,
        84,
        78.2,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        61,
        '2026-01-03 09:33:00',
        123.0,
        121,
        90,
        73.2,
        1.83,
        'Gosariaren ondoren.'
    ),
    (
        63,
        '2026-01-03 09:07:00',
        124.0,
        134,
        85,
        80.0,
        1.80,
        'Dena ondo.'
    ),
    (
        65,
        '2026-01-03 09:12:00',
        109.0,
        121,
        88,
        91.6,
        1.55,
        'Baraualdian.'
    ),
    (
        66,
        '2026-01-03 10:03:00',
        107.0,
        134,
        84,
        75.0,
        1.59,
        'Baraualdian.'
    ),
    (
        67,
        '2026-01-03 08:32:00',
        112.0,
        143,
        79,
        71.1,
        1.72,
        'Baraualdian.'
    ),
    (
        68,
        '2026-01-03 08:12:00',
        96.0,
        134,
        86,
        60.1,
        1.85,
        'Dena ondo.'
    ),
    (
        71,
        '2026-01-03 08:47:00',
        111.0,
        121,
        74,
        88.9,
        1.63,
        'Baraualdian.'
    ),
    (
        72,
        '2026-01-03 09:48:00',
        94.0,
        126,
        82,
        91.7,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2026-01-03 08:28:00',
        108.0,
        126,
        79,
        64.5,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2026-01-03 10:40:00',
        135.0,
        138,
        75,
        60.3,
        1.65,
        'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2026-01-03 10:23:00',
        132.0,
        127,
        84,
        65.2,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2026-01-03 07:18:00',
        109.0,
        133,
        87,
        67.0,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        78,
        '2026-01-03 07:03:00',
        107.0,
        122,
        77,
        63.7,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        79,
        '2026-01-03 10:32:00',
        102.0,
        123,
        74,
        66.2,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2026-01-03 07:46:00',
        93.0,
        128,
        90,
        63.1,
        1.78,
        'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-01-03 07:04:00',
        102.0,
        131,
        81,
        89.3,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        83,
        '2026-01-03 09:24:00',
        100.0,
        136,
        86,
        65.3,
        1.80,
        'Kirola egin ondoren.'
    ),
    (
        84,
        '2026-01-03 08:50:00',
        113.0,
        131,
        90,
        78.5,
        1.67,
        'Baraualdian.'
    ),
    (
        85,
        '2026-01-03 10:16:00',
        97.0,
        136,
        79,
        81.9,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2026-01-03 10:28:00',
        137.0,
        140,
        78,
        72.3,
        1.61,
        'Baraualdian.'
    ),
    (
        88,
        '2026-01-03 07:26:00',
        111.0,
        129,
        86,
        90.7,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2026-01-03 08:51:00',
        128.0,
        132,
        84,
        91.4,
        1.84,
        'Gosariaren ondoren.'
    ),
    (
        90,
        '2026-01-03 07:43:00',
        101.0,
        138,
        81,
        66.1,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2026-01-03 08:07:00',
        99.0,
        126,
        88,
        60.9,
        1.79,
        'Dena ondo.'
    ),
    (
        93,
        '2026-01-03 08:25:00',
        126.0,
        127,
        87,
        75.3,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        94,
        '2026-01-03 09:38:00',
        101.0,
        132,
        85,
        87.8,
        1.83,
        'Baraualdian.'
    ),
    (
        95,
        '2026-01-03 09:53:00',
        100.0,
        126,
        74,
        89.7,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        97,
        '2026-01-03 08:24:00',
        114.0,
        126,
        85,
        87.5,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-01-03 08:34:00',
        132.0,
        126,
        89,
        83.1,
        1.60,
        'Dena ondo.'
    ),
    (
        99,
        '2026-01-03 08:50:00',
        90.0,
        124,
        88,
        85.1,
        1.71,
        'Ondo sentitzen naiz.'
    ),
    (
        100,
        '2026-01-03 07:29:00',
        103.0,
        140,
        86,
        81.0,
        1.57,
        'Baraualdian.'
    ),
    (
        51,
        '2026-01-04 10:16:00',
        107.0,
        130,
        79,
        63.1,
        1.76,
        'Baraualdian.'
    ),
    (
        52,
        '2026-01-04 09:43:00',
        119.0,
        125,
        94,
        93.1,
        1.77,
        'Dena ondo.'
    ),
    (
        53,
        '2026-01-04 09:15:00',
        105.0,
        126,
        82,
        75.2,
        1.75,
        'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2026-01-04 07:38:00',
        124.0,
        130,
        76,
        81.9,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        56,
        '2026-01-04 08:02:00',
        85.0,
        129,
        88,
        89.7,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        57,
        '2026-01-04 09:26:00',
        101.0,
        117,
        82,
        83.5,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        58,
        '2026-01-04 07:37:00',
        100.0,
        128,
        90,
        66.7,
        1.68,
        'Kirola egin ondoren.'
    ),
    (
        59,
        '2026-01-04 09:47:00',
        110.0,
        130,
        92,
        63.0,
        1.73,
        'Kirola egin ondoren.'
    ),
    (
        61,
        '2026-01-04 07:06:00',
        124.0,
        129,
        93,
        73.4,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        62,
        '2026-01-04 10:56:00',
        129.0,
        130,
        73,
        65.0,
        1.56,
        'Dena ondo.'
    ),
    (
        63,
        '2026-01-04 09:55:00',
        112.0,
        143,
        86,
        81.9,
        1.80,
        'Baraualdian.'
    ),
    (
        65,
        '2026-01-04 07:17:00',
        117.0,
        122,
        82,
        90.5,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2026-01-04 10:55:00',
        107.0,
        122,
        82,
        74.8,
        1.59,
        'Kirola egin ondoren.'
    ),
    (
        68,
        '2026-01-04 07:48:00',
        119.0,
        135,
        74,
        61.3,
        1.85,
        'Dena ondo.'
    ),
    (
        69,
        '2026-01-04 10:36:00',
        116.0,
        138,
        81,
        95.5,
        1.66,
        'Ondo sentitzen naiz.'
    ),
    (
        70,
        '2026-01-04 10:17:00',
        108.0,
        135,
        83,
        74.9,
        1.70,
        'Baraualdian.'
    ),
    (
        72,
        '2026-01-04 09:39:00',
        89.0,
        134,
        78,
        92.4,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2026-01-04 08:20:00',
        103.0,
        123,
        83,
        95.3,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2026-01-04 09:44:00',
        126.0,
        119,
        76,
        63.7,
        1.67,
        'Baraualdian.'
    ),
    (
        75,
        '2026-01-04 09:05:00',
        120.0,
        144,
        76,
        59.1,
        1.65,
        'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2026-01-04 07:36:00',
        104.0,
        126,
        82,
        66.7,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        77,
        '2026-01-04 07:01:00',
        132.0,
        124,
        84,
        67.4,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2026-01-04 10:38:00',
        95.0,
        134,
        77,
        63.8,
        1.61,
        'Baraualdian.'
    ),
    (
        79,
        '2026-01-04 09:17:00',
        103.0,
        133,
        81,
        67.0,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2026-01-04 10:46:00',
        99.0,
        126,
        84,
        63.5,
        1.78,
        'Ondo sentitzen naiz.'
    ),
    (
        81,
        '2026-01-04 10:31:00',
        98.0,
        130,
        91,
        86.1,
        1.58,
        'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-01-04 09:16:00',
        112.0,
        129,
        83,
        90.0,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        83,
        '2026-01-04 08:02:00',
        114.0,
        124,
        89,
        65.9,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2026-01-04 07:47:00',
        89.0,
        122,
        80,
        78.5,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        85,
        '2026-01-04 07:13:00',
        102.0,
        122,
        88,
        81.0,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2026-01-04 10:53:00',
        116.0,
        138,
        76,
        67.3,
        1.57,
        'Baraualdian.'
    ),
    (
        87,
        '2026-01-04 09:10:00',
        132.0,
        122,
        82,
        73.5,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2026-01-04 10:27:00',
        124.0,
        123,
        75,
        89.7,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        89,
        '2026-01-04 10:16:00',
        114.0,
        143,
        90,
        91.1,
        1.84,
        'Apur bat nekatuta.'
    ),
    (
        92,
        '2026-01-04 10:54:00',
        114.0,
        133,
        83,
        59.5,
        1.79,
        'Gosariaren ondoren.'
    ),
    (
        93,
        '2026-01-04 08:41:00',
        130.0,
        121,
        79,
        75.5,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        95,
        '2026-01-04 10:19:00',
        116.0,
        128,
        84,
        89.7,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2026-01-04 08:37:00',
        92.0,
        119,
        76,
        77.4,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2026-01-04 10:45:00',
        110.0,
        135,
        81,
        87.9,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        98,
        '2026-01-04 10:05:00',
        102.0,
        122,
        82,
        84.7,
        1.60,
        'Baraualdian.'
    ),
    (
        99,
        '2026-01-04 10:22:00',
        113.0,
        127,
        82,
        85.6,
        1.71,
        'Apur bat nekatuta.'
    ),
    (
        100,
        '2026-01-04 10:25:00',
        120.0,
        131,
        78,
        81.0,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        51,
        '2026-01-05 08:04:00',
        113.0,
        121,
        81,
        64.2,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        52,
        '2026-01-05 07:44:00',
        109.0,
        134,
        85,
        94.2,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        53,
        '2026-01-05 07:30:00',
        99.0,
        133,
        81,
        75.7,
        1.75,
        'Ondo sentitzen naiz.'
    ),
    (
        54,
        '2026-01-05 07:47:00',
        102.0,
        133,
        80,
        86.6,
        1.60,
        'Dena ondo.'
    ),
    (
        55,
        '2026-01-05 08:59:00',
        125.0,
        130,
        81,
        80.2,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        57,
        '2026-01-05 08:17:00',
        96.0,
        130,
        81,
        83.4,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        58,
        '2026-01-05 09:13:00',
        96.0,
        138,
        80,
        67.2,
        1.68,
        'Apur bat nekatuta.'
    ),
    (
        59,
        '2026-01-05 09:16:00',
        133.0,
        119,
        92,
        62.5,
        1.73,
        'Kirola egin ondoren.'
    ),
    (
        60,
        '2026-01-05 10:46:00',
        120.0,
        120,
        94,
        78.5,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        61,
        '2026-01-05 10:47:00',
        104.0,
        120,
        79,
        72.9,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        62,
        '2026-01-05 08:26:00',
        115.0,
        126,
        85,
        66.0,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        63,
        '2026-01-05 10:45:00',
        109.0,
        137,
        76,
        81.8,
        1.80,
        'Baraualdian.'
    ),
    (
        64,
        '2026-01-05 09:01:00',
        102.0,
        124,
        84,
        94.2,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2026-01-05 08:30:00',
        109.0,
        129,
        76,
        90.5,
        1.55,
        'Kirola egin ondoren.'
    ),
    (
        66,
        '2026-01-05 10:54:00',
        126.0,
        122,
        88,
        75.2,
        1.59,
        'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2026-01-05 07:11:00',
        94.0,
        126,
        84,
        72.4,
        1.72,
        'Baraualdian.'
    ),
    (
        68,
        '2026-01-05 07:31:00',
        116.0,
        124,
        73,
        62.0,
        1.85,
        'Kirola egin ondoren.'
    ),
    (
        69,
        '2026-01-05 07:05:00',
        128.0,
        143,
        82,
        94.3,
        1.66,
        'Gosariaren ondoren.'
    ),
    (
        71,
        '2026-01-05 08:58:00',
        114.0,
        133,
        73,
        89.2,
        1.63,
        'Apur bat nekatuta.'
    ),
    (
        72,
        '2026-01-05 10:57:00',
        104.0,
        136,
        76,
        91.3,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2026-01-05 08:49:00',
        109.0,
        127,
        79,
        95.0,
        1.55,
        'Baraualdian.'
    ),
    (
        74,
        '2026-01-05 08:44:00',
        112.0,
        112,
        86,
        65.0,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2026-01-05 10:06:00',
        113.0,
        136,
        84,
        59.0,
        1.65,
        'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2026-01-05 08:07:00',
        124.0,
        123,
        95,
        65.1,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        78,
        '2026-01-05 07:02:00',
        108.0,
        119,
        80,
        63.3,
        1.61,
        'Dena ondo.'
    ),
    (
        79,
        '2026-01-05 09:42:00',
        124.0,
        136,
        84,
        67.4,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        82,
        '2026-01-05 07:19:00',
        115.0,
        135,
        85,
        89.3,
        1.77,
        'Dena ondo.'
    ),
    (
        83,
        '2026-01-05 08:50:00',
        114.0,
        130,
        92,
        65.4,
        1.80,
        'Dena ondo.'
    ),
    (
        84,
        '2026-01-05 07:41:00',
        99.0,
        124,
        84,
        78.4,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        85,
        '2026-01-05 08:08:00',
        85.0,
        127,
        83,
        80.8,
        1.72,
        'Dena ondo.'
    ),
    (
        88,
        '2026-01-05 07:39:00',
        105.0,
        128,
        83,
        89.9,
        1.81,
        'Baraualdian.'
    ),
    (
        89,
        '2026-01-05 07:01:00',
        106.0,
        131,
        79,
        90.7,
        1.84,
        'Ondo sentitzen naiz.'
    ),
    (
        90,
        '2026-01-05 09:23:00',
        120.0,
        131,
        82,
        65.2,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2026-01-05 07:48:00',
        98.0,
        132,
        79,
        90.0,
        1.58,
        'Gosariaren ondoren.'
    ),
    (
        92,
        '2026-01-05 10:51:00',
        126.0,
        141,
        79,
        59.9,
        1.79,
        'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2026-01-05 10:26:00',
        124.0,
        124,
        86,
        76.9,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        94,
        '2026-01-05 08:25:00',
        99.0,
        129,
        78,
        86.2,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2026-01-05 09:59:00',
        102.0,
        124,
        84,
        89.0,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-01-05 09:09:00',
        100.0,
        136,
        86,
        76.0,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        97,
        '2026-01-05 08:48:00',
        125.0,
        138,
        71,
        87.8,
        1.56,
        'Dena ondo.'
    ),
    (
        98,
        '2026-01-05 08:28:00',
        125.0,
        120,
        84,
        84.0,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        99,
        '2026-01-05 07:56:00',
        93.0,
        129,
        73,
        85.1,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2026-01-05 08:08:00',
        95.0,
        127,
        77,
        81.0,
        1.57,
        'Gosariaren ondoren.'
    ),
    (
        52,
        '2026-01-06 09:48:00',
        101.0,
        132,
        79,
        93.3,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        53,
        '2026-01-06 09:06:00',
        94.0,
        124,
        86,
        74.8,
        1.75,
        'Baraualdian.'
    ),
    (
        54,
        '2026-01-06 10:11:00',
        108.0,
        130,
        74,
        86.5,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        55,
        '2026-01-06 09:21:00',
        114.0,
        139,
        86,
        81.4,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        56,
        '2026-01-06 08:17:00',
        85.0,
        133,
        86,
        90.6,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        57,
        '2026-01-06 10:14:00',
        116.0,
        116,
        81,
        83.6,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        58,
        '2026-01-06 10:34:00',
        112.0,
        134,
        88,
        67.3,
        1.68,
        'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2026-01-06 10:41:00',
        130.0,
        126,
        85,
        62.0,
        1.73,
        'Gosariaren ondoren.'
    ),
    (
        61,
        '2026-01-06 10:20:00',
        116.0,
        120,
        91,
        73.1,
        1.83,
        'Dena ondo.'
    ),
    (
        62,
        '2026-01-06 09:19:00',
        130.0,
        124,
        73,
        65.0,
        1.56,
        'Dena ondo.'
    ),
    (
        64,
        '2026-01-06 08:56:00',
        132.0,
        125,
        81,
        95.7,
        1.56,
        'Baraualdian.'
    ),
    (
        65,
        '2026-01-06 07:15:00',
        92.0,
        135,
        85,
        90.5,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2026-01-06 07:25:00',
        129.0,
        117,
        76,
        74.3,
        1.59,
        'Gosariaren ondoren.'
    ),
    (
        67,
        '2026-01-06 10:57:00',
        112.0,
        135,
        76,
        71.4,
        1.72,
        'Gaur goizean neurtuta.'
    ),
    (
        68,
        '2026-01-06 09:05:00',
        130.0,
        124,
        78,
        61.2,
        1.85,
        'Baraualdian.'
    ),
    (
        69,
        '2026-01-06 09:58:00',
        117.0,
        129,
        80,
        94.3,
        1.66,
        'Kirola egin ondoren.'
    ),
    (
        70,
        '2026-01-06 08:39:00',
        120.0,
        136,
        89,
        76.0,
        1.70,
        'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-01-06 08:15:00',
        129.0,
        134,
        78,
        89.5,
        1.63,
        'Apur bat nekatuta.'
    ),
    (
        72,
        '2026-01-06 10:33:00',
        84.0,
        128,
        84,
        93.0,
        1.69,
        'Dena ondo.'
    ),
    (
        74,
        '2026-01-06 07:03:00',
        106.0,
        124,
        76,
        63.5,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        75,
        '2026-01-06 07:56:00',
        130.0,
        129,
        79,
        61.0,
        1.65,
        'Kirola egin ondoren.'
    ),
    (
        77,
        '2026-01-06 09:07:00',
        117.0,
        128,
        88,
        67.0,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        78,
        '2026-01-06 09:16:00',
        116.0,
        130,
        74,
        63.7,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2026-01-06 08:18:00',
        121.0,
        131,
        83,
        63.6,
        1.78,
        'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-01-06 09:57:00',
        128.0,
        143,
        84,
        88.6,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        83,
        '2026-01-06 09:30:00',
        115.0,
        129,
        86,
        65.3,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2026-01-06 08:34:00',
        90.0,
        138,
        90,
        80.6,
        1.72,
        'Baraualdian.'
    ),
    (
        87,
        '2026-01-06 07:12:00',
        114.0,
        134,
        83,
        72.7,
        1.61,
        'Baraualdian.'
    ),
    (
        88,
        '2026-01-06 08:16:00',
        128.0,
        118,
        76,
        89.0,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        90,
        '2026-01-06 10:02:00',
        94.0,
        138,
        92,
        66.9,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        93,
        '2026-01-06 10:10:00',
        96.0,
        138,
        84,
        76.6,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        94,
        '2026-01-06 07:37:00',
        87.0,
        139,
        77,
        86.7,
        1.83,
        'Dena ondo.'
    ),
    (
        95,
        '2026-01-06 08:41:00',
        114.0,
        128,
        83,
        89.1,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-01-06 07:36:00',
        124.0,
        132,
        85,
        76.2,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        97,
        '2026-01-06 07:07:00',
        109.0,
        125,
        74,
        86.2,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        98,
        '2026-01-06 10:33:00',
        105.0,
        131,
        82,
        84.2,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        100,
        '2026-01-06 07:15:00',
        103.0,
        136,
        75,
        81.4,
        1.57,
        'Baraualdian.'
    ),
    (
        51,
        '2026-01-07 08:14:00',
        114.0,
        123,
        88,
        63.4,
        1.76,
        'Baraualdian.'
    ),
    (
        52,
        '2026-01-07 10:24:00',
        99.0,
        135,
        91,
        94.0,
        1.77,
        'Dena ondo.'
    ),
    (
        53,
        '2026-01-07 08:02:00',
        123.0,
        127,
        88,
        75.8,
        1.75,
        'Gosariaren ondoren.'
    ),
    (
        54,
        '2026-01-07 10:54:00',
        107.0,
        134,
        84,
        86.1,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        55,
        '2026-01-07 10:08:00',
        120.0,
        126,
        85,
        80.8,
        1.76,
        'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2026-01-07 09:47:00',
        120.0,
        136,
        88,
        89.4,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        57,
        '2026-01-07 10:33:00',
        110.0,
        123,
        84,
        83.3,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        60,
        '2026-01-07 07:56:00',
        101.0,
        115,
        93,
        78.0,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        62,
        '2026-01-07 09:46:00',
        117.0,
        139,
        82,
        66.1,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        64,
        '2026-01-07 09:11:00',
        126.0,
        128,
        84,
        95.0,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        66,
        '2026-01-07 09:06:00',
        115.0,
        136,
        81,
        74.8,
        1.59,
        'Kirola egin ondoren.'
    ),
    (
        67,
        '2026-01-07 10:56:00',
        97.0,
        125,
        80,
        72.6,
        1.72,
        'Dena ondo.'
    ),
    (
        68,
        '2026-01-07 08:12:00',
        100.0,
        138,
        73,
        60.2,
        1.85,
        'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2026-01-07 09:44:00',
        116.0,
        130,
        80,
        95.3,
        1.66,
        'Dena ondo.'
    ),
    (
        70,
        '2026-01-07 08:55:00',
        108.0,
        131,
        79,
        75.1,
        1.70,
        'Apur bat nekatuta.'
    ),
    (
        71,
        '2026-01-07 07:48:00',
        101.0,
        123,
        79,
        89.5,
        1.63,
        'Kirola egin ondoren.'
    ),
    (
        72,
        '2026-01-07 10:21:00',
        89.0,
        130,
        84,
        92.4,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-01-07 07:03:00',
        116.0,
        128,
        71,
        95.9,
        1.55,
        'Kirola egin ondoren.'
    ),
    (
        74,
        '2026-01-07 08:20:00',
        128.0,
        117,
        78,
        63.3,
        1.67,
        'Baraualdian.'
    ),
    (
        75,
        '2026-01-07 08:52:00',
        132.0,
        129,
        83,
        60.4,
        1.65,
        'Dena ondo.'
    ),
    (
        78,
        '2026-01-07 09:37:00',
        109.0,
        132,
        82,
        63.0,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        79,
        '2026-01-07 10:23:00',
        108.0,
        139,
        88,
        66.0,
        1.67,
        'Dena ondo.'
    ),
    (
        80,
        '2026-01-07 09:49:00',
        118.0,
        124,
        79,
        62.9,
        1.78,
        'Dena ondo.'
    ),
    (
        83,
        '2026-01-07 07:17:00',
        136.0,
        131,
        86,
        65.3,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2026-01-07 07:50:00',
        100.0,
        129,
        80,
        81.1,
        1.72,
        'Gaur goizean neurtuta.'
    ),
    (
        86,
        '2026-01-07 10:58:00',
        118.0,
        134,
        73,
        68.0,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        87,
        '2026-01-07 09:18:00',
        108.0,
        134,
        81,
        73.3,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        88,
        '2026-01-07 07:17:00',
        121.0,
        111,
        83,
        90.8,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        89,
        '2026-01-07 08:18:00',
        127.0,
        134,
        84,
        90.1,
        1.84,
        'Gosariaren ondoren.'
    ),
    (
        90,
        '2026-01-07 07:20:00',
        123.0,
        119,
        86,
        65.1,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2026-01-07 09:44:00',
        105.0,
        131,
        81,
        90.6,
        1.58,
        'Apur bat nekatuta.'
    ),
    (
        93,
        '2026-01-07 09:03:00',
        107.0,
        123,
        80,
        76.2,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2026-01-07 10:16:00',
        98.0,
        129,
        82,
        86.5,
        1.83,
        'Kirola egin ondoren.'
    ),
    (
        97,
        '2026-01-07 10:16:00',
        117.0,
        130,
        86,
        86.7,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-01-07 10:05:00',
        122.0,
        127,
        76,
        84.6,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        100,
        '2026-01-07 10:18:00',
        110.0,
        139,
        84,
        81.9,
        1.57,
        'Baraualdian.'
    ),
    (
        52,
        '2026-01-08 10:50:00',
        123.0,
        126,
        94,
        94.1,
        1.77,
        'Baraualdian.'
    ),
    (
        54,
        '2026-01-08 10:31:00',
        120.0,
        145,
        88,
        87.6,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        55,
        '2026-01-08 07:01:00',
        107.0,
        140,
        77,
        80.7,
        1.76,
        'Kirola egin ondoren.'
    ),
    (
        56,
        '2026-01-08 09:46:00',
        103.0,
        132,
        79,
        89.2,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        57,
        '2026-01-08 08:30:00',
        102.0,
        121,
        83,
        83.3,
        1.69,
        'Baraualdian.'
    ),
    (
        58,
        '2026-01-08 08:04:00',
        103.0,
        141,
        76,
        67.3,
        1.68,
        'Apur bat nekatuta.'
    ),
    (
        59,
        '2026-01-08 09:51:00',
        126.0,
        130,
        82,
        64.0,
        1.73,
        'Apur bat nekatuta.'
    ),
    (
        60,
        '2026-01-08 09:44:00',
        118.0,
        121,
        88,
        78.2,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        61,
        '2026-01-08 07:06:00',
        131.0,
        116,
        93,
        72.5,
        1.83,
        'Gosariaren ondoren.'
    ),
    (
        62,
        '2026-01-08 08:50:00',
        132.0,
        139,
        74,
        65.6,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        63,
        '2026-01-08 09:24:00',
        120.0,
        137,
        81,
        81.9,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2026-01-08 10:39:00',
        118.0,
        131,
        85,
        94.8,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2026-01-08 08:57:00',
        126.0,
        134,
        91,
        91.9,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        66,
        '2026-01-08 09:59:00',
        104.0,
        136,
        79,
        75.7,
        1.59,
        'Kirola egin ondoren.'
    ),
    (
        67,
        '2026-01-08 07:15:00',
        110.0,
        131,
        87,
        72.7,
        1.72,
        'Apur bat nekatuta.'
    ),
    (
        68,
        '2026-01-08 07:05:00',
        114.0,
        131,
        84,
        60.5,
        1.85,
        'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2026-01-08 10:53:00',
        128.0,
        139,
        90,
        94.8,
        1.66,
        'Dena ondo.'
    ),
    (
        70,
        '2026-01-08 07:14:00',
        92.0,
        119,
        81,
        74.6,
        1.70,
        'Apur bat nekatuta.'
    ),
    (
        71,
        '2026-01-08 08:55:00',
        118.0,
        138,
        72,
        89.1,
        1.63,
        'Baraualdian.'
    ),
    (
        72,
        '2026-01-08 09:32:00',
        87.0,
        142,
        77,
        92.5,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2026-01-08 07:13:00',
        99.0,
        123,
        86,
        95.7,
        1.55,
        'Baraualdian.'
    ),
    (
        74,
        '2026-01-08 07:32:00',
        123.0,
        127,
        78,
        64.8,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        75,
        '2026-01-08 09:47:00',
        124.0,
        130,
        85,
        60.3,
        1.65,
        'Baraualdian.'
    ),
    (
        76,
        '2026-01-08 10:05:00',
        128.0,
        129,
        83,
        66.7,
        1.69,
        'Dena ondo.'
    ),
    (
        77,
        '2026-01-08 09:10:00',
        133.0,
        129,
        92,
        67.1,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        79,
        '2026-01-08 09:51:00',
        104.0,
        141,
        76,
        67.9,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2026-01-08 10:51:00',
        108.0,
        131,
        95,
        86.2,
        1.58,
        'Dena ondo.'
    ),
    (
        82,
        '2026-01-08 08:41:00',
        107.0,
        132,
        85,
        88.6,
        1.77,
        'Baraualdian.'
    ),
    (
        83,
        '2026-01-08 08:27:00',
        128.0,
        130,
        79,
        65.9,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        84,
        '2026-01-08 09:24:00',
        125.0,
        118,
        77,
        78.0,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        85,
        '2026-01-08 08:12:00',
        104.0,
        128,
        83,
        80.4,
        1.72,
        'Gaur goizean neurtuta.'
    ),
    (
        86,
        '2026-01-08 07:06:00',
        115.0,
        143,
        86,
        68.7,
        1.57,
        'Gosariaren ondoren.'
    ),
    (
        87,
        '2026-01-08 08:56:00',
        122.0,
        133,
        80,
        72.2,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        89,
        '2026-01-08 10:31:00',
        125.0,
        132,
        77,
        91.4,
        1.84,
        'Baraualdian.'
    ),
    (
        90,
        '2026-01-08 09:04:00',
        102.0,
        121,
        88,
        66.4,
        1.60,
        'Baraualdian.'
    ),
    (
        91,
        '2026-01-08 08:49:00',
        104.0,
        127,
        80,
        89.8,
        1.58,
        'Kirola egin ondoren.'
    ),
    (
        92,
        '2026-01-08 07:54:00',
        104.0,
        140,
        92,
        60.8,
        1.79,
        'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2026-01-08 10:57:00',
        110.0,
        125,
        89,
        75.7,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2026-01-08 08:01:00',
        99.0,
        142,
        78,
        86.5,
        1.83,
        'Gosariaren ondoren.'
    ),
    (
        95,
        '2026-01-08 09:15:00',
        100.0,
        143,
        85,
        91.0,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2026-01-08 09:58:00',
        130.0,
        128,
        82,
        86.1,
        1.56,
        'Baraualdian.'
    ),
    (
        98,
        '2026-01-08 09:22:00',
        131.0,
        118,
        86,
        83.8,
        1.60,
        'Baraualdian.'
    ),
    (
        99,
        '2026-01-08 08:59:00',
        125.0,
        130,
        84,
        86.1,
        1.71,
        'Apur bat nekatuta.'
    ),
    (
        100,
        '2026-01-08 08:59:00',
        104.0,
        134,
        85,
        82.7,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        51,
        '2026-01-09 08:16:00',
        112.0,
        128,
        89,
        64.6,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        52,
        '2026-01-09 08:46:00',
        98.0,
        138,
        92,
        94.1,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        53,
        '2026-01-09 09:45:00',
        96.0,
        122,
        82,
        75.4,
        1.75,
        'Apur bat nekatuta.'
    ),
    (
        55,
        '2026-01-09 10:14:00',
        96.0,
        138,
        86,
        81.1,
        1.76,
        'Kirola egin ondoren.'
    ),
    (
        56,
        '2026-01-09 09:28:00',
        95.0,
        139,
        89,
        89.6,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        61,
        '2026-01-09 09:14:00',
        120.0,
        123,
        89,
        72.8,
        1.83,
        'Dena ondo.'
    ),
    (
        62,
        '2026-01-09 08:13:00',
        104.0,
        125,
        76,
        66.1,
        1.56,
        'Dena ondo.'
    ),
    (
        63,
        '2026-01-09 07:47:00',
        122.0,
        128,
        84,
        81.1,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2026-01-09 07:18:00',
        107.0,
        135,
        91,
        90.2,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        66,
        '2026-01-09 07:39:00',
        115.0,
        123,
        87,
        74.1,
        1.59,
        'Dena ondo.'
    ),
    (
        67,
        '2026-01-09 07:57:00',
        106.0,
        136,
        76,
        71.0,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        68,
        '2026-01-09 07:40:00',
        114.0,
        122,
        86,
        60.3,
        1.85,
        'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-01-09 08:17:00',
        115.0,
        136,
        87,
        96.0,
        1.66,
        'Gosariaren ondoren.'
    ),
    (
        70,
        '2026-01-09 10:51:00',
        110.0,
        117,
        75,
        74.5,
        1.70,
        'Gosariaren ondoren.'
    ),
    (
        71,
        '2026-01-09 09:34:00',
        125.0,
        133,
        72,
        89.2,
        1.63,
        'Gosariaren ondoren.'
    ),
    (
        72,
        '2026-01-09 10:20:00',
        89.0,
        129,
        77,
        92.0,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        73,
        '2026-01-09 07:53:00',
        106.0,
        112,
        81,
        95.1,
        1.55,
        'Dena ondo.'
    ),
    (
        75,
        '2026-01-09 10:56:00',
        99.0,
        127,
        85,
        60.9,
        1.65,
        'Apur bat nekatuta.'
    ),
    (
        77,
        '2026-01-09 10:31:00',
        101.0,
        122,
        85,
        67.1,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        78,
        '2026-01-09 07:43:00',
        107.0,
        128,
        86,
        62.5,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        79,
        '2026-01-09 07:07:00',
        93.0,
        140,
        80,
        67.3,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        80,
        '2026-01-09 08:02:00',
        105.0,
        127,
        89,
        62.0,
        1.78,
        'Gosariaren ondoren.'
    ),
    (
        81,
        '2026-01-09 08:02:00',
        87.0,
        125,
        92,
        85.6,
        1.58,
        'Dena ondo.'
    ),
    (
        83,
        '2026-01-09 08:21:00',
        134.0,
        116,
        93,
        65.2,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2026-01-09 08:07:00',
        91.0,
        137,
        90,
        78.2,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2026-01-09 10:36:00',
        84.0,
        127,
        81,
        80.8,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        90,
        '2026-01-09 07:18:00',
        98.0,
        136,
        89,
        65.7,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        92,
        '2026-01-09 08:10:00',
        113.0,
        140,
        90,
        59.7,
        1.79,
        'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2026-01-09 10:29:00',
        83.0,
        133,
        76,
        87.5,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2026-01-09 10:43:00',
        137.0,
        143,
        78,
        90.5,
        1.77,
        'Dena ondo.'
    ),
    (
        97,
        '2026-01-09 10:35:00',
        102.0,
        134,
        77,
        87.2,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        98,
        '2026-01-09 08:57:00',
        113.0,
        119,
        76,
        83.3,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        99,
        '2026-01-09 10:11:00',
        111.0,
        124,
        84,
        85.1,
        1.71,
        'Baraualdian.'
    ),
    (
        100,
        '2026-01-09 08:47:00',
        119.0,
        122,
        86,
        82.0,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        51,
        '2026-01-10 09:44:00',
        91.0,
        120,
        80,
        63.3,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2026-01-10 08:13:00',
        97.0,
        132,
        81,
        86.6,
        1.60,
        'Baraualdian.'
    ),
    (
        55,
        '2026-01-10 08:34:00',
        132.0,
        136,
        71,
        80.1,
        1.76,
        'Baraualdian.'
    ),
    (
        57,
        '2026-01-10 09:20:00',
        115.0,
        133,
        88,
        82.4,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        58,
        '2026-01-10 10:25:00',
        87.0,
        142,
        79,
        67.8,
        1.68,
        'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2026-01-10 07:13:00',
        132.0,
        129,
        82,
        63.9,
        1.73,
        'Apur bat nekatuta.'
    ),
    (
        63,
        '2026-01-10 08:59:00',
        113.0,
        126,
        80,
        81.7,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        64,
        '2026-01-10 10:51:00',
        105.0,
        135,
        82,
        95.5,
        1.56,
        'Baraualdian.'
    ),
    (
        65,
        '2026-01-10 07:21:00',
        101.0,
        124,
        82,
        91.9,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        66,
        '2026-01-10 07:27:00',
        120.0,
        121,
        81,
        74.7,
        1.59,
        'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2026-01-10 09:34:00',
        129.0,
        137,
        82,
        94.7,
        1.66,
        'Apur bat nekatuta.'
    ),
    (
        70,
        '2026-01-10 07:22:00',
        123.0,
        117,
        81,
        74.5,
        1.70,
        'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-01-10 07:40:00',
        129.0,
        130,
        74,
        89.6,
        1.63,
        'Dena ondo.'
    ),
    (
        72,
        '2026-01-10 07:14:00',
        85.0,
        140,
        86,
        91.4,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-01-10 07:58:00',
        100.0,
        128,
        73,
        95.3,
        1.55,
        'Dena ondo.'
    ),
    (
        74,
        '2026-01-10 10:56:00',
        134.0,
        119,
        83,
        63.5,
        1.67,
        'Baraualdian.'
    ),
    (
        76,
        '2026-01-10 09:03:00',
        92.0,
        119,
        85,
        65.0,
        1.69,
        'Baraualdian.'
    ),
    (
        77,
        '2026-01-10 08:28:00',
        120.0,
        137,
        79,
        67.9,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        78,
        '2026-01-10 08:13:00',
        87.0,
        126,
        75,
        63.7,
        1.61,
        'Dena ondo.'
    ),
    (
        79,
        '2026-01-10 08:28:00',
        100.0,
        126,
        89,
        66.6,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-01-10 09:33:00',
        100.0,
        125,
        88,
        62.9,
        1.78,
        'Dena ondo.'
    ),
    (
        83,
        '2026-01-10 10:26:00',
        111.0,
        130,
        90,
        64.1,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2026-01-10 10:35:00',
        95.0,
        117,
        76,
        79.0,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2026-01-10 10:23:00',
        103.0,
        140,
        75,
        68.9,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        87,
        '2026-01-10 07:27:00',
        132.0,
        124,
        88,
        73.5,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        88,
        '2026-01-10 09:38:00',
        110.0,
        127,
        81,
        90.1,
        1.81,
        'Baraualdian.'
    ),
    (
        89,
        '2026-01-10 10:24:00',
        132.0,
        140,
        92,
        91.3,
        1.84,
        'Kirola egin ondoren.'
    ),
    (
        90,
        '2026-01-10 08:37:00',
        101.0,
        130,
        79,
        65.9,
        1.60,
        'Baraualdian.'
    ),
    (
        91,
        '2026-01-10 10:27:00',
        89.0,
        135,
        83,
        91.0,
        1.58,
        'Baraualdian.'
    ),
    (
        92,
        '2026-01-10 10:46:00',
        114.0,
        128,
        92,
        59.9,
        1.79,
        'Dena ondo.'
    ),
    (
        93,
        '2026-01-10 09:41:00',
        121.0,
        139,
        87,
        76.3,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        94,
        '2026-01-10 08:41:00',
        103.0,
        126,
        85,
        86.1,
        1.83,
        'Baraualdian.'
    ),
    (
        97,
        '2026-01-10 09:58:00',
        134.0,
        137,
        72,
        87.4,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        100,
        '2026-01-10 08:45:00',
        128.0,
        127,
        77,
        82.6,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2026-01-11 08:48:00',
        112.0,
        129,
        87,
        63.2,
        1.76,
        'Kirola egin ondoren.'
    ),
    (
        53,
        '2026-01-11 09:54:00',
        103.0,
        113,
        80,
        75.3,
        1.75,
        'Dena ondo.'
    ),
    (
        54,
        '2026-01-11 08:44:00',
        93.0,
        144,
        76,
        86.1,
        1.60,
        'Dena ondo.'
    ),
    (
        55,
        '2026-01-11 08:57:00',
        106.0,
        140,
        80,
        80.3,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        56,
        '2026-01-11 09:33:00',
        115.0,
        135,
        84,
        90.2,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        58,
        '2026-01-11 10:27:00',
        88.0,
        145,
        76,
        67.3,
        1.68,
        'Ondo sentitzen naiz.'
    ),
    (
        59,
        '2026-01-11 08:54:00',
        131.0,
        125,
        80,
        63.4,
        1.73,
        'Ondo sentitzen naiz.'
    ),
    (
        60,
        '2026-01-11 10:34:00',
        104.0,
        119,
        89,
        78.5,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-01-11 07:10:00',
        120.0,
        124,
        83,
        73.7,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        62,
        '2026-01-11 09:13:00',
        129.0,
        136,
        81,
        66.2,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        64,
        '2026-01-11 10:09:00',
        131.0,
        140,
        74,
        94.0,
        1.56,
        'Baraualdian.'
    ),
    (
        65,
        '2026-01-11 08:38:00',
        119.0,
        134,
        84,
        91.4,
        1.55,
        'Kirola egin ondoren.'
    ),
    (
        66,
        '2026-01-11 09:03:00',
        98.0,
        133,
        79,
        75.0,
        1.59,
        'Dena ondo.'
    ),
    (
        67,
        '2026-01-11 09:51:00',
        116.0,
        137,
        83,
        71.6,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        69,
        '2026-01-11 07:47:00',
        132.0,
        141,
        84,
        95.8,
        1.66,
        'Kirola egin ondoren.'
    ),
    (
        70,
        '2026-01-11 08:42:00',
        104.0,
        119,
        86,
        74.3,
        1.70,
        'Baraualdian.'
    ),
    (
        71,
        '2026-01-11 07:48:00',
        133.0,
        122,
        77,
        88.1,
        1.63,
        'Baraualdian.'
    ),
    (
        72,
        '2026-01-11 08:20:00',
        94.0,
        134,
        83,
        91.0,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2026-01-11 09:20:00',
        100.0,
        129,
        81,
        95.9,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        75,
        '2026-01-11 08:38:00',
        126.0,
        131,
        83,
        59.2,
        1.65,
        'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2026-01-11 09:34:00',
        128.0,
        120,
        93,
        66.4,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        77,
        '2026-01-11 08:23:00',
        112.0,
        129,
        89,
        66.3,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        78,
        '2026-01-11 10:12:00',
        102.0,
        120,
        80,
        62.8,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        79,
        '2026-01-11 10:47:00',
        133.0,
        133,
        78,
        67.6,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2026-01-11 07:15:00',
        111.0,
        124,
        87,
        64.0,
        1.78,
        'Gosariaren ondoren.'
    ),
    (
        82,
        '2026-01-11 10:45:00',
        126.0,
        131,
        79,
        88.5,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        84,
        '2026-01-11 10:15:00',
        101.0,
        134,
        89,
        79.5,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2026-01-11 08:40:00',
        119.0,
        131,
        83,
        80.7,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        86,
        '2026-01-11 08:41:00',
        129.0,
        123,
        86,
        67.6,
        1.57,
        'Kirola egin ondoren.'
    ),
    (
        87,
        '2026-01-11 09:44:00',
        107.0,
        132,
        87,
        73.2,
        1.61,
        'Baraualdian.'
    ),
    (
        88,
        '2026-01-11 07:01:00',
        115.0,
        122,
        75,
        89.1,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        89,
        '2026-01-11 07:16:00',
        111.0,
        128,
        78,
        92.0,
        1.84,
        'Apur bat nekatuta.'
    ),
    (
        90,
        '2026-01-11 07:49:00',
        104.0,
        124,
        85,
        66.2,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        93,
        '2026-01-11 10:26:00',
        124.0,
        121,
        92,
        76.2,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        94,
        '2026-01-11 08:12:00',
        105.0,
        124,
        88,
        87.7,
        1.83,
        'Baraualdian.'
    ),
    (
        95,
        '2026-01-11 08:03:00',
        120.0,
        127,
        87,
        90.1,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-01-11 09:41:00',
        117.0,
        129,
        74,
        76.1,
        1.71,
        'Dena ondo.'
    ),
    (
        97,
        '2026-01-11 07:56:00',
        103.0,
        138,
        83,
        87.4,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        98,
        '2026-01-11 07:21:00',
        102.0,
        134,
        75,
        84.3,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        99,
        '2026-01-11 10:10:00',
        127.0,
        129,
        76,
        86.3,
        1.71,
        'Ondo sentitzen naiz.'
    ),
    (
        100,
        '2026-01-11 09:38:00',
        108.0,
        125,
        79,
        82.5,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        52,
        '2026-01-12 09:08:00',
        93.0,
        129,
        93,
        94.5,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2026-01-12 08:57:00',
        113.0,
        120,
        78,
        74.4,
        1.75,
        'Baraualdian.'
    ),
    (
        54,
        '2026-01-12 07:30:00',
        102.0,
        137,
        89,
        87.6,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        55,
        '2026-01-12 10:46:00',
        105.0,
        143,
        80,
        82.0,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        56,
        '2026-01-12 07:49:00',
        115.0,
        126,
        83,
        89.5,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        57,
        '2026-01-12 10:19:00',
        84.0,
        121,
        88,
        82.5,
        1.69,
        'Baraualdian.'
    ),
    (
        59,
        '2026-01-12 07:44:00',
        126.0,
        117,
        80,
        62.6,
        1.73,
        'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2026-01-12 09:59:00',
        108.0,
        132,
        91,
        78.3,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        61,
        '2026-01-12 09:48:00',
        122.0,
        119,
        79,
        72.4,
        1.83,
        'Kirola egin ondoren.'
    ),
    (
        62,
        '2026-01-12 09:46:00',
        109.0,
        122,
        77,
        65.9,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        64,
        '2026-01-12 07:19:00',
        110.0,
        121,
        73,
        94.8,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2026-01-12 07:14:00',
        101.0,
        136,
        91,
        90.5,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        66,
        '2026-01-12 10:55:00',
        90.0,
        126,
        85,
        75.6,
        1.59,
        'Kirola egin ondoren.'
    ),
    (
        67,
        '2026-01-12 07:46:00',
        97.0,
        142,
        86,
        71.2,
        1.72,
        'Dena ondo.'
    ),
    (
        68,
        '2026-01-12 09:22:00',
        108.0,
        132,
        73,
        61.8,
        1.85,
        'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-01-12 10:20:00',
        108.0,
        131,
        80,
        94.8,
        1.66,
        'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-01-12 08:03:00',
        109.0,
        127,
        77,
        88.7,
        1.63,
        'Dena ondo.'
    ),
    (
        72,
        '2026-01-12 08:18:00',
        109.0,
        132,
        89,
        92.7,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2026-01-12 10:14:00',
        136.0,
        131,
        71,
        94.1,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2026-01-12 10:23:00',
        125.0,
        128,
        84,
        63.0,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        75,
        '2026-01-12 09:01:00',
        136.0,
        140,
        77,
        60.7,
        1.65,
        'Ondo sentitzen naiz.'
    ),
    (
        77,
        '2026-01-12 10:21:00',
        106.0,
        139,
        87,
        66.2,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        79,
        '2026-01-12 09:31:00',
        126.0,
        137,
        79,
        67.4,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2026-01-12 08:27:00',
        110.0,
        128,
        88,
        63.7,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-01-12 08:09:00',
        110.0,
        132,
        82,
        85.2,
        1.58,
        'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-01-12 08:15:00',
        116.0,
        132,
        87,
        89.2,
        1.77,
        'Dena ondo.'
    ),
    (
        83,
        '2026-01-12 09:00:00',
        133.0,
        124,
        92,
        65.6,
        1.80,
        'Dena ondo.'
    ),
    (
        84,
        '2026-01-12 07:51:00',
        88.0,
        129,
        79,
        79.8,
        1.67,
        'Baraualdian.'
    ),
    (
        85,
        '2026-01-12 08:48:00',
        99.0,
        128,
        85,
        80.4,
        1.72,
        'Baraualdian.'
    ),
    (
        86,
        '2026-01-12 08:44:00',
        98.0,
        138,
        77,
        68.8,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        88,
        '2026-01-12 07:02:00',
        105.0,
        124,
        82,
        89.0,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        89,
        '2026-01-12 07:06:00',
        124.0,
        141,
        88,
        91.5,
        1.84,
        'Gaur goizean neurtuta.'
    ),
    (
        90,
        '2026-01-12 10:56:00',
        107.0,
        120,
        79,
        65.8,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        92,
        '2026-01-12 09:12:00',
        126.0,
        129,
        84,
        59.9,
        1.79,
        'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2026-01-12 09:38:00',
        123.0,
        121,
        90,
        75.1,
        1.81,
        'Baraualdian.'
    ),
    (
        94,
        '2026-01-12 09:41:00',
        96.0,
        122,
        79,
        86.1,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2026-01-12 08:33:00',
        113.0,
        136,
        77,
        78.0,
        1.71,
        'Ondo sentitzen naiz.'
    ),
    (
        98,
        '2026-01-12 07:56:00',
        101.0,
        126,
        80,
        85.0,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        100,
        '2026-01-12 10:46:00',
        100.0,
        129,
        72,
        82.4,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        51,
        '2026-01-13 07:55:00',
        101.0,
        128,
        90,
        64.7,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2026-01-13 07:36:00',
        102.0,
        140,
        83,
        86.1,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2026-01-13 08:49:00',
        127.0,
        124,
        71,
        80.1,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        56,
        '2026-01-13 07:13:00',
        119.0,
        139,
        92,
        89.4,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        57,
        '2026-01-13 10:43:00',
        106.0,
        124,
        89,
        82.0,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        58,
        '2026-01-13 10:36:00',
        87.0,
        127,
        82,
        66.2,
        1.68,
        'Gosariaren ondoren.'
    ),
    (
        59,
        '2026-01-13 09:14:00',
        101.0,
        126,
        86,
        63.4,
        1.73,
        'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2026-01-13 10:17:00',
        112.0,
        131,
        79,
        73.3,
        1.83,
        'Kirola egin ondoren.'
    ),
    (
        62,
        '2026-01-13 08:23:00',
        110.0,
        134,
        84,
        65.9,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        63,
        '2026-01-13 09:45:00',
        135.0,
        144,
        87,
        80.2,
        1.80,
        'Baraualdian.'
    ),
    (
        64,
        '2026-01-13 09:03:00',
        111.0,
        140,
        76,
        94.8,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        66,
        '2026-01-13 07:41:00',
        114.0,
        129,
        90,
        75.6,
        1.59,
        'Gosariaren ondoren.'
    ),
    (
        67,
        '2026-01-13 08:46:00',
        121.0,
        134,
        90,
        71.4,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-01-13 08:35:00',
        107.0,
        139,
        82,
        94.1,
        1.66,
        'Kirola egin ondoren.'
    ),
    (
        70,
        '2026-01-13 09:50:00',
        108.0,
        135,
        77,
        75.2,
        1.70,
        'Kirola egin ondoren.'
    ),
    (
        71,
        '2026-01-13 07:44:00',
        129.0,
        123,
        86,
        89.0,
        1.63,
        'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2026-01-13 09:19:00',
        96.0,
        134,
        82,
        92.2,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2026-01-13 10:54:00',
        102.0,
        123,
        89,
        63.8,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2026-01-13 09:50:00',
        136.0,
        126,
        81,
        60.0,
        1.65,
        'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2026-01-13 08:48:00',
        111.0,
        121,
        87,
        65.6,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        78,
        '2026-01-13 10:42:00',
        83.0,
        127,
        74,
        63.2,
        1.61,
        'Dena ondo.'
    ),
    (
        79,
        '2026-01-13 08:55:00',
        110.0,
        143,
        88,
        67.1,
        1.67,
        'Baraualdian.'
    ),
    (
        80,
        '2026-01-13 10:39:00',
        104.0,
        132,
        79,
        62.0,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-01-13 08:51:00',
        110.0,
        121,
        93,
        85.1,
        1.58,
        'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-01-13 08:07:00',
        136.0,
        130,
        79,
        88.9,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        83,
        '2026-01-13 09:26:00',
        113.0,
        117,
        92,
        65.2,
        1.80,
        'Baraualdian.'
    ),
    (
        85,
        '2026-01-13 07:48:00',
        96.0,
        128,
        88,
        81.0,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2026-01-13 08:21:00',
        127.0,
        129,
        88,
        73.5,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        88,
        '2026-01-13 09:50:00',
        112.0,
        114,
        73,
        90.1,
        1.81,
        'Baraualdian.'
    ),
    (
        89,
        '2026-01-13 08:45:00',
        109.0,
        142,
        77,
        90.0,
        1.84,
        'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2026-01-13 10:37:00',
        108.0,
        145,
        78,
        90.4,
        1.58,
        'Kirola egin ondoren.'
    ),
    (
        92,
        '2026-01-13 07:32:00',
        99.0,
        125,
        81,
        59.3,
        1.79,
        'Apur bat nekatuta.'
    ),
    (
        93,
        '2026-01-13 07:59:00',
        123.0,
        123,
        85,
        75.1,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        96,
        '2026-01-13 07:05:00',
        124.0,
        122,
        80,
        76.9,
        1.71,
        'Apur bat nekatuta.'
    ),
    (
        97,
        '2026-01-13 07:42:00',
        116.0,
        132,
        71,
        87.2,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        99,
        '2026-01-13 08:51:00',
        120.0,
        121,
        79,
        86.7,
        1.71,
        'Gosariaren ondoren.'
    ),
    (
        100,
        '2026-01-13 08:45:00',
        110.0,
        122,
        85,
        81.3,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        52,
        '2026-01-14 10:42:00',
        103.0,
        120,
        91,
        94.0,
        1.77,
        'Baraualdian.'
    ),
    (
        53,
        '2026-01-14 10:16:00',
        85.0,
        118,
        91,
        75.7,
        1.75,
        'Gosariaren ondoren.'
    ),
    (
        54,
        '2026-01-14 08:33:00',
        92.0,
        129,
        84,
        86.0,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        55,
        '2026-01-14 08:14:00',
        96.0,
        125,
        76,
        81.9,
        1.76,
        'Baraualdian.'
    ),
    (
        56,
        '2026-01-14 09:34:00',
        117.0,
        143,
        82,
        90.4,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        57,
        '2026-01-14 08:19:00',
        84.0,
        129,
        84,
        83.3,
        1.69,
        'Baraualdian.'
    ),
    (
        58,
        '2026-01-14 09:36:00',
        85.0,
        143,
        87,
        67.6,
        1.68,
        'Apur bat nekatuta.'
    ),
    (
        59,
        '2026-01-14 08:21:00',
        110.0,
        112,
        85,
        63.8,
        1.73,
        'Gosariaren ondoren.'
    ),
    (
        60,
        '2026-01-14 08:55:00',
        122.0,
        132,
        88,
        77.9,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2026-01-14 08:19:00',
        100.0,
        129,
        87,
        72.6,
        1.83,
        'Dena ondo.'
    ),
    (
        62,
        '2026-01-14 10:36:00',
        114.0,
        125,
        80,
        65.2,
        1.56,
        'Dena ondo.'
    ),
    (
        64,
        '2026-01-14 09:14:00',
        124.0,
        123,
        88,
        94.4,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        68,
        '2026-01-14 09:30:00',
        121.0,
        138,
        80,
        62.0,
        1.85,
        'Baraualdian.'
    ),
    (
        69,
        '2026-01-14 07:28:00',
        131.0,
        142,
        78,
        95.5,
        1.66,
        'Dena ondo.'
    ),
    (
        70,
        '2026-01-14 07:07:00',
        90.0,
        116,
        76,
        74.5,
        1.70,
        'Kirola egin ondoren.'
    ),
    (
        72,
        '2026-01-14 07:10:00',
        95.0,
        128,
        74,
        92.6,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        73,
        '2026-01-14 08:07:00',
        107.0,
        115,
        76,
        94.5,
        1.55,
        'Dena ondo.'
    ),
    (
        75,
        '2026-01-14 08:54:00',
        119.0,
        143,
        75,
        59.2,
        1.65,
        'Dena ondo.'
    ),
    (
        76,
        '2026-01-14 07:13:00',
        99.0,
        127,
        81,
        65.3,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2026-01-14 09:15:00',
        103.0,
        128,
        90,
        66.0,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        79,
        '2026-01-14 10:54:00',
        111.0,
        138,
        77,
        66.6,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        80,
        '2026-01-14 09:41:00',
        101.0,
        134,
        81,
        62.7,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-01-14 10:20:00',
        121.0,
        121,
        86,
        86.4,
        1.58,
        'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-01-14 08:03:00',
        137.0,
        139,
        84,
        88.7,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2026-01-14 09:00:00',
        129.0,
        132,
        89,
        65.4,
        1.80,
        'Kirola egin ondoren.'
    ),
    (
        84,
        '2026-01-14 09:56:00',
        124.0,
        131,
        81,
        79.6,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2026-01-14 10:05:00',
        121.0,
        120,
        82,
        80.5,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2026-01-14 07:48:00',
        125.0,
        143,
        73,
        68.0,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        88,
        '2026-01-14 10:03:00',
        103.0,
        116,
        79,
        89.2,
        1.81,
        'Dena ondo.'
    ),
    (
        89,
        '2026-01-14 07:33:00',
        97.0,
        128,
        78,
        90.8,
        1.84,
        'Gaur goizean neurtuta.'
    ),
    (
        90,
        '2026-01-14 08:40:00',
        111.0,
        130,
        93,
        65.7,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        91,
        '2026-01-14 10:26:00',
        91.0,
        143,
        77,
        90.8,
        1.58,
        'Baraualdian.'
    ),
    (
        92,
        '2026-01-14 08:39:00',
        129.0,
        127,
        90,
        60.8,
        1.79,
        'Baraualdian.'
    ),
    (
        93,
        '2026-01-14 08:28:00',
        117.0,
        136,
        90,
        76.9,
        1.81,
        'Dena ondo.'
    ),
    (
        95,
        '2026-01-14 07:52:00',
        115.0,
        136,
        79,
        89.0,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2026-01-14 08:40:00',
        120.0,
        126,
        82,
        77.1,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        97,
        '2026-01-14 07:33:00',
        133.0,
        134,
        86,
        87.3,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        98,
        '2026-01-14 07:06:00',
        120.0,
        128,
        78,
        84.6,
        1.60,
        'Baraualdian.'
    ),
    (
        99,
        '2026-01-14 09:11:00',
        89.0,
        124,
        77,
        86.9,
        1.71,
        'Dena ondo.'
    ),
    (
        51,
        '2026-01-15 10:12:00',
        93.0,
        134,
        78,
        64.4,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        52,
        '2026-01-15 08:02:00',
        106.0,
        128,
        87,
        94.7,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        54,
        '2026-01-15 10:28:00',
        94.0,
        129,
        89,
        87.7,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2026-01-15 09:27:00',
        108.0,
        144,
        78,
        80.4,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        56,
        '2026-01-15 09:43:00',
        109.0,
        145,
        88,
        91.0,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        58,
        '2026-01-15 10:50:00',
        82.0,
        127,
        90,
        66.0,
        1.68,
        'Baraualdian.'
    ),
    (
        61,
        '2026-01-15 09:48:00',
        114.0,
        122,
        81,
        73.0,
        1.83,
        'Dena ondo.'
    ),
    (
        62,
        '2026-01-15 10:21:00',
        134.0,
        124,
        73,
        66.9,
        1.56,
        'Baraualdian.'
    ),
    (
        64,
        '2026-01-15 07:34:00',
        115.0,
        127,
        83,
        95.2,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2026-01-15 09:30:00',
        109.0,
        133,
        85,
        91.6,
        1.55,
        'Baraualdian.'
    ),
    (
        66,
        '2026-01-15 07:45:00',
        102.0,
        136,
        90,
        74.7,
        1.59,
        'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-01-15 08:18:00',
        94.0,
        125,
        84,
        95.4,
        1.66,
        'Kirola egin ondoren.'
    ),
    (
        70,
        '2026-01-15 07:04:00',
        117.0,
        123,
        79,
        75.8,
        1.70,
        'Dena ondo.'
    ),
    (
        71,
        '2026-01-15 07:02:00',
        138.0,
        131,
        73,
        88.8,
        1.63,
        'Gosariaren ondoren.'
    ),
    (
        72,
        '2026-01-15 08:55:00',
        84.0,
        138,
        74,
        91.5,
        1.69,
        'Dena ondo.'
    ),
    (
        74,
        '2026-01-15 09:38:00',
        135.0,
        111,
        82,
        64.8,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        75,
        '2026-01-15 08:09:00',
        119.0,
        141,
        72,
        60.1,
        1.65,
        'Gosariaren ondoren.'
    ),
    (
        76,
        '2026-01-15 10:58:00',
        97.0,
        116,
        82,
        65.9,
        1.69,
        'Dena ondo.'
    ),
    (
        77,
        '2026-01-15 09:42:00',
        118.0,
        133,
        87,
        67.4,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        78,
        '2026-01-15 10:52:00',
        100.0,
        118,
        88,
        62.0,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        79,
        '2026-01-15 09:21:00',
        112.0,
        126,
        76,
        66.8,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-01-15 07:33:00',
        106.0,
        138,
        79,
        63.3,
        1.78,
        'Apur bat nekatuta.'
    ),
    (
        81,
        '2026-01-15 10:02:00',
        87.0,
        129,
        92,
        86.1,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-01-15 07:59:00',
        125.0,
        125,
        88,
        89.7,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        83,
        '2026-01-15 07:20:00',
        100.0,
        132,
        94,
        64.2,
        1.80,
        'Baraualdian.'
    ),
    (
        84,
        '2026-01-15 08:50:00',
        118.0,
        125,
        85,
        78.9,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        85,
        '2026-01-15 08:30:00',
        85.0,
        131,
        92,
        80.7,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        88,
        '2026-01-15 07:15:00',
        126.0,
        112,
        77,
        89.7,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        91,
        '2026-01-15 07:31:00',
        111.0,
        145,
        85,
        89.3,
        1.58,
        'Kirola egin ondoren.'
    ),
    (
        92,
        '2026-01-15 08:04:00',
        119.0,
        129,
        89,
        60.0,
        1.79,
        'Dena ondo.'
    ),
    (
        93,
        '2026-01-15 09:08:00',
        108.0,
        134,
        83,
        76.9,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        94,
        '2026-01-15 10:21:00',
        110.0,
        137,
        86,
        86.5,
        1.83,
        'Dena ondo.'
    ),
    (
        95,
        '2026-01-15 10:33:00',
        124.0,
        144,
        77,
        90.3,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-01-15 10:39:00',
        92.0,
        117,
        86,
        77.7,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        97,
        '2026-01-15 10:51:00',
        105.0,
        124,
        81,
        87.8,
        1.56,
        'Baraualdian.'
    ),
    (
        98,
        '2026-01-15 08:29:00',
        137.0,
        122,
        80,
        83.8,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        99,
        '2026-01-15 07:38:00',
        123.0,
        130,
        77,
        85.7,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2026-01-15 08:59:00',
        111.0,
        125,
        80,
        82.2,
        1.57,
        'Kirola egin ondoren.'
    ),
    (
        52,
        '2026-01-16 07:54:00',
        101.0,
        119,
        81,
        94.5,
        1.77,
        'Dena ondo.'
    ),
    (
        53,
        '2026-01-16 10:30:00',
        103.0,
        114,
        92,
        75.7,
        1.75,
        'Gosariaren ondoren.'
    ),
    (
        54,
        '2026-01-16 07:36:00',
        117.0,
        129,
        76,
        86.1,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        56,
        '2026-01-16 08:04:00',
        103.0,
        134,
        86,
        89.2,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2026-01-16 07:26:00',
        110.0,
        132,
        84,
        67.6,
        1.68,
        'Kirola egin ondoren.'
    ),
    (
        59,
        '2026-01-16 08:13:00',
        127.0,
        116,
        83,
        62.1,
        1.73,
        'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2026-01-16 09:19:00',
        104.0,
        128,
        79,
        74.0,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        62,
        '2026-01-16 09:39:00',
        104.0,
        132,
        83,
        66.9,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        65,
        '2026-01-16 08:05:00',
        110.0,
        136,
        86,
        90.0,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        66,
        '2026-01-16 08:45:00',
        123.0,
        120,
        87,
        74.7,
        1.59,
        'Baraualdian.'
    ),
    (
        67,
        '2026-01-16 07:27:00',
        119.0,
        128,
        81,
        71.5,
        1.72,
        'Baraualdian.'
    ),
    (
        68,
        '2026-01-16 09:10:00',
        102.0,
        139,
        87,
        60.0,
        1.85,
        'Baraualdian.'
    ),
    (
        69,
        '2026-01-16 07:16:00',
        130.0,
        134,
        83,
        94.8,
        1.66,
        'Apur bat nekatuta.'
    ),
    (
        71,
        '2026-01-16 07:26:00',
        119.0,
        133,
        74,
        89.6,
        1.63,
        'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2026-01-16 07:23:00',
        94.0,
        143,
        88,
        92.0,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        73,
        '2026-01-16 07:24:00',
        113.0,
        127,
        72,
        94.2,
        1.55,
        'Dena ondo.'
    ),
    (
        74,
        '2026-01-16 07:51:00',
        139.0,
        123,
        90,
        64.9,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        75,
        '2026-01-16 09:24:00',
        139.0,
        135,
        81,
        59.0,
        1.65,
        'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2026-01-16 10:11:00',
        108.0,
        136,
        81,
        67.1,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        78,
        '2026-01-16 10:40:00',
        95.0,
        118,
        80,
        62.4,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        79,
        '2026-01-16 09:17:00',
        127.0,
        136,
        84,
        66.7,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-01-16 07:07:00',
        105.0,
        132,
        92,
        62.6,
        1.78,
        'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-01-16 09:54:00',
        125.0,
        143,
        88,
        89.8,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2026-01-16 09:28:00',
        103.0,
        121,
        84,
        65.7,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2026-01-16 07:53:00',
        112.0,
        123,
        90,
        79.7,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        85,
        '2026-01-16 09:23:00',
        86.0,
        126,
        91,
        81.1,
        1.72,
        'Dena ondo.'
    ),
    (
        86,
        '2026-01-16 08:07:00',
        106.0,
        126,
        72,
        67.7,
        1.57,
        'Dena ondo.'
    ),
    (
        87,
        '2026-01-16 10:51:00',
        112.0,
        140,
        81,
        72.0,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        88,
        '2026-01-16 08:29:00',
        93.0,
        120,
        78,
        90.4,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        89,
        '2026-01-16 07:17:00',
        118.0,
        140,
        78,
        90.0,
        1.84,
        'Baraualdian.'
    ),
    (
        90,
        '2026-01-16 10:29:00',
        106.0,
        125,
        79,
        65.1,
        1.60,
        'Dena ondo.'
    ),
    (
        91,
        '2026-01-16 07:17:00',
        113.0,
        139,
        80,
        89.6,
        1.58,
        'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2026-01-16 10:29:00',
        119.0,
        131,
        80,
        76.5,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        95,
        '2026-01-16 10:51:00',
        132.0,
        135,
        81,
        89.6,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        96,
        '2026-01-16 10:48:00',
        107.0,
        122,
        78,
        77.2,
        1.71,
        'Gosariaren ondoren.'
    ),
    (
        97,
        '2026-01-16 08:03:00',
        119.0,
        139,
        71,
        86.0,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        98,
        '2026-01-16 09:04:00',
        108.0,
        126,
        79,
        83.8,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2026-01-16 10:51:00',
        89.0,
        135,
        78,
        81.6,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        51,
        '2026-01-17 09:50:00',
        92.0,
        120,
        86,
        63.4,
        1.76,
        'Dena ondo.'
    ),
    (
        52,
        '2026-01-17 09:01:00',
        94.0,
        131,
        93,
        93.1,
        1.77,
        'Baraualdian.'
    ),
    (
        53,
        '2026-01-17 09:08:00',
        86.0,
        125,
        90,
        75.1,
        1.75,
        'Apur bat nekatuta.'
    ),
    (
        54,
        '2026-01-17 10:31:00',
        97.0,
        132,
        82,
        87.0,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        55,
        '2026-01-17 07:02:00',
        96.0,
        129,
        85,
        80.8,
        1.76,
        'Dena ondo.'
    ),
    (
        56,
        '2026-01-17 07:03:00',
        118.0,
        128,
        87,
        89.2,
        1.61,
        'Baraualdian.'
    ),
    (
        57,
        '2026-01-17 08:43:00',
        96.0,
        129,
        85,
        82.4,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        58,
        '2026-01-17 08:05:00',
        85.0,
        144,
        90,
        67.2,
        1.68,
        'Baraualdian.'
    ),
    (
        59,
        '2026-01-17 07:18:00',
        98.0,
        116,
        89,
        63.2,
        1.73,
        'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-01-17 10:14:00',
        98.0,
        129,
        91,
        72.4,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        62,
        '2026-01-17 08:49:00',
        101.0,
        133,
        83,
        65.2,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2026-01-17 07:42:00',
        133.0,
        140,
        73,
        95.3,
        1.56,
        'Dena ondo.'
    ),
    (
        65,
        '2026-01-17 10:33:00',
        120.0,
        126,
        85,
        90.1,
        1.55,
        'Baraualdian.'
    ),
    (
        66,
        '2026-01-17 09:23:00',
        111.0,
        132,
        78,
        74.5,
        1.59,
        'Dena ondo.'
    ),
    (
        67,
        '2026-01-17 09:41:00',
        108.0,
        128,
        79,
        71.4,
        1.72,
        'Baraualdian.'
    ),
    (
        68,
        '2026-01-17 07:09:00',
        113.0,
        123,
        72,
        60.9,
        1.85,
        'Dena ondo.'
    ),
    (
        69,
        '2026-01-17 10:38:00',
        101.0,
        141,
        80,
        95.6,
        1.66,
        'Apur bat nekatuta.'
    ),
    (
        70,
        '2026-01-17 08:34:00',
        97.0,
        124,
        77,
        74.0,
        1.70,
        'Kirola egin ondoren.'
    ),
    (
        71,
        '2026-01-17 07:17:00',
        124.0,
        129,
        85,
        90.0,
        1.63,
        'Apur bat nekatuta.'
    ),
    (
        72,
        '2026-01-17 09:34:00',
        99.0,
        137,
        84,
        91.1,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2026-01-17 09:04:00',
        103.0,
        113,
        73,
        94.9,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        74,
        '2026-01-17 07:47:00',
        120.0,
        122,
        90,
        63.3,
        1.67,
        'Baraualdian.'
    ),
    (
        75,
        '2026-01-17 07:07:00',
        111.0,
        145,
        72,
        59.0,
        1.65,
        'Dena ondo.'
    ),
    (
        76,
        '2026-01-17 09:11:00',
        112.0,
        124,
        86,
        67.0,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2026-01-17 10:27:00',
        134.0,
        139,
        81,
        67.8,
        1.67,
        'Dena ondo.'
    ),
    (
        78,
        '2026-01-17 07:25:00',
        87.0,
        129,
        77,
        63.9,
        1.61,
        'Dena ondo.'
    ),
    (
        79,
        '2026-01-17 07:54:00',
        102.0,
        138,
        81,
        67.5,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2026-01-17 07:42:00',
        109.0,
        137,
        84,
        63.8,
        1.78,
        'Gosariaren ondoren.'
    ),
    (
        82,
        '2026-01-17 10:51:00',
        99.0,
        132,
        85,
        89.8,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2026-01-17 08:01:00',
        114.0,
        125,
        84,
        65.1,
        1.80,
        'Kirola egin ondoren.'
    ),
    (
        85,
        '2026-01-17 07:56:00',
        100.0,
        126,
        91,
        80.7,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        86,
        '2026-01-17 08:09:00',
        91.0,
        133,
        81,
        67.2,
        1.57,
        'Baraualdian.'
    ),
    (
        87,
        '2026-01-17 08:15:00',
        119.0,
        136,
        84,
        73.8,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        88,
        '2026-01-17 10:32:00',
        115.0,
        130,
        86,
        90.4,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        89,
        '2026-01-17 08:42:00',
        118.0,
        129,
        92,
        90.7,
        1.84,
        'Kirola egin ondoren.'
    ),
    (
        90,
        '2026-01-17 07:51:00',
        95.0,
        130,
        86,
        65.1,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        91,
        '2026-01-17 09:24:00',
        91.0,
        134,
        87,
        89.7,
        1.58,
        'Ondo sentitzen naiz.'
    ),
    (
        92,
        '2026-01-17 09:14:00',
        137.0,
        144,
        91,
        59.9,
        1.79,
        'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2026-01-17 10:07:00',
        120.0,
        126,
        93,
        75.8,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        94,
        '2026-01-17 07:36:00',
        82.0,
        134,
        89,
        87.9,
        1.83,
        'Kirola egin ondoren.'
    ),
    (
        95,
        '2026-01-17 10:48:00',
        104.0,
        141,
        81,
        89.3,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        96,
        '2026-01-17 09:57:00',
        93.0,
        120,
        88,
        76.3,
        1.71,
        'Baraualdian.'
    ),
    (
        97,
        '2026-01-17 09:10:00',
        129.0,
        124,
        74,
        86.8,
        1.56,
        'Dena ondo.'
    ),
    (
        98,
        '2026-01-17 08:30:00',
        130.0,
        131,
        86,
        83.2,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        99,
        '2026-01-17 08:45:00',
        117.0,
        129,
        74,
        86.0,
        1.71,
        'Apur bat nekatuta.'
    ),
    (
        100,
        '2026-01-17 07:51:00',
        105.0,
        120,
        72,
        82.5,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        51,
        '2026-01-18 08:52:00',
        118.0,
        134,
        79,
        64.3,
        1.76,
        'Gosariaren ondoren.'
    ),
    (
        52,
        '2026-01-18 10:27:00',
        94.0,
        136,
        92,
        94.3,
        1.77,
        'Dena ondo.'
    ),
    (
        53,
        '2026-01-18 09:16:00',
        106.0,
        127,
        86,
        74.2,
        1.75,
        'Baraualdian.'
    ),
    (
        55,
        '2026-01-18 10:35:00',
        123.0,
        134,
        83,
        82.0,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2026-01-18 08:23:00',
        81.0,
        138,
        83,
        67.0,
        1.68,
        'Gosariaren ondoren.'
    ),
    (
        59,
        '2026-01-18 07:05:00',
        109.0,
        125,
        95,
        63.7,
        1.73,
        'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2026-01-18 08:56:00',
        118.0,
        118,
        92,
        72.1,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        62,
        '2026-01-18 09:58:00',
        115.0,
        121,
        77,
        66.0,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        63,
        '2026-01-18 08:08:00',
        104.0,
        138,
        78,
        81.8,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        64,
        '2026-01-18 08:22:00',
        109.0,
        133,
        75,
        95.9,
        1.56,
        'Baraualdian.'
    ),
    (
        65,
        '2026-01-18 10:07:00',
        115.0,
        120,
        81,
        92.0,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        66,
        '2026-01-18 07:32:00',
        125.0,
        129,
        91,
        75.8,
        1.59,
        'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2026-01-18 09:10:00',
        111.0,
        143,
        76,
        71.6,
        1.72,
        'Dena ondo.'
    ),
    (
        68,
        '2026-01-18 09:34:00',
        119.0,
        130,
        83,
        60.5,
        1.85,
        'Kirola egin ondoren.'
    ),
    (
        69,
        '2026-01-18 07:15:00',
        102.0,
        133,
        89,
        94.2,
        1.66,
        'Dena ondo.'
    ),
    (
        71,
        '2026-01-18 07:57:00',
        117.0,
        120,
        77,
        89.9,
        1.63,
        'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2026-01-18 08:44:00',
        95.0,
        123,
        84,
        91.8,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        74,
        '2026-01-18 08:42:00',
        112.0,
        119,
        80,
        63.4,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        75,
        '2026-01-18 08:24:00',
        120.0,
        143,
        72,
        60.4,
        1.65,
        'Dena ondo.'
    ),
    (
        76,
        '2026-01-18 08:06:00',
        112.0,
        124,
        89,
        65.3,
        1.69,
        'Baraualdian.'
    ),
    (
        77,
        '2026-01-18 09:54:00',
        98.0,
        126,
        89,
        67.8,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2026-01-18 07:30:00',
        91.0,
        136,
        79,
        63.2,
        1.61,
        'Baraualdian.'
    ),
    (
        79,
        '2026-01-18 07:10:00',
        118.0,
        135,
        76,
        66.0,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        80,
        '2026-01-18 09:42:00',
        92.0,
        133,
        83,
        62.1,
        1.78,
        'Baraualdian.'
    ),
    (
        81,
        '2026-01-18 07:14:00',
        121.0,
        133,
        83,
        85.5,
        1.58,
        'Dena ondo.'
    ),
    (
        82,
        '2026-01-18 09:17:00',
        109.0,
        141,
        94,
        88.8,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        84,
        '2026-01-18 09:34:00',
        115.0,
        131,
        86,
        78.9,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        86,
        '2026-01-18 07:49:00',
        116.0,
        129,
        80,
        68.7,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        88,
        '2026-01-18 10:09:00',
        89.0,
        128,
        85,
        90.6,
        1.81,
        'Baraualdian.'
    ),
    (
        89,
        '2026-01-18 08:16:00',
        110.0,
        141,
        80,
        90.8,
        1.84,
        'Gosariaren ondoren.'
    ),
    (
        90,
        '2026-01-18 09:20:00',
        113.0,
        127,
        79,
        66.6,
        1.60,
        'Baraualdian.'
    ),
    (
        92,
        '2026-01-18 07:02:00',
        125.0,
        134,
        86,
        60.1,
        1.79,
        'Gosariaren ondoren.'
    ),
    (
        93,
        '2026-01-18 09:02:00',
        123.0,
        136,
        91,
        75.3,
        1.81,
        'Baraualdian.'
    ),
    (
        94,
        '2026-01-18 07:18:00',
        104.0,
        128,
        77,
        87.9,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        95,
        '2026-01-18 08:03:00',
        135.0,
        135,
        86,
        90.6,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        96,
        '2026-01-18 10:57:00',
        102.0,
        128,
        82,
        76.5,
        1.71,
        'Baraualdian.'
    ),
    (
        97,
        '2026-01-18 09:49:00',
        128.0,
        127,
        81,
        86.5,
        1.56,
        'Baraualdian.'
    ),
    (
        98,
        '2026-01-18 10:10:00',
        125.0,
        122,
        84,
        84.4,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        99,
        '2026-01-18 09:30:00',
        112.0,
        132,
        86,
        86.4,
        1.71,
        'Dena ondo.'
    ),
    (
        100,
        '2026-01-18 08:56:00',
        119.0,
        137,
        79,
        83.0,
        1.57,
        'Dena ondo.'
    ),
    (
        52,
        '2026-01-19 10:48:00',
        130.0,
        127,
        85,
        94.4,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        53,
        '2026-01-19 07:07:00',
        103.0,
        117,
        84,
        74.3,
        1.75,
        'Apur bat nekatuta.'
    ),
    (
        56,
        '2026-01-19 10:04:00',
        103.0,
        144,
        94,
        89.1,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        58,
        '2026-01-19 08:06:00',
        82.0,
        126,
        76,
        66.8,
        1.68,
        'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2026-01-19 10:15:00',
        132.0,
        121,
        81,
        62.2,
        1.73,
        'Baraualdian.'
    ),
    (
        60,
        '2026-01-19 09:27:00',
        136.0,
        116,
        85,
        79.0,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        61,
        '2026-01-19 07:07:00',
        129.0,
        131,
        78,
        72.1,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        62,
        '2026-01-19 08:47:00',
        98.0,
        131,
        76,
        66.2,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2026-01-19 10:42:00',
        110.0,
        134,
        79,
        80.3,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2026-01-19 10:14:00',
        109.0,
        125,
        77,
        90.1,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        66,
        '2026-01-19 08:35:00',
        121.0,
        127,
        85,
        74.7,
        1.59,
        'Baraualdian.'
    ),
    (
        67,
        '2026-01-19 09:47:00',
        82.0,
        139,
        85,
        71.0,
        1.72,
        'Baraualdian.'
    ),
    (
        68,
        '2026-01-19 09:09:00',
        127.0,
        123,
        84,
        61.2,
        1.85,
        'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-01-19 08:43:00',
        127.0,
        131,
        82,
        94.0,
        1.66,
        'Baraualdian.'
    ),
    (
        70,
        '2026-01-19 07:30:00',
        104.0,
        134,
        85,
        74.2,
        1.70,
        'Kirola egin ondoren.'
    ),
    (
        71,
        '2026-01-19 07:48:00',
        107.0,
        125,
        85,
        88.7,
        1.63,
        'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2026-01-19 07:51:00',
        117.0,
        124,
        75,
        91.7,
        1.69,
        'Baraualdian.'
    ),
    (
        75,
        '2026-01-19 10:45:00',
        115.0,
        128,
        80,
        59.7,
        1.65,
        'Baraualdian.'
    ),
    (
        76,
        '2026-01-19 10:05:00',
        108.0,
        124,
        90,
        65.7,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        77,
        '2026-01-19 07:02:00',
        128.0,
        140,
        90,
        66.2,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        78,
        '2026-01-19 10:45:00',
        87.0,
        131,
        75,
        62.0,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        79,
        '2026-01-19 10:30:00',
        107.0,
        142,
        87,
        66.5,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2026-01-19 08:01:00',
        104.0,
        136,
        84,
        62.1,
        1.78,
        'Apur bat nekatuta.'
    ),
    (
        83,
        '2026-01-19 08:11:00',
        123.0,
        121,
        94,
        64.2,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        85,
        '2026-01-19 09:27:00',
        98.0,
        129,
        83,
        80.2,
        1.72,
        'Apur bat nekatuta.'
    ),
    (
        86,
        '2026-01-19 07:22:00',
        110.0,
        140,
        87,
        68.5,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2026-01-19 09:37:00',
        111.0,
        121,
        76,
        73.0,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2026-01-19 07:03:00',
        113.0,
        118,
        80,
        90.3,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2026-01-19 09:55:00',
        126.0,
        127,
        79,
        91.7,
        1.84,
        'Baraualdian.'
    ),
    (
        90,
        '2026-01-19 09:01:00',
        89.0,
        138,
        79,
        65.8,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        91,
        '2026-01-19 10:13:00',
        118.0,
        133,
        81,
        89.7,
        1.58,
        'Baraualdian.'
    ),
    (
        92,
        '2026-01-19 07:54:00',
        102.0,
        141,
        83,
        60.0,
        1.79,
        'Kirola egin ondoren.'
    ),
    (
        93,
        '2026-01-19 10:45:00',
        99.0,
        135,
        83,
        76.2,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        95,
        '2026-01-19 09:12:00',
        125.0,
        136,
        77,
        89.1,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        96,
        '2026-01-19 09:26:00',
        123.0,
        121,
        77,
        77.9,
        1.71,
        'Baraualdian.'
    ),
    (
        97,
        '2026-01-19 07:51:00',
        128.0,
        124,
        74,
        87.9,
        1.56,
        'Dena ondo.'
    ),
    (
        98,
        '2026-01-19 09:01:00',
        127.0,
        119,
        83,
        84.6,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        99,
        '2026-01-19 07:37:00',
        124.0,
        131,
        74,
        85.1,
        1.71,
        'Apur bat nekatuta.'
    ),
    (
        100,
        '2026-01-19 09:40:00',
        108.0,
        135,
        73,
        81.5,
        1.57,
        'Dena ondo.'
    ),
    (
        51,
        '2026-01-20 07:36:00',
        100.0,
        136,
        83,
        63.0,
        1.76,
        'Baraualdian.'
    ),
    (
        52,
        '2026-01-20 07:07:00',
        113.0,
        129,
        93,
        93.3,
        1.77,
        'Baraualdian.'
    ),
    (
        53,
        '2026-01-20 09:43:00',
        116.0,
        124,
        92,
        74.1,
        1.75,
        'Dena ondo.'
    ),
    (
        54,
        '2026-01-20 08:17:00',
        116.0,
        133,
        81,
        86.9,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        55,
        '2026-01-20 08:50:00',
        133.0,
        140,
        71,
        81.0,
        1.76,
        'Kirola egin ondoren.'
    ),
    (
        56,
        '2026-01-20 08:15:00',
        93.0,
        133,
        93,
        90.8,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        57,
        '2026-01-20 08:50:00',
        90.0,
        121,
        88,
        83.2,
        1.69,
        'Baraualdian.'
    ),
    (
        58,
        '2026-01-20 09:53:00',
        80.0,
        126,
        83,
        67.6,
        1.68,
        'Baraualdian.'
    ),
    (
        61,
        '2026-01-20 08:50:00',
        104.0,
        126,
        81,
        72.4,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        62,
        '2026-01-20 08:32:00',
        124.0,
        122,
        77,
        66.6,
        1.56,
        'Dena ondo.'
    ),
    (
        63,
        '2026-01-20 08:18:00',
        128.0,
        142,
        78,
        80.0,
        1.80,
        'Dena ondo.'
    ),
    (
        64,
        '2026-01-20 09:23:00',
        126.0,
        121,
        77,
        95.1,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        66,
        '2026-01-20 09:53:00',
        116.0,
        135,
        89,
        74.7,
        1.59,
        'Kirola egin ondoren.'
    ),
    (
        68,
        '2026-01-20 07:08:00',
        109.0,
        136,
        83,
        60.4,
        1.85,
        'Dena ondo.'
    ),
    (
        69,
        '2026-01-20 10:01:00',
        96.0,
        139,
        87,
        94.3,
        1.66,
        'Kirola egin ondoren.'
    ),
    (
        70,
        '2026-01-20 10:59:00',
        94.0,
        133,
        76,
        75.1,
        1.70,
        'Baraualdian.'
    ),
    (
        71,
        '2026-01-20 08:34:00',
        122.0,
        134,
        86,
        88.7,
        1.63,
        'Dena ondo.'
    ),
    (
        72,
        '2026-01-20 10:03:00',
        101.0,
        133,
        87,
        93.0,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        73,
        '2026-01-20 09:19:00',
        139.0,
        127,
        74,
        95.5,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        74,
        '2026-01-20 09:23:00',
        139.0,
        130,
        78,
        63.8,
        1.67,
        'Baraualdian.'
    ),
    (
        75,
        '2026-01-20 09:49:00',
        123.0,
        141,
        72,
        59.7,
        1.65,
        'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2026-01-20 08:12:00',
        105.0,
        119,
        90,
        66.1,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2026-01-20 10:00:00',
        103.0,
        125,
        90,
        66.2,
        1.67,
        'Baraualdian.'
    ),
    (
        78,
        '2026-01-20 08:07:00',
        106.0,
        132,
        80,
        62.2,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        79,
        '2026-01-20 08:31:00',
        114.0,
        136,
        77,
        67.6,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2026-01-20 07:14:00',
        97.0,
        135,
        93,
        63.9,
        1.78,
        'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2026-01-20 10:51:00',
        88.0,
        119,
        86,
        86.2,
        1.58,
        'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-01-20 09:12:00',
        109.0,
        130,
        93,
        88.5,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        83,
        '2026-01-20 10:01:00',
        96.0,
        135,
        85,
        65.5,
        1.80,
        'Baraualdian.'
    ),
    (
        84,
        '2026-01-20 10:39:00',
        87.0,
        137,
        78,
        78.6,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        85,
        '2026-01-20 07:04:00',
        109.0,
        119,
        90,
        82.0,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2026-01-20 09:49:00',
        121.0,
        141,
        78,
        67.4,
        1.57,
        'Baraualdian.'
    ),
    (
        87,
        '2026-01-20 07:50:00',
        137.0,
        140,
        80,
        73.7,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2026-01-20 08:35:00',
        118.0,
        126,
        78,
        90.1,
        1.84,
        'Kirola egin ondoren.'
    ),
    (
        90,
        '2026-01-20 10:46:00',
        123.0,
        134,
        90,
        66.5,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        92,
        '2026-01-20 09:49:00',
        133.0,
        132,
        82,
        60.1,
        1.79,
        'Dena ondo.'
    ),
    (
        93,
        '2026-01-20 09:50:00',
        125.0,
        132,
        83,
        75.8,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        94,
        '2026-01-20 07:13:00',
        110.0,
        123,
        88,
        86.0,
        1.83,
        'Kirola egin ondoren.'
    ),
    (
        95,
        '2026-01-20 09:24:00',
        127.0,
        141,
        76,
        90.7,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-01-20 09:52:00',
        118.0,
        125,
        76,
        77.9,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2026-01-20 10:17:00',
        127.0,
        124,
        84,
        87.5,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        98,
        '2026-01-20 10:08:00',
        113.0,
        119,
        80,
        85.0,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        99,
        '2026-01-20 09:05:00',
        113.0,
        131,
        83,
        86.8,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2026-01-20 09:07:00',
        89.0,
        132,
        76,
        81.1,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        51,
        '2026-01-21 08:37:00',
        109.0,
        133,
        89,
        64.2,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        54,
        '2026-01-21 10:26:00',
        122.0,
        131,
        87,
        87.7,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        55,
        '2026-01-21 08:12:00',
        109.0,
        128,
        78,
        81.6,
        1.76,
        'Baraualdian.'
    ),
    (
        56,
        '2026-01-21 09:12:00',
        115.0,
        134,
        87,
        90.1,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        57,
        '2026-01-21 10:05:00',
        104.0,
        118,
        90,
        82.1,
        1.69,
        'Dena ondo.'
    ),
    (
        58,
        '2026-01-21 10:21:00',
        100.0,
        140,
        83,
        67.0,
        1.68,
        'Baraualdian.'
    ),
    (
        59,
        '2026-01-21 09:11:00',
        114.0,
        112,
        81,
        64.0,
        1.73,
        'Ondo sentitzen naiz.'
    ),
    (
        60,
        '2026-01-21 07:27:00',
        130.0,
        117,
        80,
        77.3,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        61,
        '2026-01-21 10:44:00',
        110.0,
        124,
        93,
        72.2,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        62,
        '2026-01-21 07:57:00',
        124.0,
        137,
        75,
        66.5,
        1.56,
        'Baraualdian.'
    ),
    (
        63,
        '2026-01-21 08:20:00',
        104.0,
        141,
        88,
        81.6,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        64,
        '2026-01-21 08:50:00',
        95.0,
        135,
        74,
        94.2,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2026-01-21 10:52:00',
        131.0,
        128,
        77,
        91.8,
        1.55,
        'Kirola egin ondoren.'
    ),
    (
        66,
        '2026-01-21 07:49:00',
        120.0,
        129,
        76,
        75.7,
        1.59,
        'Baraualdian.'
    ),
    (
        67,
        '2026-01-21 09:54:00',
        92.0,
        138,
        77,
        72.1,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        68,
        '2026-01-21 07:13:00',
        112.0,
        125,
        78,
        60.7,
        1.85,
        'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-01-21 07:57:00',
        94.0,
        137,
        82,
        94.6,
        1.66,
        'Baraualdian.'
    ),
    (
        72,
        '2026-01-21 08:14:00',
        85.0,
        127,
        84,
        92.7,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        73,
        '2026-01-21 09:57:00',
        134.0,
        118,
        81,
        94.6,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        75,
        '2026-01-21 08:23:00',
        130.0,
        125,
        84,
        61.0,
        1.65,
        'Dena ondo.'
    ),
    (
        77,
        '2026-01-21 08:39:00',
        133.0,
        137,
        84,
        66.0,
        1.67,
        'Dena ondo.'
    ),
    (
        78,
        '2026-01-21 08:54:00',
        96.0,
        124,
        87,
        63.0,
        1.61,
        'Dena ondo.'
    ),
    (
        79,
        '2026-01-21 07:29:00',
        132.0,
        136,
        76,
        68.0,
        1.67,
        'Baraualdian.'
    ),
    (
        80,
        '2026-01-21 08:31:00',
        114.0,
        135,
        81,
        62.0,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-01-21 09:43:00',
        115.0,
        139,
        94,
        85.7,
        1.58,
        'Ondo sentitzen naiz.'
    ),
    (
        82,
        '2026-01-21 10:03:00',
        108.0,
        134,
        94,
        90.0,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        83,
        '2026-01-21 08:03:00',
        117.0,
        125,
        93,
        65.4,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        85,
        '2026-01-21 08:28:00',
        86.0,
        122,
        81,
        80.6,
        1.72,
        'Apur bat nekatuta.'
    ),
    (
        86,
        '2026-01-21 07:31:00',
        115.0,
        130,
        84,
        67.1,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2026-01-21 08:18:00',
        102.0,
        124,
        75,
        73.2,
        1.61,
        'Dena ondo.'
    ),
    (
        90,
        '2026-01-21 10:59:00',
        93.0,
        128,
        80,
        65.5,
        1.60,
        'Dena ondo.'
    ),
    (
        91,
        '2026-01-21 07:34:00',
        107.0,
        126,
        81,
        90.0,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2026-01-21 09:41:00',
        129.0,
        124,
        86,
        75.3,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        94,
        '2026-01-21 07:45:00',
        84.0,
        141,
        77,
        86.6,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2026-01-21 08:47:00',
        135.0,
        127,
        79,
        90.0,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        97,
        '2026-01-21 09:58:00',
        126.0,
        139,
        86,
        86.3,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        98,
        '2026-01-21 09:32:00',
        100.0,
        137,
        76,
        85.0,
        1.60,
        'Dena ondo.'
    ),
    (
        99,
        '2026-01-21 10:00:00',
        99.0,
        126,
        73,
        87.0,
        1.71,
        'Baraualdian.'
    ),
    (
        100,
        '2026-01-21 09:33:00',
        92.0,
        137,
        76,
        81.1,
        1.57,
        'Baraualdian.'
    ),
    (
        51,
        '2026-01-22 09:45:00',
        87.0,
        128,
        81,
        64.2,
        1.76,
        'Ondo sentitzen naiz.'
    ),
    (
        52,
        '2026-01-22 07:28:00',
        94.0,
        131,
        87,
        94.9,
        1.77,
        'Baraualdian.'
    ),
    (
        53,
        '2026-01-22 07:06:00',
        90.0,
        122,
        78,
        75.3,
        1.75,
        'Apur bat nekatuta.'
    ),
    (
        54,
        '2026-01-22 10:56:00',
        118.0,
        132,
        84,
        86.5,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        55,
        '2026-01-22 10:19:00',
        134.0,
        127,
        86,
        82.0,
        1.76,
        'Dena ondo.'
    ),
    (
        58,
        '2026-01-22 08:10:00',
        94.0,
        141,
        77,
        67.9,
        1.68,
        'Baraualdian.'
    ),
    (
        59,
        '2026-01-22 09:59:00',
        114.0,
        124,
        91,
        63.3,
        1.73,
        'Kirola egin ondoren.'
    ),
    (
        60,
        '2026-01-22 10:29:00',
        133.0,
        132,
        90,
        77.4,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2026-01-22 08:42:00',
        97.0,
        125,
        81,
        73.1,
        1.83,
        'Gosariaren ondoren.'
    ),
    (
        62,
        '2026-01-22 09:27:00',
        126.0,
        125,
        83,
        65.8,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2026-01-22 10:28:00',
        117.0,
        128,
        76,
        81.1,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2026-01-22 07:06:00',
        106.0,
        140,
        75,
        95.0,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        65,
        '2026-01-22 08:16:00',
        118.0,
        128,
        77,
        91.2,
        1.55,
        'Dena ondo.'
    ),
    (
        66,
        '2026-01-22 09:34:00',
        116.0,
        128,
        85,
        74.6,
        1.59,
        'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2026-01-22 09:46:00',
        120.0,
        128,
        84,
        71.0,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        68,
        '2026-01-22 10:44:00',
        107.0,
        140,
        83,
        60.4,
        1.85,
        'Kirola egin ondoren.'
    ),
    (
        69,
        '2026-01-22 07:18:00',
        112.0,
        132,
        80,
        95.3,
        1.66,
        'Baraualdian.'
    ),
    (
        70,
        '2026-01-22 10:07:00',
        104.0,
        120,
        76,
        74.4,
        1.70,
        'Apur bat nekatuta.'
    ),
    (
        71,
        '2026-01-22 10:27:00',
        128.0,
        124,
        78,
        88.5,
        1.63,
        'Kirola egin ondoren.'
    ),
    (
        72,
        '2026-01-22 08:20:00',
        103.0,
        126,
        79,
        92.0,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2026-01-22 10:30:00',
        108.0,
        123,
        75,
        95.7,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2026-01-22 09:34:00',
        131.0,
        113,
        90,
        63.3,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        78,
        '2026-01-22 07:15:00',
        93.0,
        117,
        86,
        63.5,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        79,
        '2026-01-22 07:26:00',
        118.0,
        136,
        82,
        67.8,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-01-22 09:08:00',
        114.0,
        129,
        82,
        63.6,
        1.78,
        'Dena ondo.'
    ),
    (
        84,
        '2026-01-22 09:52:00',
        114.0,
        135,
        76,
        80.0,
        1.67,
        'Dena ondo.'
    ),
    (
        85,
        '2026-01-22 09:43:00',
        116.0,
        135,
        78,
        80.1,
        1.72,
        'Baraualdian.'
    ),
    (
        86,
        '2026-01-22 08:19:00',
        127.0,
        132,
        77,
        69.0,
        1.57,
        'Gosariaren ondoren.'
    ),
    (
        88,
        '2026-01-22 09:22:00',
        97.0,
        118,
        80,
        89.3,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2026-01-22 09:35:00',
        129.0,
        123,
        89,
        91.1,
        1.84,
        'Baraualdian.'
    ),
    (
        90,
        '2026-01-22 08:24:00',
        103.0,
        128,
        81,
        66.8,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2026-01-22 07:55:00',
        108.0,
        124,
        92,
        75.9,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        94,
        '2026-01-22 09:35:00',
        89.0,
        123,
        89,
        86.2,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        95,
        '2026-01-22 07:00:00',
        102.0,
        130,
        77,
        91.0,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        96,
        '2026-01-22 07:55:00',
        119.0,
        132,
        77,
        76.8,
        1.71,
        'Baraualdian.'
    ),
    (
        97,
        '2026-01-22 08:19:00',
        140.0,
        128,
        83,
        87.7,
        1.56,
        'Baraualdian.'
    ),
    (
        98,
        '2026-01-22 09:08:00',
        111.0,
        130,
        84,
        84.3,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        99,
        '2026-01-22 09:04:00',
        105.0,
        119,
        74,
        85.0,
        1.71,
        'Baraualdian.'
    ),
    (
        52,
        '2026-01-23 09:51:00',
        102.0,
        127,
        94,
        94.1,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        53,
        '2026-01-23 07:49:00',
        108.0,
        133,
        82,
        74.0,
        1.75,
        'Dena ondo.'
    ),
    (
        54,
        '2026-01-23 07:55:00',
        118.0,
        141,
        84,
        86.2,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        55,
        '2026-01-23 07:41:00',
        113.0,
        124,
        85,
        80.2,
        1.76,
        'Baraualdian.'
    ),
    (
        57,
        '2026-01-23 07:55:00',
        113.0,
        123,
        86,
        83.9,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        58,
        '2026-01-23 07:36:00',
        101.0,
        129,
        90,
        67.4,
        1.68,
        'Gosariaren ondoren.'
    ),
    (
        59,
        '2026-01-23 07:09:00',
        132.0,
        122,
        83,
        63.2,
        1.73,
        'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2026-01-23 10:38:00',
        110.0,
        134,
        94,
        78.7,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-01-23 09:14:00',
        127.0,
        128,
        82,
        73.3,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        62,
        '2026-01-23 07:09:00',
        109.0,
        140,
        78,
        65.4,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        65,
        '2026-01-23 07:52:00',
        98.0,
        125,
        86,
        90.3,
        1.55,
        'Kirola egin ondoren.'
    ),
    (
        66,
        '2026-01-23 07:31:00',
        100.0,
        126,
        82,
        75.3,
        1.59,
        'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2026-01-23 09:10:00',
        81.0,
        138,
        84,
        71.1,
        1.72,
        'Gaur goizean neurtuta.'
    ),
    (
        68,
        '2026-01-23 09:05:00',
        107.0,
        120,
        81,
        60.3,
        1.85,
        'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-01-23 08:17:00',
        106.0,
        133,
        76,
        94.5,
        1.66,
        'Dena ondo.'
    ),
    (
        70,
        '2026-01-23 09:55:00',
        117.0,
        136,
        79,
        75.0,
        1.70,
        'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2026-01-23 07:06:00',
        109.0,
        134,
        83,
        89.7,
        1.63,
        'Baraualdian.'
    ),
    (
        73,
        '2026-01-23 07:20:00',
        107.0,
        118,
        75,
        95.3,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2026-01-23 07:28:00',
        104.0,
        113,
        86,
        63.5,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2026-01-23 08:38:00',
        112.0,
        145,
        84,
        60.5,
        1.65,
        'Apur bat nekatuta.'
    ),
    (
        76,
        '2026-01-23 10:40:00',
        120.0,
        126,
        88,
        66.4,
        1.69,
        'Dena ondo.'
    ),
    (
        77,
        '2026-01-23 09:33:00',
        114.0,
        137,
        89,
        68.0,
        1.67,
        'Dena ondo.'
    ),
    (
        79,
        '2026-01-23 09:09:00',
        132.0,
        131,
        75,
        66.3,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-01-23 07:32:00',
        95.0,
        122,
        85,
        62.8,
        1.78,
        'Apur bat nekatuta.'
    ),
    (
        81,
        '2026-01-23 09:58:00',
        105.0,
        131,
        84,
        87.0,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-01-23 09:30:00',
        114.0,
        136,
        86,
        89.4,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        83,
        '2026-01-23 07:56:00',
        114.0,
        128,
        87,
        64.6,
        1.80,
        'Baraualdian.'
    ),
    (
        84,
        '2026-01-23 08:01:00',
        97.0,
        131,
        79,
        79.2,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        85,
        '2026-01-23 08:31:00',
        97.0,
        137,
        85,
        80.6,
        1.72,
        'Baraualdian.'
    ),
    (
        86,
        '2026-01-23 09:19:00',
        106.0,
        134,
        74,
        68.5,
        1.57,
        'Gosariaren ondoren.'
    ),
    (
        89,
        '2026-01-23 09:43:00',
        107.0,
        132,
        91,
        91.5,
        1.84,
        'Dena ondo.'
    ),
    (
        90,
        '2026-01-23 10:47:00',
        102.0,
        119,
        83,
        66.4,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        94,
        '2026-01-23 08:32:00',
        94.0,
        134,
        83,
        86.1,
        1.83,
        'Kirola egin ondoren.'
    ),
    (
        95,
        '2026-01-23 08:14:00',
        106.0,
        128,
        80,
        91.0,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        96,
        '2026-01-23 08:23:00',
        95.0,
        137,
        76,
        76.8,
        1.71,
        'Apur bat nekatuta.'
    ),
    (
        97,
        '2026-01-23 08:06:00',
        135.0,
        130,
        73,
        86.9,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-01-23 08:21:00',
        123.0,
        120,
        82,
        84.0,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2026-01-23 10:02:00',
        108.0,
        136,
        79,
        82.9,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        51,
        '2026-01-24 08:11:00',
        95.0,
        123,
        81,
        63.9,
        1.76,
        'Baraualdian.'
    ),
    (
        53,
        '2026-01-24 09:47:00',
        106.0,
        124,
        84,
        75.5,
        1.75,
        'Gosariaren ondoren.'
    ),
    (
        54,
        '2026-01-24 08:48:00',
        91.0,
        137,
        80,
        87.6,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2026-01-24 07:20:00',
        91.0,
        141,
        84,
        89.8,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        57,
        '2026-01-24 07:38:00',
        109.0,
        119,
        88,
        83.2,
        1.69,
        'Dena ondo.'
    ),
    (
        58,
        '2026-01-24 08:41:00',
        85.0,
        135,
        78,
        67.2,
        1.68,
        'Ondo sentitzen naiz.'
    ),
    (
        59,
        '2026-01-24 07:04:00',
        126.0,
        123,
        92,
        62.1,
        1.73,
        'Apur bat nekatuta.'
    ),
    (
        60,
        '2026-01-24 09:33:00',
        134.0,
        116,
        87,
        78.6,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-01-24 10:04:00',
        125.0,
        124,
        90,
        72.8,
        1.83,
        'Gosariaren ondoren.'
    ),
    (
        62,
        '2026-01-24 07:27:00',
        115.0,
        123,
        71,
        65.0,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        63,
        '2026-01-24 09:43:00',
        115.0,
        134,
        79,
        80.9,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        64,
        '2026-01-24 09:35:00',
        114.0,
        130,
        79,
        95.4,
        1.56,
        'Baraualdian.'
    ),
    (
        65,
        '2026-01-24 09:01:00',
        121.0,
        135,
        76,
        90.6,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        66,
        '2026-01-24 07:11:00',
        90.0,
        132,
        76,
        75.9,
        1.59,
        'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2026-01-24 07:58:00',
        104.0,
        131,
        90,
        71.2,
        1.72,
        'Baraualdian.'
    ),
    (
        68,
        '2026-01-24 07:55:00',
        97.0,
        129,
        72,
        60.5,
        1.85,
        'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-01-24 08:36:00',
        96.0,
        137,
        76,
        95.8,
        1.66,
        'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2026-01-24 09:40:00',
        107.0,
        125,
        88,
        74.9,
        1.70,
        'Baraualdian.'
    ),
    (
        71,
        '2026-01-24 08:55:00',
        124.0,
        122,
        86,
        89.0,
        1.63,
        'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2026-01-24 07:10:00',
        89.0,
        134,
        85,
        91.1,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2026-01-24 10:12:00',
        110.0,
        121,
        83,
        95.1,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        74,
        '2026-01-24 08:17:00',
        108.0,
        120,
        79,
        63.3,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        75,
        '2026-01-24 08:25:00',
        117.0,
        137,
        71,
        59.8,
        1.65,
        'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2026-01-24 08:25:00',
        126.0,
        130,
        85,
        66.2,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        77,
        '2026-01-24 07:05:00',
        136.0,
        135,
        85,
        67.6,
        1.67,
        'Dena ondo.'
    ),
    (
        78,
        '2026-01-24 09:37:00',
        98.0,
        124,
        84,
        62.8,
        1.61,
        'Baraualdian.'
    ),
    (
        79,
        '2026-01-24 07:40:00',
        109.0,
        143,
        77,
        67.2,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-01-24 10:13:00',
        116.0,
        123,
        84,
        63.3,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-01-24 09:04:00',
        117.0,
        119,
        84,
        86.2,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-01-24 10:42:00',
        124.0,
        143,
        79,
        88.2,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        83,
        '2026-01-24 08:24:00',
        117.0,
        133,
        80,
        65.9,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2026-01-24 10:48:00',
        118.0,
        118,
        81,
        79.3,
        1.67,
        'Dena ondo.'
    ),
    (
        85,
        '2026-01-24 10:34:00',
        89.0,
        119,
        88,
        81.1,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        86,
        '2026-01-24 08:46:00',
        102.0,
        128,
        78,
        68.1,
        1.57,
        'Dena ondo.'
    ),
    (
        88,
        '2026-01-24 07:43:00',
        101.0,
        114,
        80,
        90.0,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        89,
        '2026-01-24 07:09:00',
        108.0,
        131,
        88,
        91.4,
        1.84,
        'Gosariaren ondoren.'
    ),
    (
        91,
        '2026-01-24 10:48:00',
        80.0,
        127,
        90,
        89.9,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2026-01-24 07:43:00',
        106.0,
        138,
        93,
        59.7,
        1.79,
        'Kirola egin ondoren.'
    ),
    (
        93,
        '2026-01-24 07:05:00',
        110.0,
        126,
        83,
        75.1,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        94,
        '2026-01-24 08:59:00',
        101.0,
        138,
        80,
        86.3,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2026-01-24 09:20:00',
        111.0,
        125,
        73,
        90.6,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-01-24 10:21:00',
        88.0,
        122,
        78,
        76.5,
        1.71,
        'Baraualdian.'
    ),
    (
        97,
        '2026-01-24 10:48:00',
        105.0,
        135,
        71,
        86.5,
        1.56,
        'Baraualdian.'
    ),
    (
        98,
        '2026-01-24 08:30:00',
        114.0,
        120,
        87,
        83.1,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        99,
        '2026-01-24 10:17:00',
        124.0,
        132,
        75,
        85.6,
        1.71,
        'Gosariaren ondoren.'
    ),
    (
        51,
        '2026-01-25 09:35:00',
        124.0,
        129,
        88,
        64.9,
        1.76,
        'Kirola egin ondoren.'
    ),
    (
        53,
        '2026-01-25 07:40:00',
        124.0,
        117,
        89,
        75.7,
        1.75,
        'Kirola egin ondoren.'
    ),
    (
        54,
        '2026-01-25 08:28:00',
        101.0,
        126,
        76,
        86.3,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        55,
        '2026-01-25 10:23:00',
        109.0,
        137,
        84,
        81.7,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        56,
        '2026-01-25 07:33:00',
        83.0,
        140,
        87,
        90.0,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        57,
        '2026-01-25 09:09:00',
        77.0,
        129,
        85,
        83.4,
        1.69,
        'Dena ondo.'
    ),
    (
        59,
        '2026-01-25 08:44:00',
        121.0,
        124,
        83,
        62.0,
        1.73,
        'Kirola egin ondoren.'
    ),
    (
        60,
        '2026-01-25 09:28:00',
        134.0,
        134,
        93,
        78.9,
        1.81,
        'Baraualdian.'
    ),
    (
        63,
        '2026-01-25 09:58:00',
        102.0,
        131,
        86,
        81.7,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2026-01-25 09:35:00',
        108.0,
        127,
        90,
        91.0,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2026-01-25 09:23:00',
        112.0,
        132,
        86,
        75.4,
        1.59,
        'Dena ondo.'
    ),
    (
        67,
        '2026-01-25 07:59:00',
        93.0,
        133,
        82,
        71.8,
        1.72,
        'Gaur goizean neurtuta.'
    ),
    (
        68,
        '2026-01-25 07:53:00',
        106.0,
        126,
        84,
        60.6,
        1.85,
        'Dena ondo.'
    ),
    (
        69,
        '2026-01-25 10:54:00',
        120.0,
        125,
        91,
        94.3,
        1.66,
        'Gosariaren ondoren.'
    ),
    (
        70,
        '2026-01-25 09:51:00',
        120.0,
        121,
        75,
        74.7,
        1.70,
        'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2026-01-25 07:07:00',
        109.0,
        120,
        72,
        95.5,
        1.55,
        'Dena ondo.'
    ),
    (
        74,
        '2026-01-25 10:44:00',
        110.0,
        130,
        79,
        64.1,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        75,
        '2026-01-25 10:28:00',
        134.0,
        130,
        70,
        60.2,
        1.65,
        'Dena ondo.'
    ),
    (
        76,
        '2026-01-25 07:49:00',
        105.0,
        114,
        93,
        67.0,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2026-01-25 10:53:00',
        136.0,
        127,
        87,
        67.0,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        78,
        '2026-01-25 10:30:00',
        117.0,
        131,
        74,
        62.7,
        1.61,
        'Dena ondo.'
    ),
    (
        79,
        '2026-01-25 09:34:00',
        105.0,
        130,
        76,
        67.8,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        80,
        '2026-01-25 10:34:00',
        100.0,
        139,
        79,
        62.7,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-01-25 08:51:00',
        96.0,
        125,
        85,
        85.8,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-01-25 07:55:00',
        126.0,
        126,
        89,
        89.1,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        83,
        '2026-01-25 07:02:00',
        135.0,
        130,
        93,
        65.0,
        1.80,
        'Dena ondo.'
    ),
    (
        84,
        '2026-01-25 07:20:00',
        113.0,
        130,
        79,
        79.9,
        1.67,
        'Baraualdian.'
    ),
    (
        85,
        '2026-01-25 09:51:00',
        118.0,
        120,
        78,
        81.3,
        1.72,
        'Apur bat nekatuta.'
    ),
    (
        86,
        '2026-01-25 07:40:00',
        114.0,
        137,
        80,
        68.0,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        87,
        '2026-01-25 08:21:00',
        115.0,
        138,
        78,
        72.5,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        88,
        '2026-01-25 09:27:00',
        129.0,
        127,
        79,
        89.8,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        89,
        '2026-01-25 08:57:00',
        99.0,
        125,
        86,
        90.8,
        1.84,
        'Baraualdian.'
    ),
    (
        90,
        '2026-01-25 10:08:00',
        92.0,
        119,
        89,
        66.2,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        91,
        '2026-01-25 07:44:00',
        107.0,
        144,
        86,
        90.8,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2026-01-25 08:11:00',
        138.0,
        129,
        90,
        59.1,
        1.79,
        'Gosariaren ondoren.'
    ),
    (
        93,
        '2026-01-25 10:21:00',
        121.0,
        138,
        84,
        75.1,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        95,
        '2026-01-25 09:55:00',
        133.0,
        127,
        74,
        90.1,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-01-25 08:05:00',
        99.0,
        133,
        78,
        77.8,
        1.71,
        'Dena ondo.'
    ),
    (
        97,
        '2026-01-25 09:10:00',
        107.0,
        134,
        85,
        87.5,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        99,
        '2026-01-25 08:41:00',
        89.0,
        118,
        73,
        87.0,
        1.71,
        'Dena ondo.'
    ),
    (
        51,
        '2026-01-26 09:44:00',
        116.0,
        130,
        88,
        63.1,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        52,
        '2026-01-26 08:15:00',
        120.0,
        120,
        93,
        94.3,
        1.77,
        'Baraualdian.'
    ),
    (
        53,
        '2026-01-26 07:01:00',
        110.0,
        131,
        85,
        75.3,
        1.75,
        'Apur bat nekatuta.'
    ),
    (
        56,
        '2026-01-26 09:19:00',
        105.0,
        129,
        83,
        90.4,
        1.61,
        'Baraualdian.'
    ),
    (
        57,
        '2026-01-26 10:39:00',
        115.0,
        133,
        81,
        83.1,
        1.69,
        'Baraualdian.'
    ),
    (
        58,
        '2026-01-26 08:07:00',
        108.0,
        134,
        86,
        67.2,
        1.68,
        'Kirola egin ondoren.'
    ),
    (
        59,
        '2026-01-26 10:24:00',
        94.0,
        130,
        94,
        63.2,
        1.73,
        'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2026-01-26 08:10:00',
        109.0,
        121,
        95,
        77.2,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        61,
        '2026-01-26 10:57:00',
        116.0,
        131,
        78,
        73.1,
        1.83,
        'Dena ondo.'
    ),
    (
        62,
        '2026-01-26 10:21:00',
        122.0,
        137,
        82,
        65.9,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        63,
        '2026-01-26 07:03:00',
        132.0,
        138,
        86,
        81.9,
        1.80,
        'Gosariaren ondoren.'
    ),
    (
        64,
        '2026-01-26 09:39:00',
        104.0,
        137,
        80,
        95.2,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        66,
        '2026-01-26 10:45:00',
        117.0,
        116,
        80,
        74.1,
        1.59,
        'Apur bat nekatuta.'
    ),
    (
        67,
        '2026-01-26 09:49:00',
        81.0,
        126,
        83,
        71.8,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        68,
        '2026-01-26 07:42:00',
        109.0,
        135,
        73,
        61.3,
        1.85,
        'Ondo sentitzen naiz.'
    ),
    (
        69,
        '2026-01-26 08:09:00',
        94.0,
        130,
        78,
        95.0,
        1.66,
        'Kirola egin ondoren.'
    ),
    (
        70,
        '2026-01-26 10:16:00',
        119.0,
        123,
        77,
        75.9,
        1.70,
        'Dena ondo.'
    ),
    (
        71,
        '2026-01-26 07:06:00',
        107.0,
        123,
        81,
        89.8,
        1.63,
        'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2026-01-26 09:01:00',
        118.0,
        141,
        89,
        92.2,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        73,
        '2026-01-26 09:11:00',
        122.0,
        122,
        79,
        95.4,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2026-01-26 07:42:00',
        118.0,
        125,
        79,
        63.3,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        75,
        '2026-01-26 10:34:00',
        110.0,
        136,
        74,
        59.9,
        1.65,
        'Dena ondo.'
    ),
    (
        76,
        '2026-01-26 08:26:00',
        132.0,
        114,
        88,
        66.6,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        77,
        '2026-01-26 09:04:00',
        120.0,
        135,
        90,
        66.5,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2026-01-26 10:18:00',
        121.0,
        120,
        78,
        63.3,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        79,
        '2026-01-26 10:09:00',
        127.0,
        125,
        89,
        66.2,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-01-26 07:54:00',
        91.0,
        123,
        85,
        63.3,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-01-26 09:40:00',
        93.0,
        121,
        89,
        86.3,
        1.58,
        'Baraualdian.'
    ),
    (
        83,
        '2026-01-26 09:07:00',
        134.0,
        129,
        93,
        64.3,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        84,
        '2026-01-26 08:46:00',
        125.0,
        118,
        91,
        79.3,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        85,
        '2026-01-26 07:24:00',
        103.0,
        127,
        88,
        81.5,
        1.72,
        'Dena ondo.'
    ),
    (
        88,
        '2026-01-26 07:40:00',
        110.0,
        116,
        79,
        89.6,
        1.81,
        'Dena ondo.'
    ),
    (
        89,
        '2026-01-26 07:20:00',
        118.0,
        141,
        88,
        91.9,
        1.84,
        'Apur bat nekatuta.'
    ),
    (
        91,
        '2026-01-26 10:24:00',
        88.0,
        139,
        81,
        89.6,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2026-01-26 10:04:00',
        105.0,
        129,
        93,
        59.2,
        1.79,
        'Gosariaren ondoren.'
    ),
    (
        93,
        '2026-01-26 08:42:00',
        96.0,
        126,
        93,
        75.7,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2026-01-26 10:08:00',
        109.0,
        137,
        77,
        87.3,
        1.83,
        'Dena ondo.'
    ),
    (
        95,
        '2026-01-26 09:04:00',
        115.0,
        137,
        85,
        91.0,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2026-01-26 07:13:00',
        133.0,
        129,
        76,
        86.2,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        98,
        '2026-01-26 10:21:00',
        129.0,
        136,
        79,
        83.9,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        99,
        '2026-01-26 09:52:00',
        107.0,
        120,
        75,
        86.6,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        51,
        '2026-01-27 07:52:00',
        90.0,
        120,
        86,
        63.2,
        1.76,
        'Kirola egin ondoren.'
    ),
    (
        52,
        '2026-01-27 09:22:00',
        131.0,
        127,
        88,
        93.9,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        53,
        '2026-01-27 10:17:00',
        85.0,
        125,
        93,
        75.0,
        1.75,
        'Baraualdian.'
    ),
    (
        55,
        '2026-01-27 09:32:00',
        114.0,
        133,
        73,
        81.0,
        1.76,
        'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2026-01-27 07:29:00',
        115.0,
        130,
        90,
        90.6,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        58,
        '2026-01-27 10:37:00',
        90.0,
        136,
        90,
        66.2,
        1.68,
        'Kirola egin ondoren.'
    ),
    (
        59,
        '2026-01-27 10:50:00',
        102.0,
        114,
        83,
        62.5,
        1.73,
        'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2026-01-27 10:38:00',
        104.0,
        133,
        83,
        77.7,
        1.81,
        'Baraualdian.'
    ),
    (
        61,
        '2026-01-27 10:33:00',
        101.0,
        129,
        93,
        72.2,
        1.83,
        'Gosariaren ondoren.'
    ),
    (
        62,
        '2026-01-27 09:18:00',
        125.0,
        126,
        78,
        65.7,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        63,
        '2026-01-27 09:56:00',
        115.0,
        132,
        79,
        81.8,
        1.80,
        'Dena ondo.'
    ),
    (
        64,
        '2026-01-27 07:05:00',
        104.0,
        121,
        80,
        95.2,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2026-01-27 10:03:00',
        117.0,
        138,
        85,
        91.3,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        67,
        '2026-01-27 07:17:00',
        89.0,
        138,
        80,
        71.8,
        1.72,
        'Dena ondo.'
    ),
    (
        68,
        '2026-01-27 09:09:00',
        100.0,
        122,
        83,
        60.7,
        1.85,
        'Gosariaren ondoren.'
    ),
    (
        70,
        '2026-01-27 10:33:00',
        105.0,
        125,
        77,
        75.9,
        1.70,
        'Dena ondo.'
    ),
    (
        71,
        '2026-01-27 09:54:00',
        102.0,
        138,
        77,
        89.4,
        1.63,
        'Apur bat nekatuta.'
    ),
    (
        72,
        '2026-01-27 10:42:00',
        84.0,
        143,
        76,
        91.6,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-01-27 08:16:00',
        137.0,
        126,
        78,
        95.1,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        74,
        '2026-01-27 07:49:00',
        135.0,
        112,
        82,
        64.3,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        75,
        '2026-01-27 08:06:00',
        120.0,
        125,
        80,
        60.8,
        1.65,
        'Kirola egin ondoren.'
    ),
    (
        76,
        '2026-01-27 10:45:00',
        102.0,
        118,
        81,
        65.7,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2026-01-27 09:50:00',
        125.0,
        130,
        91,
        66.4,
        1.67,
        'Baraualdian.'
    ),
    (
        78,
        '2026-01-27 07:01:00',
        103.0,
        130,
        81,
        63.6,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        79,
        '2026-01-27 07:47:00',
        131.0,
        133,
        78,
        66.7,
        1.67,
        'Dena ondo.'
    ),
    (
        80,
        '2026-01-27 09:12:00',
        98.0,
        130,
        94,
        62.1,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-01-27 07:49:00',
        118.0,
        138,
        92,
        85.2,
        1.58,
        'Gosariaren ondoren.'
    ),
    (
        82,
        '2026-01-27 08:46:00',
        117.0,
        126,
        82,
        89.1,
        1.77,
        'Dena ondo.'
    ),
    (
        83,
        '2026-01-27 10:10:00',
        131.0,
        133,
        91,
        64.4,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        85,
        '2026-01-27 08:55:00',
        91.0,
        133,
        85,
        80.9,
        1.72,
        'Apur bat nekatuta.'
    ),
    (
        86,
        '2026-01-27 07:33:00',
        111.0,
        139,
        81,
        68.7,
        1.57,
        'Baraualdian.'
    ),
    (
        87,
        '2026-01-27 09:05:00',
        112.0,
        138,
        81,
        73.8,
        1.61,
        'Baraualdian.'
    ),
    (
        88,
        '2026-01-27 07:33:00',
        121.0,
        119,
        77,
        89.5,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        89,
        '2026-01-27 08:48:00',
        124.0,
        138,
        90,
        90.1,
        1.84,
        'Gosariaren ondoren.'
    ),
    (
        90,
        '2026-01-27 07:02:00',
        106.0,
        130,
        84,
        66.5,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2026-01-27 07:31:00',
        98.0,
        133,
        83,
        89.3,
        1.58,
        'Baraualdian.'
    ),
    (
        92,
        '2026-01-27 09:41:00',
        103.0,
        140,
        91,
        59.3,
        1.79,
        'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2026-01-27 08:38:00',
        122.0,
        140,
        94,
        76.4,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        96,
        '2026-01-27 09:15:00',
        98.0,
        123,
        82,
        77.4,
        1.71,
        'Gosariaren ondoren.'
    ),
    (
        99,
        '2026-01-27 10:30:00',
        99.0,
        130,
        88,
        87.0,
        1.71,
        'Gosariaren ondoren.'
    ),
    (
        100,
        '2026-01-27 08:23:00',
        102.0,
        130,
        72,
        81.9,
        1.57,
        'Baraualdian.'
    ),
    (
        51,
        '2026-01-28 10:38:00',
        112.0,
        120,
        81,
        63.5,
        1.76,
        'Dena ondo.'
    ),
    (
        52,
        '2026-01-28 07:29:00',
        113.0,
        136,
        86,
        94.8,
        1.77,
        'Dena ondo.'
    ),
    (
        53,
        '2026-01-28 09:33:00',
        97.0,
        132,
        83,
        74.4,
        1.75,
        'Gosariaren ondoren.'
    ),
    (
        54,
        '2026-01-28 09:03:00',
        101.0,
        133,
        85,
        86.5,
        1.60,
        'Dena ondo.'
    ),
    (
        55,
        '2026-01-28 09:33:00',
        129.0,
        136,
        78,
        81.1,
        1.76,
        'Gosariaren ondoren.'
    ),
    (
        56,
        '2026-01-28 09:26:00',
        116.0,
        129,
        88,
        89.5,
        1.61,
        'Baraualdian.'
    ),
    (
        57,
        '2026-01-28 10:41:00',
        99.0,
        129,
        93,
        83.8,
        1.69,
        'Baraualdian.'
    ),
    (
        58,
        '2026-01-28 07:04:00',
        86.0,
        135,
        83,
        66.2,
        1.68,
        'Apur bat nekatuta.'
    ),
    (
        59,
        '2026-01-28 09:23:00',
        97.0,
        113,
        95,
        63.2,
        1.73,
        'Apur bat nekatuta.'
    ),
    (
        60,
        '2026-01-28 09:57:00',
        124.0,
        127,
        80,
        78.4,
        1.81,
        'Baraualdian.'
    ),
    (
        63,
        '2026-01-28 09:50:00',
        119.0,
        129,
        78,
        80.8,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        65,
        '2026-01-28 10:51:00',
        97.0,
        136,
        76,
        90.3,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        66,
        '2026-01-28 08:34:00',
        124.0,
        122,
        79,
        74.7,
        1.59,
        'Kirola egin ondoren.'
    ),
    (
        67,
        '2026-01-28 09:25:00',
        106.0,
        139,
        87,
        72.9,
        1.72,
        'Dena ondo.'
    ),
    (
        68,
        '2026-01-28 07:59:00',
        106.0,
        131,
        76,
        60.6,
        1.85,
        'Gosariaren ondoren.'
    ),
    (
        71,
        '2026-01-28 10:19:00',
        136.0,
        133,
        71,
        89.8,
        1.63,
        'Apur bat nekatuta.'
    ),
    (
        72,
        '2026-01-28 10:56:00',
        94.0,
        141,
        82,
        91.9,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-01-28 07:51:00',
        115.0,
        111,
        85,
        95.4,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2026-01-28 07:23:00',
        113.0,
        130,
        83,
        64.8,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        75,
        '2026-01-28 10:06:00',
        129.0,
        134,
        79,
        59.3,
        1.65,
        'Apur bat nekatuta.'
    ),
    (
        76,
        '2026-01-28 08:31:00',
        93.0,
        126,
        95,
        66.1,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        77,
        '2026-01-28 10:19:00',
        111.0,
        140,
        87,
        66.5,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        79,
        '2026-01-28 09:22:00',
        105.0,
        140,
        79,
        67.9,
        1.67,
        'Dena ondo.'
    ),
    (
        82,
        '2026-01-28 08:44:00',
        121.0,
        125,
        94,
        88.2,
        1.77,
        'Dena ondo.'
    ),
    (
        83,
        '2026-01-28 07:16:00',
        112.0,
        132,
        91,
        66.0,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2026-01-28 10:01:00',
        123.0,
        136,
        89,
        79.6,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        85,
        '2026-01-28 07:56:00',
        107.0,
        125,
        83,
        80.4,
        1.72,
        'Baraualdian.'
    ),
    (
        86,
        '2026-01-28 08:29:00',
        131.0,
        130,
        83,
        67.1,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2026-01-28 08:22:00',
        115.0,
        128,
        76,
        74.0,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        88,
        '2026-01-28 08:29:00',
        97.0,
        124,
        74,
        90.7,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        90,
        '2026-01-28 08:58:00',
        109.0,
        137,
        92,
        66.4,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        92,
        '2026-01-28 10:18:00',
        128.0,
        135,
        90,
        59.3,
        1.79,
        'Dena ondo.'
    ),
    (
        93,
        '2026-01-28 09:23:00',
        103.0,
        139,
        84,
        75.0,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        94,
        '2026-01-28 08:52:00',
        98.0,
        126,
        90,
        87.6,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2026-01-28 10:49:00',
        96.0,
        129,
        81,
        76.0,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2026-01-28 10:37:00',
        130.0,
        133,
        85,
        86.5,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-01-28 10:09:00',
        131.0,
        138,
        76,
        84.2,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        99,
        '2026-01-28 10:16:00',
        92.0,
        123,
        81,
        85.8,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        100,
        '2026-01-28 07:13:00',
        118.0,
        138,
        73,
        81.6,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2026-01-29 08:46:00',
        119.0,
        123,
        78,
        74.6,
        1.75,
        'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2026-01-29 10:37:00',
        117.0,
        143,
        81,
        86.2,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        55,
        '2026-01-29 10:48:00',
        119.0,
        135,
        82,
        81.8,
        1.76,
        'Dena ondo.'
    ),
    (
        56,
        '2026-01-29 07:36:00',
        90.0,
        133,
        89,
        89.4,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2026-01-29 09:27:00',
        118.0,
        119,
        91,
        62.9,
        1.73,
        'Kirola egin ondoren.'
    ),
    (
        60,
        '2026-01-29 09:05:00',
        138.0,
        131,
        85,
        77.2,
        1.81,
        'Baraualdian.'
    ),
    (
        61,
        '2026-01-29 08:23:00',
        130.0,
        120,
        81,
        72.0,
        1.83,
        'Kirola egin ondoren.'
    ),
    (
        65,
        '2026-01-29 07:59:00',
        97.0,
        132,
        91,
        90.6,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2026-01-29 07:54:00',
        98.0,
        133,
        91,
        74.7,
        1.59,
        'Dena ondo.'
    ),
    (
        68,
        '2026-01-29 08:59:00',
        99.0,
        128,
        77,
        60.3,
        1.85,
        'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2026-01-29 09:03:00',
        96.0,
        136,
        87,
        95.7,
        1.66,
        'Apur bat nekatuta.'
    ),
    (
        71,
        '2026-01-29 07:11:00',
        122.0,
        126,
        73,
        88.3,
        1.63,
        'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2026-01-29 09:47:00',
        112.0,
        130,
        81,
        92.4,
        1.69,
        'Baraualdian.'
    ),
    (
        73,
        '2026-01-29 08:57:00',
        124.0,
        116,
        73,
        94.1,
        1.55,
        'Baraualdian.'
    ),
    (
        74,
        '2026-01-29 10:31:00',
        115.0,
        131,
        81,
        64.5,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        76,
        '2026-01-29 08:11:00',
        106.0,
        114,
        82,
        66.3,
        1.69,
        'Baraualdian.'
    ),
    (
        78,
        '2026-01-29 08:48:00',
        108.0,
        117,
        76,
        63.3,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        79,
        '2026-01-29 08:48:00',
        111.0,
        135,
        89,
        66.0,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        81,
        '2026-01-29 07:02:00',
        109.0,
        133,
        83,
        85.4,
        1.58,
        'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2026-01-29 10:43:00',
        114.0,
        120,
        81,
        65.8,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2026-01-29 08:06:00',
        87.0,
        134,
        84,
        79.2,
        1.67,
        'Dena ondo.'
    ),
    (
        87,
        '2026-01-29 10:33:00',
        133.0,
        121,
        76,
        72.9,
        1.61,
        'Dena ondo.'
    ),
    (
        88,
        '2026-01-29 07:57:00',
        104.0,
        118,
        86,
        89.6,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2026-01-29 07:45:00',
        87.0,
        138,
        76,
        86.7,
        1.83,
        'Dena ondo.'
    ),
    (
        95,
        '2026-01-29 07:32:00',
        113.0,
        129,
        73,
        89.9,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        96,
        '2026-01-29 07:18:00',
        120.0,
        133,
        85,
        76.2,
        1.71,
        'Ondo sentitzen naiz.'
    ),
    (
        97,
        '2026-01-29 08:53:00',
        126.0,
        138,
        74,
        86.4,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        98,
        '2026-01-29 08:18:00',
        120.0,
        126,
        89,
        84.5,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        100,
        '2026-01-29 08:41:00',
        113.0,
        138,
        84,
        81.4,
        1.57,
        'Dena ondo.'
    ),
    (
        52,
        '2026-01-30 09:56:00',
        129.0,
        138,
        79,
        93.9,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2026-01-30 07:38:00',
        111.0,
        114,
        82,
        74.5,
        1.75,
        'Baraualdian.'
    ),
    (
        54,
        '2026-01-30 09:29:00',
        117.0,
        138,
        84,
        87.3,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        57,
        '2026-01-30 08:12:00',
        84.0,
        135,
        80,
        82.9,
        1.69,
        'Dena ondo.'
    ),
    (
        58,
        '2026-01-30 10:15:00',
        84.0,
        144,
        84,
        66.9,
        1.68,
        'Gosariaren ondoren.'
    ),
    (
        59,
        '2026-01-30 10:06:00',
        96.0,
        121,
        82,
        62.9,
        1.73,
        'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2026-01-30 08:01:00',
        102.0,
        125,
        83,
        77.1,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-01-30 07:34:00',
        106.0,
        112,
        85,
        73.6,
        1.83,
        'Baraualdian.'
    ),
    (
        62,
        '2026-01-30 07:29:00',
        111.0,
        124,
        72,
        66.8,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        64,
        '2026-01-30 07:18:00',
        116.0,
        131,
        86,
        95.6,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        66,
        '2026-01-30 08:47:00',
        130.0,
        122,
        84,
        74.6,
        1.59,
        'Baraualdian.'
    ),
    (
        68,
        '2026-01-30 08:13:00',
        123.0,
        125,
        87,
        61.3,
        1.85,
        'Baraualdian.'
    ),
    (
        69,
        '2026-01-30 07:53:00',
        128.0,
        128,
        77,
        94.4,
        1.66,
        'Gosariaren ondoren.'
    ),
    (
        70,
        '2026-01-30 07:31:00',
        118.0,
        134,
        87,
        74.3,
        1.70,
        'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-01-30 10:12:00',
        132.0,
        120,
        80,
        89.2,
        1.63,
        'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2026-01-30 08:07:00',
        113.0,
        142,
        87,
        91.6,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        73,
        '2026-01-30 10:44:00',
        105.0,
        130,
        75,
        94.0,
        1.55,
        'Dena ondo.'
    ),
    (
        74,
        '2026-01-30 09:43:00',
        108.0,
        125,
        77,
        64.2,
        1.67,
        'Dena ondo.'
    ),
    (
        75,
        '2026-01-30 09:29:00',
        119.0,
        140,
        73,
        59.3,
        1.65,
        'Kirola egin ondoren.'
    ),
    (
        76,
        '2026-01-30 10:54:00',
        101.0,
        119,
        95,
        66.4,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        77,
        '2026-01-30 09:11:00',
        108.0,
        140,
        93,
        66.4,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        78,
        '2026-01-30 07:28:00',
        100.0,
        132,
        82,
        62.5,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2026-01-30 08:33:00',
        110.0,
        130,
        83,
        62.4,
        1.78,
        'Baraualdian.'
    ),
    (
        81,
        '2026-01-30 09:53:00',
        94.0,
        125,
        81,
        85.1,
        1.58,
        'Dena ondo.'
    ),
    (
        82,
        '2026-01-30 07:23:00',
        117.0,
        141,
        88,
        88.8,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        83,
        '2026-01-30 07:56:00',
        134.0,
        118,
        94,
        64.7,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        84,
        '2026-01-30 09:45:00',
        105.0,
        134,
        79,
        79.8,
        1.67,
        'Baraualdian.'
    ),
    (
        85,
        '2026-01-30 09:19:00',
        96.0,
        124,
        87,
        81.5,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2026-01-30 09:01:00',
        131.0,
        126,
        86,
        73.7,
        1.61,
        'Dena ondo.'
    ),
    (
        88,
        '2026-01-30 10:54:00',
        119.0,
        113,
        84,
        90.3,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        89,
        '2026-01-30 07:36:00',
        95.0,
        134,
        86,
        90.3,
        1.84,
        'Dena ondo.'
    ),
    (
        90,
        '2026-01-30 09:37:00',
        117.0,
        119,
        93,
        65.7,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2026-01-30 07:50:00',
        85.0,
        132,
        77,
        89.6,
        1.58,
        'Gosariaren ondoren.'
    ),
    (
        92,
        '2026-01-30 08:54:00',
        137.0,
        128,
        81,
        60.8,
        1.79,
        'Gosariaren ondoren.'
    ),
    (
        94,
        '2026-01-30 08:49:00',
        116.0,
        125,
        78,
        87.3,
        1.83,
        'Dena ondo.'
    ),
    (
        95,
        '2026-01-30 09:26:00',
        112.0,
        138,
        79,
        89.9,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        96,
        '2026-01-30 08:04:00',
        116.0,
        117,
        74,
        76.3,
        1.71,
        'Gosariaren ondoren.'
    ),
    (
        97,
        '2026-01-30 08:44:00',
        102.0,
        136,
        79,
        87.2,
        1.56,
        'Baraualdian.'
    ),
    (
        99,
        '2026-01-30 10:32:00',
        92.0,
        120,
        80,
        85.8,
        1.71,
        'Apur bat nekatuta.'
    ),
    (
        100,
        '2026-01-30 08:59:00',
        119.0,
        120,
        87,
        82.8,
        1.57,
        'Baraualdian.'
    ),
    (
        51,
        '2026-01-31 07:10:00',
        104.0,
        126,
        90,
        63.6,
        1.76,
        'Gosariaren ondoren.'
    ),
    (
        54,
        '2026-01-31 08:56:00',
        91.0,
        133,
        77,
        87.6,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        56,
        '2026-01-31 08:11:00',
        122.0,
        134,
        84,
        90.0,
        1.61,
        'Dena ondo.'
    ),
    (
        57,
        '2026-01-31 10:25:00',
        78.0,
        122,
        80,
        82.8,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2026-01-31 08:13:00',
        109.0,
        133,
        82,
        67.5,
        1.68,
        'Kirola egin ondoren.'
    ),
    (
        59,
        '2026-01-31 10:43:00',
        119.0,
        128,
        83,
        63.7,
        1.73,
        'Baraualdian.'
    ),
    (
        60,
        '2026-01-31 07:56:00',
        131.0,
        132,
        83,
        77.6,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2026-01-31 10:05:00',
        124.0,
        121,
        93,
        73.6,
        1.83,
        'Dena ondo.'
    ),
    (
        62,
        '2026-01-31 09:38:00',
        131.0,
        134,
        71,
        65.1,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2026-01-31 09:31:00',
        126.0,
        142,
        90,
        81.9,
        1.80,
        'Dena ondo.'
    ),
    (
        64,
        '2026-01-31 09:02:00',
        132.0,
        126,
        88,
        94.9,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        65,
        '2026-01-31 09:02:00',
        127.0,
        122,
        88,
        91.0,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        68,
        '2026-01-31 09:34:00',
        106.0,
        125,
        83,
        60.8,
        1.85,
        'Dena ondo.'
    ),
    (
        70,
        '2026-01-31 10:03:00',
        119.0,
        132,
        88,
        74.6,
        1.70,
        'Apur bat nekatuta.'
    ),
    (
        72,
        '2026-01-31 10:30:00',
        114.0,
        133,
        80,
        93.0,
        1.69,
        'Baraualdian.'
    ),
    (
        73,
        '2026-01-31 10:03:00',
        113.0,
        120,
        71,
        94.6,
        1.55,
        'Baraualdian.'
    ),
    (
        75,
        '2026-01-31 08:21:00',
        113.0,
        138,
        73,
        60.6,
        1.65,
        'Dena ondo.'
    ),
    (
        76,
        '2026-01-31 09:26:00',
        123.0,
        114,
        92,
        65.9,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2026-01-31 09:47:00',
        89.0,
        130,
        80,
        62.7,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2026-01-31 08:28:00',
        111.0,
        128,
        90,
        62.4,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-01-31 07:07:00',
        99.0,
        133,
        90,
        85.5,
        1.58,
        'Kirola egin ondoren.'
    ),
    (
        82,
        '2026-01-31 08:52:00',
        122.0,
        132,
        90,
        89.9,
        1.77,
        'Dena ondo.'
    ),
    (
        83,
        '2026-01-31 08:01:00',
        129.0,
        126,
        86,
        64.2,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2026-01-31 09:04:00',
        87.0,
        137,
        88,
        78.5,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        85,
        '2026-01-31 08:05:00',
        109.0,
        139,
        80,
        81.3,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2026-01-31 08:57:00',
        126.0,
        136,
        84,
        68.8,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        87,
        '2026-01-31 10:34:00',
        128.0,
        128,
        87,
        72.3,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        88,
        '2026-01-31 07:29:00',
        113.0,
        122,
        73,
        90.3,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        90,
        '2026-01-31 07:05:00',
        124.0,
        133,
        88,
        66.0,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        91,
        '2026-01-31 09:43:00',
        104.0,
        128,
        90,
        90.2,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2026-01-31 09:26:00',
        123.0,
        129,
        91,
        59.7,
        1.79,
        'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2026-01-31 07:14:00',
        125.0,
        124,
        84,
        77.0,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2026-01-31 07:28:00',
        124.0,
        118,
        82,
        76.6,
        1.71,
        'Dena ondo.'
    ),
    (
        97,
        '2026-01-31 07:53:00',
        115.0,
        134,
        80,
        87.8,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-01-31 08:39:00',
        115.0,
        127,
        84,
        84.0,
        1.60,
        'Baraualdian.'
    ),
    (
        99,
        '2026-01-31 09:50:00',
        113.0,
        135,
        83,
        85.8,
        1.71,
        'Dena ondo.'
    ),
    (
        51,
        '2026-02-01 09:14:00',
        87.0,
        128,
        84,
        63.2,
        1.76,
        'Dena ondo.'
    ),
    (
        52,
        '2026-02-01 10:48:00',
        114.0,
        129,
        82,
        93.9,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        53,
        '2026-02-01 08:58:00',
        109.0,
        123,
        90,
        74.3,
        1.75,
        'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2026-02-01 10:19:00',
        125.0,
        141,
        76,
        87.3,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        55,
        '2026-02-01 08:00:00',
        114.0,
        131,
        77,
        81.6,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        56,
        '2026-02-01 07:27:00',
        122.0,
        131,
        94,
        90.6,
        1.61,
        'Dena ondo.'
    ),
    (
        58,
        '2026-02-01 08:05:00',
        118.0,
        137,
        83,
        66.7,
        1.68,
        'Dena ondo.'
    ),
    (
        59,
        '2026-02-01 10:16:00',
        106.0,
        129,
        92,
        63.7,
        1.73,
        'Gosariaren ondoren.'
    ),
    (
        60,
        '2026-02-01 09:49:00',
        122.0,
        133,
        91,
        77.4,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-02-01 07:58:00',
        130.0,
        123,
        93,
        72.8,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        62,
        '2026-02-01 10:02:00',
        125.0,
        135,
        85,
        66.5,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        63,
        '2026-02-01 10:20:00',
        126.0,
        139,
        88,
        80.5,
        1.80,
        'Dena ondo.'
    ),
    (
        64,
        '2026-02-01 10:30:00',
        93.0,
        134,
        88,
        95.1,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        65,
        '2026-02-01 07:10:00',
        122.0,
        136,
        76,
        90.9,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        66,
        '2026-02-01 10:20:00',
        111.0,
        127,
        85,
        75.9,
        1.59,
        'Kirola egin ondoren.'
    ),
    (
        67,
        '2026-02-01 08:46:00',
        86.0,
        132,
        91,
        72.1,
        1.72,
        'Baraualdian.'
    ),
    (
        68,
        '2026-02-01 08:35:00',
        107.0,
        140,
        78,
        61.1,
        1.85,
        'Apur bat nekatuta.'
    ),
    (
        70,
        '2026-02-01 09:46:00',
        114.0,
        131,
        75,
        75.1,
        1.70,
        'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2026-02-01 09:26:00',
        138.0,
        121,
        86,
        88.8,
        1.63,
        'Dena ondo.'
    ),
    (
        72,
        '2026-02-01 09:21:00',
        90.0,
        139,
        75,
        91.3,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-02-01 07:58:00',
        132.0,
        111,
        73,
        95.4,
        1.55,
        'Kirola egin ondoren.'
    ),
    (
        74,
        '2026-02-01 08:51:00',
        122.0,
        113,
        86,
        63.2,
        1.67,
        'Dena ondo.'
    ),
    (
        76,
        '2026-02-01 08:27:00',
        110.0,
        129,
        87,
        66.0,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        77,
        '2026-02-01 08:49:00',
        103.0,
        123,
        84,
        66.6,
        1.67,
        'Baraualdian.'
    ),
    (
        78,
        '2026-02-01 07:33:00',
        111.0,
        117,
        78,
        62.6,
        1.61,
        'Baraualdian.'
    ),
    (
        80,
        '2026-02-01 07:21:00',
        96.0,
        120,
        92,
        62.2,
        1.78,
        'Dena ondo.'
    ),
    (
        81,
        '2026-02-01 10:58:00',
        98.0,
        131,
        82,
        86.2,
        1.58,
        'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-02-01 07:12:00',
        125.0,
        134,
        90,
        88.0,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        85,
        '2026-02-01 10:44:00',
        87.0,
        136,
        87,
        80.0,
        1.72,
        'Apur bat nekatuta.'
    ),
    (
        86,
        '2026-02-01 08:19:00',
        128.0,
        137,
        77,
        67.6,
        1.57,
        'Kirola egin ondoren.'
    ),
    (
        87,
        '2026-02-01 08:11:00',
        132.0,
        139,
        87,
        73.2,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        89,
        '2026-02-01 07:57:00',
        113.0,
        138,
        90,
        91.4,
        1.84,
        'Apur bat nekatuta.'
    ),
    (
        90,
        '2026-02-01 08:04:00',
        100.0,
        119,
        85,
        66.6,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        91,
        '2026-02-01 10:39:00',
        102.0,
        127,
        82,
        90.3,
        1.58,
        'Gosariaren ondoren.'
    ),
    (
        93,
        '2026-02-01 08:27:00',
        108.0,
        122,
        87,
        75.9,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        94,
        '2026-02-01 09:58:00',
        94.0,
        126,
        83,
        87.5,
        1.83,
        'Baraualdian.'
    ),
    (
        95,
        '2026-02-01 09:56:00',
        121.0,
        140,
        74,
        90.7,
        1.77,
        'Baraualdian.'
    ),
    (
        96,
        '2026-02-01 09:54:00',
        122.0,
        122,
        76,
        76.7,
        1.71,
        'Baraualdian.'
    ),
    (
        97,
        '2026-02-01 09:55:00',
        132.0,
        122,
        72,
        86.9,
        1.56,
        'Dena ondo.'
    ),
    (
        99,
        '2026-02-01 07:23:00',
        96.0,
        118,
        83,
        86.5,
        1.71,
        'Dena ondo.'
    ),
    (
        51,
        '2026-02-02 08:56:00',
        127.0,
        136,
        93,
        64.3,
        1.76,
        'Baraualdian.'
    ),
    (
        52,
        '2026-02-02 10:07:00',
        128.0,
        121,
        92,
        94.0,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        54,
        '2026-02-02 08:38:00',
        116.0,
        133,
        84,
        86.0,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2026-02-02 10:09:00',
        108.0,
        126,
        84,
        81.8,
        1.76,
        'Dena ondo.'
    ),
    (
        56,
        '2026-02-02 10:24:00',
        119.0,
        144,
        87,
        90.6,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        57,
        '2026-02-02 09:37:00',
        107.0,
        136,
        87,
        83.5,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        59,
        '2026-02-02 10:33:00',
        121.0,
        130,
        83,
        63.1,
        1.73,
        'Kirola egin ondoren.'
    ),
    (
        60,
        '2026-02-02 07:34:00',
        120.0,
        126,
        93,
        78.3,
        1.81,
        'Dena ondo.'
    ),
    (
        64,
        '2026-02-02 08:44:00',
        105.0,
        134,
        79,
        94.6,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2026-02-02 07:05:00',
        103.0,
        133,
        79,
        92.0,
        1.55,
        'Dena ondo.'
    ),
    (
        66,
        '2026-02-02 08:42:00',
        96.0,
        121,
        82,
        74.4,
        1.59,
        'Apur bat nekatuta.'
    ),
    (
        67,
        '2026-02-02 09:14:00',
        97.0,
        128,
        80,
        71.6,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        68,
        '2026-02-02 07:57:00',
        98.0,
        135,
        80,
        61.1,
        1.85,
        'Ondo sentitzen naiz.'
    ),
    (
        69,
        '2026-02-02 08:07:00',
        133.0,
        130,
        78,
        95.7,
        1.66,
        'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2026-02-02 10:21:00',
        119.0,
        135,
        88,
        74.1,
        1.70,
        'Gosariaren ondoren.'
    ),
    (
        71,
        '2026-02-02 10:09:00',
        133.0,
        120,
        80,
        88.8,
        1.63,
        'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2026-02-02 08:57:00',
        104.0,
        143,
        79,
        91.1,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        73,
        '2026-02-02 09:20:00',
        134.0,
        112,
        72,
        94.8,
        1.55,
        'Kirola egin ondoren.'
    ),
    (
        76,
        '2026-02-02 09:34:00',
        125.0,
        130,
        94,
        66.2,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2026-02-02 10:04:00',
        106.0,
        118,
        76,
        62.0,
        1.61,
        'Baraualdian.'
    ),
    (
        79,
        '2026-02-02 10:39:00',
        111.0,
        142,
        76,
        66.0,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        80,
        '2026-02-02 10:46:00',
        93.0,
        139,
        83,
        63.6,
        1.78,
        'Ondo sentitzen naiz.'
    ),
    (
        81,
        '2026-02-02 09:37:00',
        117.0,
        129,
        86,
        86.2,
        1.58,
        'Gosariaren ondoren.'
    ),
    (
        82,
        '2026-02-02 07:48:00',
        111.0,
        134,
        84,
        88.1,
        1.77,
        'Baraualdian.'
    ),
    (
        84,
        '2026-02-02 10:02:00',
        92.0,
        136,
        79,
        78.0,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        86,
        '2026-02-02 07:10:00',
        104.0,
        126,
        79,
        67.6,
        1.57,
        'Dena ondo.'
    ),
    (
        87,
        '2026-02-02 08:58:00',
        135.0,
        140,
        87,
        73.7,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        88,
        '2026-02-02 07:32:00',
        114.0,
        126,
        87,
        90.4,
        1.81,
        'Dena ondo.'
    ),
    (
        89,
        '2026-02-02 10:43:00',
        122.0,
        124,
        87,
        90.7,
        1.84,
        'Apur bat nekatuta.'
    ),
    (
        90,
        '2026-02-02 10:18:00',
        120.0,
        124,
        78,
        65.7,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        91,
        '2026-02-02 08:45:00',
        108.0,
        144,
        79,
        89.7,
        1.58,
        'Ondo sentitzen naiz.'
    ),
    (
        92,
        '2026-02-02 08:52:00',
        131.0,
        129,
        84,
        60.8,
        1.79,
        'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2026-02-02 08:30:00',
        86.0,
        133,
        87,
        87.6,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        95,
        '2026-02-02 10:39:00',
        114.0,
        138,
        75,
        89.5,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        96,
        '2026-02-02 08:15:00',
        122.0,
        117,
        88,
        77.6,
        1.71,
        'Ondo sentitzen naiz.'
    ),
    (
        98,
        '2026-02-02 07:22:00',
        125.0,
        128,
        88,
        83.8,
        1.60,
        'Dena ondo.'
    ),
    (
        99,
        '2026-02-02 08:27:00',
        103.0,
        118,
        75,
        86.8,
        1.71,
        'Gosariaren ondoren.'
    ),
    (
        100,
        '2026-02-02 10:24:00',
        101.0,
        140,
        73,
        81.2,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        51,
        '2026-02-03 07:24:00',
        126.0,
        133,
        80,
        64.4,
        1.76,
        'Baraualdian.'
    ),
    (
        52,
        '2026-02-03 07:09:00',
        112.0,
        136,
        81,
        94.7,
        1.77,
        'Dena ondo.'
    ),
    (
        53,
        '2026-02-03 10:18:00',
        88.0,
        119,
        93,
        74.1,
        1.75,
        'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2026-02-03 10:11:00',
        116.0,
        124,
        75,
        81.9,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        56,
        '2026-02-03 07:47:00',
        85.0,
        145,
        80,
        89.2,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        57,
        '2026-02-03 07:30:00',
        108.0,
        125,
        91,
        82.5,
        1.69,
        'Baraualdian.'
    ),
    (
        58,
        '2026-02-03 09:46:00',
        102.0,
        134,
        79,
        66.5,
        1.68,
        'Apur bat nekatuta.'
    ),
    (
        59,
        '2026-02-03 10:51:00',
        109.0,
        129,
        88,
        63.4,
        1.73,
        'Baraualdian.'
    ),
    (
        60,
        '2026-02-03 09:45:00',
        126.0,
        116,
        85,
        78.6,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        61,
        '2026-02-03 08:41:00',
        118.0,
        112,
        80,
        73.9,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        62,
        '2026-02-03 10:58:00',
        132.0,
        120,
        79,
        66.0,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        63,
        '2026-02-03 10:29:00',
        134.0,
        143,
        76,
        81.7,
        1.80,
        'Dena ondo.'
    ),
    (
        65,
        '2026-02-03 08:14:00',
        119.0,
        122,
        77,
        90.8,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        66,
        '2026-02-03 10:22:00',
        119.0,
        134,
        77,
        74.3,
        1.59,
        'Dena ondo.'
    ),
    (
        68,
        '2026-02-03 10:32:00',
        129.0,
        131,
        83,
        60.9,
        1.85,
        'Kirola egin ondoren.'
    ),
    (
        69,
        '2026-02-03 08:46:00',
        118.0,
        144,
        81,
        95.9,
        1.66,
        'Ondo sentitzen naiz.'
    ),
    (
        70,
        '2026-02-03 10:49:00',
        86.0,
        136,
        82,
        74.3,
        1.70,
        'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2026-02-03 10:54:00',
        109.0,
        122,
        83,
        88.5,
        1.63,
        'Baraualdian.'
    ),
    (
        73,
        '2026-02-03 07:42:00',
        107.0,
        131,
        84,
        95.5,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2026-02-03 08:58:00',
        116.0,
        122,
        76,
        64.4,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2026-02-03 07:48:00',
        109.0,
        132,
        84,
        60.6,
        1.65,
        'Apur bat nekatuta.'
    ),
    (
        79,
        '2026-02-03 09:11:00',
        99.0,
        123,
        86,
        67.7,
        1.67,
        'Baraualdian.'
    ),
    (
        81,
        '2026-02-03 08:41:00',
        116.0,
        134,
        86,
        87.0,
        1.58,
        'Dena ondo.'
    ),
    (
        82,
        '2026-02-03 08:19:00',
        101.0,
        137,
        89,
        89.9,
        1.77,
        'Dena ondo.'
    ),
    (
        83,
        '2026-02-03 09:57:00',
        117.0,
        134,
        89,
        65.3,
        1.80,
        'Baraualdian.'
    ),
    (
        85,
        '2026-02-03 07:30:00',
        119.0,
        134,
        80,
        80.6,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        86,
        '2026-02-03 07:54:00',
        120.0,
        124,
        86,
        68.3,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        87,
        '2026-02-03 07:33:00',
        122.0,
        132,
        77,
        72.4,
        1.61,
        'Dena ondo.'
    ),
    (
        90,
        '2026-02-03 08:33:00',
        125.0,
        121,
        90,
        66.7,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        91,
        '2026-02-03 07:15:00',
        99.0,
        131,
        83,
        89.7,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2026-02-03 07:08:00',
        124.0,
        132,
        84,
        76.0,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        94,
        '2026-02-03 08:01:00',
        100.0,
        128,
        87,
        87.8,
        1.83,
        'Gosariaren ondoren.'
    ),
    (
        95,
        '2026-02-03 09:16:00',
        105.0,
        136,
        78,
        89.4,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2026-02-03 08:01:00',
        125.0,
        122,
        83,
        87.2,
        1.56,
        'Baraualdian.'
    ),
    (
        98,
        '2026-02-03 09:36:00',
        120.0,
        133,
        75,
        84.3,
        1.60,
        'Dena ondo.'
    ),
    (
        99,
        '2026-02-03 09:18:00',
        88.0,
        131,
        85,
        85.1,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        100,
        '2026-02-03 08:04:00',
        122.0,
        140,
        87,
        81.7,
        1.57,
        'Gosariaren ondoren.'
    ),
    (
        51,
        '2026-02-04 08:11:00',
        118.0,
        139,
        82,
        64.8,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2026-02-04 07:54:00',
        124.0,
        128,
        80,
        74.0,
        1.75,
        'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2026-02-04 10:11:00',
        120.0,
        137,
        85,
        86.5,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        55,
        '2026-02-04 09:37:00',
        114.0,
        139,
        84,
        80.9,
        1.76,
        'Gosariaren ondoren.'
    ),
    (
        57,
        '2026-02-04 07:32:00',
        82.0,
        120,
        81,
        83.7,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        58,
        '2026-02-04 07:20:00',
        101.0,
        145,
        87,
        67.6,
        1.68,
        'Apur bat nekatuta.'
    ),
    (
        60,
        '2026-02-04 09:00:00',
        112.0,
        134,
        81,
        78.0,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-02-04 07:42:00',
        116.0,
        116,
        83,
        72.5,
        1.83,
        'Gosariaren ondoren.'
    ),
    (
        62,
        '2026-02-04 10:43:00',
        125.0,
        138,
        84,
        66.7,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        63,
        '2026-02-04 08:36:00',
        116.0,
        143,
        78,
        80.6,
        1.80,
        'Baraualdian.'
    ),
    (
        64,
        '2026-02-04 10:31:00',
        108.0,
        123,
        75,
        95.0,
        1.56,
        'Dena ondo.'
    ),
    (
        65,
        '2026-02-04 07:48:00',
        131.0,
        134,
        83,
        91.0,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        66,
        '2026-02-04 09:45:00',
        106.0,
        130,
        79,
        74.4,
        1.59,
        'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2026-02-04 09:45:00',
        120.0,
        136,
        85,
        94.7,
        1.66,
        'Apur bat nekatuta.'
    ),
    (
        70,
        '2026-02-04 10:37:00',
        94.0,
        136,
        77,
        76.0,
        1.70,
        'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2026-02-04 08:30:00',
        130.0,
        125,
        72,
        88.5,
        1.63,
        'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2026-02-04 10:59:00',
        98.0,
        140,
        79,
        91.5,
        1.69,
        'Dena ondo.'
    ),
    (
        73,
        '2026-02-04 09:57:00',
        117.0,
        131,
        82,
        95.6,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2026-02-04 09:05:00',
        133.0,
        142,
        82,
        60.0,
        1.65,
        'Baraualdian.'
    ),
    (
        76,
        '2026-02-04 08:06:00',
        115.0,
        110,
        94,
        66.1,
        1.69,
        'Dena ondo.'
    ),
    (
        80,
        '2026-02-04 10:23:00',
        118.0,
        127,
        81,
        63.2,
        1.78,
        'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2026-02-04 08:58:00',
        122.0,
        139,
        94,
        86.1,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-02-04 08:42:00',
        117.0,
        140,
        93,
        88.9,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2026-02-04 10:38:00',
        121.0,
        119,
        92,
        65.8,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2026-02-04 07:53:00',
        95.0,
        119,
        90,
        79.8,
        1.67,
        'Baraualdian.'
    ),
    (
        85,
        '2026-02-04 10:00:00',
        93.0,
        120,
        88,
        81.0,
        1.72,
        'Gaur goizean neurtuta.'
    ),
    (
        87,
        '2026-02-04 07:14:00',
        109.0,
        122,
        76,
        72.9,
        1.61,
        'Dena ondo.'
    ),
    (
        89,
        '2026-02-04 07:06:00',
        124.0,
        126,
        87,
        90.2,
        1.84,
        'Dena ondo.'
    ),
    (
        90,
        '2026-02-04 09:56:00',
        100.0,
        125,
        92,
        66.9,
        1.60,
        'Dena ondo.'
    ),
    (
        92,
        '2026-02-04 09:59:00',
        120.0,
        127,
        81,
        59.5,
        1.79,
        'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2026-02-04 07:25:00',
        98.0,
        123,
        90,
        76.4,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        94,
        '2026-02-04 10:05:00',
        103.0,
        132,
        87,
        87.0,
        1.83,
        'Kirola egin ondoren.'
    ),
    (
        95,
        '2026-02-04 09:56:00',
        111.0,
        136,
        87,
        89.7,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        96,
        '2026-02-04 10:00:00',
        84.0,
        125,
        82,
        76.7,
        1.71,
        'Gosariaren ondoren.'
    ),
    (
        98,
        '2026-02-04 08:23:00',
        133.0,
        130,
        90,
        84.7,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        99,
        '2026-02-04 07:21:00',
        112.0,
        119,
        73,
        86.6,
        1.71,
        'Ondo sentitzen naiz.'
    ),
    (
        100,
        '2026-02-04 08:10:00',
        125.0,
        130,
        86,
        81.8,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        51,
        '2026-02-05 10:48:00',
        96.0,
        126,
        91,
        64.8,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        52,
        '2026-02-05 09:46:00',
        118.0,
        134,
        87,
        94.0,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2026-02-05 08:52:00',
        132.0,
        135,
        76,
        80.3,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        56,
        '2026-02-05 07:58:00',
        87.0,
        129,
        80,
        89.4,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        57,
        '2026-02-05 08:43:00',
        112.0,
        118,
        87,
        82.8,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2026-02-05 09:19:00',
        116.0,
        129,
        85,
        67.0,
        1.68,
        'Dena ondo.'
    ),
    (
        59,
        '2026-02-05 10:51:00',
        117.0,
        116,
        80,
        62.0,
        1.73,
        'Baraualdian.'
    ),
    (
        60,
        '2026-02-05 09:18:00',
        121.0,
        129,
        94,
        77.7,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        61,
        '2026-02-05 07:09:00',
        117.0,
        123,
        82,
        73.1,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        62,
        '2026-02-05 07:02:00',
        126.0,
        125,
        81,
        65.3,
        1.56,
        'Baraualdian.'
    ),
    (
        63,
        '2026-02-05 08:46:00',
        127.0,
        128,
        84,
        80.3,
        1.80,
        'Dena ondo.'
    ),
    (
        64,
        '2026-02-05 07:39:00',
        106.0,
        124,
        73,
        95.4,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        65,
        '2026-02-05 08:30:00',
        116.0,
        123,
        86,
        90.4,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        66,
        '2026-02-05 09:41:00',
        98.0,
        127,
        78,
        75.0,
        1.59,
        'Gosariaren ondoren.'
    ),
    (
        67,
        '2026-02-05 07:08:00',
        115.0,
        138,
        79,
        72.7,
        1.72,
        'Dena ondo.'
    ),
    (
        69,
        '2026-02-05 07:13:00',
        118.0,
        130,
        78,
        95.7,
        1.66,
        'Baraualdian.'
    ),
    (
        70,
        '2026-02-05 09:36:00',
        103.0,
        124,
        77,
        75.0,
        1.70,
        'Baraualdian.'
    ),
    (
        72,
        '2026-02-05 08:58:00',
        82.0,
        128,
        80,
        91.3,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        73,
        '2026-02-05 08:02:00',
        134.0,
        111,
        77,
        94.0,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2026-02-05 09:51:00',
        116.0,
        121,
        91,
        64.3,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        75,
        '2026-02-05 08:31:00',
        137.0,
        128,
        82,
        59.1,
        1.65,
        'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2026-02-05 09:02:00',
        119.0,
        110,
        93,
        65.2,
        1.69,
        'Baraualdian.'
    ),
    (
        77,
        '2026-02-05 07:30:00',
        120.0,
        138,
        92,
        67.6,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        78,
        '2026-02-05 09:38:00',
        98.0,
        127,
        83,
        62.8,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        79,
        '2026-02-05 09:55:00',
        115.0,
        127,
        78,
        66.4,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2026-02-05 08:52:00',
        116.0,
        132,
        94,
        62.6,
        1.78,
        'Gosariaren ondoren.'
    ),
    (
        81,
        '2026-02-05 10:39:00',
        105.0,
        126,
        90,
        86.3,
        1.58,
        'Kirola egin ondoren.'
    ),
    (
        82,
        '2026-02-05 08:43:00',
        137.0,
        136,
        80,
        88.4,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2026-02-05 10:09:00',
        128.0,
        134,
        83,
        64.0,
        1.80,
        'Gosariaren ondoren.'
    ),
    (
        84,
        '2026-02-05 08:01:00',
        106.0,
        121,
        82,
        78.9,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        85,
        '2026-02-05 08:28:00',
        113.0,
        131,
        84,
        81.5,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        86,
        '2026-02-05 09:46:00',
        111.0,
        129,
        79,
        68.9,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2026-02-05 10:35:00',
        105.0,
        137,
        88,
        73.2,
        1.61,
        'Dena ondo.'
    ),
    (
        89,
        '2026-02-05 09:14:00',
        119.0,
        135,
        82,
        90.1,
        1.84,
        'Ondo sentitzen naiz.'
    ),
    (
        90,
        '2026-02-05 08:48:00',
        100.0,
        119,
        87,
        67.0,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        91,
        '2026-02-05 09:07:00',
        112.0,
        129,
        80,
        89.5,
        1.58,
        'Gosariaren ondoren.'
    ),
    (
        93,
        '2026-02-05 10:33:00',
        97.0,
        138,
        90,
        76.2,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        94,
        '2026-02-05 09:03:00',
        107.0,
        129,
        84,
        86.1,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        95,
        '2026-02-05 09:46:00',
        111.0,
        133,
        86,
        90.5,
        1.77,
        'Dena ondo.'
    ),
    (
        96,
        '2026-02-05 09:31:00',
        96.0,
        130,
        87,
        76.8,
        1.71,
        'Apur bat nekatuta.'
    ),
    (
        97,
        '2026-02-05 08:06:00',
        129.0,
        121,
        81,
        87.6,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        98,
        '2026-02-05 09:20:00',
        119.0,
        122,
        81,
        84.8,
        1.60,
        'Dena ondo.'
    ),
    (
        51,
        '2026-02-06 10:06:00',
        103.0,
        120,
        90,
        64.2,
        1.76,
        'Baraualdian.'
    ),
    (
        54,
        '2026-02-06 10:44:00',
        100.0,
        138,
        80,
        87.7,
        1.60,
        'Baraualdian.'
    ),
    (
        56,
        '2026-02-06 09:50:00',
        105.0,
        140,
        84,
        90.2,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        57,
        '2026-02-06 10:28:00',
        111.0,
        126,
        89,
        83.8,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        58,
        '2026-02-06 07:03:00',
        105.0,
        141,
        78,
        66.8,
        1.68,
        'Dena ondo.'
    ),
    (
        59,
        '2026-02-06 09:27:00',
        101.0,
        116,
        81,
        63.4,
        1.73,
        'Apur bat nekatuta.'
    ),
    (
        60,
        '2026-02-06 07:56:00',
        137.0,
        130,
        94,
        77.6,
        1.81,
        'Dena ondo.'
    ),
    (
        61,
        '2026-02-06 08:04:00',
        99.0,
        125,
        83,
        72.7,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2026-02-06 07:05:00',
        124.0,
        140,
        74,
        94.3,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        65,
        '2026-02-06 07:32:00',
        102.0,
        130,
        76,
        91.5,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2026-02-06 08:46:00',
        110.0,
        135,
        83,
        74.4,
        1.59,
        'Baraualdian.'
    ),
    (
        67,
        '2026-02-06 09:27:00',
        108.0,
        135,
        79,
        72.8,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        68,
        '2026-02-06 08:38:00',
        118.0,
        134,
        84,
        60.7,
        1.85,
        'Baraualdian.'
    ),
    (
        69,
        '2026-02-06 08:55:00',
        131.0,
        125,
        80,
        95.6,
        1.66,
        'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2026-02-06 07:25:00',
        83.0,
        118,
        78,
        74.3,
        1.70,
        'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-02-06 10:38:00',
        131.0,
        131,
        75,
        88.2,
        1.63,
        'Kirola egin ondoren.'
    ),
    (
        72,
        '2026-02-06 07:30:00',
        98.0,
        130,
        77,
        91.2,
        1.69,
        'Baraualdian.'
    ),
    (
        74,
        '2026-02-06 10:02:00',
        102.0,
        128,
        91,
        63.2,
        1.67,
        'Baraualdian.'
    ),
    (
        75,
        '2026-02-06 07:46:00',
        117.0,
        132,
        85,
        59.5,
        1.65,
        'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2026-02-06 07:04:00',
        128.0,
        110,
        87,
        66.9,
        1.69,
        'Dena ondo.'
    ),
    (
        77,
        '2026-02-06 10:20:00',
        120.0,
        136,
        88,
        67.3,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        78,
        '2026-02-06 10:38:00',
        81.0,
        127,
        83,
        63.1,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        79,
        '2026-02-06 07:50:00',
        93.0,
        124,
        85,
        67.9,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2026-02-06 08:57:00',
        100.0,
        126,
        84,
        62.4,
        1.78,
        'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2026-02-06 08:49:00',
        106.0,
        125,
        85,
        86.1,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-02-06 07:15:00',
        118.0,
        143,
        86,
        88.0,
        1.77,
        'Baraualdian.'
    ),
    (
        83,
        '2026-02-06 09:12:00',
        122.0,
        133,
        90,
        64.1,
        1.80,
        'Kirola egin ondoren.'
    ),
    (
        84,
        '2026-02-06 08:15:00',
        98.0,
        118,
        80,
        78.6,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        85,
        '2026-02-06 07:56:00',
        117.0,
        120,
        79,
        81.9,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2026-02-06 09:01:00',
        129.0,
        137,
        87,
        67.5,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        87,
        '2026-02-06 10:23:00',
        101.0,
        137,
        88,
        73.4,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        89,
        '2026-02-06 09:38:00',
        105.0,
        142,
        83,
        91.0,
        1.84,
        'Gosariaren ondoren.'
    ),
    (
        90,
        '2026-02-06 09:55:00',
        123.0,
        120,
        86,
        66.4,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        91,
        '2026-02-06 08:33:00',
        112.0,
        136,
        80,
        89.4,
        1.58,
        'Apur bat nekatuta.'
    ),
    (
        94,
        '2026-02-06 10:22:00',
        109.0,
        131,
        89,
        86.3,
        1.83,
        'Baraualdian.'
    ),
    (
        95,
        '2026-02-06 09:50:00',
        121.0,
        143,
        84,
        90.5,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2026-02-06 08:51:00',
        118.0,
        135,
        79,
        76.9,
        1.71,
        'Gosariaren ondoren.'
    ),
    (
        97,
        '2026-02-06 10:33:00',
        110.0,
        135,
        81,
        87.5,
        1.56,
        'Dena ondo.'
    ),
    (
        98,
        '2026-02-06 08:33:00',
        110.0,
        127,
        81,
        83.0,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        99,
        '2026-02-06 08:48:00',
        117.0,
        122,
        77,
        86.0,
        1.71,
        'Baraualdian.'
    ),
    (
        100,
        '2026-02-06 09:28:00',
        95.0,
        125,
        86,
        81.8,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        51,
        '2026-02-07 09:54:00',
        117.0,
        129,
        82,
        64.9,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        52,
        '2026-02-07 07:09:00',
        120.0,
        119,
        81,
        93.0,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        55,
        '2026-02-07 08:56:00',
        96.0,
        136,
        86,
        81.9,
        1.76,
        'Dena ondo.'
    ),
    (
        57,
        '2026-02-07 08:25:00',
        103.0,
        127,
        79,
        83.4,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        59,
        '2026-02-07 09:02:00',
        101.0,
        120,
        95,
        62.2,
        1.73,
        'Kirola egin ondoren.'
    ),
    (
        60,
        '2026-02-07 08:01:00',
        105.0,
        123,
        89,
        77.1,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2026-02-07 08:08:00',
        128.0,
        125,
        78,
        72.2,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        62,
        '2026-02-07 10:25:00',
        96.0,
        121,
        78,
        65.1,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        63,
        '2026-02-07 10:13:00',
        121.0,
        137,
        83,
        81.3,
        1.80,
        'Kirola egin ondoren.'
    ),
    (
        64,
        '2026-02-07 07:58:00',
        132.0,
        141,
        75,
        94.5,
        1.56,
        'Dena ondo.'
    ),
    (
        66,
        '2026-02-07 08:07:00',
        119.0,
        127,
        89,
        74.3,
        1.59,
        'Gosariaren ondoren.'
    ),
    (
        67,
        '2026-02-07 08:13:00',
        102.0,
        135,
        81,
        72.9,
        1.72,
        'Gaur goizean neurtuta.'
    ),
    (
        68,
        '2026-02-07 08:40:00',
        116.0,
        136,
        78,
        60.5,
        1.85,
        'Kirola egin ondoren.'
    ),
    (
        69,
        '2026-02-07 07:13:00',
        126.0,
        137,
        80,
        95.3,
        1.66,
        'Kirola egin ondoren.'
    ),
    (
        71,
        '2026-02-07 07:35:00',
        127.0,
        123,
        85,
        90.0,
        1.63,
        'Dena ondo.'
    ),
    (
        72,
        '2026-02-07 09:23:00',
        104.0,
        131,
        78,
        92.2,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        74,
        '2026-02-07 09:24:00',
        125.0,
        112,
        83,
        63.4,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        75,
        '2026-02-07 09:05:00',
        129.0,
        130,
        75,
        60.4,
        1.65,
        'Apur bat nekatuta.'
    ),
    (
        76,
        '2026-02-07 10:48:00',
        104.0,
        114,
        84,
        65.1,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        77,
        '2026-02-07 08:45:00',
        116.0,
        138,
        78,
        66.1,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        78,
        '2026-02-07 07:07:00',
        116.0,
        125,
        79,
        62.5,
        1.61,
        'Baraualdian.'
    ),
    (
        79,
        '2026-02-07 10:04:00',
        131.0,
        128,
        87,
        66.3,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-02-07 10:34:00',
        127.0,
        129,
        91,
        62.3,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-02-07 07:16:00',
        112.0,
        128,
        84,
        86.2,
        1.58,
        'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-02-07 09:50:00',
        120.0,
        133,
        88,
        88.3,
        1.77,
        'Dena ondo.'
    ),
    (
        83,
        '2026-02-07 09:10:00',
        103.0,
        122,
        87,
        64.5,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2026-02-07 08:06:00',
        99.0,
        129,
        89,
        79.9,
        1.67,
        'Dena ondo.'
    ),
    (
        85,
        '2026-02-07 09:45:00',
        115.0,
        132,
        90,
        80.9,
        1.72,
        'Dena ondo.'
    ),
    (
        86,
        '2026-02-07 07:44:00',
        96.0,
        134,
        73,
        67.9,
        1.57,
        'Dena ondo.'
    ),
    (
        87,
        '2026-02-07 08:17:00',
        108.0,
        140,
        82,
        74.0,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2026-02-07 07:29:00',
        129.0,
        121,
        75,
        90.9,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2026-02-07 09:15:00',
        116.0,
        126,
        88,
        92.0,
        1.84,
        'Dena ondo.'
    ),
    (
        91,
        '2026-02-07 09:12:00',
        111.0,
        135,
        76,
        89.1,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2026-02-07 08:45:00',
        130.0,
        124,
        93,
        76.4,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        96,
        '2026-02-07 08:33:00',
        108.0,
        133,
        76,
        78.0,
        1.71,
        'Apur bat nekatuta.'
    ),
    (
        97,
        '2026-02-07 07:54:00',
        137.0,
        131,
        75,
        88.0,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-02-07 08:13:00',
        115.0,
        138,
        89,
        83.3,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        100,
        '2026-02-07 09:01:00',
        104.0,
        140,
        82,
        81.8,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2026-02-08 08:12:00',
        121.0,
        120,
        90,
        63.1,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        52,
        '2026-02-08 08:13:00',
        110.0,
        132,
        91,
        94.8,
        1.77,
        'Dena ondo.'
    ),
    (
        53,
        '2026-02-08 10:32:00',
        120.0,
        118,
        89,
        75.4,
        1.75,
        'Ondo sentitzen naiz.'
    ),
    (
        54,
        '2026-02-08 07:07:00',
        87.0,
        137,
        86,
        87.6,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2026-02-08 08:05:00',
        115.0,
        130,
        77,
        81.1,
        1.76,
        'Gosariaren ondoren.'
    ),
    (
        59,
        '2026-02-08 08:05:00',
        113.0,
        120,
        81,
        63.6,
        1.73,
        'Gosariaren ondoren.'
    ),
    (
        60,
        '2026-02-08 08:44:00',
        132.0,
        133,
        95,
        78.0,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2026-02-08 07:22:00',
        119.0,
        130,
        82,
        73.5,
        1.83,
        'Gosariaren ondoren.'
    ),
    (
        62,
        '2026-02-08 07:11:00',
        101.0,
        128,
        76,
        65.1,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        64,
        '2026-02-08 09:27:00',
        130.0,
        127,
        84,
        94.3,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        65,
        '2026-02-08 09:23:00',
        124.0,
        131,
        78,
        91.5,
        1.55,
        'Dena ondo.'
    ),
    (
        66,
        '2026-02-08 08:25:00',
        105.0,
        133,
        89,
        74.6,
        1.59,
        'Dena ondo.'
    ),
    (
        67,
        '2026-02-08 08:00:00',
        81.0,
        125,
        80,
        71.8,
        1.72,
        'Baraualdian.'
    ),
    (
        68,
        '2026-02-08 07:16:00',
        112.0,
        125,
        84,
        61.4,
        1.85,
        'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-02-08 10:11:00',
        103.0,
        125,
        90,
        94.0,
        1.66,
        'Apur bat nekatuta.'
    ),
    (
        70,
        '2026-02-08 09:37:00',
        83.0,
        123,
        83,
        75.8,
        1.70,
        'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-02-08 07:53:00',
        125.0,
        124,
        77,
        88.9,
        1.63,
        'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2026-02-08 07:58:00',
        110.0,
        139,
        85,
        92.5,
        1.69,
        'Dena ondo.'
    ),
    (
        73,
        '2026-02-08 07:48:00',
        132.0,
        123,
        79,
        94.4,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2026-02-08 07:04:00',
        109.0,
        122,
        83,
        63.6,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        76,
        '2026-02-08 08:49:00',
        123.0,
        117,
        93,
        65.1,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        77,
        '2026-02-08 09:56:00',
        134.0,
        129,
        79,
        66.6,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        78,
        '2026-02-08 10:20:00',
        104.0,
        127,
        80,
        63.9,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        79,
        '2026-02-08 09:16:00',
        96.0,
        126,
        75,
        66.6,
        1.67,
        'Baraualdian.'
    ),
    (
        80,
        '2026-02-08 08:06:00',
        117.0,
        131,
        90,
        63.0,
        1.78,
        'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2026-02-08 10:45:00',
        113.0,
        137,
        84,
        86.6,
        1.58,
        'Kirola egin ondoren.'
    ),
    (
        82,
        '2026-02-08 08:06:00',
        118.0,
        125,
        91,
        88.9,
        1.77,
        'Baraualdian.'
    ),
    (
        83,
        '2026-02-08 10:05:00',
        124.0,
        118,
        85,
        65.0,
        1.80,
        'Baraualdian.'
    ),
    (
        84,
        '2026-02-08 07:15:00',
        103.0,
        121,
        82,
        78.2,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        86,
        '2026-02-08 10:17:00',
        108.0,
        130,
        79,
        68.8,
        1.57,
        'Baraualdian.'
    ),
    (
        87,
        '2026-02-08 10:35:00',
        131.0,
        141,
        87,
        73.1,
        1.61,
        'Baraualdian.'
    ),
    (
        88,
        '2026-02-08 09:06:00',
        129.0,
        124,
        72,
        89.3,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        89,
        '2026-02-08 07:58:00',
        116.0,
        125,
        78,
        90.8,
        1.84,
        'Apur bat nekatuta.'
    ),
    (
        90,
        '2026-02-08 08:41:00',
        102.0,
        137,
        79,
        66.3,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        91,
        '2026-02-08 08:07:00',
        105.0,
        130,
        91,
        90.7,
        1.58,
        'Gosariaren ondoren.'
    ),
    (
        92,
        '2026-02-08 09:43:00',
        99.0,
        127,
        90,
        59.9,
        1.79,
        'Kirola egin ondoren.'
    ),
    (
        93,
        '2026-02-08 10:45:00',
        115.0,
        131,
        90,
        76.3,
        1.81,
        'Dena ondo.'
    ),
    (
        95,
        '2026-02-08 08:19:00',
        117.0,
        133,
        84,
        89.6,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        96,
        '2026-02-08 07:31:00',
        91.0,
        135,
        81,
        76.0,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-02-08 08:09:00',
        118.0,
        123,
        77,
        84.4,
        1.60,
        'Dena ondo.'
    ),
    (
        100,
        '2026-02-08 07:10:00',
        119.0,
        130,
        83,
        82.8,
        1.57,
        'Gosariaren ondoren.'
    ),
    (
        51,
        '2026-02-09 10:58:00',
        118.0,
        120,
        80,
        64.0,
        1.76,
        'Dena ondo.'
    ),
    (
        52,
        '2026-02-09 09:19:00',
        107.0,
        118,
        81,
        93.0,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2026-02-09 08:57:00',
        100.0,
        130,
        88,
        75.1,
        1.75,
        'Kirola egin ondoren.'
    ),
    (
        54,
        '2026-02-09 09:00:00',
        92.0,
        145,
        89,
        86.2,
        1.60,
        'Baraualdian.'
    ),
    (
        55,
        '2026-02-09 07:49:00',
        112.0,
        134,
        74,
        80.0,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        56,
        '2026-02-09 08:31:00',
        100.0,
        137,
        79,
        89.5,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        57,
        '2026-02-09 09:13:00',
        98.0,
        135,
        90,
        82.3,
        1.69,
        'Dena ondo.'
    ),
    (
        58,
        '2026-02-09 09:38:00',
        91.0,
        140,
        79,
        67.0,
        1.68,
        'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2026-02-09 10:04:00',
        108.0,
        126,
        88,
        62.8,
        1.73,
        'Dena ondo.'
    ),
    (
        62,
        '2026-02-09 09:28:00',
        123.0,
        126,
        76,
        66.2,
        1.56,
        'Baraualdian.'
    ),
    (
        63,
        '2026-02-09 10:23:00',
        139.0,
        130,
        81,
        81.3,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        64,
        '2026-02-09 07:19:00',
        127.0,
        136,
        82,
        95.1,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        65,
        '2026-02-09 07:23:00',
        105.0,
        135,
        85,
        91.5,
        1.55,
        'Kirola egin ondoren.'
    ),
    (
        66,
        '2026-02-09 10:20:00',
        125.0,
        131,
        84,
        75.3,
        1.59,
        'Gosariaren ondoren.'
    ),
    (
        68,
        '2026-02-09 09:08:00',
        93.0,
        126,
        77,
        60.9,
        1.85,
        'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-02-09 08:36:00',
        97.0,
        124,
        87,
        94.0,
        1.66,
        'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2026-02-09 09:49:00',
        100.0,
        129,
        81,
        92.9,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-02-09 07:04:00',
        117.0,
        116,
        84,
        95.8,
        1.55,
        'Dena ondo.'
    ),
    (
        74,
        '2026-02-09 08:17:00',
        122.0,
        127,
        78,
        63.4,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        75,
        '2026-02-09 10:13:00',
        103.0,
        136,
        82,
        61.0,
        1.65,
        'Apur bat nekatuta.'
    ),
    (
        76,
        '2026-02-09 07:51:00',
        94.0,
        112,
        92,
        67.0,
        1.69,
        'Baraualdian.'
    ),
    (
        77,
        '2026-02-09 10:30:00',
        129.0,
        121,
        85,
        67.1,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        78,
        '2026-02-09 07:36:00',
        85.0,
        126,
        73,
        63.0,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        79,
        '2026-02-09 08:33:00',
        101.0,
        138,
        77,
        67.5,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-02-09 09:23:00',
        123.0,
        125,
        87,
        62.1,
        1.78,
        'Baraualdian.'
    ),
    (
        81,
        '2026-02-09 08:32:00',
        122.0,
        138,
        93,
        85.5,
        1.58,
        'Gosariaren ondoren.'
    ),
    (
        82,
        '2026-02-09 08:25:00',
        129.0,
        132,
        90,
        89.4,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        83,
        '2026-02-09 09:14:00',
        119.0,
        131,
        87,
        64.3,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2026-02-09 09:41:00',
        87.0,
        121,
        89,
        79.3,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2026-02-09 10:40:00',
        99.0,
        125,
        93,
        81.3,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2026-02-09 07:01:00',
        101.0,
        127,
        73,
        67.5,
        1.57,
        'Baraualdian.'
    ),
    (
        87,
        '2026-02-09 07:14:00',
        113.0,
        123,
        74,
        72.1,
        1.61,
        'Dena ondo.'
    ),
    (
        88,
        '2026-02-09 08:22:00',
        92.0,
        123,
        77,
        91.0,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        89,
        '2026-02-09 09:13:00',
        129.0,
        124,
        90,
        90.9,
        1.84,
        'Dena ondo.'
    ),
    (
        90,
        '2026-02-09 07:11:00',
        88.0,
        133,
        89,
        66.1,
        1.60,
        'Dena ondo.'
    ),
    (
        91,
        '2026-02-09 07:31:00',
        93.0,
        130,
        91,
        89.1,
        1.58,
        'Dena ondo.'
    ),
    (
        93,
        '2026-02-09 10:04:00',
        124.0,
        139,
        83,
        75.5,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        94,
        '2026-02-09 10:49:00',
        98.0,
        131,
        88,
        86.1,
        1.83,
        'Kirola egin ondoren.'
    ),
    (
        95,
        '2026-02-09 07:24:00',
        121.0,
        132,
        85,
        90.6,
        1.77,
        'Dena ondo.'
    ),
    (
        96,
        '2026-02-09 08:48:00',
        123.0,
        132,
        76,
        76.2,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        97,
        '2026-02-09 10:02:00',
        116.0,
        126,
        73,
        86.2,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-02-09 10:03:00',
        108.0,
        135,
        84,
        83.1,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        99,
        '2026-02-09 10:08:00',
        122.0,
        121,
        78,
        85.0,
        1.71,
        'Baraualdian.'
    ),
    (
        51,
        '2026-02-10 08:52:00',
        127.0,
        121,
        92,
        64.8,
        1.76,
        'Gosariaren ondoren.'
    ),
    (
        52,
        '2026-02-10 09:21:00',
        128.0,
        133,
        85,
        94.9,
        1.77,
        'Dena ondo.'
    ),
    (
        53,
        '2026-02-10 08:56:00',
        97.0,
        117,
        93,
        75.3,
        1.75,
        'Baraualdian.'
    ),
    (
        54,
        '2026-02-10 10:03:00',
        121.0,
        136,
        85,
        87.1,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        55,
        '2026-02-10 09:46:00',
        132.0,
        134,
        71,
        80.5,
        1.76,
        'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2026-02-10 10:14:00',
        99.0,
        139,
        84,
        89.1,
        1.61,
        'Baraualdian.'
    ),
    (
        57,
        '2026-02-10 08:58:00',
        110.0,
        121,
        94,
        82.0,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        58,
        '2026-02-10 09:32:00',
        96.0,
        134,
        77,
        67.0,
        1.68,
        'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2026-02-10 09:44:00',
        95.0,
        123,
        93,
        62.7,
        1.73,
        'Ondo sentitzen naiz.'
    ),
    (
        60,
        '2026-02-10 08:36:00',
        138.0,
        127,
        81,
        78.5,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2026-02-10 10:07:00',
        100.0,
        121,
        88,
        72.6,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2026-02-10 10:37:00',
        97.0,
        125,
        84,
        94.6,
        1.56,
        'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2026-02-10 10:12:00',
        122.0,
        128,
        78,
        90.3,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        66,
        '2026-02-10 10:15:00',
        90.0,
        120,
        84,
        74.8,
        1.59,
        'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2026-02-10 10:01:00',
        99.0,
        129,
        88,
        71.4,
        1.72,
        'Dena ondo.'
    ),
    (
        68,
        '2026-02-10 08:28:00',
        131.0,
        128,
        82,
        60.1,
        1.85,
        'Kirola egin ondoren.'
    ),
    (
        69,
        '2026-02-10 07:53:00',
        120.0,
        138,
        85,
        95.0,
        1.66,
        'Gosariaren ondoren.'
    ),
    (
        70,
        '2026-02-10 07:59:00',
        84.0,
        127,
        75,
        75.2,
        1.70,
        'Gosariaren ondoren.'
    ),
    (
        71,
        '2026-02-10 10:32:00',
        127.0,
        129,
        83,
        88.0,
        1.63,
        'Apur bat nekatuta.'
    ),
    (
        72,
        '2026-02-10 10:28:00',
        116.0,
        143,
        84,
        91.9,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-02-10 10:23:00',
        103.0,
        113,
        75,
        94.4,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        74,
        '2026-02-10 07:10:00',
        136.0,
        123,
        79,
        63.8,
        1.67,
        'Baraualdian.'
    ),
    (
        75,
        '2026-02-10 10:27:00',
        126.0,
        130,
        74,
        61.0,
        1.65,
        'Gosariaren ondoren.'
    ),
    (
        76,
        '2026-02-10 10:44:00',
        117.0,
        120,
        86,
        66.0,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        77,
        '2026-02-10 07:51:00',
        108.0,
        125,
        89,
        66.3,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        78,
        '2026-02-10 10:31:00',
        98.0,
        123,
        85,
        62.7,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        79,
        '2026-02-10 09:58:00',
        116.0,
        134,
        83,
        66.5,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-02-10 07:23:00',
        113.0,
        132,
        85,
        63.6,
        1.78,
        'Apur bat nekatuta.'
    ),
    (
        81,
        '2026-02-10 07:53:00',
        92.0,
        130,
        84,
        86.3,
        1.58,
        'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-02-10 08:40:00',
        106.0,
        129,
        87,
        90.0,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        83,
        '2026-02-10 08:04:00',
        136.0,
        123,
        93,
        66.0,
        1.80,
        'Gosariaren ondoren.'
    ),
    (
        85,
        '2026-02-10 10:02:00',
        119.0,
        126,
        79,
        82.0,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        87,
        '2026-02-10 09:25:00',
        116.0,
        139,
        86,
        73.7,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2026-02-10 07:54:00',
        116.0,
        134,
        81,
        90.4,
        1.84,
        'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2026-02-10 10:23:00',
        91.0,
        135,
        79,
        90.2,
        1.58,
        'Dena ondo.'
    ),
    (
        94,
        '2026-02-10 07:50:00',
        89.0,
        124,
        87,
        87.8,
        1.83,
        'Baraualdian.'
    ),
    (
        95,
        '2026-02-10 08:58:00',
        131.0,
        126,
        83,
        89.9,
        1.77,
        'Dena ondo.'
    ),
    (
        96,
        '2026-02-10 09:58:00',
        114.0,
        123,
        76,
        76.8,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        97,
        '2026-02-10 07:26:00',
        131.0,
        120,
        81,
        87.1,
        1.56,
        'Baraualdian.'
    ),
    (
        98,
        '2026-02-10 08:55:00',
        131.0,
        126,
        76,
        84.5,
        1.60,
        'Dena ondo.'
    ),
    (
        51,
        '2026-02-11 08:01:00',
        121.0,
        120,
        86,
        63.5,
        1.76,
        'Baraualdian.'
    ),
    (
        52,
        '2026-02-11 08:13:00',
        107.0,
        120,
        83,
        94.0,
        1.77,
        'Apur bat nekatuta.'
    ),
    (
        53,
        '2026-02-11 09:39:00',
        96.0,
        130,
        78,
        75.8,
        1.75,
        'Kirola egin ondoren.'
    ),
    (
        54,
        '2026-02-11 09:39:00',
        123.0,
        130,
        74,
        87.5,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        56,
        '2026-02-11 10:10:00',
        83.0,
        134,
        82,
        90.9,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        57,
        '2026-02-11 07:14:00',
        114.0,
        119,
        93,
        83.1,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        58,
        '2026-02-11 09:58:00',
        101.0,
        133,
        76,
        66.1,
        1.68,
        'Apur bat nekatuta.'
    ),
    (
        60,
        '2026-02-11 08:58:00',
        102.0,
        121,
        91,
        78.1,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2026-02-11 09:42:00',
        130.0,
        123,
        79,
        94.2,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2026-02-11 10:15:00',
        113.0,
        140,
        88,
        91.6,
        1.55,
        'Baraualdian.'
    ),
    (
        67,
        '2026-02-11 09:11:00',
        98.0,
        143,
        87,
        71.6,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        68,
        '2026-02-11 07:45:00',
        101.0,
        126,
        83,
        61.1,
        1.85,
        'Baraualdian.'
    ),
    (
        69,
        '2026-02-11 09:39:00',
        106.0,
        127,
        83,
        95.1,
        1.66,
        'Dena ondo.'
    ),
    (
        71,
        '2026-02-11 10:48:00',
        114.0,
        139,
        78,
        88.3,
        1.63,
        'Gosariaren ondoren.'
    ),
    (
        72,
        '2026-02-11 08:04:00',
        83.0,
        131,
        75,
        91.8,
        1.69,
        'Dena ondo.'
    ),
    (
        73,
        '2026-02-11 07:47:00',
        134.0,
        129,
        85,
        95.1,
        1.55,
        'Kirola egin ondoren.'
    ),
    (
        74,
        '2026-02-11 08:09:00',
        117.0,
        118,
        79,
        64.8,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2026-02-11 07:57:00',
        104.0,
        139,
        83,
        59.0,
        1.65,
        'Kirola egin ondoren.'
    ),
    (
        76,
        '2026-02-11 09:29:00',
        121.0,
        129,
        81,
        65.2,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        77,
        '2026-02-11 10:49:00',
        98.0,
        124,
        79,
        67.3,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        78,
        '2026-02-11 09:04:00',
        86.0,
        124,
        82,
        62.5,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        79,
        '2026-02-11 09:26:00',
        118.0,
        131,
        84,
        67.1,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-02-11 07:36:00',
        128.0,
        128,
        94,
        62.7,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-02-11 09:48:00',
        111.0,
        136,
        89,
        85.7,
        1.58,
        'Baraualdian.'
    ),
    (
        83,
        '2026-02-11 09:23:00',
        117.0,
        136,
        90,
        64.5,
        1.80,
        'Gosariaren ondoren.'
    ),
    (
        84,
        '2026-02-11 10:26:00',
        87.0,
        134,
        84,
        78.6,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        85,
        '2026-02-11 10:31:00',
        115.0,
        127,
        80,
        80.0,
        1.72,
        'Gaur goizean neurtuta.'
    ),
    (
        87,
        '2026-02-11 08:15:00',
        117.0,
        123,
        80,
        73.0,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2026-02-11 07:07:00',
        117.0,
        137,
        87,
        90.4,
        1.84,
        'Gaur goizean neurtuta.'
    ),
    (
        90,
        '2026-02-11 07:31:00',
        108.0,
        132,
        92,
        67.0,
        1.60,
        'Baraualdian.'
    ),
    (
        91,
        '2026-02-11 10:28:00',
        114.0,
        136,
        76,
        89.1,
        1.58,
        'Kirola egin ondoren.'
    ),
    (
        92,
        '2026-02-11 10:48:00',
        129.0,
        144,
        79,
        59.9,
        1.79,
        'Apur bat nekatuta.'
    ),
    (
        93,
        '2026-02-11 08:02:00',
        104.0,
        131,
        84,
        76.9,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        94,
        '2026-02-11 09:14:00',
        97.0,
        124,
        81,
        86.1,
        1.83,
        'Baraualdian.'
    ),
    (
        95,
        '2026-02-11 09:58:00',
        118.0,
        141,
        72,
        89.7,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2026-02-11 08:57:00',
        104.0,
        137,
        88,
        77.6,
        1.71,
        'Ondo sentitzen naiz.'
    ),
    (
        97,
        '2026-02-11 09:19:00',
        134.0,
        138,
        79,
        87.8,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-02-11 08:24:00',
        116.0,
        129,
        78,
        83.2,
        1.60,
        'Baraualdian.'
    ),
    (
        99,
        '2026-02-11 09:39:00',
        123.0,
        137,
        79,
        85.7,
        1.71,
        'Gosariaren ondoren.'
    ),
    (
        100,
        '2026-02-11 08:24:00',
        121.0,
        136,
        74,
        81.4,
        1.57,
        'Baraualdian.'
    ),
    (
        51,
        '2026-02-12 09:04:00',
        101.0,
        140,
        84,
        63.0,
        1.76,
        'Gaur goizean neurtuta.'
    ),
    (
        52,
        '2026-02-12 08:43:00',
        123.0,
        130,
        79,
        93.8,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        54,
        '2026-02-12 07:15:00',
        106.0,
        144,
        88,
        87.0,
        1.60,
        'Baraualdian.'
    ),
    (
        55,
        '2026-02-12 07:19:00',
        99.0,
        142,
        71,
        80.6,
        1.76,
        'Baraualdian.'
    ),
    (
        56,
        '2026-02-12 10:23:00',
        107.0,
        125,
        90,
        90.0,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        57,
        '2026-02-12 10:27:00',
        97.0,
        126,
        85,
        83.4,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        58,
        '2026-02-12 08:33:00',
        105.0,
        134,
        82,
        67.9,
        1.68,
        'Baraualdian.'
    ),
    (
        60,
        '2026-02-12 10:00:00',
        102.0,
        115,
        89,
        78.3,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-02-12 09:20:00',
        119.0,
        126,
        90,
        72.3,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        62,
        '2026-02-12 09:12:00',
        111.0,
        121,
        83,
        65.5,
        1.56,
        'Baraualdian.'
    ),
    (
        63,
        '2026-02-12 07:34:00',
        122.0,
        140,
        81,
        81.5,
        1.80,
        'Baraualdian.'
    ),
    (
        65,
        '2026-02-12 08:57:00',
        131.0,
        131,
        82,
        90.1,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        66,
        '2026-02-12 10:43:00',
        111.0,
        124,
        83,
        74.9,
        1.59,
        'Baraualdian.'
    ),
    (
        67,
        '2026-02-12 07:33:00',
        96.0,
        127,
        78,
        72.5,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        68,
        '2026-02-12 09:10:00',
        124.0,
        120,
        86,
        60.3,
        1.85,
        'Baraualdian.'
    ),
    (
        69,
        '2026-02-12 10:55:00',
        95.0,
        138,
        85,
        94.2,
        1.66,
        'Kirola egin ondoren.'
    ),
    (
        70,
        '2026-02-12 10:29:00',
        96.0,
        134,
        81,
        75.8,
        1.70,
        'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-02-12 10:15:00',
        117.0,
        135,
        79,
        88.6,
        1.63,
        'Kirola egin ondoren.'
    ),
    (
        72,
        '2026-02-12 10:39:00',
        102.0,
        139,
        85,
        92.1,
        1.69,
        'Baraualdian.'
    ),
    (
        73,
        '2026-02-12 10:41:00',
        134.0,
        124,
        80,
        94.2,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        74,
        '2026-02-12 10:30:00',
        118.0,
        130,
        79,
        63.2,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        75,
        '2026-02-12 08:28:00',
        124.0,
        125,
        82,
        59.1,
        1.65,
        'Kirola egin ondoren.'
    ),
    (
        76,
        '2026-02-12 08:31:00',
        110.0,
        119,
        81,
        65.6,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        77,
        '2026-02-12 09:12:00',
        132.0,
        132,
        92,
        67.7,
        1.67,
        'Dena ondo.'
    ),
    (
        78,
        '2026-02-12 09:36:00',
        83.0,
        124,
        77,
        63.9,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        79,
        '2026-02-12 10:30:00',
        93.0,
        133,
        86,
        67.3,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2026-02-12 09:27:00',
        118.0,
        133,
        83,
        62.9,
        1.78,
        'Gosariaren ondoren.'
    ),
    (
        81,
        '2026-02-12 10:18:00',
        117.0,
        125,
        86,
        85.7,
        1.58,
        'Baraualdian.'
    ),
    (
        83,
        '2026-02-12 08:29:00',
        124.0,
        116,
        91,
        64.4,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2026-02-12 10:21:00',
        105.0,
        127,
        81,
        79.5,
        1.67,
        'Baraualdian.'
    ),
    (
        85,
        '2026-02-12 08:40:00',
        124.0,
        134,
        79,
        81.0,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        86,
        '2026-02-12 09:17:00',
        120.0,
        136,
        72,
        68.4,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        88,
        '2026-02-12 07:16:00',
        113.0,
        114,
        81,
        90.3,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        89,
        '2026-02-12 09:30:00',
        127.0,
        129,
        79,
        91.1,
        1.84,
        'Ondo sentitzen naiz.'
    ),
    (
        90,
        '2026-02-12 09:09:00',
        125.0,
        120,
        92,
        65.9,
        1.60,
        'Baraualdian.'
    ),
    (
        92,
        '2026-02-12 07:44:00',
        102.0,
        142,
        89,
        59.1,
        1.79,
        'Gosariaren ondoren.'
    ),
    (
        94,
        '2026-02-12 10:17:00',
        101.0,
        130,
        80,
        87.3,
        1.83,
        'Gosariaren ondoren.'
    ),
    (
        95,
        '2026-02-12 10:49:00',
        136.0,
        136,
        83,
        89.6,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-02-12 09:49:00',
        100.0,
        119,
        77,
        77.8,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2026-02-12 07:25:00',
        111.0,
        129,
        76,
        86.8,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        98,
        '2026-02-12 10:45:00',
        115.0,
        138,
        88,
        84.6,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        99,
        '2026-02-12 07:14:00',
        90.0,
        121,
        75,
        85.9,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2026-02-12 09:31:00',
        122.0,
        124,
        73,
        82.0,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        52,
        '2026-02-13 07:03:00',
        98.0,
        131,
        81,
        93.4,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2026-02-13 10:54:00',
        87.0,
        125,
        74,
        87.5,
        1.60,
        'Baraualdian.'
    ),
    (
        55,
        '2026-02-13 07:36:00',
        111.0,
        125,
        73,
        80.9,
        1.76,
        'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2026-02-13 09:36:00',
        105.0,
        134,
        80,
        90.0,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        57,
        '2026-02-13 09:00:00',
        81.0,
        124,
        90,
        82.8,
        1.69,
        'Baraualdian.'
    ),
    (
        58,
        '2026-02-13 09:19:00',
        117.0,
        128,
        76,
        67.6,
        1.68,
        'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2026-02-13 10:04:00',
        133.0,
        119,
        82,
        62.2,
        1.73,
        'Dena ondo.'
    ),
    (
        60,
        '2026-02-13 10:53:00',
        111.0,
        128,
        93,
        78.3,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        62,
        '2026-02-13 09:27:00',
        119.0,
        122,
        83,
        66.0,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        63,
        '2026-02-13 07:38:00',
        140.0,
        125,
        83,
        81.3,
        1.80,
        'Baraualdian.'
    ),
    (
        64,
        '2026-02-13 10:56:00',
        95.0,
        130,
        76,
        95.7,
        1.56,
        'Dena ondo.'
    ),
    (
        65,
        '2026-02-13 08:15:00',
        100.0,
        125,
        86,
        90.2,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2026-02-13 07:06:00',
        84.0,
        142,
        81,
        72.5,
        1.72,
        'Dena ondo.'
    ),
    (
        68,
        '2026-02-13 08:04:00',
        106.0,
        135,
        76,
        61.3,
        1.85,
        'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2026-02-13 07:32:00',
        106.0,
        131,
        86,
        95.3,
        1.66,
        'Apur bat nekatuta.'
    ),
    (
        70,
        '2026-02-13 07:25:00',
        107.0,
        117,
        83,
        74.2,
        1.70,
        'Kirola egin ondoren.'
    ),
    (
        71,
        '2026-02-13 10:55:00',
        118.0,
        125,
        73,
        88.8,
        1.63,
        'Gosariaren ondoren.'
    ),
    (
        72,
        '2026-02-13 10:14:00',
        87.0,
        140,
        76,
        92.7,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-02-13 07:19:00',
        110.0,
        120,
        83,
        94.8,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2026-02-13 10:03:00',
        95.0,
        120,
        94,
        65.1,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2026-02-13 07:05:00',
        83.0,
        122,
        79,
        63.4,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        80,
        '2026-02-13 09:58:00',
        126.0,
        125,
        86,
        63.9,
        1.78,
        'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-02-13 09:33:00',
        130.0,
        136,
        90,
        89.1,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        83,
        '2026-02-13 07:10:00',
        131.0,
        123,
        79,
        65.2,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2026-02-13 07:32:00',
        109.0,
        132,
        85,
        79.9,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        85,
        '2026-02-13 09:40:00',
        96.0,
        125,
        84,
        81.9,
        1.72,
        'Baraualdian.'
    ),
    (
        86,
        '2026-02-13 10:00:00',
        114.0,
        124,
        81,
        67.4,
        1.57,
        'Baraualdian.'
    ),
    (
        87,
        '2026-02-13 07:17:00',
        113.0,
        126,
        75,
        73.8,
        1.61,
        'Baraualdian.'
    ),
    (
        90,
        '2026-02-13 08:25:00',
        106.0,
        122,
        93,
        66.0,
        1.60,
        'Baraualdian.'
    ),
    (
        91,
        '2026-02-13 09:43:00',
        82.0,
        143,
        89,
        90.2,
        1.58,
        'Gosariaren ondoren.'
    ),
    (
        92,
        '2026-02-13 07:53:00',
        133.0,
        130,
        89,
        60.2,
        1.79,
        'Apur bat nekatuta.'
    ),
    (
        93,
        '2026-02-13 10:35:00',
        132.0,
        139,
        82,
        76.2,
        1.81,
        'Baraualdian.'
    ),
    (
        96,
        '2026-02-13 08:20:00',
        84.0,
        123,
        79,
        76.0,
        1.71,
        'Baraualdian.'
    ),
    (
        97,
        '2026-02-13 09:13:00',
        140.0,
        127,
        74,
        86.4,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        98,
        '2026-02-13 08:08:00',
        127.0,
        126,
        81,
        83.0,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        99,
        '2026-02-13 09:50:00',
        121.0,
        121,
        79,
        85.1,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2026-02-13 10:26:00',
        123.0,
        124,
        78,
        82.6,
        1.57,
        'Baraualdian.'
    ),
    (
        52,
        '2026-02-14 07:50:00',
        96.0,
        137,
        87,
        94.8,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2026-02-14 09:39:00',
        115.0,
        123,
        92,
        75.9,
        1.75,
        'Baraualdian.'
    ),
    (
        54,
        '2026-02-14 09:39:00',
        92.0,
        144,
        74,
        87.6,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        55,
        '2026-02-14 10:53:00',
        118.0,
        128,
        73,
        80.1,
        1.76,
        'Dena ondo.'
    ),
    (
        56,
        '2026-02-14 09:48:00',
        108.0,
        135,
        92,
        89.6,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        57,
        '2026-02-14 07:02:00',
        99.0,
        131,
        87,
        82.4,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        58,
        '2026-02-14 08:01:00',
        93.0,
        135,
        90,
        66.9,
        1.68,
        'Gosariaren ondoren.'
    ),
    (
        60,
        '2026-02-14 07:27:00',
        117.0,
        125,
        83,
        77.3,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        61,
        '2026-02-14 08:04:00',
        126.0,
        131,
        86,
        73.0,
        1.83,
        'Gosariaren ondoren.'
    ),
    (
        63,
        '2026-02-14 07:08:00',
        109.0,
        127,
        81,
        81.5,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2026-02-14 10:38:00',
        103.0,
        125,
        80,
        95.2,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2026-02-14 09:18:00',
        123.0,
        131,
        80,
        91.9,
        1.55,
        'Ondo sentitzen naiz.'
    ),
    (
        66,
        '2026-02-14 10:37:00',
        97.0,
        120,
        79,
        74.4,
        1.59,
        'Gosariaren ondoren.'
    ),
    (
        67,
        '2026-02-14 09:30:00',
        98.0,
        130,
        84,
        71.8,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        68,
        '2026-02-14 09:31:00',
        110.0,
        133,
        82,
        61.9,
        1.85,
        'Dena ondo.'
    ),
    (
        69,
        '2026-02-14 08:36:00',
        106.0,
        140,
        79,
        95.2,
        1.66,
        'Baraualdian.'
    ),
    (
        70,
        '2026-02-14 07:26:00',
        105.0,
        117,
        88,
        74.4,
        1.70,
        'Baraualdian.'
    ),
    (
        71,
        '2026-02-14 09:19:00',
        129.0,
        130,
        76,
        88.4,
        1.63,
        'Kirola egin ondoren.'
    ),
    (
        72,
        '2026-02-14 08:58:00',
        109.0,
        127,
        74,
        92.8,
        1.69,
        'Dena ondo.'
    ),
    (
        73,
        '2026-02-14 07:45:00',
        117.0,
        112,
        81,
        94.3,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        74,
        '2026-02-14 09:04:00',
        99.0,
        125,
        80,
        64.2,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        76,
        '2026-02-14 07:47:00',
        104.0,
        129,
        93,
        65.0,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        78,
        '2026-02-14 09:27:00',
        85.0,
        129,
        78,
        63.3,
        1.61,
        'Dena ondo.'
    ),
    (
        79,
        '2026-02-14 10:26:00',
        108.0,
        133,
        88,
        67.0,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-02-14 07:51:00',
        129.0,
        123,
        82,
        90.0,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2026-02-14 08:10:00',
        92.0,
        119,
        82,
        78.9,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        86,
        '2026-02-14 08:59:00',
        123.0,
        133,
        82,
        68.6,
        1.57,
        'Baraualdian.'
    ),
    (
        89,
        '2026-02-14 08:20:00',
        134.0,
        137,
        91,
        90.2,
        1.84,
        'Dena ondo.'
    ),
    (
        90,
        '2026-02-14 08:10:00',
        123.0,
        126,
        92,
        66.4,
        1.60,
        'Dena ondo.'
    ),
    (
        91,
        '2026-02-14 08:58:00',
        89.0,
        125,
        78,
        89.3,
        1.58,
        'Gosariaren ondoren.'
    ),
    (
        92,
        '2026-02-14 09:23:00',
        105.0,
        125,
        80,
        59.6,
        1.79,
        'Baraualdian.'
    ),
    (
        93,
        '2026-02-14 10:21:00',
        128.0,
        136,
        82,
        75.5,
        1.81,
        'Kirola egin ondoren.'
    ),
    (
        94,
        '2026-02-14 08:01:00',
        76.0,
        139,
        82,
        87.9,
        1.83,
        'Gosariaren ondoren.'
    ),
    (
        95,
        '2026-02-14 08:06:00',
        106.0,
        131,
        74,
        89.4,
        1.77,
        'Kirola egin ondoren.'
    ),
    (
        99,
        '2026-02-14 09:00:00',
        91.0,
        123,
        78,
        85.3,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        100,
        '2026-02-14 08:11:00',
        117.0,
        127,
        73,
        81.5,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        51,
        '2026-02-15 10:52:00',
        113.0,
        123,
        83,
        63.0,
        1.76,
        'Kirola egin ondoren.'
    ),
    (
        52,
        '2026-02-15 10:37:00',
        95.0,
        126,
        80,
        94.7,
        1.77,
        'Dena ondo.'
    ),
    (
        53,
        '2026-02-15 08:09:00',
        105.0,
        127,
        90,
        74.3,
        1.75,
        'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2026-02-15 10:07:00',
        117.0,
        132,
        87,
        87.6,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2026-02-15 08:18:00',
        115.0,
        131,
        86,
        90.1,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2026-02-15 07:07:00',
        116.0,
        135,
        89,
        66.2,
        1.68,
        'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2026-02-15 07:20:00',
        107.0,
        114,
        83,
        63.3,
        1.73,
        'Baraualdian.'
    ),
    (
        60,
        '2026-02-15 07:15:00',
        127.0,
        115,
        86,
        78.2,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        61,
        '2026-02-15 08:34:00',
        101.0,
        129,
        80,
        72.0,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        63,
        '2026-02-15 07:18:00',
        103.0,
        136,
        90,
        81.0,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2026-02-15 10:02:00',
        123.0,
        133,
        73,
        95.6,
        1.56,
        'Gosariaren ondoren.'
    ),
    (
        65,
        '2026-02-15 08:13:00',
        131.0,
        139,
        79,
        90.4,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        66,
        '2026-02-15 09:08:00',
        121.0,
        133,
        88,
        74.8,
        1.59,
        'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2026-02-15 09:39:00',
        91.0,
        130,
        90,
        71.7,
        1.72,
        'Dena ondo.'
    ),
    (
        68,
        '2026-02-15 08:56:00',
        121.0,
        134,
        76,
        61.5,
        1.85,
        'Baraualdian.'
    ),
    (
        70,
        '2026-02-15 10:10:00',
        104.0,
        117,
        89,
        75.8,
        1.70,
        'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2026-02-15 07:02:00',
        115.0,
        140,
        81,
        88.6,
        1.63,
        'Gosariaren ondoren.'
    ),
    (
        72,
        '2026-02-15 08:14:00',
        96.0,
        132,
        78,
        92.6,
        1.69,
        'Baraualdian.'
    ),
    (
        73,
        '2026-02-15 08:20:00',
        114.0,
        115,
        79,
        96.0,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        74,
        '2026-02-15 08:44:00',
        110.0,
        129,
        89,
        63.8,
        1.67,
        'Baraualdian.'
    ),
    (
        75,
        '2026-02-15 08:49:00',
        137.0,
        141,
        78,
        60.4,
        1.65,
        'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2026-02-15 09:17:00',
        129.0,
        122,
        88,
        65.9,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        78,
        '2026-02-15 10:59:00',
        98.0,
        121,
        75,
        62.0,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        79,
        '2026-02-15 07:42:00',
        128.0,
        133,
        77,
        66.2,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        83,
        '2026-02-15 08:29:00',
        101.0,
        119,
        88,
        65.5,
        1.80,
        'Kirola egin ondoren.'
    ),
    (
        84,
        '2026-02-15 08:07:00',
        113.0,
        125,
        77,
        79.3,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2026-02-15 09:18:00',
        87.0,
        125,
        92,
        81.0,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        86,
        '2026-02-15 08:02:00',
        96.0,
        139,
        86,
        67.3,
        1.57,
        'Kirola egin ondoren.'
    ),
    (
        87,
        '2026-02-15 10:16:00',
        125.0,
        130,
        73,
        73.6,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2026-02-15 10:41:00',
        113.0,
        118,
        78,
        90.3,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        89,
        '2026-02-15 10:09:00',
        115.0,
        132,
        87,
        91.8,
        1.84,
        'Apur bat nekatuta.'
    ),
    (
        90,
        '2026-02-15 08:51:00',
        121.0,
        122,
        82,
        65.3,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        91,
        '2026-02-15 08:16:00',
        112.0,
        144,
        85,
        89.2,
        1.58,
        'Apur bat nekatuta.'
    ),
    (
        92,
        '2026-02-15 10:58:00',
        133.0,
        135,
        86,
        59.1,
        1.79,
        'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2026-02-15 08:11:00',
        131.0,
        134,
        82,
        75.7,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        94,
        '2026-02-15 08:08:00',
        79.0,
        123,
        77,
        86.1,
        1.83,
        'Dena ondo.'
    ),
    (
        95,
        '2026-02-15 08:45:00',
        137.0,
        125,
        77,
        90.4,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        98,
        '2026-02-15 08:51:00',
        114.0,
        130,
        90,
        84.2,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        99,
        '2026-02-15 07:41:00',
        117.0,
        117,
        85,
        85.0,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2026-02-15 07:39:00',
        127.0,
        123,
        77,
        82.0,
        1.57,
        'Kirola egin ondoren.'
    ),
    (
        51,
        '2026-02-16 10:11:00',
        125.0,
        123,
        91,
        64.8,
        1.76,
        'Ondo sentitzen naiz.'
    ),
    (
        52,
        '2026-02-16 08:26:00',
        127.0,
        121,
        83,
        94.6,
        1.77,
        'Dena ondo.'
    ),
    (
        53,
        '2026-02-16 07:54:00',
        123.0,
        132,
        90,
        74.5,
        1.75,
        'Kirola egin ondoren.'
    ),
    (
        55,
        '2026-02-16 08:51:00',
        132.0,
        143,
        81,
        81.4,
        1.76,
        'Kirola egin ondoren.'
    ),
    (
        56,
        '2026-02-16 08:15:00',
        97.0,
        142,
        91,
        89.6,
        1.61,
        'Baraualdian.'
    ),
    (
        57,
        '2026-02-16 10:12:00',
        112.0,
        122,
        86,
        83.4,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        58,
        '2026-02-16 10:51:00',
        117.0,
        127,
        83,
        66.0,
        1.68,
        'Apur bat nekatuta.'
    ),
    (
        60,
        '2026-02-16 07:06:00',
        122.0,
        122,
        93,
        77.0,
        1.81,
        'Dena ondo.'
    ),
    (
        61,
        '2026-02-16 07:02:00',
        126.0,
        119,
        78,
        72.8,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        62,
        '2026-02-16 08:18:00',
        122.0,
        135,
        79,
        65.6,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        63,
        '2026-02-16 10:49:00',
        111.0,
        132,
        87,
        81.5,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        64,
        '2026-02-16 07:14:00',
        125.0,
        127,
        75,
        94.7,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        66,
        '2026-02-16 07:51:00',
        98.0,
        128,
        85,
        74.7,
        1.59,
        'Baraualdian.'
    ),
    (
        67,
        '2026-02-16 07:12:00',
        106.0,
        142,
        79,
        72.0,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        68,
        '2026-02-16 07:34:00',
        95.0,
        130,
        85,
        61.2,
        1.85,
        'Kirola egin ondoren.'
    ),
    (
        69,
        '2026-02-16 08:50:00',
        94.0,
        131,
        81,
        94.5,
        1.66,
        'Gosariaren ondoren.'
    ),
    (
        70,
        '2026-02-16 07:50:00',
        115.0,
        120,
        83,
        75.3,
        1.70,
        'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2026-02-16 09:02:00',
        137.0,
        135,
        80,
        89.7,
        1.63,
        'Baraualdian.'
    ),
    (
        72,
        '2026-02-16 07:38:00',
        98.0,
        136,
        74,
        92.5,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2026-02-16 09:08:00',
        126.0,
        121,
        86,
        96.0,
        1.55,
        'Dena ondo.'
    ),
    (
        74,
        '2026-02-16 10:49:00',
        117.0,
        120,
        90,
        64.2,
        1.67,
        'Dena ondo.'
    ),
    (
        75,
        '2026-02-16 08:03:00',
        106.0,
        130,
        70,
        59.6,
        1.65,
        'Baraualdian.'
    ),
    (
        76,
        '2026-02-16 09:59:00',
        106.0,
        111,
        85,
        66.9,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        78,
        '2026-02-16 10:53:00',
        84.0,
        124,
        88,
        63.1,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        79,
        '2026-02-16 10:33:00',
        105.0,
        131,
        89,
        67.0,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        80,
        '2026-02-16 09:28:00',
        113.0,
        130,
        87,
        62.4,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-02-16 09:34:00',
        100.0,
        132,
        91,
        86.5,
        1.58,
        'Dena ondo.'
    ),
    (
        83,
        '2026-02-16 09:23:00',
        113.0,
        126,
        90,
        65.9,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        84,
        '2026-02-16 09:34:00',
        101.0,
        133,
        91,
        78.7,
        1.67,
        'Dena ondo.'
    ),
    (
        85,
        '2026-02-16 08:35:00',
        84.0,
        121,
        82,
        80.7,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2026-02-16 10:02:00',
        93.0,
        135,
        75,
        67.5,
        1.57,
        'Apur bat nekatuta.'
    ),
    (
        87,
        '2026-02-16 07:02:00',
        124.0,
        136,
        82,
        74.0,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2026-02-16 10:55:00',
        124.0,
        121,
        72,
        90.3,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2026-02-16 07:45:00',
        109.0,
        126,
        77,
        90.6,
        1.84,
        'Dena ondo.'
    ),
    (
        90,
        '2026-02-16 08:10:00',
        105.0,
        122,
        78,
        65.4,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        93,
        '2026-02-16 08:09:00',
        125.0,
        128,
        87,
        76.3,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2026-02-16 08:40:00',
        106.0,
        142,
        88,
        86.1,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-02-16 10:40:00',
        95.0,
        124,
        80,
        76.6,
        1.71,
        'Ondo sentitzen naiz.'
    ),
    (
        97,
        '2026-02-16 09:23:00',
        140.0,
        139,
        77,
        86.5,
        1.56,
        'Baraualdian.'
    ),
    (
        98,
        '2026-02-16 10:25:00',
        133.0,
        137,
        78,
        83.9,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        99,
        '2026-02-16 07:02:00',
        117.0,
        123,
        86,
        86.9,
        1.71,
        'Baraualdian.'
    ),
    (
        100,
        '2026-02-16 10:57:00',
        100.0,
        132,
        78,
        81.9,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2026-02-17 09:05:00',
        116.0,
        132,
        89,
        64.1,
        1.76,
        'Apur bat nekatuta.'
    ),
    (
        52,
        '2026-02-17 09:47:00',
        106.0,
        119,
        94,
        93.0,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2026-02-17 10:57:00',
        84.0,
        118,
        91,
        75.9,
        1.75,
        'Baraualdian.'
    ),
    (
        54,
        '2026-02-17 08:34:00',
        94.0,
        130,
        88,
        87.1,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2026-02-17 08:40:00',
        124.0,
        125,
        71,
        81.8,
        1.76,
        'Dena ondo.'
    ),
    (
        56,
        '2026-02-17 09:43:00',
        95.0,
        128,
        80,
        90.2,
        1.61,
        'Baraualdian.'
    ),
    (
        57,
        '2026-02-17 10:22:00',
        77.0,
        124,
        81,
        82.0,
        1.69,
        'Dena ondo.'
    ),
    (
        59,
        '2026-02-17 09:00:00',
        132.0,
        126,
        85,
        63.4,
        1.73,
        'Ondo sentitzen naiz.'
    ),
    (
        60,
        '2026-02-17 09:17:00',
        136.0,
        122,
        88,
        78.5,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        63,
        '2026-02-17 07:31:00',
        134.0,
        129,
        90,
        80.6,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        65,
        '2026-02-17 07:23:00',
        125.0,
        131,
        86,
        90.9,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        66,
        '2026-02-17 09:34:00',
        118.0,
        136,
        80,
        74.6,
        1.59,
        'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2026-02-17 07:32:00',
        99.0,
        130,
        90,
        71.3,
        1.72,
        'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2026-02-17 09:54:00',
        94.0,
        126,
        87,
        94.1,
        1.66,
        'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2026-02-17 08:39:00',
        112.0,
        133,
        78,
        75.8,
        1.70,
        'Apur bat nekatuta.'
    ),
    (
        71,
        '2026-02-17 10:47:00',
        134.0,
        121,
        73,
        88.9,
        1.63,
        'Apur bat nekatuta.'
    ),
    (
        72,
        '2026-02-17 08:58:00',
        97.0,
        131,
        82,
        91.0,
        1.69,
        'Dena ondo.'
    ),
    (
        73,
        '2026-02-17 10:54:00',
        125.0,
        125,
        74,
        95.1,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        74,
        '2026-02-17 07:40:00',
        127.0,
        119,
        80,
        64.5,
        1.67,
        'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2026-02-17 07:24:00',
        127.0,
        119,
        82,
        65.1,
        1.69,
        'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2026-02-17 09:55:00',
        103.0,
        127,
        75,
        63.8,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        79,
        '2026-02-17 07:38:00',
        109.0,
        140,
        84,
        66.8,
        1.67,
        'Baraualdian.'
    ),
    (
        80,
        '2026-02-17 09:09:00',
        127.0,
        121,
        94,
        63.2,
        1.78,
        'Dena ondo.'
    ),
    (
        81,
        '2026-02-17 07:56:00',
        96.0,
        119,
        89,
        86.5,
        1.58,
        'Kirola egin ondoren.'
    ),
    (
        82,
        '2026-02-17 10:53:00',
        118.0,
        129,
        94,
        88.4,
        1.77,
        'Dena ondo.'
    ),
    (
        83,
        '2026-02-17 10:13:00',
        116.0,
        125,
        90,
        65.3,
        1.80,
        'Baraualdian.'
    ),
    (
        84,
        '2026-02-17 07:44:00',
        126.0,
        137,
        80,
        78.7,
        1.67,
        'Baraualdian.'
    ),
    (
        85,
        '2026-02-17 08:03:00',
        92.0,
        130,
        86,
        80.7,
        1.72,
        'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2026-02-17 08:40:00',
        117.0,
        123,
        72,
        67.9,
        1.57,
        'Dena ondo.'
    ),
    (
        87,
        '2026-02-17 07:33:00',
        98.0,
        136,
        80,
        73.1,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        88,
        '2026-02-17 07:04:00',
        101.0,
        115,
        87,
        90.1,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        89,
        '2026-02-17 10:45:00',
        113.0,
        138,
        81,
        90.3,
        1.84,
        'Ondo sentitzen naiz.'
    ),
    (
        91,
        '2026-02-17 10:05:00',
        85.0,
        139,
        77,
        90.3,
        1.58,
        'Gosariaren ondoren.'
    ),
    (
        92,
        '2026-02-17 08:51:00',
        109.0,
        135,
        82,
        60.8,
        1.79,
        'Dena ondo.'
    ),
    (
        93,
        '2026-02-17 09:54:00',
        114.0,
        122,
        87,
        75.8,
        1.81,
        'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2026-02-17 09:16:00',
        88.0,
        137,
        90,
        87.4,
        1.83,
        'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2026-02-17 07:26:00',
        100.0,
        138,
        76,
        90.5,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        96,
        '2026-02-17 10:44:00',
        104.0,
        118,
        75,
        77.2,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-02-17 07:24:00',
        133.0,
        137,
        83,
        83.0,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        100,
        '2026-02-17 09:28:00',
        100.0,
        122,
        78,
        81.8,
        1.57,
        'Gaur goizean neurtuta.'
    ),
    (
        52,
        '2026-02-18 08:33:00',
        125.0,
        122,
        90,
        94.4,
        1.77,
        'Baraualdian.'
    ),
    (
        53,
        '2026-02-18 08:28:00',
        106.0,
        122,
        84,
        75.0,
        1.75,
        'Baraualdian.'
    ),
    (
        54,
        '2026-02-18 10:44:00',
        116.0,
        132,
        77,
        86.1,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        55,
        '2026-02-18 08:23:00',
        105.0,
        130,
        72,
        81.0,
        1.76,
        'Gosariaren ondoren.'
    ),
    (
        56,
        '2026-02-18 07:19:00',
        109.0,
        125,
        92,
        90.9,
        1.61,
        'Kirola egin ondoren.'
    ),
    (
        57,
        '2026-02-18 10:38:00',
        92.0,
        130,
        90,
        82.0,
        1.69,
        'Dena ondo.'
    ),
    (
        58,
        '2026-02-18 08:47:00',
        88.0,
        140,
        79,
        67.5,
        1.68,
        'Ondo sentitzen naiz.'
    ),
    (
        59,
        '2026-02-18 08:06:00',
        125.0,
        115,
        81,
        63.4,
        1.73,
        'Kirola egin ondoren.'
    ),
    (
        60,
        '2026-02-18 09:10:00',
        103.0,
        129,
        87,
        78.2,
        1.81,
        'Dena ondo.'
    ),
    (
        61,
        '2026-02-18 09:07:00',
        111.0,
        121,
        85,
        73.4,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        62,
        '2026-02-18 08:42:00',
        111.0,
        140,
        81,
        66.1,
        1.56,
        'Dena ondo.'
    ),
    (
        64,
        '2026-02-18 07:37:00',
        120.0,
        138,
        85,
        94.4,
        1.56,
        'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2026-02-18 10:22:00',
        130.0,
        130,
        77,
        92.0,
        1.55,
        'Dena ondo.'
    ),
    (
        66,
        '2026-02-18 09:34:00',
        126.0,
        118,
        85,
        74.9,
        1.59,
        'Baraualdian.'
    ),
    (
        67,
        '2026-02-18 07:10:00',
        102.0,
        131,
        84,
        71.4,
        1.72,
        'Baraualdian.'
    ),
    (
        68,
        '2026-02-18 09:45:00',
        102.0,
        121,
        81,
        61.0,
        1.85,
        'Baraualdian.'
    ),
    (
        69,
        '2026-02-18 08:56:00',
        114.0,
        138,
        80,
        95.5,
        1.66,
        'Gosariaren ondoren.'
    ),
    (
        70,
        '2026-02-18 07:56:00',
        104.0,
        131,
        86,
        75.4,
        1.70,
        'Dena ondo.'
    ),
    (
        72,
        '2026-02-18 07:49:00',
        111.0,
        138,
        89,
        92.9,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-02-18 10:11:00',
        118.0,
        116,
        78,
        94.1,
        1.55,
        'Gosariaren ondoren.'
    ),
    (
        74,
        '2026-02-18 09:34:00',
        136.0,
        117,
        83,
        63.3,
        1.67,
        'Apur bat nekatuta.'
    ),
    (
        76,
        '2026-02-18 07:49:00',
        107.0,
        130,
        80,
        66.1,
        1.69,
        'Gosariaren ondoren.'
    ),
    (
        77,
        '2026-02-18 10:26:00',
        106.0,
        122,
        83,
        67.6,
        1.67,
        'Dena ondo.'
    ),
    (
        78,
        '2026-02-18 09:38:00',
        104.0,
        131,
        84,
        63.6,
        1.61,
        'Gaur goizean neurtuta.'
    ),
    (
        79,
        '2026-02-18 09:20:00',
        100.0,
        133,
        84,
        67.2,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2026-02-18 10:39:00',
        99.0,
        129,
        91,
        86.1,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-02-18 07:27:00',
        130.0,
        137,
        89,
        89.3,
        1.77,
        'Dena ondo.'
    ),
    (
        83,
        '2026-02-18 09:40:00',
        129.0,
        130,
        83,
        65.1,
        1.80,
        'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2026-02-18 09:22:00',
        113.0,
        134,
        77,
        78.2,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        85,
        '2026-02-18 10:06:00',
        97.0,
        132,
        78,
        81.9,
        1.72,
        'Baraualdian.'
    ),
    (
        86,
        '2026-02-18 10:19:00',
        125.0,
        124,
        79,
        68.1,
        1.57,
        'Gosariaren ondoren.'
    ),
    (
        87,
        '2026-02-18 07:59:00',
        124.0,
        124,
        87,
        73.8,
        1.61,
        'Apur bat nekatuta.'
    ),
    (
        88,
        '2026-02-18 08:19:00',
        102.0,
        112,
        80,
        89.9,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        89,
        '2026-02-18 09:25:00',
        113.0,
        124,
        79,
        91.9,
        1.84,
        'Apur bat nekatuta.'
    ),
    (
        90,
        '2026-02-18 07:31:00',
        90.0,
        124,
        84,
        67.0,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        91,
        '2026-02-18 09:44:00',
        81.0,
        140,
        79,
        89.2,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2026-02-18 09:38:00',
        109.0,
        144,
        94,
        60.7,
        1.79,
        'Dena ondo.'
    ),
    (
        96,
        '2026-02-18 09:35:00',
        95.0,
        124,
        82,
        77.5,
        1.71,
        'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2026-02-18 07:37:00',
        124.0,
        129,
        79,
        87.5,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        98,
        '2026-02-18 07:09:00',
        110.0,
        121,
        75,
        83.0,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        99,
        '2026-02-18 08:37:00',
        94.0,
        135,
        88,
        85.7,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        51,
        '2026-02-19 09:28:00',
        117.0,
        126,
        91,
        63.8,
        1.76,
        'Ondo sentitzen naiz.'
    ),
    (
        52,
        '2026-02-19 09:58:00',
        111.0,
        120,
        91,
        94.1,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2026-02-19 10:56:00',
        114.0,
        119,
        83,
        74.9,
        1.75,
        'Kirola egin ondoren.'
    ),
    (
        54,
        '2026-02-19 09:35:00',
        90.0,
        131,
        75,
        88.0,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2026-02-19 08:08:00',
        115.0,
        130,
        73,
        81.0,
        1.76,
        'Kirola egin ondoren.'
    ),
    (
        58,
        '2026-02-19 08:54:00',
        93.0,
        133,
        77,
        67.3,
        1.68,
        'Ondo sentitzen naiz.'
    ),
    (
        59,
        '2026-02-19 07:00:00',
        98.0,
        127,
        83,
        63.2,
        1.73,
        'Kirola egin ondoren.'
    ),
    (
        60,
        '2026-02-19 09:33:00',
        127.0,
        135,
        80,
        77.8,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-02-19 08:16:00',
        102.0,
        124,
        88,
        72.0,
        1.83,
        'Dena ondo.'
    ),
    (
        62,
        '2026-02-19 10:24:00',
        117.0,
        126,
        86,
        65.9,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        63,
        '2026-02-19 09:33:00',
        135.0,
        132,
        85,
        80.4,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2026-02-19 08:59:00',
        92.0,
        125,
        90,
        91.4,
        1.55,
        'Baraualdian.'
    ),
    (
        66,
        '2026-02-19 09:40:00',
        93.0,
        117,
        86,
        74.3,
        1.59,
        'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2026-02-19 07:52:00',
        115.0,
        136,
        84,
        72.8,
        1.72,
        'Kirola egin ondoren.'
    ),
    (
        68,
        '2026-02-19 08:22:00',
        116.0,
        140,
        87,
        61.9,
        1.85,
        'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-02-19 07:20:00',
        130.0,
        128,
        86,
        94.8,
        1.66,
        'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2026-02-19 08:18:00',
        112.0,
        130,
        87,
        75.1,
        1.70,
        'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-02-19 09:54:00',
        106.0,
        130,
        72,
        89.0,
        1.63,
        'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2026-02-19 09:57:00',
        118.0,
        142,
        82,
        92.0,
        1.69,
        'Baraualdian.'
    ),
    (
        74,
        '2026-02-19 09:43:00',
        103.0,
        131,
        79,
        64.2,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        75,
        '2026-02-19 07:34:00',
        133.0,
        141,
        79,
        59.2,
        1.65,
        'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2026-02-19 09:02:00',
        113.0,
        119,
        92,
        65.7,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        77,
        '2026-02-19 10:19:00',
        103.0,
        141,
        88,
        67.9,
        1.67,
        'Dena ondo.'
    ),
    (
        78,
        '2026-02-19 10:40:00',
        116.0,
        121,
        84,
        62.5,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        79,
        '2026-02-19 09:35:00',
        110.0,
        130,
        76,
        67.2,
        1.67,
        'Baraualdian.'
    ),
    (
        80,
        '2026-02-19 10:30:00',
        125.0,
        137,
        80,
        63.6,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-02-19 09:02:00',
        121.0,
        125,
        84,
        86.6,
        1.58,
        'Dena ondo.'
    ),
    (
        82,
        '2026-02-19 09:43:00',
        105.0,
        143,
        92,
        89.9,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        83,
        '2026-02-19 09:46:00',
        128.0,
        120,
        91,
        65.9,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        84,
        '2026-02-19 07:25:00',
        123.0,
        118,
        90,
        78.7,
        1.67,
        'Dena ondo.'
    ),
    (
        85,
        '2026-02-19 08:57:00',
        114.0,
        128,
        83,
        80.3,
        1.72,
        'Gaur goizean neurtuta.'
    ),
    (
        86,
        '2026-02-19 09:05:00',
        130.0,
        137,
        72,
        68.1,
        1.57,
        'Gosariaren ondoren.'
    ),
    (
        87,
        '2026-02-19 08:36:00',
        119.0,
        124,
        83,
        73.4,
        1.61,
        'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2026-02-19 09:40:00',
        90.0,
        121,
        83,
        89.3,
        1.81,
        'Ondo sentitzen naiz.'
    ),
    (
        90,
        '2026-02-19 09:34:00',
        123.0,
        131,
        84,
        66.6,
        1.60,
        'Dena ondo.'
    ),
    (
        92,
        '2026-02-19 09:23:00',
        101.0,
        143,
        86,
        60.3,
        1.79,
        'Kirola egin ondoren.'
    ),
    (
        93,
        '2026-02-19 09:51:00',
        125.0,
        125,
        79,
        75.7,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        94,
        '2026-02-19 09:06:00',
        115.0,
        124,
        82,
        87.1,
        1.83,
        'Dena ondo.'
    ),
    (
        96,
        '2026-02-19 07:31:00',
        122.0,
        136,
        79,
        76.9,
        1.71,
        'Baraualdian.'
    ),
    (
        97,
        '2026-02-19 09:29:00',
        130.0,
        120,
        85,
        86.7,
        1.56,
        'Baraualdian.'
    ),
    (
        98,
        '2026-02-19 08:19:00',
        118.0,
        130,
        83,
        83.0,
        1.60,
        'Apur bat nekatuta.'
    ),
    (
        100,
        '2026-02-19 08:28:00',
        112.0,
        137,
        76,
        82.7,
        1.57,
        'Baraualdian.'
    ),
    (
        51,
        '2026-02-20 08:34:00',
        103.0,
        129,
        82,
        64.4,
        1.76,
        'Kirola egin ondoren.'
    ),
    (
        52,
        '2026-02-20 10:35:00',
        114.0,
        132,
        80,
        94.2,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        53,
        '2026-02-20 09:16:00',
        102.0,
        123,
        92,
        74.7,
        1.75,
        'Apur bat nekatuta.'
    ),
    (
        54,
        '2026-02-20 10:32:00',
        114.0,
        144,
        89,
        86.8,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        57,
        '2026-02-20 07:30:00',
        115.0,
        135,
        79,
        83.3,
        1.69,
        'Apur bat nekatuta.'
    ),
    (
        59,
        '2026-02-20 07:53:00',
        116.0,
        117,
        90,
        62.8,
        1.73,
        'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-02-20 08:43:00',
        120.0,
        130,
        83,
        72.1,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        64,
        '2026-02-20 08:46:00',
        114.0,
        124,
        76,
        95.7,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        65,
        '2026-02-20 09:42:00',
        111.0,
        137,
        76,
        91.2,
        1.55,
        'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2026-02-20 08:04:00',
        112.0,
        131,
        90,
        74.9,
        1.59,
        'Apur bat nekatuta.'
    ),
    (
        67,
        '2026-02-20 07:48:00',
        97.0,
        136,
        76,
        72.4,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        68,
        '2026-02-20 09:30:00',
        107.0,
        135,
        85,
        61.9,
        1.85,
        'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2026-02-20 08:50:00',
        124.0,
        130,
        81,
        94.8,
        1.66,
        'Apur bat nekatuta.'
    ),
    (
        70,
        '2026-02-20 08:57:00',
        99.0,
        116,
        81,
        74.4,
        1.70,
        'Gosariaren ondoren.'
    ),
    (
        72,
        '2026-02-20 07:32:00',
        91.0,
        133,
        75,
        92.7,
        1.69,
        'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-02-20 08:15:00',
        134.0,
        126,
        79,
        94.5,
        1.55,
        'Dena ondo.'
    ),
    (
        75,
        '2026-02-20 10:44:00',
        134.0,
        133,
        71,
        60.7,
        1.65,
        'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2026-02-20 10:06:00',
        99.0,
        130,
        90,
        66.1,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2026-02-20 09:01:00',
        105.0,
        132,
        78,
        66.0,
        1.67,
        'Dena ondo.'
    ),
    (
        78,
        '2026-02-20 08:13:00',
        120.0,
        135,
        84,
        62.9,
        1.61,
        'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-02-20 09:34:00',
        96.0,
        139,
        91,
        62.5,
        1.78,
        'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-02-20 10:30:00',
        124.0,
        136,
        85,
        86.5,
        1.58,
        'Dena ondo.'
    ),
    (
        83,
        '2026-02-20 08:49:00',
        97.0,
        118,
        81,
        65.0,
        1.80,
        'Kirola egin ondoren.'
    ),
    (
        84,
        '2026-02-20 07:14:00',
        88.0,
        122,
        78,
        79.5,
        1.67,
        'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2026-02-20 09:53:00',
        117.0,
        127,
        82,
        81.0,
        1.72,
        'Gosariaren ondoren.'
    ),
    (
        86,
        '2026-02-20 10:44:00',
        110.0,
        132,
        81,
        68.0,
        1.57,
        'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2026-02-20 10:40:00',
        99.0,
        111,
        77,
        89.8,
        1.81,
        'Baraualdian.'
    ),
    (
        89,
        '2026-02-20 08:40:00',
        107.0,
        138,
        79,
        91.8,
        1.84,
        'Dena ondo.'
    ),
    (
        90,
        '2026-02-20 08:58:00',
        107.0,
        138,
        79,
        66.1,
        1.60,
        'Gosariaren ondoren.'
    ),
    (
        91,
        '2026-02-20 09:54:00',
        94.0,
        125,
        78,
        90.5,
        1.58,
        'Kirola egin ondoren.'
    ),
    (
        92,
        '2026-02-20 09:48:00',
        104.0,
        144,
        94,
        60.2,
        1.79,
        'Kirola egin ondoren.'
    ),
    (
        93,
        '2026-02-20 10:34:00',
        115.0,
        138,
        91,
        75.8,
        1.81,
        'Apur bat nekatuta.'
    ),
    (
        94,
        '2026-02-20 08:56:00',
        105.0,
        128,
        89,
        86.1,
        1.83,
        'Apur bat nekatuta.'
    ),
    (
        96,
        '2026-02-20 10:57:00',
        94.0,
        120,
        86,
        77.4,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        98,
        '2026-02-20 09:37:00',
        121.0,
        130,
        84,
        84.8,
        1.60,
        'Gaur goizean neurtuta.'
    ),
    (
        99,
        '2026-02-20 09:48:00',
        96.0,
        134,
        83,
        85.6,
        1.71,
        'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2026-02-21 10:48:00',
        113.0,
        126,
        87,
        64.9,
        1.76,
        'Kirola egin ondoren.'
    ),
    (
        52,
        '2026-02-21 08:31:00',
        124.0,
        137,
        86,
        94.8,
        1.77,
        'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2026-02-21 09:19:00',
        123.0,
        113,
        79,
        75.4,
        1.75,
        'Gosariaren ondoren.'
    ),
    (
        54,
        '2026-02-21 09:55:00',
        107.0,
        137,
        86,
        86.3,
        1.60,
        'Kirola egin ondoren.'
    ),
    (
        56,
        '2026-02-21 10:48:00',
        84.0,
        143,
        94,
        89.3,
        1.61,
        'Dena ondo.'
    ),
    (
        57,
        '2026-02-21 09:02:00',
        87.0,
        117,
        86,
        82.0,
        1.69,
        'Baraualdian.'
    ),
    (
        58,
        '2026-02-21 10:04:00',
        115.0,
        144,
        83,
        68.0,
        1.68,
        'Baraualdian.'
    ),
    (
        59,
        '2026-02-21 10:59:00',
        110.0,
        122,
        84,
        63.2,
        1.73,
        'Baraualdian.'
    ),
    (
        60,
        '2026-02-21 07:43:00',
        110.0,
        129,
        90,
        78.9,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        61,
        '2026-02-21 09:33:00',
        130.0,
        124,
        79,
        72.2,
        1.83,
        'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2026-02-21 07:36:00',
        129.0,
        125,
        89,
        81.3,
        1.80,
        'Apur bat nekatuta.'
    ),
    (
        64,
        '2026-02-21 10:10:00',
        93.0,
        139,
        77,
        94.7,
        1.56,
        'Kirola egin ondoren.'
    ),
    (
        65,
        '2026-02-21 10:35:00',
        123.0,
        122,
        84,
        91.3,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        66,
        '2026-02-21 10:02:00',
        128.0,
        131,
        88,
        75.9,
        1.59,
        'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2026-02-21 07:17:00',
        121.0,
        137,
        85,
        71.9,
        1.72,
        'Gaur goizean neurtuta.'
    ),
    (
        68,
        '2026-02-21 09:54:00',
        104.0,
        131,
        83,
        61.2,
        1.85,
        'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2026-02-21 09:53:00',
        96.0,
        127,
        86,
        94.6,
        1.66,
        'Dena ondo.'
    ),
    (
        70,
        '2026-02-21 09:04:00',
        97.0,
        122,
        85,
        74.6,
        1.70,
        'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-02-21 10:06:00',
        117.0,
        127,
        82,
        89.1,
        1.63,
        'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2026-02-21 09:35:00',
        104.0,
        140,
        76,
        92.8,
        1.69,
        'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2026-02-21 08:05:00',
        106.0,
        124,
        79,
        94.2,
        1.55,
        'Apur bat nekatuta.'
    ),
    (
        74,
        '2026-02-21 09:00:00',
        126.0,
        117,
        82,
        64.2,
        1.67,
        'Gosariaren ondoren.'
    ),
    (
        75,
        '2026-02-21 10:52:00',
        120.0,
        142,
        83,
        59.9,
        1.65,
        'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2026-02-21 07:11:00',
        106.0,
        138,
        85,
        67.9,
        1.67,
        'Kirola egin ondoren.'
    ),
    (
        78,
        '2026-02-21 09:27:00',
        89.0,
        121,
        75,
        63.7,
        1.61,
        'Dena ondo.'
    ),
    (
        80,
        '2026-02-21 10:26:00',
        106.0,
        136,
        89,
        62.4,
        1.78,
        'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2026-02-21 07:10:00',
        97.0,
        121,
        92,
        86.4,
        1.58,
        'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-02-21 08:07:00',
        137.0,
        126,
        93,
        89.6,
        1.77,
        'Gosariaren ondoren.'
    ),
    (
        83,
        '2026-02-21 07:09:00',
        107.0,
        127,
        89,
        65.2,
        1.80,
        'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2026-02-21 09:14:00',
        124.0,
        131,
        77,
        80.0,
        1.67,
        'Dena ondo.'
    ),
    (
        86,
        '2026-02-21 07:14:00',
        105.0,
        124,
        73,
        68.7,
        1.57,
        'Baraualdian.'
    ),
    (
        88,
        '2026-02-21 07:42:00',
        98.0,
        124,
        74,
        89.1,
        1.81,
        'Gosariaren ondoren.'
    ),
    (
        89,
        '2026-02-21 09:29:00',
        105.0,
        133,
        84,
        90.9,
        1.84,
        'Baraualdian.'
    ),
    (
        90,
        '2026-02-21 07:59:00',
        87.0,
        127,
        84,
        66.3,
        1.60,
        'Ondo sentitzen naiz.'
    ),
    (
        91,
        '2026-02-21 07:09:00',
        112.0,
        131,
        80,
        89.2,
        1.58,
        'Dena ondo.'
    ),
    (
        92,
        '2026-02-21 10:01:00',
        121.0,
        131,
        94,
        59.3,
        1.79,
        'Ondo sentitzen naiz.'
    ),
    (
        95,
        '2026-02-21 10:56:00',
        126.0,
        140,
        75,
        91.0,
        1.77,
        'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-02-21 10:14:00',
        99.0,
        134,
        85,
        76.5,
        1.71,
        'Kirola egin ondoren.'
    ),
    (
        97,
        '2026-02-21 10:32:00',
        103.0,
        134,
        84,
        86.5,
        1.56,
        'Apur bat nekatuta.'
    ),
    (
        99,
        '2026-02-21 08:45:00',
        107.0,
        124,
        76,
        85.1,
        1.71,
        'Gosariaren ondoren.'
    ),
    (
        100,
        '2026-02-21 09:46:00',
        127.0,
        138,
        86,
        81.1,
        1.57,
        'Baraualdian.'
    );
-- 1. Tentsio Sistolikoa (Altua > 140, Baxua < 90)
INSERT INTO Abisuak (paziente_id, data, mota, testua)
SELECT paziente_id, DATE(erregistro_data),
    'Tentsioa',
    CONCAT(
        'Tentsio sistolikoa altua da: ',
        tentsio_sistolikoa,
        ' mmHg'
    )
FROM Neurketak
WHERE tentsio_sistolikoa > 140;
INSERT INTO Abisuak (paziente_id, data, mota, testua)
SELECT paziente_id, DATE(erregistro_data),
    'Tentsioa',
    CONCAT(
        'Tentsio sistolikoa baxua da: ',
        tentsio_sistolikoa,
        ' mmHg'
    )
FROM Neurketak
WHERE tentsio_sistolikoa < 90;
-- 2. Tentsio Diastolikoa (Altua > 90, Baxua < 60)
INSERT INTO Abisuak (paziente_id, data, mota, testua)
SELECT paziente_id, DATE(erregistro_data),
    'Tentsioa',
    CONCAT(
        'Tentsio diastolikoa altua da: ',
        tentsio_diastolikoa,
        ' mmHg'
    )
FROM Neurketak
WHERE tentsio_diastolikoa > 90;
INSERT INTO Abisuak (paziente_id, data, mota, testua)
SELECT paziente_id, DATE(erregistro_data),
    'Tentsioa',
    CONCAT(
        'Tentsio diastolikoa baxua da: ',
        tentsio_diastolikoa,
        ' mmHg'
    )
FROM Neurketak
WHERE tentsio_diastolikoa < 60;
-- 3. Glukosa (Altua > 125, Baxua < 70)
INSERT INTO Abisuak (paziente_id, data, mota, testua)
SELECT paziente_id, DATE(erregistro_data),
    'Glukosa',
    CONCAT(
        'Glukosa maila altua da: ',
        glukosa_mg_dl,
        ' mg/dL'
    )
FROM Neurketak
WHERE glukosa_mg_dl > 125;
INSERT INTO Abisuak (paziente_id, data, mota, testua)
SELECT paziente_id, DATE(erregistro_data),
    'Glukosa',
    CONCAT(
        'Glukosa maila baxua da: ',
        glukosa_mg_dl,
        ' mg/dL'
    )
FROM Neurketak
WHERE glukosa_mg_dl < 70;
-- 4. Pisua (Altua > 150, Baxua < 45)
INSERT INTO Abisuak (paziente_id, data, mota, testua)
SELECT paziente_id, DATE(erregistro_data),
    'Pisua',
    CONCAT('Pisua altua da: ', pisua_kg, ' kg')
FROM Neurketak
WHERE pisua_kg > 150;
INSERT INTO Abisuak (paziente_id, data, mota, testua)
SELECT paziente_id, DATE(erregistro_data),
    'Pisua',
    CONCAT('Pisua baxua da: ', pisua_kg, ' kg')
FROM Neurketak
WHERE pisua_kg < 45;
UPDATE Pazienteak
SET irudia = CONCAT('img/pazientea_', paziente_id, '.png')
WHERE paziente_id IN (51, 52, 53, 54, 55, 56);
UPDATE Harrerako_Langileak
SET irudia = CONCAT('img/harrera_', langile_id, '.png')
WHERE langile_id = 101;
-- 14. Botikak (50 erabilienak)
INSERT INTO Botikak (
        izena,
        izen_kimikoa,
        nomenklatura_kimikoa,
        eragin_fokoa,
        aktibitatea
    )
VALUES (
        'Paracetamol',
        'N-acetil-p-aminofenol',
        'C8H9NO2',
        'Nerbio-sistema zentrala',
        'Analgesikoa eta antipiretikoa'
    ),
    (
        'Ibuprofeno',
        'Azido isobutilfenilpropioniko',
        'C13H18O2',
        'Ehun periferikoak',
        'Hanturaren aurkakoa, analgesikoa'
    ),
    (
        'Amoxizilina',
        'D-alfa-amino-p-hidroxibenzil penizilina',
        'C16H19N3O5S',
        'Bakterioen pareta',
        'Antibiotikoa'
    ),
    (
        'Omeprazol',
        '5-metoxi-2-[(4-metoxi-3,5-dimetil-piridin-2-il)metilsulfinil]-1H-benzimidazol',
        'C17H19N3O3S',
        'Urdaila',
        'Azido gastrikoaren jariatzea murrizten du'
    ),
    (
        'Lorazepam',
        '7-kloro-5-(2-klorofenil)-3-hidroxi-1,3-dihidro-2H-1,4-benzodiazepin-2-ona',
        'C15H10Cl2N2O2',
        'Nerbio-sistema zentrala',
        'Antsiolitikoa'
    ),
    (
        'Metformina',
        '1,1-Dimetilbiguanida',
        'C4H11N5',
        'Gibela',
        'Antidiabetikoa'
    ),
    (
        'Simvastatina',
        'Azido butanoikoa, 2,2-dimetil...',
        'C25H38O5',
        'Gibela',
        'Kolesterola murriztekoa'
    ),
    (
        'Aspirina',
        'Azido azetilsalizilikoa',
        'C9H8O4',
        'Gorputz osoa',
        'Analgesikoa, antipiretikoa, antiagregatzailea'
    ),
    (
        'Enalapril',
        'Enalapril maleato',
        'C20H28N2O5',
        'Bihotza eta odol-hodiak',
        'Hipertentsioaren aurkakoa'
    ),
    (
        'Diazepam',
        '7-kloro-1-metil-5-fenil...',
        'C16H13ClN2O',
        'Nerbio-sistema zentrala',
        'Antsiolitikoa, gihar-lasaigarria'
    ),
    (
        'Atorvastatina',
        'Atorvastatina',
        'C33H35FN2O5',
        'Gibela',
        'Kolesterola murriztekoa'
    ),
    (
        'Salbutamol',
        'Albuterol',
        'C13H21NO3',
        'Birikak',
        'Bronkodilatadorea'
    ),
    (
        'Lansoprazol',
        'Lansoprazol',
        'C16H14F3N3O2S',
        'Urdaila',
        'Azido gastrikoaren jariatzea murrizten du'
    ),
    (
        'Ciprofloxacino',
        'Ziprofloxazino',
        'C17H18FN3O3',
        'Gorputz osoa',
        'Antibiotikoa'
    ),
    (
        'Furosemida',
        'Furosemida',
        'C12H11ClN2O5S',
        'Giltzurrunak',
        'Diuretikoa'
    ),
    (
        'Losartan',
        'Losartan potasikoa',
        'C22H23ClN6O',
        'Bihotza eta odol-hodiak',
        'Hipertentsioaren aurkakoa'
    ),
    (
        'Pantoprazol',
        'Pantoprazol sodio',
        'C16H15F2N3O4S',
        'Urdaila',
        'Azido gastrikoaren jariatzea murrizten du'
    ),
    (
        'Sertralina',
        'Sertralina klorhidrato',
        'C17H17Cl2N',
        'Nerbio-sistema zentrala',
        'Antidepresiboa'
    ),
    (
        'Fluoxetina',
        'Fluoxetina',
        'C17H18F3NO',
        'Nerbio-sistema zentrala',
        'Antidepresiboa'
    ),
    (
        'Citalopram',
        'Citalopram',
        'C20H21FN2O',
        'Nerbio-sistema zentrala',
        'Antidepresiboa'
    ),
    (
        'Escitalopram',
        'Escitalopram',
        'C20H21FN2O',
        'Nerbio-sistema zentrala',
        'Antidepresiboa'
    ),
    (
        'Tramadol',
        'Tramadol klorhidrato',
        'C16H25NO2',
        'Nerbio-sistema zentrala',
        'Analgesiko opioidea'
    ),
    (
        'Naproxeno',
        'Naproxeno',
        'C14H14O3',
        'Ehun periferikoak',
        'Hanturaren aurkakoa, analgesikoa'
    ),
    (
        'Diclofenaco',
        'Diklofenako',
        'C14H11Cl2NO2',
        'Ehun periferikoak',
        'Hanturaren aurkakoa, analgesikoa'
    ),
    (
        'Prednisona',
        'Prednisona',
        'C21H26O5',
        'Sistema immunitarioa',
        'Kortikoidea, hanturaren aurkakoa'
    ),
    (
        'Azitromicina',
        'Azitromizina',
        'C38H72N2O12',
        'Gorputz osoa',
        'Antibiotikoa'
    ),
    (
        'Clopidogrel',
        'Klopidogrel',
        'C16H16ClNO2S',
        'Odola',
        'Antiagregatzailea'
    ),
    (
        'Levotiroxina',
        'L-tiroxina',
        'C15H11I4NO4',
        'Tiroide guruina',
        'Hormona ordezkapena'
    ),
    (
        'Atenolol',
        'Atenolol',
        'C14H22N2O3',
        'Bihotza',
        'Beta-blokeatzailea'
    ),
    (
        'Bisoprolol',
        'Bisoprolol fumarato',
        'C18H31NO4',
        'Bihotza',
        'Beta-blokeatzailea'
    ),
    (
        'Carvedilol',
        'Karbedilol',
        'C24H26N2O4',
        'Bihotza',
        'Beta-blokeatzailea'
    ),
    (
        'Amlodipino',
        'Amlodipino',
        'C20H25ClN2O5',
        'Bihotza eta odol-hodiak',
        'Kaltzio-antagonista'
    ),
    (
        'Nifedipino',
        'Nifedipino',
        'C17H18N2O6',
        'Bihotza eta odol-hodiak',
        'Kaltzio-antagonista'
    ),
    (
        'Valsartan',
        'Valsartan',
        'C24H29N5O2',
        'Bihotza eta odol-hodiak',
        'Hipertentsioaren aurkakoa'
    ),
    (
        'Candesartan',
        'Candesartan cilexetilo',
        'C33H34N6O6',
        'Bihotza eta odol-hodiak',
        'Hipertentsioaren aurkakoa'
    ),
    (
        'Olmesartan',
        'Olmesartan medoxomilo',
        'C29H30N4O6',
        'Bihotza eta odol-hodiak',
        'Hipertentsioaren aurkakoa'
    ),
    (
        'Ramipril',
        'Ramipril',
        'C23H32N2O5',
        'Bihotza eta odol-hodiak',
        'Hipertentsioaren aurkakoa'
    ),
    (
        'Lisinopril',
        'Lisinopril',
        'C21H31N3O5',
        'Bihotza eta odol-hodiak',
        'Hipertentsioaren aurkakoa'
    ),
    (
        'Cefalexina',
        'Zefalexina',
        'C16H17N3O4S',
        'Bakterioen pareta',
        'Antibiotikoa'
    ),
    (
        'Amoxicilina/Clavulánico',
        'Amoxizilina eta azido klabulanikoa',
        'C16H19N3O5S-C8H9NO5',
        'Bakterioen pareta',
        'Antibiotiko indartua'
    ),
    (
        'Doxiciclina',
        'Doxiziklina',
        'C22H24N2O8',
        'Bakterioen proteinak',
        'Antibiotikoa'
    ),
    (
        'Claritromicina',
        'Klaritromizina',
        'C38H69NO13',
        'Bakterioen proteinak',
        'Antibiotikoa'
    ),
    (
        'Metronidazol',
        'Metronidazol',
        'C6H9N3O3',
        'Mikororganismoak',
        'Antibiotikoa, antiparasitarioa'
    ),
    (
        'Fluconazol',
        'Flukonazol',
        'C13H12F2N6O',
        'Onddoak',
        'Antifungikoa'
    ),
    (
        'Aciclovir',
        'Aziklobir',
        'C8H11N5O3',
        'Birusak',
        'Antibiral'
    ),
    (
        'Valaciclovir',
        'Valaziklobir',
        'C13H20N6O4',
        'Birusak',
        'Antibiral'
    ),
    (
        'Gabapentina',
        'Gabapentina',
        'C9H17NO2',
        'Nerbio-sistema',
        'Antiespasmodikoa, analgesiko neuropatikoa'
    ),
    (
        'Pregabalina',
        'Pregabalina',
        'C8H17NO2',
        'Nerbio-sistema',
        'Antiespasmodikoa, analgesiko neuropatikoa'
    ),
    (
        'Amitriptilina',
        'Amitriptilina',
        'C20H23N',
        'Nerbio-sistema',
        'Antidepresiboa, analgesiko neuropatikoa'
    ),
    (
        'Duloxetina',
        'Duloxetina',
        'C18H19NOS',
        'Nerbio-sistema',
        'Antidepresiboa'
    );
SET FOREIGN_KEY_CHECKS = 1;