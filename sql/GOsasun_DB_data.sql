
SET FOREIGN_KEY_CHECKS = 0;

INSERT INTO rolak (id, izena) VALUES (1, 'Osasun Langilea'), (2, 'Pazientea'), (3, 'Harrera Langilea');

INSERT INTO erabiltzaileak (id, email, pasahitza, rol_id, hizkuntza, nan, izena, abizenak, jaiotze_data, telefonoa, helbidea, herria, posta_kodea, irudia, aktibo) VALUES
(1, 'urrutia.j@gosasun.eus', '1234', 1, 'Euskara', '000000001', 'Jon', 'Urrutia', '1975-04-12', '600111222', 'Kale Nagusia 1', 'Donostia', '20004', 'img/png/medikua_1.png', 1),
(2, 'goiko.m@gosasun.eus', '1234', 1, 'Euskara', '000000002', 'Miren', 'Goikoetxea', '1980-08-25', '600222333', 'San Martin 15', 'Donostia', '20007', 'img/png/medikua_2.png', 1),
(3, 'etxe.a@gosasun.eus', '1234', 1, 'Euskara', '000000003', 'Aitor', 'Etxeberria', '1972-11-03', '600333444', 'Urbieta 2', 'Donostia', '20006', 'img/png/medikua_3.png', 1),
(4, 'zubi.k@gosasun.eus', '1234', 1, 'Euskara', '000000004', 'Kepa', 'Zubizarreta', '1985-02-18', '600444555', 'Gran Via 45', 'Bilbo', '48011', 'img/png/medikua_4.png', 1),
(5, 'agirre.o@gosasun.eus', '1234', 1, 'Euskara', '000000005', 'Olatz', 'Agirre', '1978-06-30', '600555666', 'Artekale 5', 'Bilbo', '48005', 'img/png/medikua_5.png', 1),
(6, 'iturri.p@gosasun.eus', '1234', 1, 'Euskara', '000000006', 'Patxi', 'Iturriotz', '1965-09-15', '600666777', 'Dato 10', 'Gasteiz', '01005', 'img/png/medikua_6.png', 1),
(7, 'mendizabal.r@gosasun.eus', '1234', 1, 'Euskara', '000000007', 'Rakel', 'Mendizabal', '1982-12-05', '600777888', 'Florida 1', 'Gasteiz', '01005', 'img/png/medikua_7.png', 1),
(8, 'gara.l@gosasun.eus', '1234', 1, 'Euskara', '000000008', 'Lander', 'Garate', '1990-01-20', '600888999', 'Kale Nagusia 5', 'Donostia', '20004', 'img/png/medikua_8.png', 1),
(9, 'elor.s@gosasun.eus', '1234', 1, 'Euskara', '000000009', 'Sonia', 'Elorza', '1973-03-08', '600999000', 'Libertad 1', 'Donostia', '20004', 'img/png/medikua_9.png', 1),
(10, 'muru.i@gosasun.eus', '1234', 1, 'Euskara', '000000010', 'Iker', 'Murua', '1988-07-12', '611000111', 'Easo 12', 'Donostia', '20006', 'img/png/medikua_10.png', 1),
(11, 'sarasola.a@gosasun.eus', '1234', 1, 'Euskara', '000000011', 'Amaia', 'Sarasola', '1976-10-22', '611111222', 'Autonomia 10', 'Bilbo', '48012', 'img/png/medikua_11.png', 1),
(12, 'artea.e@gosasun.eus', '1234', 1, 'Euskara', '000000012', 'Eneko', 'Arteagabeitia', '1981-05-14', '611222333', 'Alameda Recalde 2', 'Bilbo', '48009', 'img/png/medikua_12.png', 1),
(13, 'korta.g@gosasun.eus', '1234', 1, 'Euskara', '000000013', 'Gorka', 'Kortazar', '1970-12-30', '611333444', 'San Prudencio 4', 'Gasteiz', '01005', 'img/png/medikua_13.png', 1),
(14, 'leza.m@gosasun.eus', '1234', 1, 'Euskara', '000000014', 'Maddi', 'Lezama', '1986-04-05', '611444555', 'Frantzia Kalea 8', 'Gasteiz', '01002', 'img/png/medikua_14.png', 1),
(15, 'gari.j@gosasun.eus', '1234', 1, 'Euskara', '000000015', 'Josu', 'Garitaonandia', '1979-09-18', '611555666', 'Marina 12', 'Donostia', '20007', 'img/png/medikua_15.png', 1),
(16, 'bengo.a@gosasun.eus', '1234', 1, 'Euskara', '000000016', 'Aritz', 'Bengoetxea', '1984-01-25', '611666777', 'Zurriola 4', 'Donostia', '20001', 'img/png/medikua_16.png', 1),
(17, 'iba.k@gosasun.eus', '1234', 1, 'Euskara', '000000017', 'Karmele', 'Ibarra', '1968-08-10', '611777888', 'Rodriguez Arias 12', 'Bilbo', '48008', 'img/png/medikua_17.png', 1),
(18, 'uriza.d@gosasun.eus', '1234', 1, 'Euskara', '000000018', 'Danel', 'Urizar', '1992-03-02', '611888999', 'Henao 5', 'Bilbo', '48009', 'img/png/medikua_18.png', 1),
(19, 'zabal.n@gosasun.eus', '1234', 1, 'Euskara', '000000019', 'Nahia', 'Zabala', '1983-11-15', '611999000', 'Postas 14', 'Gasteiz', '01001', 'img/png/medikua_19.png', 1),
(20, 'arana.l@gosasun.eus', '1234', 1, 'Euskara', '000000020', 'Luzia', 'Arana', '1974-06-20', '622000111', 'Gurutze Gorria 3', 'Gasteiz', '01015', 'img/png/medikua_20.png', 1),
(21, 'egia.b@gosasun.eus', '1234', 1, 'Euskara', '000000021', 'Bingen', 'Egia', '1987-02-08', '622111222', 'Reyes Catolicos 5', 'Donostia', '20006', 'img/png/medikua_21.png', 1),
(22, 'ola.m@gosasun.eus', '1234', 1, 'Euskara', '000000022', 'Mikel', 'Olabarria', '1971-09-28', '622222333', 'Prim 8', 'Donostia', '20006', 'img/png/medikua_22.png', 1),
(23, 'laza.j@gosasun.eus', '1234', 1, 'Euskara', '000000023', 'Jone', 'Lazkano', '1989-05-12', '622333444', 'Licenciado Poza 20', 'Bilbo', '48011', 'img/png/medikua_23.png', 1),
(24, 'ira.a@gosasun.eus', '1234', 1, 'Euskara', '000000024', 'Asier', 'Iraola', '1977-12-05', '622444555', 'Elkano 12', 'Bilbo', '48008', 'img/png/medikua_24.png', 1),
(25, 'garmendia.p@gosasun.eus', '1234', 1, 'Euskara', '000000025', 'Peru', 'Garmendia', '1982-04-18', '622555666', 'Anduiza 1', 'Gasteiz', '01001', 'img/png/medikua_25.png', 1),
(26, 'barrena.k@gosasun.eus', '1234', 1, 'Euskara', '000000026', 'Koldobika', 'Barrena', '1969-10-30', '622666777', 'Araba Kalea 6', 'Gasteiz', '01006', 'img/png/medikua_26.png', 1),
(27, 'zuri.m@gosasun.eus', '1234', 1, 'Euskara', '000000027', 'Maider', 'Zuriarrain', '1986-01-15', '622777888', 'Okendo 12', 'Donostia', '20004', 'img/png/medikua_27.png', 1),
(28, 'txiki.n@gosasun.eus', '1234', 1, 'Euskara', '000000028', 'Nerea', 'Txiki', '1980-08-02', '622888999', 'Miracruz 2', 'Donostia', '20001', 'img/png/medikua_28.png', 1),
(29, 'handi.a@gosasun.eus', '1234', 1, 'Euskara', '000000029', 'Andoni', 'Handia', '1975-03-22', '622999000', 'Colon de Larreategui 3', 'Bilbo', '48001', 'img/png/medikua_29.png', 1),
(30, 'luze.o@gosasun.eus', '1234', 1, 'Euskara', '000000030', 'Ostaizka', 'Luze', '1991-07-10', '633000111', 'Lersundi 12', 'Bilbo', '48009', 'img/png/medikua_30.png', 1),
(31, 'motz.i@gosasun.eus', '1234', 1, 'Euskara', '000000031', 'IÃ±aki', 'Motza', '1973-11-28', '633111222', 'San Antonio 22', 'Gasteiz', '01005', 'img/png/medikua_31.png', 1),
(32, 'gorri.e@gosasun.eus', '1234', 1, 'Euskara', '000000032', 'Eider', 'Gorrotxategi', '1988-05-05', '633222333', 'Beato Tomas de Zumarraga 12', 'Gasteiz', '01008', 'img/png/medikua_32.png', 1),
(33, 'beltza.k@gosasun.eus', '1234', 1, 'Euskara', '000000033', 'Kattalin', 'Beltza', '1978-02-14', '633333444', 'Easo 14', 'Donostia', '20006', 'img/png/medikua_33.png', 1),
(34, 'zilar.j@gosasun.eus', '1234', 1, 'Euskara', '000000034', 'Julen', 'Zilar', '1985-09-08', '633444555', 'Getaria 5', 'Donostia', '20005', 'img/png/medikua_34.png', 1),
(35, 'urre.m@gosasun.eus', '1234', 1, 'Euskara', '000000035', 'Malen', 'Urreisti', '1970-04-25', '633555666', 'IbaÃ±ez de Bilbao 3', 'Bilbo', '48001', 'img/png/medikua_35.png', 1),
(36, 'kobre.p@gosasun.eus', '1234', 1, 'Euskara', '000000036', 'Peio', 'Kobre', '1983-12-12', '633666777', 'Alameda Urquijo 12', 'Bilbo', '48008', 'img/png/medikua_36.png', 1),
(37, 'burni.a@gosasun.eus', '1234', 1, 'Euskara', '000000037', 'Ane', 'Burnik', '1990-06-30', '633777888', 'General Alava 12', 'Gasteiz', '01005', 'img/png/medikua_37.png', 1),
(38, 'leku.n@gosasun.eus', '1234', 1, 'Euskara', '000000038', 'Nekane', 'Lekuona', '1976-01-18', '633888999', 'Portal de Castila 12', 'Gasteiz', '01007', 'img/png/medikua_38.png', 1),
(39, 'toki.l@gosasun.eus', '1234', 1, 'Euskara', '000000039', 'Laureano', 'Toki', '1981-08-05', '633999000', 'PeÃ±a y GoÃ±i 5', 'Donostia', '20002', 'img/png/medikua_39.png', 1),
(40, 'zoko.m@gosasun.eus', '1234', 1, 'Euskara', '000000040', 'Miren', 'Zokotza', '1967-03-28', '644000111', 'Fuenterrabia 10', 'Donostia', '20005', 'img/png/medikua_40.png', 1),
(41, 'ibil.j@gosasun.eus', '1234', 1, 'Euskara', '000000041', 'Joseba', 'Ibil', '1989-10-15', '644111222', 'Campo Volantin 12', 'Bilbo', '48007', 'img/png/medikua_41.png', 1),
(42, 'geld.k@gosasun.eus', '1234', 1, 'Euskara', '000000042', 'Karlos', 'Geldi', '1974-05-02', '644222333', 'Mazarredo 2', 'Bilbo', '48001', 'img/png/medikua_42.png', 1),
(43, 'bizi.a@gosasun.eus', '1234', 1, 'Euskara', '000000043', 'Ainhoa', 'Bizi', '1986-12-20', '644333444', 'Adriano VI 12', 'Gasteiz', '01008', 'img/png/medikua_43.png', 1),
(44, 'osasun.o@gosasun.eus', '1234', 1, 'Euskara', '000000044', 'Oier', 'Osasun', '1980-07-08', '644444555', 'Av. de Santiago 12', 'Gasteiz', '01003', 'img/png/medikua_44.png', 1),
(45, 'gaitz.r@gosasun.eus', '1234', 1, 'Euskara', '000000045', 'Ramuntxo', 'Gaitz', '1975-02-25', '644555666', 'Zubieta 12', 'Donostia', '20007', 'img/png/medikua_45.png', 1),
(46, 'senda.m@gosasun.eus', '1234', 1, 'Euskara', '000000046', 'Maialen', 'Senda', '1992-09-12', '644666777', 'Alameda del Boulevard 12', 'Donostia', '20003', 'img/png/medikua_46.png', 1),
(47, 'trata.i@gosasun.eus', '1234', 1, 'Euskara', '000000047', 'IÃ±igo', 'Trata', '1979-04-30', '644777888', 'Muelle del Arenal 12', 'Bilbo', '48005', 'img/png/medikua_47.png', 1),
(48, 'bide.a@gosasun.eus', '1234', 1, 'Euskara', '000000048', 'Alazne', 'Bide', '1984-11-18', '644888999', 'Ledesma 12', 'Bilbo', '48001', 'img/png/medikua_48.png', 1),
(49, 'mendi.j@gosasun.eus', '1234', 1, 'Euskara', '000000049', 'Jon', 'Mendi', '1968-06-05', '644999000', 'San Antonio 12', 'Gasteiz', '01005', 'img/png/medikua_49.png', 1),
(50, 'haran.k@gosasun.eus', '1234', 1, 'Euskara', '000000050', 'Katalin', 'Haran', '1987-01-22', '655000111', 'Portal de Foronda 12', 'Gasteiz', '01010', 'img/png/medikua_50.png', 1),
(51, 'ander.m@paziente.eus', '1234', 2, 'Euskara', '11111111A', 'Ander', 'Martinez', '1950-02-15', '655111222', 'Kale Nagusia 10', 'Donostia', '20004', 'img/png/pazientea_51.png', 1),
(52, 'maite.g@paziente.eus', '1234', 2, 'Euskara', '22222222B', 'Maite', 'Gomez', '1965-07-20', '655222333', 'Easo Kalea 5', 'Donostia', '20006', 'img/png/pazientea_52.png', 1),
(53, 'mikel.u@paziente.eus', '1234', 2, 'Euskara', '33333333C', 'Mikel', 'Uribarri', '1982-11-05', '655333444', 'Zumalakarregi Hiribidea 12', 'Bilbo', '48007', 'img/png/pazientea_53.png', 1),
(54, 'nerea.a@paziente.eus', '1234', 2, 'Euskara', '44444444D', 'Nerea', 'Alonso', '1995-04-18', '655444555', 'Avenida de la Libertad 1', 'Donostia', '20004', 'img/png/pazientea_54.png', 1),
(55, 'jon.z@paziente.eus', '1234', 2, 'Euskara', '55555555E', 'Jon', 'Zabalzeta', '1970-09-30', '655555666', 'Urbieta Kalea 45', 'Donostia', '20006', 'img/png/pazientea_55.png', 1),
(56, 'ane.e@paziente.eus', '1234', 2, 'Euskara', '66666666F', 'Ane', 'Espinosa', '1945-12-12', '655666777', 'Artekale 2', 'Gasteiz', '01001', 'img/png/pazientea_56.png', 1),
(57, 'gorka.k@paziente.eus', '1234', 2, 'Euskara', '77777777G', 'Gorka', 'Kortazar', '1988-03-25', '655777888', 'Benta Berri 14', 'Donostia', '20018', 'img/png/pazientea_57.png', 1),
(58, 'uxue.i@paziente.eus', '1234', 2, 'Euskara', '88888888H', 'Uxue', 'Iturri', '2005-08-08', '655888999', 'San Martin 22', 'Tolosa', '20400', 'img/png/pazientea_58.png', 1),
(59, 'asier.o@paziente.eus', '1234', 2, 'Euskara', '99999999I', 'Asier', 'Ormazabal', '1960-01-14', '655999000', 'Ariznabarra 3', 'Gasteiz', '01015', 'img/png/pazientea_59.png', 1),
(60, 'leire.m@paziente.eus', '1234', 2, 'Euskara', '10101010J', 'Leire', 'Murua', '1992-06-28', '666000111', 'Gros 4', 'Donostia', '20001', 'img/png/pazientea_60.png', 1),
(61, 'unai.j@paziente.eus', '1234', 2, 'Euskara', '12121212K', 'Unai', 'Jauregi', '1985-10-10', '666111222', 'Nafarroa Etorbidea 8', 'Beasain', '20200', 'img/png/pazientea_61.png', 1),
(62, 'naia.b@paziente.eus', '1234', 2, 'Euskara', '13131313L', 'Naia', 'Basterra', '1978-05-22', '666222333', 'San Bizente 2', 'Bilbo', '48001', 'img/png/pazientea_62.png', 1),
(63, 'markel.g@paziente.eus', '1234', 2, 'Euskara', '14141414M', 'Markel', 'Garaiko', '1955-12-05', '666333444', 'Euskadi Plaza 1', 'Bilbo', '48009', 'img/png/pazientea_63.png', 1),
(64, 'irati.z@paziente.eus', '1234', 2, 'Euskara', '15151515N', 'Irati', 'Zubia', '1998-02-18', '666444555', 'Miramon 12', 'Donostia', '20014', 'img/png/pazientea_64.png', 1),
(65, 'oier.p@paziente.eus', '1234', 2, 'Euskara', '16161616O', 'Oier', 'Perez', '1968-09-02', '666555666', 'Foru Azoka 3', 'Gernika', '48300', 'img/png/pazientea_65.png', 1),
(66, 'izola.d@paziente.eus', '1234', 2, 'Euskara', '17171717P', 'Izola', 'Diaz', '1980-04-15', '666666777', 'Concha 1', 'Donostia', '20007', 'img/png/pazientea_66.png', 1),
(67, 'ibar.r@paziente.eus', '1234', 2, 'Euskara', '18181818Q', 'Ibar', 'Ruiz', '1990-11-28', '666777888', 'Sagues 2', 'Donostia', '20013', 'img/png/pazientea_67.png', 1),
(68, 'aroa.a@paziente.eus', '1234', 2, 'Euskara', '19191919R', 'Aroa', 'Aizpurua', '1975-07-12', '666888999', 'Antiguo 15', 'Donostia', '20008', 'img/png/pazientea_68.png', 1),
(69, 'ibai.k@paziente.eus', '1234', 2, 'Euskara', '20202020S', 'Ibai', 'Korta', '1958-01-25', '666999000', 'Indautxu 6', 'Bilbo', '48011', 'img/png/pazientea_69.png', 1),
(70, 'malen.s@paziente.eus', '1234', 2, 'Euskara', '21212121T', 'Malen', 'Sancho', '1986-08-08', '677000111', 'Abando 2', 'Bilbo', '48001', 'img/png/pazientea_70.png', 1),
(71, 'xabier.e@paziente.eus', '1234', 2, 'Euskara', '23232323U', 'Xabier', 'Etxabe', '1962-03-20', '677111222', 'Urbieta 15', 'Donostia', '20006', 'img/png/pazientea_71.png', 1),
(72, 'haizea.t@paziente.eus', '1234', 2, 'Euskara', '24242424V', 'Haizea', 'Torres', '1994-10-05', '677222333', 'San Bizente 8', 'Bilbo', '48001', 'img/png/pazientea_72.png', 1),
(73, 'beÃ±at.m@paziente.eus', '1234', 2, 'Euskara', '25252525W', 'BeÃ±at', 'Mendez', '1972-05-18', '677333444', 'Lehendakari Agirre 22', 'Bilbo', '48014', 'img/png/pazientea_73.png', 1),
(74, 'maddi.r@paziente.eus', '1234', 2, 'Euskara', '26262626X', 'Maddi', 'Romero', '1989-12-30', '677444555', 'Gros 12', 'Donostia', '20001', 'img/png/pazientea_74.png', 1),
(75, 'eÃ±aut.a@paziente.eus', '1234', 2, 'Euskara', '27272727Y', 'EÃ±aut', 'Alustiza', '1952-08-14', '677555666', 'Ariznabarra 5', 'Gasteiz', '01015', 'img/png/pazientea_75.png', 1),
(76, 'june.p@paziente.eus', '1234', 2, 'Euskara', '28282828Z', 'June', 'Pascual', '2001-02-25', '677666777', 'San Martin 3', 'Tolosa', '20400', 'img/png/pazientea_76.png', 1),
(77, 'peio.o@paziente.eus', '1234', 2, 'Euskara', '29292929A', 'Peio', 'Otxoa', '1966-09-10', '677777888', 'Benta Berri 1', 'Donostia', '20018', 'img/png/pazientea_77.png', 1),
(78, 'laia.z@paziente.eus', '1234', 2, 'Euskara', '30303030B', 'Laia', 'Zelai', '1984-04-22', '677888999', 'Alde Zaharra 4', 'Hondarribia', '20280', 'img/png/pazientea_78.png', 1),
(79, 'ekain.k@paziente.eus', '1234', 2, 'Euskara', '31313131C', 'Ekain', 'Karmona', '1979-11-05', '677999000', 'Euskadi Plaza 2', 'Bilbo', '48009', 'img/png/pazientea_79.png', 1),
(80, 'nora.g@paziente.eus', '1234', 2, 'Euskara', '32323232D', 'Nora', 'Garcia', '1996-06-18', '688000111', 'Easo 10', 'Donostia', '20006', 'img/png/pazientea_80.png', 1),
(81, 'danel.u@paziente.eus', '1234', 2, 'Euskara', '34343434E', 'Danel', 'Ugarte', '1956-01-30', '688111222', 'San Bizente 4', 'Bilbo', '48001', 'img/png/pazientea_81.png', 1),
(82, 'sara.i@paziente.eus', '1234', 2, 'Euskara', '35353535F', 'Sara', 'Iraola', '1981-08-12', '688222333', 'Alderdi Eder 1', 'Donostia', '20004', 'img/png/pazientea_82.png', 1),
(83, 'oihan.m@paziente.eus', '1234', 2, 'Euskara', '36363636G', 'Oihan', 'Muruaga', '1974-03-25', '688333444', 'Artekale 5', 'Bilbo', '48005', 'img/png/pazientea_83.png', 1),
(84, 'maria.a@paziente.eus', '1234', 2, 'Euskara', '37373737H', 'Maria', 'Artola', '1991-10-08', '688444555', 'Gros 20', 'Donostia', '20001', 'img/png/pazientea_84.png', 1),
(85, 'luken.e@paziente.eus', '1234', 2, 'Euskara', '38383838I', 'Luken', 'Egia', '1964-05-20', '688555666', 'San Martin 8', 'Vitoria-Gasteiz', '01008', 'img/png/pazientea_85.png', 1),
(86, 'olaia.b@paziente.eus', '1234', 2, 'Euskara', '39393939J', 'Olaia', 'Badiola', '1987-12-02', '688666777', 'Easo 15', 'Donostia', '20006', 'img/png/pazientea_86.png', 1),
(87, 'egoitz.j@paziente.eus', '1234', 2, 'Euskara', '40404040K', 'Egoitz', 'Juarez', '1976-07-15', '688777888', 'Indautxu 8', 'Bilbo', '48011', 'img/png/pazientea_87.png', 1),
(88, 'amaia.n@paziente.eus', '1234', 2, 'Euskara', '41414141L', 'Amaia', 'Navarro', '1999-02-28', '688888999', 'Benta Berri 10', 'Donostia', '20018', 'img/png/pazientea_88.png', 1),
(89, 'peru.k@paziente.eus', '1234', 2, 'Euskara', '42424242M', 'Peru', 'Krutxaga', '1959-09-10', '688999000', 'Alderdi Eder 5', 'Donostia', '20004', 'img/png/pazientea_89.png', 1),
(90, 'elene.r@paziente.eus', '1234', 2, 'Euskara', '43434343N', 'Elene', 'Rojo', '1983-04-25', '699000111', 'Zumalakarregi 10', 'Bilbo', '48007', 'img/png/pazientea_90.png', 1),
(91, 'haritz.m@paziente.eus', '1234', 2, 'Euskara', '45454545O', 'Haritz', 'Mendia', '1971-11-08', '699111222', 'San Martin 12', 'Vitoria-Gasteiz', '01012', 'img/png/pazientea_91.png', 1),
(92, 'saioa.p@paziente.eus', '1234', 2, 'Euskara', '46464646P', 'Saioa', 'Prieto', '1993-06-20', '699222333', 'Alde Zaharra 10', 'Donostia', '20003', 'img/png/pazientea_92.png', 1),
(93, 'julene.s@paziente.eus', '1234', 2, 'Euskara', '47474747Q', 'Julene', 'Sorozabal', '1967-01-02', '699333444', 'Avenida 1', 'Irun', '20301', 'img/png/pazientea_93.png', 1),
(94, 'ainhoa.g@paziente.eus', '1234', 2, 'Euskara', '48484848R', 'Ainhoa', 'Goti', '1985-08-15', '699444555', 'Gros 5', 'Donostia', '20001', 'img/png/pazientea_94.png', 1),
(95, 'inaxio.z@paziente.eus', '1234', 2, 'Euskara', '49494949S', 'Inaxio', 'Zuloaga', '1954-03-28', '699555666', 'Indautxu 10', 'Bilbo', '48011', 'img/png/pazientea_95.png', 1),
(96, 'karmele.u@paziente.eus', '1234', 2, 'Euskara', '50505050T', 'Karmele', 'Unzueta', '1978-10-10', '699666777', 'Alderdi Eder 10', 'Donostia', '20004', 'img/png/pazientea_96.png', 1),
(97, 'josu.e@paziente.eus', '1234', 2, 'Euskara', '51515151U', 'Josu', 'Elizondo', '1989-05-22', '699777888', 'Easo 22', 'Donostia', '20006', 'img/png/pazientea_97.png', 1),
(98, 'bego.i@paziente.eus', '1234', 2, 'Euskara', '52525252V', 'Bego', 'Ibarra', '1961-12-05', '699888999', 'San Bizente 10', 'Bilbo', '48001', 'img/png/pazientea_98.png', 1),
(99, 'kepas.a@paziente.eus', '1234', 2, 'Euskara', '53535353W', 'Kepas', 'Araujo', '1990-07-18', '699999000', 'Miramon 45', 'Donostia', '20014', 'img/png/pazientea_99.png', 1),
(100, 'edurne.m@paziente.eus', '1234', 2, 'Euskara', '54545454X', 'Edurne', 'Muruaga', '1973-02-28', '600000111', 'Benta Berri 12', 'Donostia', '20018', 'img/png/pazientea_100.png', 1),
(101, 'harrera@gosasun.eus', '1234', 3, 'Euskara', '000000101', 'Ane', 'Martinez Mendizabal', '1985-05-10', '611222333', 'Kale Berria 2', 'Donostia', '20004', 'img/png/harrera_101.png', 1),
(102, 'ane.harrera@gosasun.eus', '1234', 3, 'Euskara', '000000102', 'Ane', 'Garcia', '1990-03-15', '622333444', 'Euskadi Plaza 4', 'Bilbo', '48009', 'img/png/harrera_102.png', 1),
(103, 'mikel.harrera@gosasun.eus', '1234', 3, 'Euskara', '000000103', 'Mikel', 'Lopez', '1988-07-20', '633444555', 'Araba Kalea 10', 'Gasteiz', '01006', 'img/png/harrera_103.png', 1),
(104, 'leire.harrera@gosasun.eus', '1234', 3, 'Euskara', '000000104', 'Leire', 'Fernandez', '1992-11-25', '644555666', 'San Martin 5', 'Donostia', '20005', 'img/png/harrera_104.png', 1);

INSERT INTO osasun_langileak (id, elkargokide_zenbakia, espezialitatea, kontsulta, lanaldia) VALUES
(1, 'MED-001', 'Kardiologia', 'K-101', 'Osoa'),
(2, 'MED-002', 'Neurologia', 'K-102', 'Osoa'),
(3, 'MED-003', 'Pediatria', 'K-103', 'Osoa'),
(4, 'MED-004', 'Traumatologia', 'K-104', 'Osoa'),
(5, 'MED-005', 'Dermatologia', 'K-105', 'Osoa'),
(6, 'MED-006', 'Psikiatria', 'K-106', 'Osoa'),
(7, 'MED-007', 'Ginekologia', 'K-107', 'Osoa'),
(8, 'MED-008', 'Oftalmologia', 'K-108', 'Osoa'),
(9, 'MED-009', 'Otorrinolaringologia', 'K-109', 'Osoa'),
(10, 'MED-010', 'Urologia', 'K-110', 'Osoa'),
(11, 'MED-011', 'Onkologia', 'K-111', 'Osoa'),
(12, 'MED-012', 'Endokrinologia', 'K-112', 'Osoa'),
(13, 'MED-013', 'Erreumatologia', 'K-113', 'Osoa'),
(14, 'MED-014', 'Digestiboa', 'K-114', 'Osoa'),
(15, 'MED-015', 'Pneumologia', 'K-115', 'Osoa'),
(16, 'MED-016', 'Nefrologia', 'K-116', 'Osoa'),
(17, 'MED-017', 'Kardiologia', 'K-117', 'Osoa'),
(18, 'MED-018', 'Pediatria', 'K-118', 'Osoa'),
(19, 'MED-019', 'Neurologia', 'K-119', 'Osoa'),
(20, 'MED-020', 'Dermatologia', 'K-120', 'Osoa'),
(21, 'MED-021', 'Traumatologia', 'K-121', 'Osoa'),
(22, 'MED-022', 'Psikiatria', 'K-122', 'Osoa'),
(23, 'MED-023', 'Ginekologia', 'K-123', 'Osoa'),
(24, 'MED-024', 'Oftalmologia', 'K-124', 'Osoa'),
(25, 'MED-025', 'Otorrinolaringologia', 'K-125', 'Osoa'),
(26, 'MED-026', 'Urologia', 'K-126', 'Osoa'),
(27, 'MED-027', 'Onkologia', 'K-127', 'Osoa'),
(28, 'MED-028', 'Endokrinologia', 'K-128', 'Osoa'),
(29, 'MED-029', 'Erreumatologia', 'K-129', 'Osoa'),
(30, 'MED-030', 'Digestiboa', 'K-130', 'Osoa'),
(31, 'MED-031', 'Pneumologia', 'K-131', 'Osoa'),
(32, 'MED-032', 'Nefrologia', 'K-132', 'Murriztua'),
(33, 'MED-033', 'Kardiologia', 'K-133', 'Osoa'),
(34, 'MED-034', 'Pediatria', 'K-134', 'Osoa'),
(35, 'MED-035', 'Neurologia', 'K-135', 'Osoa'),
(36, 'MED-036', 'Dermatologia', 'K-136', 'Osoa'),
(37, 'MED-037', 'Traumatologia', 'K-137', 'Osoa'),
(38, 'MED-038', 'Psikiatria', 'K-138', 'Osoa'),
(39, 'MED-039', 'Ginekologia', 'K-139', 'Osoa'),
(40, 'MED-040', 'Oftalmologia', 'K-140', 'Osoa'),
(41, 'MED-041', 'Otorrinolaringologia', 'K-141', 'Osoa'),
(42, 'MED-042', 'Urologia', 'K-142', 'Osoa'),
(43, 'MED-043', 'Onkologia', 'K-143', 'Osoa'),
(44, 'MED-044', 'Endokrinologia', 'K-144', 'Osoa'),
(45, 'MED-045', 'Erreumatologia', 'K-145', 'Osoa'),
(46, 'MED-046', 'Digestiboa', 'K-146', 'Osoa'),
(47, 'MED-047', 'Pneumologia', 'K-147', 'Osoa'),
(48, 'MED-048', 'Nefrologia', 'K-148', 'Osoa'),
(49, 'MED-049', 'Kardiologia', 'K-149', 'Osoa'),
(50, 'MED-050', 'Pediatria', 'K-150', 'Osoa');

INSERT INTO pazienteak (id, sexua, odol_taldea, azken_altuera, azken_pisua, egoera_klinikoa) VALUES
(51, 'Gizona', 'O+', 1.75, 64.7, 'Alta'),
(52, 'Emakumea', 'A-', 1.62, 65.0, 'Alta'),
(53, 'Gizona', 'B+', 1.80, 82.3, 'Alta'),
(54, 'Emakumea', 'O-', 1.68, 59.8, 'Alta'),
(55, 'Gizona', 'AB+', 1.78, 85.1, 'Alta'),
(56, 'Emakumea', 'A+', 1.55, 62.4, 'Alta'),
(57, 'Gizona', 'O+', 1.85, 90.0, 'Alta'),
(58, 'Emakumea', 'B-', 1.60, 55.2, 'Alta'),
(59, 'Gizona', 'A-', 1.72, 76.8, 'Alta'),
(60, 'Emakumea', 'O+', 1.65, 61.5, 'Alta'),
(61, 'Gizona', 'AB-', 1.79, 81.0, 'Alta'),
(62, 'Emakumea', 'O-', 1.58, 58.7, 'Alta'),
(63, 'Gizona', 'B+', 1.70, 79.2, 'Alta'),
(64, 'Emakumea', 'A+', 1.64, 63.1, 'Alta'),
(65, 'Gizona', 'O+', 1.82, 88.5, 'Alta'),
(66, 'Emakumea', 'A-', 1.67, 66.3, 'Alta'),
(67, 'Gizona', 'B-', 1.75, 75.6, 'Alta'),
(68, 'Emakumea', 'O-', 1.61, 60.9, 'Alta'),
(69, 'Gizona', 'AB+', 1.69, 74.4, 'Alta'),
(70, 'Emakumea', 'O+', 1.71, 68.2, 'Alta'),
(71, 'Gizona', 'A+', 1.76, 80.5, 'Alta'),
(72, 'Emakumea', 'B+', 1.63, 62.8, 'Alta'),
(73, 'Gizona', 'O-', 1.74, 77.1, 'Alta'),
(74, 'Emakumea', 'A-', 1.66, 64.6, 'Alta'),
(75, 'Gizona', 'AB-', 1.68, 72.9, 'Alta'),
(76, 'Emakumea', 'O+', 1.59, 56.4, 'Alta'),
(77, 'Gizona', 'B-', 1.81, 86.7, 'Alta'),
(78, 'Emakumea', 'A+', 1.62, 61.1, 'Alta'),
(79, 'Gizona', 'O-', 1.77, 83.4, 'Alta'),
(80, 'Emakumea', 'AB+', 1.65, 65.5, 'Alta'),
(81, 'Gizona', 'O+', 1.73, 78.8, 'Alta'),
(82, 'Emakumea', 'A-', 1.60, 59.2, 'Alta'),
(83, 'Gizona', 'B+', 1.79, 84.6, 'Alta'),
(84, 'Emakumea', 'O-', 1.67, 67.3, 'Alta'),
(85, 'Gizona', 'A+', 1.71, 75.9, 'Alta'),
(86, 'Emakumea', 'AB-', 1.64, 63.7, 'Alta'),
(87, 'Gizona', 'O+', 1.83, 89.1, 'Alta'),
(88, 'Emakumea', 'B-', 1.57, 57.5, 'Alta'),
(89, 'Gizona', 'A-', 1.68, 73.2, 'Alta'),
(90, 'Emakumea', 'O-', 1.69, 69.4, 'Alta'),
(91, 'Gizona', 'AB+', 1.74, 80.8, 'Alta'),
(92, 'Emakumea', 'O+', 1.61, 60.3, 'Alta'),
(93, 'Emakumea', 'A+', 1.66, 68.6, 'Alta'),
(94, 'Emakumea', 'B+', 1.63, 64.9, 'Alta'),
(95, 'Gizona', 'O-', 1.76, 82.5, 'Alta'),
(96, 'Emakumea', 'A-', 1.58, 58.1, 'Alta'),
(97, 'Gizona', 'AB-', 1.80, 85.4, 'Alta'),
(98, 'Emakumea', 'O+', 1.62, 62.7, 'Alta'),
(99, 'Gizona', 'B-', 1.78, 83.9, 'Alta'),
(100, 'Emakumea', 'A+', 1.65, 66.8, 'Alta');

INSERT INTO harrerako_langileak (id, txanda) VALUES
(101, 'Goizez'),
(102, 'Goizez'),
(103, 'Arratsaldez'),
(104, 'Arratsaldez');

-- Paziente bakoitzari 1 edo 2 mediku esleituko dizkiogu
INSERT INTO pazientek_langileak (langile_id, paziente_id)
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
    -- Beâ”œâ–’at
    (14, 74),
    -- Maddi
    (16, 75),
    (32, 75),
    -- Eâ”œâ–’aut
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
INSERT INTO jarraipenak (
        paziente_id,
        erregistro_data,
        tentsio_sistolikoa,
        tentsio_diastolikoa,
        pisua_kg,
        altuera,
        pultsua_ppm,
        oharrak
    ) VALUES (
        51,
        '2026-02-20 08:30:00',
        130,
        85,
        64.5,
        1.75,
        72,
        'Arazorik gabe, medikazioa hartuta.'
    ),
    (
        51,
        '2026-02-21 08:45:00',
        128,
        82,
        64.8,
        1.75,
        70,
        'Lotan ondo deskantsatu dut.'
    ),
    (
        52,
        '2026-02-15 09:00:00',
        140,
        90,
        65.0,
        1.62,
        88,
        'Buruhauste txikiak goizean.'
    ),
    (
        52,
        '2026-02-22 09:15:00',
        135,
        88,
        65.4,
        1.62,
        84,
        'Hobeto sentitzen naiz gaur.'
    ),
    (
        53,
        '2026-02-18 10:30:00',
        125,
        80,
        82.3,
        1.80,
        76,
        'Krisi asmatikoa gaindituta.'
    ),
    (
        55,
        '2026-02-10 07:45:00',
        145,
        95,
        85.1,
        1.78,
        92,
        'Odol azukrea apur bat altu.'
    ),
    (
        55,
        '2026-02-17 08:00:00',
        140,
        90,
        84.7,
        1.78,
        88,
        'Dieta zaintzen nabil.'
    ),
    (
        55,
        '2026-02-22 08:15:00',
        138,
        88,
        84.5,
        1.78,
        85,
        'Emaitzak hobetzen.'
    ),
    (
        56,
        '2026-02-05 11:00:00',
        115,
        75,
        62.4,
        1.55,
        68,
        'Dena ondo.'
    ),
    (
        59,
        '2026-02-20 15:30:00',
        132,
        86,
        76.8,
        1.72,
        74,
        'Arnasestuka kirola egitean.'
    ),
    (
        61,
        '2026-02-14 09:45:00',
        120,
        80,
        81.0,
        1.79,
        72,
        'Normaltasuna.'
    ),
    (
        63,
        '2026-02-21 10:15:00',
        150,
        95,
        79.2,
        1.70,
        95,
        'Tentsioa apur bat altu.'
    ),
    (
        67,
        '2026-02-12 16:00:00',
        124,
        78,
        75.6,
        1.75,
        70,
        'Begi lekuan mina.'
    ),
    (
        69,
        '2026-02-19 11:30:00',
        128,
        84,
        74.4,
        1.69,
        78,
        'Eztula dut egun osoan.'
    ),
    (
        71,
        '2026-02-22 08:20:00',
        136,
        88,
        80.5,
        1.76,
        82,
        'Bularreko mina txikia.'
    ),
    (
        73,
        '2026-02-16 09:10:00',
        118,
        76,
        77.1,
        1.74,
        65,
        'Belauneko mina.'
    ),
    (
        75,
        '2026-02-20 14:25:00',
        125,
        82,
        72.9,
        1.68,
        72,
        'Urdailgo mina jan ondoren.'
    ),
    (
        77,
        '2026-02-18 10:05:00',
        142,
        92,
        86.7,
        1.81,
        96,
        'Takikardiak tarteka.'
    ),
    (
        79,
        '2026-02-21 12:40:00',
        126,
        80,
        83.4,
        1.77,
        74,
        'Aldakako mina.'
    ),
    (
        81,
        '2026-02-15 08:50:00',
        148,
        96,
        78.8,
        1.73,
        90,
        'Nekea eta zorabioak.'
    ),
    (
        83,
        '2026-02-22 09:35:00',
        130,
        85,
        84.6,
        1.79,
        76,
        'Dena ondo doa.'
    ),
    (
        85,
        '2026-02-19 11:15:00',
        122,
        78,
        75.9,
        1.71,
        72,
        'Arnasa hartzeko zailtasun txikiak.'
    ),
    (
        87,
        '2026-02-14 15:55:00',
        138,
        90,
        89.1,
        1.83,
        84,
        'Gernu arazoak.'
    ),
    (
        89,
        '2026-02-21 08:10:00',
        146,
        94,
        73.2,
        1.68,
        82,
        'Ahotseko urradura.'
    ),
    (
        91,
        '2026-02-17 10:45:00',
        124,
        82,
        80.8,
        1.74,
        78,
        'Bihotz erritmo irregularra.'
    ),
    (
        93,
        '2026-02-22 12:20:00',
        132,
        86,
        68.6,
        1.66,
        75,
        'Dena normaltasunean.'
    ),
    (
        95,
        '2026-02-16 09:25:00',
        140,
        92,
        82.5,
        1.76,
        85,
        'Hanka minduta.'
    ),
    (
        97,
        '2026-02-20 14:50:00',
        128,
        84,
        85.4,
        1.80,
        82,
        'Arnasketa sakona egitean mina.'
    ),
    (
        99,
        '2026-02-18 11:05:00',
        136,
        88,
        83.9,
        1.78,
        88,
        'Larruazaleko orbanak.'
    ),
    (
        51,
        '2026-02-22 08:35:00',
        128,
        84,
        64.7,
        1.75,
        73,
        'Beti bezala.'
    ),
    (
        54,
        '2026-02-22 09:10:00',
        115,
        75,
        59.8,
        1.68,
        64,
        'Ondo sentitzen naiz.'
    ),
    (
        58,
        '2026-02-21 10:00:00',
        118,
        78,
        55.2,
        1.60,
        75,
        'Eskalatzen min hartu nuen besoan.'
    ),
    (
        60,
        '2026-02-20 11:30:00',
        122,
        80,
        61.5,
        1.65,
        72,
        'Bizkarreko mina lanean.'
    ),
    (
        62,
        '2026-02-22 08:15:00',
        120,
        82,
        58.7,
        1.58,
        68,
        'Dena ondo.'
    ),
    (
        64,
        '2026-02-19 14:45:00',
        116,
        76,
        63.1,
        1.64,
        70,
        'Azal gorritua eguzkiagatik.'
    ),
    (
        66,
        '2026-02-21 09:30:00',
        128,
        85,
        66.3,
        1.67,
        82,
        'Digestio astuna atzo.'
    ),
    (
        68,
        '2026-02-22 12:00:00',
        124,
        80,
        60.9,
        1.61,
        74,
        'Medikazioa ahaztu nuen.'
    ),
    (
        70,
        '2026-02-20 16:15:00',
        135,
        88,
        68.2,
        1.71,
        88,
        'Zorabio txikia goizean.'
    ),
    (
        72,
        '2026-02-18 10:45:00',
        120,
        78,
        62.8,
        1.63,
        72,
        'Buruko miâ”œâ–’a.'
    ),
    (
        74,
        '2026-02-22 08:50:00',
        126,
        84,
        64.6,
        1.66,
        76,
        'Normal.'
    ),
    (
        76,
        '2026-02-21 11:20:00',
        115,
        75,
        56.4,
        1.59,
        65,
        'Lasaia.'
    ),
    (
        78,
        '2026-02-19 15:10:00',
        122,
        80,
        61.1,
        1.62,
        72,
        'Pixka bat ahul.'
    ),
    (
        80,
        '2026-02-22 09:25:00',
        130,
        86,
        65.5,
        1.65,
        78,
        'Bikain.'
    ),
    (
        82,
        '2026-02-20 13:40:00',
        118,
        76,
        59.2,
        1.60,
        70,
        'Tripetako mina.'
    ),
    (
        84,
        '2026-02-21 10:55:00',
        124,
        82,
        67.3,
        1.67,
        74,
        'Dena ondo.'
    ),
    (
        86,
        '2026-02-18 14:15:00',
        126,
        84,
        63.7,
        1.64,
        76,
        'Giharretako karga.'
    ),
    (
        88,
        '2026-02-22 08:40:00',
        116,
        78,
        57.5,
        1.57,
        68,
        'Ondo lo egin dut.'
    ),
    (
        90,
        '2026-02-21 12:30:00',
        132,
        88,
        69.4,
        1.69,
        80,
        'Dena bere bidean.'
    ),
    (
        92,
        '2026-02-19 16:05:00',
        120,
        80,
        60.3,
        1.61,
        72,
        'Ezkerreko hankan mina.'
    ),
    (
        94,
        '2026-02-22 10:10:00',
        128,
        85,
        64.9,
        1.63,
        75,
        'Osasuntsu.'
    ),
    (
        96,
        '2026-02-20 09:00:00',
        114,
        76,
        58.1,
        1.58,
        82,
        'Griparekin.'
    ),
    (
        98,
        '2026-02-21 15:20:00',
        125,
        82,
        62.7,
        1.62,
        74,
        'Hobetzen.'
    ),
    (
        100,
        '2026-02-22 11:45:00',
        130,
        86,
        66.8,
        1.65,
        80,
        'Normala.'
    );

-- 7. Hitzorduak (Gaurko, iraganeko eta etorkizuneko hitzorduak)
INSERT INTO Hitzorduak (
        paziente_id,
        osasun_langile_id,
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
        'Buruko miâ”œâ–’a gogorra',
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
        'Buruko miâ”œâ–’en bilakaera',
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
INSERT INTO jarraipenak (
        paziente_id,
        erregistro_data,
        tentsio_sistolikoa,
        tentsio_diastolikoa,
        pisua_kg,
        altuera,
        pultsua_ppm,
        oharrak
    ) VALUES (
        51,
        '2025-11-24 08:09:00',
        133,
        78,
        65.0,
        1.76,
        85, 'Gosariaren ondoren.'
    ),
    (
        52,
        '2025-11-24 10:34:00',
        137,
        93,
        94.1,
        1.77,
        78, 'Gosariaren ondoren.'
    ),
    (
        53,
        '2025-11-24 08:04:00',
        114,
        93,
        74.2,
        1.75,
        87, 'Kirola egin ondoren.'
    ),
    (
        54,
        '2025-11-24 09:07:00',
        126,
        74,
        87.4,
        1.60,
        88, 'Baraualdian.'
    ),
    (
        55,
        '2025-11-24 10:34:00',
        125,
        78,
        80.5,
        1.76,
        75, 'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2025-11-24 08:30:00',
        139,
        86,
        91.0,
        1.61,
        79, 'Ondo sentitzen naiz.'
    ),
    (
        57,
        '2025-11-24 09:53:00',
        130,
        87,
        84.0,
        1.69,
        84, 'Apur bat nekatuta.'
    ),
    (
        58,
        '2025-11-24 09:55:00',
        132,
        85,
        67.5,
        1.68,
        84, 'Apur bat nekatuta.'
    ),
    (
        60,
        '2025-11-24 10:29:00',
        122,
        94,
        79.0,
        1.81,
        81, 'Baraualdian.'
    ),
    (
        61,
        '2025-11-24 10:24:00',
        124,
        89,
        72.1,
        1.83,
        75, 'Gosariaren ondoren.'
    ),
    (
        62,
        '2025-11-24 07:13:00',
        130,
        85,
        66.1,
        1.56,
        80, 'Dena ondo.'
    ),
    (
        64,
        '2025-11-24 09:22:00',
        135,
        82,
        94.8,
        1.56,
        72, 'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2025-11-24 09:41:00',
        131,
        78,
        90.5,
        1.55,
        80, 'Gosariaren ondoren.'
    ),
    (
        66,
        '2025-11-24 07:19:00',
        129,
        85,
        74.6,
        1.59,
        93, 'Gosariaren ondoren.'
    ),
    (
        67,
        '2025-11-24 09:26:00',
        131,
        84,
        71.5,
        1.72,
        88, 'Gosariaren ondoren.'
    ),
    (
        68,
        '2025-11-24 07:34:00',
        131,
        84,
        60.2,
        1.85,
        93, 'Kirola egin ondoren.'
    ),
    (
        69,
        '2025-11-24 08:38:00',
        125,
        86,
        94.1,
        1.66,
        80, 'Ondo sentitzen naiz.'
    ),
    (
        70,
        '2025-11-24 08:40:00',
        130,
        78,
        74.0,
        1.70,
        67, 'Baraualdian.'
    ),
    (
        72,
        '2025-11-24 08:13:00',
        130,
        82,
        91.9,
        1.69,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2025-11-24 10:42:00',
        128,
        81,
        95.2,
        1.55,
        88, 'Gosariaren ondoren.'
    ),
    (
        74,
        '2025-11-24 09:00:00',
        111,
        80,
        64.8,
        1.67,
        77, 'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2025-11-24 10:07:00',
        117,
        87,
        65.1,
        1.69,
        69, 'Gosariaren ondoren.'
    ),
    (
        78,
        '2025-11-24 07:59:00',
        128,
        76,
        63.6,
        1.61,
        92, 'Kirola egin ondoren.'
    ),
    (
        79,
        '2025-11-24 07:16:00',
        129,
        84,
        68.0,
        1.67,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2025-11-24 08:29:00',
        130,
        88,
        63.7,
        1.78,
        88, 'Kirola egin ondoren.'
    ),
    (
        82,
        '2025-11-24 07:13:00',
        134,
        80,
        89.1,
        1.77,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        83,
        '2025-11-24 07:08:00',
        116,
        81,
        64.1,
        1.80,
        79, 'Apur bat nekatuta.'
    ),
    (
        84,
        '2025-11-24 07:20:00',
        135,
        90,
        79.1,
        1.67,
        77, 'Gosariaren ondoren.'
    ),
    (
        85,
        '2025-11-24 10:34:00',
        130,
        91,
        80.0,
        1.72,
        88, 'Gaur goizean neurtuta.'
    ),
    (
        86,
        '2025-11-24 07:34:00',
        135,
        75,
        68.3,
        1.57,
        84, 'Apur bat nekatuta.'
    ),
    (
        87,
        '2025-11-24 08:07:00',
        141,
        75,
        72.4,
        1.61,
        65, 'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2025-11-24 07:05:00',
        125,
        85,
        90.8,
        1.81,
        78, 'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2025-11-24 10:56:00',
        136,
        85,
        91.1,
        1.84,
        83, 'Kirola egin ondoren.'
    ),
    (
        91,
        '2025-11-24 08:27:00',
        129,
        87,
        89.7,
        1.58,
        93, 'Baraualdian.'
    ),
    (
        92,
        '2025-11-24 08:28:00',
        125,
        86,
        59.9,
        1.79,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2025-11-24 10:51:00',
        123,
        83,
        75.8,
        1.81,
        81, 'Kirola egin ondoren.'
    ),
    (
        94,
        '2025-11-24 08:14:00',
        129,
        91,
        86.4,
        1.83,
        68, 'Gosariaren ondoren.'
    ),
    (
        95,
        '2025-11-24 10:16:00',
        130,
        85,
        90.8,
        1.77,
        75, 'Kirola egin ondoren.'
    ),
    (
        96,
        '2025-11-24 09:26:00',
        122,
        80,
        76.2,
        1.71,
        93, 'Apur bat nekatuta.'
    ),
    (
        97,
        '2025-11-24 07:57:00',
        120,
        81,
        88.0,
        1.56,
        87, 'Ondo sentitzen naiz.'
    ),
    (
        98,
        '2025-11-24 07:19:00',
        132,
        89,
        83.9,
        1.60,
        65, 'Kirola egin ondoren.'
    ),
    (
        100,
        '2025-11-24 10:40:00',
        134,
        78,
        82.0,
        1.57,
        73, 'Ondo sentitzen naiz.'
    ),
    (
        53,
        '2025-11-25 07:51:00',
        121,
        81,
        75.4,
        1.75,
        73, 'Dena ondo.'
    ),
    (
        54,
        '2025-11-25 09:20:00',
        129,
        74,
        86.1,
        1.60,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2025-11-25 09:30:00',
        138,
        73,
        81.6,
        1.76,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        57,
        '2025-11-25 08:47:00',
        118,
        83,
        83.9,
        1.69,
        71, 'Dena ondo.'
    ),
    (
        59,
        '2025-11-25 07:15:00',
        126,
        81,
        62.9,
        1.73,
        79, 'Apur bat nekatuta.'
    ),
    (
        60,
        '2025-11-25 07:37:00',
        135,
        85,
        78.3,
        1.81,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2025-11-25 09:16:00',
        129,
        93,
        72.2,
        1.83,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        62,
        '2025-11-25 09:38:00',
        127,
        78,
        66.3,
        1.56,
        72, 'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-11-25 07:41:00',
        130,
        80,
        81.9,
        1.80,
        67, 'Apur bat nekatuta.'
    ),
    (
        64,
        '2025-11-25 10:20:00',
        135,
        79,
        94.9,
        1.56,
        77, 'Gosariaren ondoren.'
    ),
    (
        66,
        '2025-11-25 07:38:00',
        125,
        81,
        75.0,
        1.59,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2025-11-25 07:03:00',
        143,
        82,
        71.8,
        1.72,
        86, 'Baraualdian.'
    ),
    (
        69,
        '2025-11-25 10:35:00',
        127,
        83,
        94.7,
        1.66,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        70,
        '2025-11-25 09:35:00',
        129,
        78,
        75.5,
        1.70,
        68, 'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2025-11-25 09:04:00',
        129,
        80,
        90.0,
        1.63,
        91, 'Dena ondo.'
    ),
    (
        72,
        '2025-11-25 08:03:00',
        126,
        77,
        92.1,
        1.69,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2025-11-25 10:47:00',
        124,
        75,
        95.3,
        1.55,
        68, 'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2025-11-25 07:33:00',
        124,
        88,
        63.9,
        1.67,
        89, 'Baraualdian.'
    ),
    (
        76,
        '2025-11-25 07:18:00',
        119,
        84,
        66.2,
        1.69,
        66, 'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2025-11-25 09:26:00',
        135,
        79,
        66.2,
        1.67,
        71, 'Dena ondo.'
    ),
    (
        78,
        '2025-11-25 07:52:00',
        117,
        74,
        63.0,
        1.61,
        75, 'Apur bat nekatuta.'
    ),
    (
        79,
        '2025-11-25 09:07:00',
        126,
        77,
        67.1,
        1.67,
        86, 'Dena ondo.'
    ),
    (
        80,
        '2025-11-25 07:28:00',
        126,
        84,
        63.2,
        1.78,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2025-11-25 07:13:00',
        138,
        93,
        86.3,
        1.58,
        84, 'Ondo sentitzen naiz.'
    ),
    (
        82,
        '2025-11-25 08:39:00',
        124,
        84,
        89.1,
        1.77,
        72, 'Baraualdian.'
    ),
    (
        83,
        '2025-11-25 09:25:00',
        119,
        79,
        64.3,
        1.80,
        80, 'Apur bat nekatuta.'
    ),
    (
        85,
        '2025-11-25 10:40:00',
        139,
        93,
        80.1,
        1.72,
        84, 'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2025-11-25 10:01:00',
        139,
        80,
        68.2,
        1.57,
        69, 'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2025-11-25 08:18:00',
        127,
        84,
        73.0,
        1.61,
        84, 'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2025-11-25 09:56:00',
        121,
        86,
        89.2,
        1.81,
        80, 'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2025-11-25 08:35:00',
        143,
        82,
        89.4,
        1.58,
        80, 'Ondo sentitzen naiz.'
    ),
    (
        92,
        '2025-11-25 07:23:00',
        129,
        79,
        60.5,
        1.79,
        75, 'Dena ondo.'
    ),
    (
        95,
        '2025-11-25 08:16:00',
        136,
        79,
        89.9,
        1.77,
        73, 'Gosariaren ondoren.'
    ),
    (
        96,
        '2025-11-25 09:30:00',
        119,
        74,
        77.3,
        1.71,
        76, 'Dena ondo.'
    ),
    (
        97,
        '2025-11-25 08:04:00',
        120,
        81,
        87.2,
        1.56,
        78, 'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2025-11-25 10:08:00',
        120,
        77,
        85.0,
        1.60,
        69, 'Gosariaren ondoren.'
    ),
    (
        99,
        '2025-11-25 09:06:00',
        123,
        73,
        86.8,
        1.71,
        93, 'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2025-11-26 07:41:00',
        131,
        91,
        65.0,
        1.76,
        73, 'Gosariaren ondoren.'
    ),
    (
        52,
        '2025-11-26 09:52:00',
        130,
        79,
        93.8,
        1.77,
        73, 'Apur bat nekatuta.'
    ),
    (
        55,
        '2025-11-26 09:19:00',
        131,
        82,
        80.5,
        1.76,
        81, 'Apur bat nekatuta.'
    ),
    (
        56,
        '2025-11-26 07:03:00',
        128,
        85,
        89.2,
        1.61,
        69, 'Dena ondo.'
    ),
    (
        57,
        '2025-11-26 10:53:00',
        136,
        82,
        82.6,
        1.69,
        77, 'Apur bat nekatuta.'
    ),
    (
        58,
        '2025-11-26 08:22:00',
        131,
        87,
        66.2,
        1.68,
        78, 'Kirola egin ondoren.'
    ),
    (
        59,
        '2025-11-26 07:29:00',
        120,
        86,
        63.3,
        1.73,
        66, 'Apur bat nekatuta.'
    ),
    (
        60,
        '2025-11-26 07:33:00',
        122,
        91,
        77.1,
        1.81,
        89, 'Apur bat nekatuta.'
    ),
    (
        61,
        '2025-11-26 07:10:00',
        126,
        83,
        74.0,
        1.83,
        80, 'Gaur goizean neurtuta.'
    ),
    (
        63,
        '2025-11-26 08:28:00',
        126,
        86,
        81.4,
        1.80,
        67, 'Gosariaren ondoren.'
    ),
    (
        64,
        '2025-11-26 10:10:00',
        140,
        73,
        95.1,
        1.56,
        76, 'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2025-11-26 10:13:00',
        133,
        87,
        91.3,
        1.55,
        75, 'Ondo sentitzen naiz.'
    ),
    (
        66,
        '2025-11-26 08:30:00',
        125,
        82,
        75.2,
        1.59,
        75, 'Dena ondo.'
    ),
    (
        67,
        '2025-11-26 09:58:00',
        140,
        89,
        71.2,
        1.72,
        85, 'Gosariaren ondoren.'
    ),
    (
        69,
        '2025-11-26 09:03:00',
        143,
        85,
        95.2,
        1.66,
        89, 'Ondo sentitzen naiz.'
    ),
    (
        70,
        '2025-11-26 08:32:00',
        130,
        80,
        74.0,
        1.70,
        77, 'Kirola egin ondoren.'
    ),
    (
        72,
        '2025-11-26 10:13:00',
        139,
        80,
        91.7,
        1.69,
        89, 'Gosariaren ondoren.'
    ),
    (
        74,
        '2025-11-26 08:36:00',
        122,
        77,
        63.5,
        1.67,
        91, 'Dena ondo.'
    ),
    (
        75,
        '2025-11-26 07:23:00',
        136,
        74,
        60.5,
        1.65,
        82, 'Dena ondo.'
    ),
    (
        76,
        '2025-11-26 10:15:00',
        115,
        85,
        65.1,
        1.69,
        71, 'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2025-11-26 07:04:00',
        122,
        81,
        67.1,
        1.67,
        73, 'Baraualdian.'
    ),
    (
        78,
        '2025-11-26 07:52:00',
        130,
        77,
        63.6,
        1.61,
        87, 'Baraualdian.'
    ),
    (
        79,
        '2025-11-26 10:28:00',
        139,
        87,
        66.4,
        1.67,
        84, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2025-11-26 09:56:00',
        133,
        81,
        85.8,
        1.58,
        78, 'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2025-11-26 08:29:00',
        122,
        93,
        64.9,
        1.80,
        70, 'Kirola egin ondoren.'
    ),
    (
        84,
        '2025-11-26 09:14:00',
        120,
        76,
        78.3,
        1.67,
        76, 'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2025-11-26 09:34:00',
        122,
        84,
        80.5,
        1.72,
        68, 'Gaur goizean neurtuta.'
    ),
    (
        86,
        '2025-11-26 10:25:00',
        133,
        76,
        67.4,
        1.57,
        81, 'Kirola egin ondoren.'
    ),
    (
        87,
        '2025-11-26 09:47:00',
        130,
        88,
        72.0,
        1.61,
        78, 'Baraualdian.'
    ),
    (
        89,
        '2025-11-26 10:42:00',
        131,
        89,
        91.7,
        1.84,
        72, 'Dena ondo.'
    ),
    (
        91,
        '2025-11-26 10:03:00',
        142,
        90,
        90.8,
        1.58,
        65, 'Kirola egin ondoren.'
    ),
    (
        92,
        '2025-11-26 09:36:00',
        128,
        91,
        59.6,
        1.79,
        89, 'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2025-11-26 10:37:00',
        140,
        89,
        76.2,
        1.81,
        86, 'Dena ondo.'
    ),
    (
        95,
        '2025-11-26 08:59:00',
        139,
        74,
        89.5,
        1.77,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2025-11-26 09:31:00',
        137,
        75,
        87.1,
        1.56,
        86, 'Gosariaren ondoren.'
    ),
    (
        98,
        '2025-11-26 08:42:00',
        121,
        87,
        84.3,
        1.60,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        99,
        '2025-11-26 10:00:00',
        129,
        85,
        85.7,
        1.71,
        71, 'Dena ondo.'
    ),
    (
        100,
        '2025-11-26 09:20:00',
        129,
        74,
        81.8,
        1.57,
        79, 'Apur bat nekatuta.'
    ),
    (
        51,
        '2025-11-27 09:39:00',
        126,
        92,
        63.3,
        1.76,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2025-11-27 07:54:00',
        121,
        88,
        74.7,
        1.75,
        76, 'Gosariaren ondoren.'
    ),
    (
        54,
        '2025-11-27 09:50:00',
        127,
        74,
        87.7,
        1.60,
        71, 'Kirola egin ondoren.'
    ),
    (
        55,
        '2025-11-27 09:34:00',
        136,
        85,
        80.2,
        1.76,
        93, 'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2025-11-27 08:00:00',
        138,
        90,
        90.4,
        1.61,
        73, 'Baraualdian.'
    ),
    (
        57,
        '2025-11-27 10:40:00',
        122,
        89,
        82.2,
        1.69,
        69, 'Dena ondo.'
    ),
    (
        58,
        '2025-11-27 10:51:00',
        138,
        87,
        67.7,
        1.68,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2025-11-27 09:24:00',
        120,
        90,
        63.7,
        1.73,
        66, 'Gosariaren ondoren.'
    ),
    (
        61,
        '2025-11-27 08:40:00',
        130,
        87,
        74.0,
        1.83,
        77, 'Baraualdian.'
    ),
    (
        62,
        '2025-11-27 09:03:00',
        140,
        73,
        65.2,
        1.56,
        91, 'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-11-27 09:37:00',
        124,
        76,
        81.3,
        1.80,
        87, 'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2025-11-27 08:13:00',
        121,
        76,
        91.7,
        1.55,
        80, 'Apur bat nekatuta.'
    ),
    (
        66,
        '2025-11-27 10:49:00',
        120,
        91,
        75.5,
        1.59,
        84, 'Kirola egin ondoren.'
    ),
    (
        67,
        '2025-11-27 07:03:00',
        133,
        79,
        71.0,
        1.72,
        66, 'Apur bat nekatuta.'
    ),
    (
        68,
        '2025-11-27 09:47:00',
        127,
        74,
        61.8,
        1.85,
        78, 'Baraualdian.'
    ),
    (
        69,
        '2025-11-27 07:06:00',
        124,
        82,
        94.2,
        1.66,
        89, 'Gosariaren ondoren.'
    ),
    (
        70,
        '2025-11-27 08:17:00',
        133,
        86,
        75.5,
        1.70,
        87, 'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2025-11-27 08:16:00',
        139,
        85,
        89.0,
        1.63,
        90, 'Apur bat nekatuta.'
    ),
    (
        72,
        '2025-11-27 07:16:00',
        124,
        75,
        91.4,
        1.69,
        90, 'Dena ondo.'
    ),
    (
        73,
        '2025-11-27 09:00:00',
        123,
        84,
        95.3,
        1.55,
        72, 'Gosariaren ondoren.'
    ),
    (
        74,
        '2025-11-27 07:07:00',
        119,
        89,
        63.5,
        1.67,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2025-11-27 08:53:00',
        135,
        83,
        59.0,
        1.65,
        82, 'Ondo sentitzen naiz.'
    ),
    (
        77,
        '2025-11-27 08:51:00',
        134,
        80,
        66.8,
        1.67,
        84, 'Gosariaren ondoren.'
    ),
    (
        79,
        '2025-11-27 09:25:00',
        132,
        88,
        66.1,
        1.67,
        74, 'Dena ondo.'
    ),
    (
        80,
        '2025-11-27 10:51:00',
        138,
        89,
        62.4,
        1.78,
        91, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2025-11-27 08:33:00',
        129,
        90,
        86.4,
        1.58,
        91, 'Gaur goizean neurtuta.'
    ),
    (
        83,
        '2025-11-27 10:50:00',
        126,
        88,
        64.5,
        1.80,
        71, 'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2025-11-27 08:36:00',
        120,
        89,
        78.4,
        1.67,
        80, 'Dena ondo.'
    ),
    (
        85,
        '2025-11-27 09:31:00',
        119,
        79,
        80.7,
        1.72,
        72, 'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2025-11-27 07:04:00',
        132,
        87,
        68.0,
        1.57,
        74, 'Apur bat nekatuta.'
    ),
    (
        87,
        '2025-11-27 08:37:00',
        133,
        82,
        72.9,
        1.61,
        68, 'Apur bat nekatuta.'
    ),
    (
        88,
        '2025-11-27 09:00:00',
        123,
        72,
        91.0,
        1.81,
        68, 'Gosariaren ondoren.'
    ),
    (
        89,
        '2025-11-27 07:56:00',
        134,
        79,
        90.4,
        1.84,
        71, 'Ondo sentitzen naiz.'
    ),
    (
        90,
        '2025-11-27 08:04:00',
        128,
        90,
        65.5,
        1.60,
        71, 'Baraualdian.'
    ),
    (
        91,
        '2025-11-27 10:44:00',
        137,
        91,
        90.1,
        1.58,
        94, 'Gosariaren ondoren.'
    ),
    (
        92,
        '2025-11-27 09:20:00',
        145,
        82,
        60.5,
        1.79,
        77, 'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2025-11-27 10:25:00',
        130,
        94,
        75.0,
        1.81,
        85, 'Ondo sentitzen naiz.'
    ),
    (
        94,
        '2025-11-27 08:59:00',
        122,
        83,
        86.9,
        1.83,
        86, 'Baraualdian.'
    ),
    (
        95,
        '2025-11-27 09:00:00',
        143,
        72,
        90.1,
        1.77,
        89, 'Kirola egin ondoren.'
    ),
    (
        96,
        '2025-11-27 09:03:00',
        122,
        80,
        76.3,
        1.71,
        71, 'Baraualdian.'
    ),
    (
        99,
        '2025-11-27 07:17:00',
        137,
        86,
        85.5,
        1.71,
        69, 'Gosariaren ondoren.'
    ),
    (
        100,
        '2025-11-27 09:19:00',
        140,
        72,
        81.2,
        1.57,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2025-11-28 10:26:00',
        131,
        83,
        64.8,
        1.76,
        83, 'Dena ondo.'
    ),
    (
        52,
        '2025-11-28 08:57:00',
        120,
        89,
        93.5,
        1.77,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2025-11-28 07:39:00',
        113,
        92,
        74.0,
        1.75,
        94, 'Kirola egin ondoren.'
    ),
    (
        54,
        '2025-11-28 09:18:00',
        133,
        80,
        86.5,
        1.60,
        94, 'Gaur goizean neurtuta.'
    ),
    (
        56,
        '2025-11-28 09:17:00',
        133,
        86,
        89.4,
        1.61,
        80, 'Dena ondo.'
    ),
    (
        57,
        '2025-11-28 08:47:00',
        124,
        91,
        82.6,
        1.69,
        93, 'Kirola egin ondoren.'
    ),
    (
        58,
        '2025-11-28 07:20:00',
        126,
        76,
        67.0,
        1.68,
        83, 'Apur bat nekatuta.'
    ),
    (
        60,
        '2025-11-28 07:04:00',
        129,
        87,
        78.3,
        1.81,
        66, 'Ondo sentitzen naiz.'
    ),
    (
        61,
        '2025-11-28 08:30:00',
        116,
        83,
        73.0,
        1.83,
        77, 'Baraualdian.'
    ),
    (
        63,
        '2025-11-28 09:51:00',
        138,
        76,
        80.9,
        1.80,
        84, 'Kirola egin ondoren.'
    ),
    (
        64,
        '2025-11-28 10:44:00',
        138,
        81,
        95.2,
        1.56,
        77, 'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2025-11-28 10:37:00',
        138,
        84,
        91.9,
        1.55,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2025-11-28 08:29:00',
        123,
        86,
        74.9,
        1.59,
        94, 'Baraualdian.'
    ),
    (
        68,
        '2025-11-28 09:12:00',
        137,
        80,
        61.6,
        1.85,
        91, 'Ondo sentitzen naiz.'
    ),
    (
        69,
        '2025-11-28 07:51:00',
        126,
        83,
        95.2,
        1.66,
        79, 'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-11-28 09:31:00',
        125,
        76,
        75.4,
        1.70,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2025-11-28 08:51:00',
        130,
        82,
        88.0,
        1.63,
        87, 'Apur bat nekatuta.'
    ),
    (
        74,
        '2025-11-28 10:13:00',
        116,
        77,
        63.9,
        1.67,
        76, 'Dena ondo.'
    ),
    (
        75,
        '2025-11-28 10:52:00',
        139,
        71,
        61.0,
        1.65,
        86, 'Baraualdian.'
    ),
    (
        76,
        '2025-11-28 09:31:00',
        116,
        95,
        65.2,
        1.69,
        74, 'Ondo sentitzen naiz.'
    ),
    (
        77,
        '2025-11-28 09:27:00',
        126,
        79,
        66.6,
        1.67,
        69, 'Kirola egin ondoren.'
    ),
    (
        78,
        '2025-11-28 09:42:00',
        133,
        73,
        63.5,
        1.61,
        66, 'Apur bat nekatuta.'
    ),
    (
        79,
        '2025-11-28 09:22:00',
        123,
        76,
        67.8,
        1.67,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2025-11-28 08:28:00',
        128,
        90,
        63.9,
        1.78,
        85, 'Dena ondo.'
    ),
    (
        81,
        '2025-11-28 08:05:00',
        126,
        94,
        85.3,
        1.58,
        88, 'Apur bat nekatuta.'
    ),
    (
        83,
        '2025-11-28 09:02:00',
        120,
        79,
        66.0,
        1.80,
        94, 'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2025-11-28 09:11:00',
        126,
        82,
        79.3,
        1.67,
        91, 'Gosariaren ondoren.'
    ),
    (
        85,
        '2025-11-28 08:58:00',
        138,
        80,
        81.9,
        1.72,
        87, 'Apur bat nekatuta.'
    ),
    (
        86,
        '2025-11-28 09:05:00',
        127,
        87,
        67.2,
        1.57,
        85, 'Apur bat nekatuta.'
    ),
    (
        90,
        '2025-11-28 07:52:00',
        129,
        90,
        66.1,
        1.60,
        77, 'Gosariaren ondoren.'
    ),
    (
        91,
        '2025-11-28 09:44:00',
        144,
        87,
        90.1,
        1.58,
        89, 'Ondo sentitzen naiz.'
    ),
    (
        92,
        '2025-11-28 10:21:00',
        130,
        82,
        60.0,
        1.79,
        66, 'Kirola egin ondoren.'
    ),
    (
        93,
        '2025-11-28 08:26:00',
        141,
        84,
        75.6,
        1.81,
        65, 'Kirola egin ondoren.'
    ),
    (
        94,
        '2025-11-28 07:16:00',
        133,
        84,
        87.0,
        1.83,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2025-11-28 08:00:00',
        141,
        80,
        90.0,
        1.77,
        70, 'Kirola egin ondoren.'
    ),
    (
        98,
        '2025-11-28 09:19:00',
        127,
        90,
        83.8,
        1.60,
        80, 'Dena ondo.'
    ),
    (
        100,
        '2025-11-28 08:06:00',
        127,
        86,
        82.8,
        1.57,
        74, 'Baraualdian.'
    ),
    (
        51,
        '2025-11-29 08:15:00',
        135,
        86,
        63.1,
        1.76,
        70, 'Apur bat nekatuta.'
    ),
    (
        52,
        '2025-11-29 09:18:00',
        134,
        90,
        94.7,
        1.77,
        93, 'Apur bat nekatuta.'
    ),
    (
        53,
        '2025-11-29 10:43:00',
        119,
        80,
        75.0,
        1.75,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2025-11-29 08:53:00',
        134,
        88,
        87.2,
        1.60,
        87, 'Apur bat nekatuta.'
    ),
    (
        56,
        '2025-11-29 08:01:00',
        131,
        85,
        89.6,
        1.61,
        70, 'Gosariaren ondoren.'
    ),
    (
        57,
        '2025-11-29 09:11:00',
        130,
        92,
        82.5,
        1.69,
        92, 'Ondo sentitzen naiz.'
    ),
    (
        59,
        '2025-11-29 09:02:00',
        123,
        90,
        62.4,
        1.73,
        76, 'Dena ondo.'
    ),
    (
        60,
        '2025-11-29 07:05:00',
        131,
        94,
        78.4,
        1.81,
        71, 'Apur bat nekatuta.'
    ),
    (
        61,
        '2025-11-29 08:26:00',
        118,
        83,
        73.6,
        1.83,
        73, 'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-11-29 07:53:00',
        126,
        82,
        81.0,
        1.80,
        88, 'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2025-11-29 07:34:00',
        122,
        83,
        95.5,
        1.56,
        72, 'Kirola egin ondoren.'
    ),
    (
        65,
        '2025-11-29 07:53:00',
        129,
        90,
        92.0,
        1.55,
        78, 'Apur bat nekatuta.'
    ),
    (
        66,
        '2025-11-29 07:21:00',
        118,
        87,
        74.2,
        1.59,
        94, 'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2025-11-29 08:47:00',
        126,
        83,
        71.6,
        1.72,
        70, 'Ondo sentitzen naiz.'
    ),
    (
        68,
        '2025-11-29 08:12:00',
        125,
        77,
        62.0,
        1.85,
        70, 'Kirola egin ondoren.'
    ),
    (
        69,
        '2025-11-29 10:34:00',
        134,
        86,
        95.3,
        1.66,
        69, 'Apur bat nekatuta.'
    ),
    (
        70,
        '2025-11-29 10:30:00',
        122,
        79,
        74.5,
        1.70,
        82, 'Kirola egin ondoren.'
    ),
    (
        71,
        '2025-11-29 07:19:00',
        124,
        79,
        88.3,
        1.63,
        80, 'Gosariaren ondoren.'
    ),
    (
        72,
        '2025-11-29 07:07:00',
        125,
        81,
        91.7,
        1.69,
        66, 'Gosariaren ondoren.'
    ),
    (
        73,
        '2025-11-29 08:46:00',
        120,
        72,
        96.0,
        1.55,
        70, 'Gosariaren ondoren.'
    ),
    (
        75,
        '2025-11-29 09:23:00',
        131,
        80,
        59.4,
        1.65,
        82, 'Apur bat nekatuta.'
    ),
    (
        76,
        '2025-11-29 07:05:00',
        126,
        87,
        66.8,
        1.69,
        66, 'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2025-11-29 07:01:00',
        137,
        82,
        66.9,
        1.67,
        84, 'Gosariaren ondoren.'
    ),
    (
        80,
        '2025-11-29 10:22:00',
        138,
        87,
        62.6,
        1.78,
        66, 'Gosariaren ondoren.'
    ),
    (
        81,
        '2025-11-29 07:18:00',
        128,
        95,
        86.1,
        1.58,
        86, 'Kirola egin ondoren.'
    ),
    (
        83,
        '2025-11-29 08:33:00',
        127,
        80,
        66.0,
        1.80,
        78, 'Baraualdian.'
    ),
    (
        84,
        '2025-11-29 09:00:00',
        119,
        80,
        78.3,
        1.67,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2025-11-29 08:52:00',
        137,
        85,
        81.1,
        1.72,
        91, 'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2025-11-29 08:48:00',
        135,
        81,
        68.7,
        1.57,
        70, 'Baraualdian.'
    ),
    (
        87,
        '2025-11-29 09:13:00',
        138,
        73,
        72.5,
        1.61,
        78, 'Gosariaren ondoren.'
    ),
    (
        89,
        '2025-11-29 07:20:00',
        126,
        85,
        91.5,
        1.84,
        92, 'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2025-11-29 07:30:00',
        126,
        86,
        89.5,
        1.58,
        72, 'Ondo sentitzen naiz.'
    ),
    (
        92,
        '2025-11-29 09:19:00',
        130,
        85,
        60.7,
        1.79,
        87, 'Baraualdian.'
    ),
    (
        93,
        '2025-11-29 09:26:00',
        141,
        82,
        76.1,
        1.81,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2025-11-29 08:14:00',
        135,
        79,
        87.8,
        1.83,
        73, 'Ondo sentitzen naiz.'
    ),
    (
        95,
        '2025-11-29 08:56:00',
        127,
        75,
        89.8,
        1.77,
        94, 'Kirola egin ondoren.'
    ),
    (
        96,
        '2025-11-29 09:29:00',
        117,
        87,
        77.3,
        1.71,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2025-11-29 07:33:00',
        134,
        81,
        87.2,
        1.56,
        79, 'Apur bat nekatuta.'
    ),
    (
        98,
        '2025-11-29 10:58:00',
        126,
        88,
        83.3,
        1.60,
        70, 'Kirola egin ondoren.'
    ),
    (
        100,
        '2025-11-29 08:22:00',
        121,
        83,
        82.3,
        1.57,
        75, 'Dena ondo.'
    ),
    (
        51,
        '2025-11-30 09:02:00',
        134,
        80,
        63.3,
        1.76,
        75, 'Gosariaren ondoren.'
    ),
    (
        53,
        '2025-11-30 08:04:00',
        118,
        90,
        75.7,
        1.75,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2025-11-30 10:22:00',
        131,
        87,
        87.0,
        1.60,
        69, 'Baraualdian.'
    ),
    (
        57,
        '2025-11-30 07:20:00',
        136,
        83,
        83.3,
        1.69,
        82, 'Dena ondo.'
    ),
    (
        58,
        '2025-11-30 09:37:00',
        141,
        84,
        67.2,
        1.68,
        68, 'Dena ondo.'
    ),
    (
        60,
        '2025-11-30 10:43:00',
        126,
        84,
        78.0,
        1.81,
        66, 'Kirola egin ondoren.'
    ),
    (
        61,
        '2025-11-30 10:42:00',
        115,
        84,
        73.6,
        1.83,
        90, 'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-11-30 08:18:00',
        139,
        76,
        80.8,
        1.80,
        92, 'Dena ondo.'
    ),
    (
        64,
        '2025-11-30 08:06:00',
        121,
        83,
        95.0,
        1.56,
        92, 'Kirola egin ondoren.'
    ),
    (
        66,
        '2025-11-30 07:56:00',
        136,
        88,
        75.7,
        1.59,
        82, 'Dena ondo.'
    ),
    (
        67,
        '2025-11-30 09:09:00',
        132,
        76,
        71.2,
        1.72,
        69, 'Dena ondo.'
    ),
    (
        69,
        '2025-11-30 09:17:00',
        135,
        90,
        94.7,
        1.66,
        80, 'Dena ondo.'
    ),
    (
        70,
        '2025-11-30 10:06:00',
        128,
        79,
        74.3,
        1.70,
        85, 'Baraualdian.'
    ),
    (
        71,
        '2025-11-30 09:46:00',
        130,
        84,
        89.0,
        1.63,
        66, 'Dena ondo.'
    ),
    (
        74,
        '2025-11-30 09:31:00',
        130,
        90,
        63.9,
        1.67,
        93, 'Dena ondo.'
    ),
    (
        75,
        '2025-11-30 09:42:00',
        145,
        72,
        59.9,
        1.65,
        69, 'Dena ondo.'
    ),
    (
        76,
        '2025-11-30 07:34:00',
        125,
        93,
        66.1,
        1.69,
        89, 'Apur bat nekatuta.'
    ),
    (
        78,
        '2025-11-30 10:13:00',
        120,
        79,
        62.5,
        1.61,
        82, 'Baraualdian.'
    ),
    (
        80,
        '2025-11-30 10:38:00',
        128,
        84,
        64.0,
        1.78,
        75, 'Baraualdian.'
    ),
    (
        82,
        '2025-11-30 10:08:00',
        138,
        82,
        88.1,
        1.77,
        79, 'Baraualdian.'
    ),
    (
        85,
        '2025-11-30 08:14:00',
        125,
        78,
        80.4,
        1.72,
        65, 'Gosariaren ondoren.'
    ),
    (
        86,
        '2025-11-30 09:36:00',
        123,
        84,
        67.7,
        1.57,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2025-11-30 10:35:00',
        141,
        80,
        73.7,
        1.61,
        87, 'Gosariaren ondoren.'
    ),
    (
        88,
        '2025-11-30 09:44:00',
        129,
        81,
        89.0,
        1.81,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2025-11-30 09:14:00',
        139,
        80,
        90.1,
        1.84,
        78, 'Apur bat nekatuta.'
    ),
    (
        90,
        '2025-11-30 08:54:00',
        120,
        80,
        66.2,
        1.60,
        80, 'Dena ondo.'
    ),
    (
        91,
        '2025-11-30 10:07:00',
        138,
        90,
        89.7,
        1.58,
        76, 'Dena ondo.'
    ),
    (
        92,
        '2025-11-30 08:33:00',
        145,
        94,
        59.6,
        1.79,
        87, 'Dena ondo.'
    ),
    (
        93,
        '2025-11-30 09:58:00',
        127,
        94,
        75.8,
        1.81,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2025-11-30 08:33:00',
        140,
        78,
        87.4,
        1.83,
        70, 'Dena ondo.'
    ),
    (
        95,
        '2025-11-30 08:57:00',
        125,
        81,
        89.3,
        1.77,
        70, 'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2025-11-30 09:35:00',
        126,
        82,
        77.4,
        1.71,
        74, 'Kirola egin ondoren.'
    ),
    (
        98,
        '2025-11-30 08:55:00',
        125,
        88,
        84.4,
        1.60,
        87, 'Dena ondo.'
    ),
    (
        99,
        '2025-11-30 09:03:00',
        129,
        85,
        86.9,
        1.71,
        86, 'Baraualdian.'
    ),
    (
        100,
        '2025-11-30 07:30:00',
        133,
        84,
        81.1,
        1.57,
        82, 'Baraualdian.'
    ),
    (
        51,
        '2025-12-01 08:12:00',
        131,
        84,
        63.0,
        1.76,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        52,
        '2025-12-01 07:15:00',
        132,
        79,
        93.1,
        1.77,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2025-12-01 08:39:00',
        125,
        80,
        75.5,
        1.75,
        86, 'Apur bat nekatuta.'
    ),
    (
        54,
        '2025-12-01 07:14:00',
        135,
        88,
        86.0,
        1.60,
        70, 'Apur bat nekatuta.'
    ),
    (
        55,
        '2025-12-01 09:44:00',
        134,
        79,
        81.8,
        1.76,
        92, 'Apur bat nekatuta.'
    ),
    (
        57,
        '2025-12-01 09:51:00',
        120,
        85,
        82.3,
        1.69,
        69, 'Kirola egin ondoren.'
    ),
    (
        58,
        '2025-12-01 09:42:00',
        140,
        88,
        67.8,
        1.68,
        70, 'Dena ondo.'
    ),
    (
        61,
        '2025-12-01 10:37:00',
        127,
        82,
        72.9,
        1.83,
        70, 'Apur bat nekatuta.'
    ),
    (
        62,
        '2025-12-01 09:27:00',
        125,
        76,
        65.9,
        1.56,
        68, 'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2025-12-01 09:01:00',
        125,
        82,
        80.3,
        1.80,
        90, 'Baraualdian.'
    ),
    (
        64,
        '2025-12-01 07:00:00',
        124,
        73,
        95.5,
        1.56,
        71, 'Baraualdian.'
    ),
    (
        65,
        '2025-12-01 10:20:00',
        138,
        83,
        91.9,
        1.55,
        79, 'Baraualdian.'
    ),
    (
        66,
        '2025-12-01 09:33:00',
        130,
        81,
        75.7,
        1.59,
        91, 'Gosariaren ondoren.'
    ),
    (
        67,
        '2025-12-01 10:08:00',
        145,
        89,
        71.6,
        1.72,
        89, 'Gosariaren ondoren.'
    ),
    (
        68,
        '2025-12-01 07:25:00',
        140,
        84,
        60.7,
        1.85,
        68, 'Apur bat nekatuta.'
    ),
    (
        69,
        '2025-12-01 09:15:00',
        141,
        90,
        94.2,
        1.66,
        69, 'Apur bat nekatuta.'
    ),
    (
        70,
        '2025-12-01 10:10:00',
        132,
        83,
        74.5,
        1.70,
        74, 'Dena ondo.'
    ),
    (
        71,
        '2025-12-01 08:22:00',
        125,
        84,
        88.9,
        1.63,
        65, 'Kirola egin ondoren.'
    ),
    (
        72,
        '2025-12-01 10:01:00',
        123,
        87,
        92.7,
        1.69,
        82, 'Gosariaren ondoren.'
    ),
    (
        73,
        '2025-12-01 10:53:00',
        119,
        71,
        95.9,
        1.55,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2025-12-01 09:20:00',
        123,
        90,
        64.9,
        1.67,
        78, 'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2025-12-01 08:14:00',
        128,
        81,
        65.8,
        1.69,
        92, 'Apur bat nekatuta.'
    ),
    (
        77,
        '2025-12-01 07:56:00',
        132,
        84,
        66.3,
        1.67,
        89, 'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2025-12-01 07:37:00',
        117,
        80,
        62.8,
        1.61,
        87, 'Baraualdian.'
    ),
    (
        79,
        '2025-12-01 07:30:00',
        140,
        79,
        67.8,
        1.67,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2025-12-01 08:40:00',
        138,
        90,
        63.3,
        1.78,
        69, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2025-12-01 09:29:00',
        134,
        95,
        85.0,
        1.58,
        92, 'Baraualdian.'
    ),
    (
        82,
        '2025-12-01 08:53:00',
        139,
        91,
        88.1,
        1.77,
        69, 'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2025-12-01 07:27:00',
        123,
        86,
        64.3,
        1.80,
        92, 'Gaur goizean neurtuta.'
    ),
    (
        86,
        '2025-12-01 08:46:00',
        126,
        82,
        68.3,
        1.57,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        87,
        '2025-12-01 08:55:00',
        141,
        88,
        72.3,
        1.61,
        75, 'Kirola egin ondoren.'
    ),
    (
        88,
        '2025-12-01 07:48:00',
        130,
        84,
        89.1,
        1.81,
        90, 'Ondo sentitzen naiz.'
    ),
    (
        91,
        '2025-12-01 08:38:00',
        129,
        80,
        89.2,
        1.58,
        87, 'Ondo sentitzen naiz.'
    ),
    (
        92,
        '2025-12-01 09:44:00',
        127,
        79,
        60.7,
        1.79,
        66, 'Gosariaren ondoren.'
    ),
    (
        93,
        '2025-12-01 07:30:00',
        136,
        81,
        75.6,
        1.81,
        90, 'Dena ondo.'
    ),
    (
        94,
        '2025-12-01 07:29:00',
        142,
        78,
        87.6,
        1.83,
        74, 'Ondo sentitzen naiz.'
    ),
    (
        95,
        '2025-12-01 07:45:00',
        133,
        72,
        89.1,
        1.77,
        92, 'Gosariaren ondoren.'
    ),
    (
        96,
        '2025-12-01 09:09:00',
        136,
        82,
        76.6,
        1.71,
        69, 'Dena ondo.'
    ),
    (
        97,
        '2025-12-01 09:22:00',
        130,
        71,
        88.0,
        1.56,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2025-12-01 09:12:00',
        137,
        86,
        84.5,
        1.60,
        74, 'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2025-12-01 07:03:00',
        123,
        74,
        82.5,
        1.57,
        73, 'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2025-12-02 09:17:00',
        140,
        83,
        64.7,
        1.76,
        70, 'Kirola egin ondoren.'
    ),
    (
        52,
        '2025-12-02 09:11:00',
        126,
        84,
        93.6,
        1.77,
        86, 'Baraualdian.'
    ),
    (
        53,
        '2025-12-02 08:05:00',
        129,
        89,
        74.8,
        1.75,
        66, 'Dena ondo.'
    ),
    (
        54,
        '2025-12-02 10:40:00',
        137,
        86,
        87.9,
        1.60,
        85, 'Ondo sentitzen naiz.'
    ),
    (
        55,
        '2025-12-02 07:19:00',
        138,
        79,
        81.2,
        1.76,
        72, 'Dena ondo.'
    ),
    (
        58,
        '2025-12-02 09:13:00',
        140,
        89,
        66.0,
        1.68,
        72, 'Gosariaren ondoren.'
    ),
    (
        59,
        '2025-12-02 09:57:00',
        124,
        91,
        63.7,
        1.73,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2025-12-02 09:44:00',
        129,
        81,
        72.6,
        1.83,
        78, 'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2025-12-02 10:21:00',
        128,
        78,
        81.7,
        1.80,
        70, 'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2025-12-02 09:45:00',
        140,
        84,
        95.5,
        1.56,
        91, 'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2025-12-02 10:12:00',
        117,
        91,
        74.6,
        1.59,
        74, 'Baraualdian.'
    ),
    (
        67,
        '2025-12-02 09:40:00',
        133,
        83,
        72.5,
        1.72,
        71, 'Apur bat nekatuta.'
    ),
    (
        68,
        '2025-12-02 09:07:00',
        123,
        79,
        61.5,
        1.85,
        94, 'Dena ondo.'
    ),
    (
        69,
        '2025-12-02 09:57:00',
        133,
        76,
        95.1,
        1.66,
        84, 'Gosariaren ondoren.'
    ),
    (
        70,
        '2025-12-02 08:59:00',
        119,
        76,
        74.1,
        1.70,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2025-12-02 07:10:00',
        138,
        75,
        88.1,
        1.63,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2025-12-02 08:09:00',
        127,
        85,
        92.3,
        1.69,
        89, 'Gosariaren ondoren.'
    ),
    (
        73,
        '2025-12-02 09:40:00',
        115,
        76,
        94.0,
        1.55,
        85, 'Apur bat nekatuta.'
    ),
    (
        76,
        '2025-12-02 07:47:00',
        112,
        89,
        67.0,
        1.69,
        73, 'Baraualdian.'
    ),
    (
        78,
        '2025-12-02 10:30:00',
        128,
        85,
        63.6,
        1.61,
        78, 'Gosariaren ondoren.'
    ),
    (
        80,
        '2025-12-02 09:09:00',
        126,
        86,
        64.0,
        1.78,
        89, 'Ondo sentitzen naiz.'
    ),
    (
        81,
        '2025-12-02 10:53:00',
        125,
        92,
        86.7,
        1.58,
        86, 'Kirola egin ondoren.'
    ),
    (
        82,
        '2025-12-02 09:30:00',
        135,
        92,
        88.6,
        1.77,
        92, 'Dena ondo.'
    ),
    (
        84,
        '2025-12-02 08:05:00',
        120,
        78,
        79.8,
        1.67,
        89, 'Dena ondo.'
    ),
    (
        85,
        '2025-12-02 08:09:00',
        124,
        93,
        80.1,
        1.72,
        70, 'Gosariaren ondoren.'
    ),
    (
        86,
        '2025-12-02 07:31:00',
        126,
        78,
        68.7,
        1.57,
        94, 'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2025-12-02 09:31:00',
        138,
        74,
        73.4,
        1.61,
        86, 'Apur bat nekatuta.'
    ),
    (
        88,
        '2025-12-02 10:32:00',
        119,
        81,
        89.8,
        1.81,
        71, 'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2025-12-02 08:34:00',
        125,
        85,
        90.6,
        1.58,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2025-12-02 09:51:00',
        132,
        93,
        60.5,
        1.79,
        69, 'Apur bat nekatuta.'
    ),
    (
        94,
        '2025-12-02 07:23:00',
        136,
        79,
        87.9,
        1.83,
        79, 'Dena ondo.'
    ),
    (
        95,
        '2025-12-02 10:51:00',
        131,
        84,
        89.1,
        1.77,
        89, 'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2025-12-02 07:17:00',
        127,
        88,
        77.3,
        1.71,
        66, 'Dena ondo.'
    ),
    (
        98,
        '2025-12-02 09:57:00',
        132,
        86,
        84.6,
        1.60,
        66, 'Gaur goizean neurtuta.'
    ),
    (
        99,
        '2025-12-02 07:07:00',
        131,
        86,
        86.0,
        1.71,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2025-12-02 09:43:00',
        122,
        76,
        81.6,
        1.57,
        94, 'Gosariaren ondoren.'
    ),
    (
        51,
        '2025-12-03 08:52:00',
        139,
        93,
        63.9,
        1.76,
        94, 'Baraualdian.'
    ),
    (
        52,
        '2025-12-03 07:10:00',
        126,
        90,
        93.0,
        1.77,
        86, 'Gosariaren ondoren.'
    ),
    (
        54,
        '2025-12-03 10:28:00',
        130,
        88,
        87.3,
        1.60,
        94, 'Apur bat nekatuta.'
    ),
    (
        56,
        '2025-12-03 08:33:00',
        142,
        93,
        90.8,
        1.61,
        88, 'Gosariaren ondoren.'
    ),
    (
        57,
        '2025-12-03 09:27:00',
        131,
        86,
        82.9,
        1.69,
        91, 'Apur bat nekatuta.'
    ),
    (
        58,
        '2025-12-03 10:50:00',
        127,
        86,
        67.4,
        1.68,
        85, 'Dena ondo.'
    ),
    (
        59,
        '2025-12-03 08:23:00',
        126,
        90,
        62.2,
        1.73,
        93, 'Baraualdian.'
    ),
    (
        60,
        '2025-12-03 07:34:00',
        128,
        84,
        78.1,
        1.81,
        88, 'Baraualdian.'
    ),
    (
        62,
        '2025-12-03 09:03:00',
        124,
        72,
        66.9,
        1.56,
        91, 'Apur bat nekatuta.'
    ),
    (
        64,
        '2025-12-03 07:10:00',
        126,
        82,
        96.0,
        1.56,
        68, 'Apur bat nekatuta.'
    ),
    (
        65,
        '2025-12-03 08:44:00',
        124,
        87,
        90.3,
        1.55,
        82, 'Gosariaren ondoren.'
    ),
    (
        67,
        '2025-12-03 08:05:00',
        136,
        77,
        71.1,
        1.72,
        92, 'Dena ondo.'
    ),
    (
        69,
        '2025-12-03 09:58:00',
        142,
        82,
        95.6,
        1.66,
        93, 'Baraualdian.'
    ),
    (
        70,
        '2025-12-03 07:59:00',
        120,
        87,
        75.7,
        1.70,
        92, 'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2025-12-03 07:45:00',
        129,
        76,
        88.1,
        1.63,
        79, 'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2025-12-03 09:13:00',
        112,
        81,
        94.8,
        1.55,
        70, 'Apur bat nekatuta.'
    ),
    (
        74,
        '2025-12-03 08:01:00',
        129,
        82,
        63.6,
        1.67,
        80, 'Kirola egin ondoren.'
    ),
    (
        75,
        '2025-12-03 09:03:00',
        142,
        80,
        59.1,
        1.65,
        88, 'Apur bat nekatuta.'
    ),
    (
        78,
        '2025-12-03 08:53:00',
        121,
        74,
        62.6,
        1.61,
        88, 'Dena ondo.'
    ),
    (
        79,
        '2025-12-03 10:47:00',
        134,
        82,
        67.5,
        1.67,
        92, 'Baraualdian.'
    ),
    (
        80,
        '2025-12-03 10:16:00',
        129,
        79,
        63.7,
        1.78,
        92, 'Dena ondo.'
    ),
    (
        82,
        '2025-12-03 07:12:00',
        130,
        83,
        89.8,
        1.77,
        91, 'Gosariaren ondoren.'
    ),
    (
        83,
        '2025-12-03 07:39:00',
        129,
        89,
        66.0,
        1.80,
        67, 'Baraualdian.'
    ),
    (
        84,
        '2025-12-03 08:54:00',
        129,
        79,
        78.8,
        1.67,
        78, 'Baraualdian.'
    ),
    (
        86,
        '2025-12-03 09:40:00',
        140,
        79,
        67.3,
        1.57,
        75, 'Dena ondo.'
    ),
    (
        88,
        '2025-12-03 07:42:00',
        126,
        75,
        89.7,
        1.81,
        87, 'Gosariaren ondoren.'
    ),
    (
        89,
        '2025-12-03 10:15:00',
        143,
        82,
        90.1,
        1.84,
        78, 'Ondo sentitzen naiz.'
    ),
    (
        91,
        '2025-12-03 09:08:00',
        128,
        80,
        90.5,
        1.58,
        86, 'Kirola egin ondoren.'
    ),
    (
        92,
        '2025-12-03 09:05:00',
        144,
        80,
        61.0,
        1.79,
        84, 'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2025-12-03 10:20:00',
        131,
        84,
        76.2,
        1.81,
        69, 'Gosariaren ondoren.'
    ),
    (
        94,
        '2025-12-03 10:35:00',
        128,
        77,
        86.7,
        1.83,
        78, 'Gosariaren ondoren.'
    ),
    (
        95,
        '2025-12-03 09:14:00',
        129,
        81,
        89.8,
        1.77,
        66, 'Baraualdian.'
    ),
    (
        96,
        '2025-12-03 09:32:00',
        119,
        77,
        76.6,
        1.71,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        98,
        '2025-12-03 08:05:00',
        138,
        90,
        84.9,
        1.60,
        78, 'Dena ondo.'
    ),
    (
        99,
        '2025-12-03 09:34:00',
        132,
        80,
        86.1,
        1.71,
        88, 'Apur bat nekatuta.'
    ),
    (
        100,
        '2025-12-03 10:41:00',
        139,
        85,
        81.1,
        1.57,
        68, 'Kirola egin ondoren.'
    ),
    (
        51,
        '2025-12-04 07:39:00',
        120,
        92,
        63.1,
        1.76,
        84, 'Kirola egin ondoren.'
    ),
    (
        52,
        '2025-12-04 09:20:00',
        132,
        94,
        94.2,
        1.77,
        91, 'Ondo sentitzen naiz.'
    ),
    (
        55,
        '2025-12-04 10:13:00',
        130,
        71,
        80.5,
        1.76,
        71, 'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2025-12-04 09:46:00',
        143,
        83,
        89.3,
        1.61,
        81, 'Apur bat nekatuta.'
    ),
    (
        57,
        '2025-12-04 07:44:00',
        133,
        86,
        83.6,
        1.69,
        80, 'Baraualdian.'
    ),
    (
        58,
        '2025-12-04 09:58:00',
        142,
        78,
        66.2,
        1.68,
        76, 'Gosariaren ondoren.'
    ),
    (
        59,
        '2025-12-04 08:14:00',
        122,
        81,
        62.1,
        1.73,
        91, 'Baraualdian.'
    ),
    (
        60,
        '2025-12-04 07:34:00',
        119,
        80,
        77.5,
        1.81,
        87, 'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2025-12-04 10:34:00',
        120,
        78,
        72.6,
        1.83,
        92, 'Apur bat nekatuta.'
    ),
    (
        62,
        '2025-12-04 09:20:00',
        136,
        72,
        66.9,
        1.56,
        71, 'Dena ondo.'
    ),
    (
        63,
        '2025-12-04 09:46:00',
        137,
        89,
        81.5,
        1.80,
        81, 'Baraualdian.'
    ),
    (
        64,
        '2025-12-04 07:02:00',
        139,
        82,
        95.0,
        1.56,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2025-12-04 10:53:00',
        134,
        78,
        90.4,
        1.55,
        82, 'Baraualdian.'
    ),
    (
        67,
        '2025-12-04 07:10:00',
        137,
        88,
        71.1,
        1.72,
        67, 'Kirola egin ondoren.'
    ),
    (
        68,
        '2025-12-04 07:22:00',
        140,
        87,
        60.6,
        1.85,
        65, 'Baraualdian.'
    ),
    (
        69,
        '2025-12-04 09:42:00',
        129,
        87,
        95.3,
        1.66,
        69, 'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-12-04 09:12:00',
        134,
        76,
        75.7,
        1.70,
        91, 'Apur bat nekatuta.'
    ),
    (
        71,
        '2025-12-04 08:38:00',
        134,
        71,
        88.5,
        1.63,
        86, 'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2025-12-04 07:57:00',
        139,
        86,
        92.7,
        1.69,
        81, 'Gosariaren ondoren.'
    ),
    (
        73,
        '2025-12-04 09:10:00',
        125,
        73,
        94.6,
        1.55,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2025-12-04 07:22:00',
        122,
        76,
        64.9,
        1.67,
        93, 'Baraualdian.'
    ),
    (
        75,
        '2025-12-04 09:00:00',
        143,
        78,
        60.3,
        1.65,
        71, 'Kirola egin ondoren.'
    ),
    (
        76,
        '2025-12-04 07:12:00',
        122,
        85,
        65.8,
        1.69,
        86, 'Dena ondo.'
    ),
    (
        77,
        '2025-12-04 07:47:00',
        124,
        90,
        67.7,
        1.67,
        84, 'Dena ondo.'
    ),
    (
        78,
        '2025-12-04 09:01:00',
        127,
        80,
        63.2,
        1.61,
        69, 'Apur bat nekatuta.'
    ),
    (
        79,
        '2025-12-04 10:27:00',
        131,
        80,
        66.7,
        1.67,
        67, 'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2025-12-04 09:14:00',
        139,
        86,
        63.3,
        1.78,
        91, 'Baraualdian.'
    ),
    (
        82,
        '2025-12-04 09:34:00',
        139,
        94,
        88.9,
        1.77,
        71, 'Gosariaren ondoren.'
    ),
    (
        84,
        '2025-12-04 09:47:00',
        130,
        79,
        79.8,
        1.67,
        71, 'Gosariaren ondoren.'
    ),
    (
        85,
        '2025-12-04 07:00:00',
        138,
        80,
        81.7,
        1.72,
        81, 'Apur bat nekatuta.'
    ),
    (
        87,
        '2025-12-04 07:58:00',
        128,
        86,
        73.9,
        1.61,
        88, 'Kirola egin ondoren.'
    ),
    (
        88,
        '2025-12-04 10:53:00',
        120,
        84,
        89.3,
        1.81,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        90,
        '2025-12-04 08:22:00',
        136,
        92,
        66.2,
        1.60,
        65, 'Apur bat nekatuta.'
    ),
    (
        91,
        '2025-12-04 10:35:00',
        133,
        79,
        90.7,
        1.58,
        75, 'Dena ondo.'
    ),
    (
        92,
        '2025-12-04 09:33:00',
        143,
        82,
        60.0,
        1.79,
        69, 'Gosariaren ondoren.'
    ),
    (
        94,
        '2025-12-04 07:04:00',
        137,
        85,
        86.9,
        1.83,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2025-12-04 09:51:00',
        125,
        79,
        90.5,
        1.77,
        83, 'Gosariaren ondoren.'
    ),
    (
        96,
        '2025-12-04 10:30:00',
        125,
        89,
        77.6,
        1.71,
        69, 'Gosariaren ondoren.'
    ),
    (
        98,
        '2025-12-04 10:42:00',
        137,
        89,
        83.3,
        1.60,
        94, 'Apur bat nekatuta.'
    ),
    (
        99,
        '2025-12-04 09:17:00',
        128,
        77,
        86.6,
        1.71,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2025-12-05 09:41:00',
        124,
        83,
        74.8,
        1.75,
        74, 'Dena ondo.'
    ),
    (
        54,
        '2025-12-05 09:24:00',
        139,
        81,
        86.1,
        1.60,
        77, 'Gosariaren ondoren.'
    ),
    (
        55,
        '2025-12-05 09:06:00',
        128,
        78,
        80.6,
        1.76,
        86, 'Dena ondo.'
    ),
    (
        57,
        '2025-12-05 09:26:00',
        122,
        93,
        83.1,
        1.69,
        84, 'Kirola egin ondoren.'
    ),
    (
        58,
        '2025-12-05 08:51:00',
        135,
        86,
        66.0,
        1.68,
        65, 'Kirola egin ondoren.'
    ),
    (
        59,
        '2025-12-05 07:55:00',
        126,
        92,
        63.8,
        1.73,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2025-12-05 09:09:00',
        130,
        85,
        77.9,
        1.81,
        79, 'Gosariaren ondoren.'
    ),
    (
        61,
        '2025-12-05 10:24:00',
        111,
        79,
        72.0,
        1.83,
        82, 'Kirola egin ondoren.'
    ),
    (
        62,
        '2025-12-05 07:01:00',
        131,
        71,
        66.2,
        1.56,
        84, 'Gosariaren ondoren.'
    ),
    (
        63,
        '2025-12-05 07:05:00',
        131,
        78,
        81.3,
        1.80,
        82, 'Gosariaren ondoren.'
    ),
    (
        65,
        '2025-12-05 07:38:00',
        131,
        82,
        90.1,
        1.55,
        93, 'Dena ondo.'
    ),
    (
        66,
        '2025-12-05 07:26:00',
        126,
        76,
        74.9,
        1.59,
        87, 'Baraualdian.'
    ),
    (
        67,
        '2025-12-05 09:37:00',
        129,
        90,
        72.3,
        1.72,
        79, 'Kirola egin ondoren.'
    ),
    (
        68,
        '2025-12-05 09:09:00',
        137,
        75,
        60.4,
        1.85,
        65, 'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-12-05 09:47:00',
        135,
        78,
        74.2,
        1.70,
        83, 'Kirola egin ondoren.'
    ),
    (
        71,
        '2025-12-05 08:55:00',
        124,
        72,
        89.2,
        1.63,
        82, 'Gosariaren ondoren.'
    ),
    (
        72,
        '2025-12-05 08:21:00',
        136,
        86,
        91.4,
        1.69,
        84, 'Apur bat nekatuta.'
    ),
    (
        73,
        '2025-12-05 10:03:00',
        112,
        77,
        95.4,
        1.55,
        89, 'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2025-12-05 09:25:00',
        123,
        84,
        63.5,
        1.67,
        66, 'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2025-12-05 08:11:00',
        138,
        77,
        60.5,
        1.65,
        88, 'Apur bat nekatuta.'
    ),
    (
        76,
        '2025-12-05 08:15:00',
        130,
        80,
        66.1,
        1.69,
        77, 'Dena ondo.'
    ),
    (
        77,
        '2025-12-05 09:59:00',
        134,
        93,
        66.4,
        1.67,
        90, 'Apur bat nekatuta.'
    ),
    (
        78,
        '2025-12-05 08:26:00',
        122,
        74,
        62.3,
        1.61,
        72, 'Apur bat nekatuta.'
    ),
    (
        79,
        '2025-12-05 08:24:00',
        136,
        88,
        66.0,
        1.67,
        88, 'Apur bat nekatuta.'
    ),
    (
        81,
        '2025-12-05 08:00:00',
        123,
        93,
        85.5,
        1.58,
        92, 'Baraualdian.'
    ),
    (
        82,
        '2025-12-05 08:23:00',
        141,
        90,
        90.0,
        1.77,
        69, 'Baraualdian.'
    ),
    (
        84,
        '2025-12-05 09:33:00',
        120,
        88,
        79.0,
        1.67,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        85,
        '2025-12-05 10:31:00',
        125,
        90,
        81.5,
        1.72,
        83, 'Baraualdian.'
    ),
    (
        86,
        '2025-12-05 07:08:00',
        139,
        80,
        67.7,
        1.57,
        68, 'Kirola egin ondoren.'
    ),
    (
        87,
        '2025-12-05 09:10:00',
        140,
        78,
        73.5,
        1.61,
        66, 'Baraualdian.'
    ),
    (
        88,
        '2025-12-05 10:04:00',
        113,
        80,
        90.7,
        1.81,
        92, 'Apur bat nekatuta.'
    ),
    (
        89,
        '2025-12-05 09:17:00',
        137,
        86,
        90.9,
        1.84,
        68, 'Apur bat nekatuta.'
    ),
    (
        90,
        '2025-12-05 10:01:00',
        137,
        83,
        66.8,
        1.60,
        66, 'Baraualdian.'
    ),
    (
        92,
        '2025-12-05 09:54:00',
        141,
        86,
        59.6,
        1.79,
        71, 'Kirola egin ondoren.'
    ),
    (
        93,
        '2025-12-05 07:16:00',
        141,
        83,
        75.2,
        1.81,
        87, 'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2025-12-05 10:02:00',
        138,
        81,
        86.7,
        1.83,
        92, 'Apur bat nekatuta.'
    ),
    (
        96,
        '2025-12-05 07:09:00',
        128,
        82,
        77.0,
        1.71,
        65, 'Dena ondo.'
    ),
    (
        97,
        '2025-12-05 08:35:00',
        132,
        71,
        86.4,
        1.56,
        74, 'Baraualdian.'
    ),
    (
        98,
        '2025-12-05 07:43:00',
        120,
        75,
        84.4,
        1.60,
        71, 'Dena ondo.'
    ),
    (
        99,
        '2025-12-05 10:37:00',
        117,
        88,
        86.0,
        1.71,
        89, 'Baraualdian.'
    ),
    (
        100,
        '2025-12-05 08:31:00',
        139,
        79,
        82.7,
        1.57,
        93, 'Dena ondo.'
    ),
    (
        52,
        '2025-12-06 07:42:00',
        130,
        87,
        94.1,
        1.77,
        93, 'Kirola egin ondoren.'
    ),
    (
        53,
        '2025-12-06 10:10:00',
        130,
        84,
        75.0,
        1.75,
        72, 'Baraualdian.'
    ),
    (
        54,
        '2025-12-06 09:21:00',
        138,
        87,
        87.6,
        1.60,
        86, 'Gosariaren ondoren.'
    ),
    (
        55,
        '2025-12-06 07:51:00',
        124,
        78,
        81.1,
        1.76,
        80, 'Baraualdian.'
    ),
    (
        56,
        '2025-12-06 09:09:00',
        142,
        91,
        90.2,
        1.61,
        77, 'Kirola egin ondoren.'
    ),
    (
        57,
        '2025-12-06 10:01:00',
        119,
        88,
        83.5,
        1.69,
        76, 'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2025-12-06 08:09:00',
        129,
        75,
        67.4,
        1.68,
        87, 'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2025-12-06 09:23:00',
        117,
        87,
        63.7,
        1.73,
        86, 'Apur bat nekatuta.'
    ),
    (
        60,
        '2025-12-06 08:42:00',
        118,
        87,
        78.8,
        1.81,
        73, 'Baraualdian.'
    ),
    (
        61,
        '2025-12-06 10:23:00',
        113,
        85,
        72.8,
        1.83,
        65, 'Baraualdian.'
    ),
    (
        62,
        '2025-12-06 07:31:00',
        121,
        75,
        66.5,
        1.56,
        92, 'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2025-12-06 10:20:00',
        124,
        89,
        82.0,
        1.80,
        86, 'Gaur goizean neurtuta.'
    ),
    (
        64,
        '2025-12-06 08:45:00',
        124,
        80,
        95.0,
        1.56,
        87, 'Apur bat nekatuta.'
    ),
    (
        65,
        '2025-12-06 08:12:00',
        131,
        88,
        91.2,
        1.55,
        84, 'Baraualdian.'
    ),
    (
        66,
        '2025-12-06 09:17:00',
        124,
        87,
        75.5,
        1.59,
        88, 'Gosariaren ondoren.'
    ),
    (
        67,
        '2025-12-06 10:36:00',
        129,
        86,
        72.0,
        1.72,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        68,
        '2025-12-06 10:51:00',
        123,
        84,
        60.7,
        1.85,
        71, 'Baraualdian.'
    ),
    (
        69,
        '2025-12-06 08:31:00',
        135,
        88,
        95.8,
        1.66,
        82, 'Baraualdian.'
    ),
    (
        70,
        '2025-12-06 10:21:00',
        134,
        88,
        74.4,
        1.70,
        80, 'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2025-12-06 10:32:00',
        131,
        83,
        89.0,
        1.63,
        86, 'Kirola egin ondoren.'
    ),
    (
        72,
        '2025-12-06 07:44:00',
        129,
        77,
        92.6,
        1.69,
        66, 'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2025-12-06 07:33:00',
        112,
        86,
        95.7,
        1.55,
        91, 'Ondo sentitzen naiz.'
    ),
    (
        75,
        '2025-12-06 09:52:00',
        134,
        84,
        60.7,
        1.65,
        72, 'Dena ondo.'
    ),
    (
        76,
        '2025-12-06 10:37:00',
        117,
        87,
        66.5,
        1.69,
        83, 'Baraualdian.'
    ),
    (
        77,
        '2025-12-06 09:41:00',
        137,
        91,
        67.4,
        1.67,
        83, 'Gosariaren ondoren.'
    ),
    (
        79,
        '2025-12-06 08:54:00',
        134,
        85,
        66.8,
        1.67,
        92, 'Gosariaren ondoren.'
    ),
    (
        80,
        '2025-12-06 10:24:00',
        125,
        90,
        62.1,
        1.78,
        91, 'Ondo sentitzen naiz.'
    ),
    (
        81,
        '2025-12-06 10:08:00',
        134,
        89,
        86.6,
        1.58,
        71, 'Apur bat nekatuta.'
    ),
    (
        82,
        '2025-12-06 10:07:00',
        131,
        82,
        89.7,
        1.77,
        66, 'Baraualdian.'
    ),
    (
        83,
        '2025-12-06 09:46:00',
        126,
        91,
        65.3,
        1.80,
        76, 'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2025-12-06 10:52:00',
        132,
        79,
        78.3,
        1.67,
        87, 'Ondo sentitzen naiz.'
    ),
    (
        85,
        '2025-12-06 08:03:00',
        125,
        81,
        81.1,
        1.72,
        78, 'Gosariaren ondoren.'
    ),
    (
        86,
        '2025-12-06 07:59:00',
        127,
        81,
        67.4,
        1.57,
        66, 'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2025-12-06 08:02:00',
        140,
        80,
        73.2,
        1.61,
        85, 'Kirola egin ondoren.'
    ),
    (
        88,
        '2025-12-06 07:08:00',
        124,
        75,
        89.7,
        1.81,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2025-12-06 10:48:00',
        131,
        85,
        91.7,
        1.84,
        69, 'Kirola egin ondoren.'
    ),
    (
        90,
        '2025-12-06 08:44:00',
        138,
        84,
        65.6,
        1.60,
        91, 'Kirola egin ondoren.'
    ),
    (
        91,
        '2025-12-06 07:17:00',
        135,
        87,
        90.6,
        1.58,
        90, 'Apur bat nekatuta.'
    ),
    (
        92,
        '2025-12-06 08:30:00',
        135,
        89,
        59.9,
        1.79,
        66, 'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2025-12-06 09:58:00',
        127,
        90,
        76.7,
        1.81,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2025-12-06 09:51:00',
        137,
        83,
        89.7,
        1.77,
        66, 'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2025-12-06 07:18:00',
        123,
        88,
        77.1,
        1.71,
        66, 'Gaur goizean neurtuta.'
    ),
    (
        99,
        '2025-12-06 08:13:00',
        136,
        75,
        85.3,
        1.71,
        68, 'Baraualdian.'
    ),
    (
        100,
        '2025-12-06 08:40:00',
        120,
        78,
        81.7,
        1.57,
        77, 'Gosariaren ondoren.'
    ),
    (
        52,
        '2025-12-07 08:26:00',
        125,
        89,
        94.6,
        1.77,
        77, 'Ondo sentitzen naiz.'
    ),
    (
        53,
        '2025-12-07 09:45:00',
        123,
        79,
        74.7,
        1.75,
        74, 'Gosariaren ondoren.'
    ),
    (
        54,
        '2025-12-07 07:45:00',
        141,
        79,
        86.0,
        1.60,
        86, 'Ondo sentitzen naiz.'
    ),
    (
        55,
        '2025-12-07 08:54:00',
        137,
        72,
        80.2,
        1.76,
        86, 'Apur bat nekatuta.'
    ),
    (
        57,
        '2025-12-07 09:06:00',
        135,
        88,
        83.6,
        1.69,
        80, 'Baraualdian.'
    ),
    (
        58,
        '2025-12-07 10:59:00',
        125,
        77,
        67.9,
        1.68,
        79, 'Apur bat nekatuta.'
    ),
    (
        59,
        '2025-12-07 10:55:00',
        117,
        85,
        62.1,
        1.73,
        68, 'Kirola egin ondoren.'
    ),
    (
        60,
        '2025-12-07 07:53:00',
        123,
        95,
        78.9,
        1.81,
        94, 'Gosariaren ondoren.'
    ),
    (
        61,
        '2025-12-07 08:27:00',
        125,
        93,
        72.0,
        1.83,
        66, 'Dena ondo.'
    ),
    (
        62,
        '2025-12-07 08:17:00',
        134,
        72,
        66.8,
        1.56,
        72, 'Dena ondo.'
    ),
    (
        63,
        '2025-12-07 08:08:00',
        124,
        86,
        82.0,
        1.80,
        69, 'Dena ondo.'
    ),
    (
        65,
        '2025-12-07 08:53:00',
        126,
        79,
        90.0,
        1.55,
        72, 'Apur bat nekatuta.'
    ),
    (
        66,
        '2025-12-07 07:08:00',
        123,
        85,
        74.0,
        1.59,
        87, 'Gosariaren ondoren.'
    ),
    (
        68,
        '2025-12-07 09:16:00',
        124,
        80,
        60.1,
        1.85,
        67, 'Gosariaren ondoren.'
    ),
    (
        69,
        '2025-12-07 09:42:00',
        126,
        80,
        95.2,
        1.66,
        88, 'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-12-07 10:24:00',
        124,
        88,
        75.6,
        1.70,
        84, 'Dena ondo.'
    ),
    (
        72,
        '2025-12-07 10:54:00',
        133,
        75,
        91.7,
        1.69,
        65, 'Baraualdian.'
    ),
    (
        73,
        '2025-12-07 10:19:00',
        126,
        86,
        95.1,
        1.55,
        92, 'Apur bat nekatuta.'
    ),
    (
        74,
        '2025-12-07 08:42:00',
        118,
        86,
        65.0,
        1.67,
        71, 'Apur bat nekatuta.'
    ),
    (
        75,
        '2025-12-07 09:38:00',
        127,
        82,
        59.0,
        1.65,
        65, 'Apur bat nekatuta.'
    ),
    (
        76,
        '2025-12-07 09:41:00',
        119,
        94,
        66.5,
        1.69,
        66, 'Baraualdian.'
    ),
    (
        77,
        '2025-12-07 07:07:00',
        138,
        79,
        66.9,
        1.67,
        77, 'Kirola egin ondoren.'
    ),
    (
        78,
        '2025-12-07 07:27:00',
        120,
        86,
        63.6,
        1.61,
        86, 'Kirola egin ondoren.'
    ),
    (
        79,
        '2025-12-07 07:16:00',
        123,
        77,
        67.5,
        1.67,
        65, 'Gosariaren ondoren.'
    ),
    (
        80,
        '2025-12-07 08:16:00',
        136,
        81,
        62.2,
        1.78,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2025-12-07 09:30:00',
        131,
        87,
        65.5,
        1.80,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2025-12-07 08:47:00',
        126,
        84,
        79.9,
        1.67,
        90, 'Baraualdian.'
    ),
    (
        85,
        '2025-12-07 09:54:00',
        124,
        84,
        82.0,
        1.72,
        78, 'Apur bat nekatuta.'
    ),
    (
        87,
        '2025-12-07 08:56:00',
        139,
        83,
        73.4,
        1.61,
        66, 'Kirola egin ondoren.'
    ),
    (
        88,
        '2025-12-07 10:32:00',
        116,
        74,
        90.5,
        1.81,
        65, 'Ondo sentitzen naiz.'
    ),
    (
        89,
        '2025-12-07 07:39:00',
        135,
        92,
        91.2,
        1.84,
        81, 'Dena ondo.'
    ),
    (
        90,
        '2025-12-07 07:37:00',
        122,
        93,
        66.0,
        1.60,
        88, 'Dena ondo.'
    ),
    (
        91,
        '2025-12-07 07:25:00',
        132,
        91,
        90.7,
        1.58,
        77, 'Kirola egin ondoren.'
    ),
    (
        93,
        '2025-12-07 07:38:00',
        129,
        81,
        76.3,
        1.81,
        84, 'Kirola egin ondoren.'
    ),
    (
        94,
        '2025-12-07 07:43:00',
        128,
        78,
        87.4,
        1.83,
        88, 'Ondo sentitzen naiz.'
    ),
    (
        95,
        '2025-12-07 07:57:00',
        138,
        75,
        89.2,
        1.77,
        73, 'Apur bat nekatuta.'
    ),
    (
        96,
        '2025-12-07 08:56:00',
        117,
        88,
        76.4,
        1.71,
        70, 'Kirola egin ondoren.'
    ),
    (
        97,
        '2025-12-07 08:07:00',
        134,
        71,
        88.0,
        1.56,
        86, 'Apur bat nekatuta.'
    ),
    (
        98,
        '2025-12-07 08:02:00',
        124,
        84,
        84.3,
        1.60,
        82, 'Kirola egin ondoren.'
    ),
    (
        99,
        '2025-12-07 08:49:00',
        135,
        76,
        86.7,
        1.71,
        89, 'Dena ondo.'
    ),
    (
        100,
        '2025-12-07 08:35:00',
        132,
        79,
        82.4,
        1.57,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        51,
        '2025-12-08 07:09:00',
        121,
        85,
        63.7,
        1.76,
        77, 'Dena ondo.'
    ),
    (
        52,
        '2025-12-08 08:28:00',
        137,
        82,
        94.6,
        1.77,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2025-12-08 08:22:00',
        124,
        93,
        74.0,
        1.75,
        76, 'Gosariaren ondoren.'
    ),
    (
        55,
        '2025-12-08 07:10:00',
        137,
        84,
        81.0,
        1.76,
        93, 'Apur bat nekatuta.'
    ),
    (
        56,
        '2025-12-08 07:31:00',
        138,
        86,
        89.5,
        1.61,
        71, 'Gaur goizean neurtuta.'
    ),
    (
        57,
        '2025-12-08 07:09:00',
        126,
        80,
        82.8,
        1.69,
        89, 'Kirola egin ondoren.'
    ),
    (
        58,
        '2025-12-08 10:45:00',
        125,
        79,
        66.3,
        1.68,
        76, 'Dena ondo.'
    ),
    (
        59,
        '2025-12-08 10:04:00',
        117,
        91,
        63.4,
        1.73,
        71, 'Dena ondo.'
    ),
    (
        60,
        '2025-12-08 07:51:00',
        118,
        87,
        78.1,
        1.81,
        71, 'Gosariaren ondoren.'
    ),
    (
        61,
        '2025-12-08 09:44:00',
        122,
        85,
        73.8,
        1.83,
        90, 'Apur bat nekatuta.'
    ),
    (
        62,
        '2025-12-08 10:59:00',
        122,
        76,
        66.1,
        1.56,
        91, 'Gosariaren ondoren.'
    ),
    (
        63,
        '2025-12-08 10:22:00',
        144,
        83,
        81.6,
        1.80,
        71, 'Dena ondo.'
    ),
    (
        65,
        '2025-12-08 09:17:00',
        131,
        91,
        91.1,
        1.55,
        66, 'Dena ondo.'
    ),
    (
        66,
        '2025-12-08 07:39:00',
        120,
        84,
        74.2,
        1.59,
        65, 'Kirola egin ondoren.'
    ),
    (
        67,
        '2025-12-08 07:29:00',
        127,
        79,
        73.0,
        1.72,
        94, 'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-12-08 07:27:00',
        116,
        88,
        74.5,
        1.70,
        83, 'Baraualdian.'
    ),
    (
        71,
        '2025-12-08 08:08:00',
        129,
        77,
        88.6,
        1.63,
        71, 'Dena ondo.'
    ),
    (
        72,
        '2025-12-08 07:29:00',
        137,
        80,
        92.4,
        1.69,
        70, 'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2025-12-08 08:54:00',
        128,
        75,
        95.0,
        1.55,
        65, 'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2025-12-08 07:03:00',
        119,
        89,
        64.3,
        1.67,
        86, 'Dena ondo.'
    ),
    (
        76,
        '2025-12-08 07:26:00',
        120,
        92,
        65.8,
        1.69,
        91, 'Kirola egin ondoren.'
    ),
    (
        77,
        '2025-12-08 10:02:00',
        126,
        79,
        67.5,
        1.67,
        76, 'Dena ondo.'
    ),
    (
        78,
        '2025-12-08 09:30:00',
        130,
        85,
        63.7,
        1.61,
        77, 'Kirola egin ondoren.'
    ),
    (
        79,
        '2025-12-08 09:07:00',
        142,
        78,
        66.8,
        1.67,
        81, 'Kirola egin ondoren.'
    ),
    (
        80,
        '2025-12-08 09:14:00',
        119,
        87,
        63.8,
        1.78,
        80, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2025-12-08 08:48:00',
        128,
        85,
        85.1,
        1.58,
        92, 'Dena ondo.'
    ),
    (
        82,
        '2025-12-08 07:16:00',
        135,
        81,
        89.7,
        1.77,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        83,
        '2025-12-08 09:47:00',
        116,
        88,
        65.5,
        1.80,
        91, 'Gosariaren ondoren.'
    ),
    (
        84,
        '2025-12-08 10:36:00',
        137,
        83,
        78.8,
        1.67,
        79, 'Kirola egin ondoren.'
    ),
    (
        85,
        '2025-12-08 08:48:00',
        134,
        92,
        81.8,
        1.72,
        85, 'Gosariaren ondoren.'
    ),
    (
        86,
        '2025-12-08 09:49:00',
        132,
        73,
        68.3,
        1.57,
        65, 'Kirola egin ondoren.'
    ),
    (
        87,
        '2025-12-08 08:10:00',
        137,
        85,
        72.9,
        1.61,
        68, 'Gaur goizean neurtuta.'
    ),
    (
        88,
        '2025-12-08 09:39:00',
        119,
        81,
        90.6,
        1.81,
        87, 'Apur bat nekatuta.'
    ),
    (
        89,
        '2025-12-08 08:39:00',
        138,
        79,
        90.9,
        1.84,
        92, 'Dena ondo.'
    ),
    (
        92,
        '2025-12-08 07:21:00',
        128,
        93,
        60.4,
        1.79,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2025-12-08 10:41:00',
        133,
        86,
        76.6,
        1.81,
        72, 'Baraualdian.'
    ),
    (
        94,
        '2025-12-08 09:39:00',
        127,
        86,
        86.6,
        1.83,
        69, 'Apur bat nekatuta.'
    ),
    (
        95,
        '2025-12-08 09:57:00',
        137,
        82,
        89.0,
        1.77,
        69, 'Dena ondo.'
    ),
    (
        97,
        '2025-12-08 07:36:00',
        128,
        86,
        86.3,
        1.56,
        70, 'Apur bat nekatuta.'
    ),
    (
        98,
        '2025-12-08 08:18:00',
        126,
        79,
        84.1,
        1.60,
        82, 'Kirola egin ondoren.'
    ),
    (
        99,
        '2025-12-08 10:26:00',
        134,
        88,
        85.9,
        1.71,
        81, 'Gosariaren ondoren.'
    ),
    (
        100,
        '2025-12-08 10:46:00',
        131,
        74,
        82.5,
        1.57,
        84, 'Baraualdian.'
    ),
    (
        51,
        '2025-12-09 10:33:00',
        125,
        80,
        63.8,
        1.76,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2025-12-09 10:50:00',
        125,
        78,
        75.3,
        1.75,
        70, 'Dena ondo.'
    ),
    (
        54,
        '2025-12-09 09:50:00',
        125,
        79,
        87.7,
        1.60,
        85, 'Gosariaren ondoren.'
    ),
    (
        55,
        '2025-12-09 09:33:00',
        131,
        82,
        80.6,
        1.76,
        90, 'Baraualdian.'
    ),
    (
        57,
        '2025-12-09 07:23:00',
        135,
        87,
        82.3,
        1.69,
        92, 'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2025-12-09 10:27:00',
        125,
        77,
        66.3,
        1.68,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2025-12-09 10:53:00',
        117,
        90,
        63.2,
        1.73,
        91, 'Ondo sentitzen naiz.'
    ),
    (
        60,
        '2025-12-09 09:30:00',
        128,
        88,
        77.1,
        1.81,
        86, 'Baraualdian.'
    ),
    (
        61,
        '2025-12-09 10:48:00',
        126,
        88,
        72.6,
        1.83,
        84, 'Baraualdian.'
    ),
    (
        62,
        '2025-12-09 08:42:00',
        124,
        80,
        65.6,
        1.56,
        73, 'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-12-09 08:20:00',
        133,
        80,
        81.0,
        1.80,
        90, 'Baraualdian.'
    ),
    (
        64,
        '2025-12-09 09:10:00',
        139,
        84,
        95.1,
        1.56,
        67, 'Kirola egin ondoren.'
    ),
    (
        65,
        '2025-12-09 10:18:00',
        122,
        87,
        90.2,
        1.55,
        91, 'Kirola egin ondoren.'
    ),
    (
        66,
        '2025-12-09 10:14:00',
        118,
        85,
        75.8,
        1.59,
        92, 'Apur bat nekatuta.'
    ),
    (
        67,
        '2025-12-09 10:41:00',
        131,
        84,
        71.5,
        1.72,
        75, 'Apur bat nekatuta.'
    ),
    (
        68,
        '2025-12-09 09:37:00',
        124,
        73,
        60.4,
        1.85,
        65, 'Apur bat nekatuta.'
    ),
    (
        69,
        '2025-12-09 07:49:00',
        133,
        91,
        95.3,
        1.66,
        94, 'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2025-12-09 08:45:00',
        121,
        75,
        75.8,
        1.70,
        86, 'Kirola egin ondoren.'
    ),
    (
        71,
        '2025-12-09 10:55:00',
        138,
        82,
        88.8,
        1.63,
        67, 'Gosariaren ondoren.'
    ),
    (
        72,
        '2025-12-09 09:59:00',
        139,
        77,
        91.3,
        1.69,
        72, 'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2025-12-09 09:17:00',
        119,
        79,
        95.0,
        1.55,
        70, 'Baraualdian.'
    ),
    (
        75,
        '2025-12-09 07:51:00',
        134,
        82,
        60.4,
        1.65,
        75, 'Apur bat nekatuta.'
    ),
    (
        76,
        '2025-12-09 08:13:00',
        114,
        82,
        65.8,
        1.69,
        85, 'Kirola egin ondoren.'
    ),
    (
        78,
        '2025-12-09 09:37:00',
        132,
        80,
        62.5,
        1.61,
        90, 'Ondo sentitzen naiz.'
    ),
    (
        79,
        '2025-12-09 07:35:00',
        128,
        81,
        66.2,
        1.67,
        86, 'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2025-12-09 10:03:00',
        136,
        81,
        62.4,
        1.78,
        82, 'Gosariaren ondoren.'
    ),
    (
        82,
        '2025-12-09 10:23:00',
        142,
        80,
        89.7,
        1.77,
        84, 'Dena ondo.'
    ),
    (
        84,
        '2025-12-09 08:18:00',
        132,
        83,
        80.0,
        1.67,
        93, 'Dena ondo.'
    ),
    (
        85,
        '2025-12-09 10:59:00',
        131,
        89,
        80.0,
        1.72,
        78, 'Gosariaren ondoren.'
    ),
    (
        86,
        '2025-12-09 09:59:00',
        139,
        74,
        68.7,
        1.57,
        86, 'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2025-12-09 10:56:00',
        125,
        85,
        72.8,
        1.61,
        66, 'Gosariaren ondoren.'
    ),
    (
        89,
        '2025-12-09 09:15:00',
        131,
        80,
        91.3,
        1.84,
        77, 'Ondo sentitzen naiz.'
    ),
    (
        91,
        '2025-12-09 09:07:00',
        125,
        80,
        90.0,
        1.58,
        82, 'Apur bat nekatuta.'
    ),
    (
        93,
        '2025-12-09 08:49:00',
        138,
        88,
        76.6,
        1.81,
        92, 'Kirola egin ondoren.'
    ),
    (
        94,
        '2025-12-09 08:27:00',
        142,
        83,
        86.0,
        1.83,
        91, 'Dena ondo.'
    ),
    (
        95,
        '2025-12-09 07:48:00',
        125,
        74,
        90.4,
        1.77,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2025-12-09 08:52:00',
        130,
        76,
        76.1,
        1.71,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2025-12-09 10:07:00',
        139,
        75,
        86.8,
        1.56,
        69, 'Dena ondo.'
    ),
    (
        99,
        '2025-12-09 09:21:00',
        130,
        81,
        86.7,
        1.71,
        71, 'Apur bat nekatuta.'
    ),
    (
        51,
        '2025-12-10 07:58:00',
        133,
        83,
        63.5,
        1.76,
        68, 'Ondo sentitzen naiz.'
    ),
    (
        53,
        '2025-12-10 09:59:00',
        119,
        78,
        74.3,
        1.75,
        76, 'Dena ondo.'
    ),
    (
        54,
        '2025-12-10 09:02:00',
        142,
        86,
        87.4,
        1.60,
        89, 'Baraualdian.'
    ),
    (
        55,
        '2025-12-10 10:02:00',
        127,
        78,
        81.2,
        1.76,
        91, 'Apur bat nekatuta.'
    ),
    (
        57,
        '2025-12-10 08:03:00',
        136,
        88,
        82.9,
        1.69,
        86, 'Baraualdian.'
    ),
    (
        58,
        '2025-12-10 07:29:00',
        139,
        82,
        67.6,
        1.68,
        90, 'Apur bat nekatuta.'
    ),
    (
        59,
        '2025-12-10 09:20:00',
        117,
        84,
        63.7,
        1.73,
        89, 'Dena ondo.'
    ),
    (
        61,
        '2025-12-10 08:20:00',
        130,
        78,
        72.1,
        1.83,
        79, 'Dena ondo.'
    ),
    (
        62,
        '2025-12-10 09:30:00',
        123,
        78,
        66.4,
        1.56,
        89, 'Kirola egin ondoren.'
    ),
    (
        63,
        '2025-12-10 10:55:00',
        139,
        89,
        80.1,
        1.80,
        73, 'Kirola egin ondoren.'
    ),
    (
        65,
        '2025-12-10 09:46:00',
        127,
        85,
        90.8,
        1.55,
        87, 'Apur bat nekatuta.'
    ),
    (
        66,
        '2025-12-10 07:10:00',
        136,
        78,
        74.8,
        1.59,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2025-12-10 07:04:00',
        135,
        87,
        72.8,
        1.72,
        88, 'Kirola egin ondoren.'
    ),
    (
        68,
        '2025-12-10 08:47:00',
        137,
        72,
        60.0,
        1.85,
        75, 'Gosariaren ondoren.'
    ),
    (
        69,
        '2025-12-10 08:28:00',
        136,
        86,
        94.5,
        1.66,
        78, 'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-12-10 09:38:00',
        126,
        76,
        74.9,
        1.70,
        67, 'Dena ondo.'
    ),
    (
        71,
        '2025-12-10 08:45:00',
        140,
        82,
        89.0,
        1.63,
        67, 'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2025-12-10 09:48:00',
        130,
        76,
        93.0,
        1.69,
        80, 'Dena ondo.'
    ),
    (
        73,
        '2025-12-10 08:51:00',
        122,
        71,
        95.5,
        1.55,
        93, 'Baraualdian.'
    ),
    (
        74,
        '2025-12-10 09:58:00',
        118,
        77,
        64.6,
        1.67,
        76, 'Dena ondo.'
    ),
    (
        75,
        '2025-12-10 09:18:00',
        144,
        71,
        59.4,
        1.65,
        67, 'Kirola egin ondoren.'
    ),
    (
        76,
        '2025-12-10 08:32:00',
        124,
        89,
        66.3,
        1.69,
        73, 'Kirola egin ondoren.'
    ),
    (
        77,
        '2025-12-10 09:27:00',
        141,
        85,
        66.4,
        1.67,
        76, 'Apur bat nekatuta.'
    ),
    (
        78,
        '2025-12-10 08:34:00',
        133,
        76,
        64.0,
        1.61,
        86, 'Kirola egin ondoren.'
    ),
    (
        80,
        '2025-12-10 07:17:00',
        135,
        87,
        63.3,
        1.78,
        67, 'Baraualdian.'
    ),
    (
        81,
        '2025-12-10 08:04:00',
        123,
        92,
        87.0,
        1.58,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2025-12-10 08:18:00',
        137,
        88,
        88.4,
        1.77,
        73, 'Kirola egin ondoren.'
    ),
    (
        83,
        '2025-12-10 08:57:00',
        124,
        92,
        64.2,
        1.80,
        76, 'Dena ondo.'
    ),
    (
        84,
        '2025-12-10 09:16:00',
        129,
        90,
        78.3,
        1.67,
        93, 'Baraualdian.'
    ),
    (
        85,
        '2025-12-10 08:58:00',
        138,
        92,
        81.3,
        1.72,
        87, 'Baraualdian.'
    ),
    (
        86,
        '2025-12-10 07:33:00',
        131,
        79,
        67.8,
        1.57,
        90, 'Dena ondo.'
    ),
    (
        87,
        '2025-12-10 08:58:00',
        128,
        87,
        73.0,
        1.61,
        92, 'Apur bat nekatuta.'
    ),
    (
        88,
        '2025-12-10 09:35:00',
        121,
        81,
        90.7,
        1.81,
        86, 'Gosariaren ondoren.'
    ),
    (
        89,
        '2025-12-10 07:27:00',
        124,
        92,
        91.6,
        1.84,
        84, 'Baraualdian.'
    ),
    (
        90,
        '2025-12-10 07:14:00',
        132,
        87,
        65.7,
        1.60,
        80, 'Kirola egin ondoren.'
    ),
    (
        92,
        '2025-12-10 07:00:00',
        140,
        83,
        59.0,
        1.79,
        65, 'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2025-12-10 09:59:00',
        124,
        80,
        75.2,
        1.81,
        81, 'Dena ondo.'
    ),
    (
        94,
        '2025-12-10 10:37:00',
        131,
        85,
        86.2,
        1.83,
        73, 'Dena ondo.'
    ),
    (
        95,
        '2025-12-10 09:44:00',
        144,
        73,
        89.6,
        1.77,
        81, 'Apur bat nekatuta.'
    ),
    (
        97,
        '2025-12-10 07:38:00',
        125,
        76,
        87.3,
        1.56,
        90, 'Apur bat nekatuta.'
    ),
    (
        99,
        '2025-12-10 10:54:00',
        137,
        88,
        86.1,
        1.71,
        66, 'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2025-12-10 10:03:00',
        123,
        77,
        82.3,
        1.57,
        72, 'Apur bat nekatuta.'
    ),
    (
        51,
        '2025-12-11 07:52:00',
        121,
        80,
        63.9,
        1.76,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2025-12-11 07:07:00',
        126,
        83,
        76.0,
        1.75,
        83, 'Dena ondo.'
    ),
    (
        55,
        '2025-12-11 08:43:00',
        133,
        85,
        80.8,
        1.76,
        73, 'Baraualdian.'
    ),
    (
        56,
        '2025-12-11 07:32:00',
        139,
        86,
        89.4,
        1.61,
        66, 'Apur bat nekatuta.'
    ),
    (
        57,
        '2025-12-11 08:52:00',
        117,
        89,
        83.3,
        1.69,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2025-12-11 07:42:00',
        117,
        84,
        62.5,
        1.73,
        67, 'Ondo sentitzen naiz.'
    ),
    (
        62,
        '2025-12-11 09:24:00',
        125,
        79,
        66.6,
        1.56,
        73, 'Dena ondo.'
    ),
    (
        63,
        '2025-12-11 07:26:00',
        131,
        83,
        80.6,
        1.80,
        91, 'Dena ondo.'
    ),
    (
        64,
        '2025-12-11 07:26:00',
        140,
        84,
        96.0,
        1.56,
        70, 'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2025-12-11 09:04:00',
        122,
        91,
        90.3,
        1.55,
        67, 'Dena ondo.'
    ),
    (
        66,
        '2025-12-11 07:50:00',
        130,
        85,
        74.1,
        1.59,
        72, 'Gosariaren ondoren.'
    ),
    (
        67,
        '2025-12-11 08:25:00',
        133,
        83,
        71.8,
        1.72,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        68,
        '2025-12-11 07:02:00',
        125,
        77,
        60.8,
        1.85,
        92, 'Gosariaren ondoren.'
    ),
    (
        69,
        '2025-12-11 08:08:00',
        143,
        85,
        94.7,
        1.66,
        90, 'Gosariaren ondoren.'
    ),
    (
        70,
        '2025-12-11 08:16:00',
        118,
        77,
        74.3,
        1.70,
        69, 'Kirola egin ondoren.'
    ),
    (
        71,
        '2025-12-11 10:53:00',
        124,
        72,
        89.5,
        1.63,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2025-12-11 07:12:00',
        134,
        82,
        91.3,
        1.69,
        82, 'Apur bat nekatuta.'
    ),
    (
        73,
        '2025-12-11 08:29:00',
        124,
        77,
        95.7,
        1.55,
        87, 'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2025-12-11 08:44:00',
        121,
        87,
        63.9,
        1.67,
        80, 'Dena ondo.'
    ),
    (
        75,
        '2025-12-11 08:14:00',
        134,
        70,
        59.5,
        1.65,
        80, 'Dena ondo.'
    ),
    (
        76,
        '2025-12-11 10:05:00',
        114,
        87,
        65.6,
        1.69,
        75, 'Kirola egin ondoren.'
    ),
    (
        77,
        '2025-12-11 08:24:00',
        134,
        92,
        67.7,
        1.67,
        74, 'Baraualdian.'
    ),
    (
        78,
        '2025-12-11 10:24:00',
        122,
        83,
        63.4,
        1.61,
        94, 'Dena ondo.'
    ),
    (
        79,
        '2025-12-11 07:34:00',
        123,
        80,
        67.8,
        1.67,
        76, 'Kirola egin ondoren.'
    ),
    (
        80,
        '2025-12-11 07:03:00',
        126,
        80,
        63.6,
        1.78,
        73, 'Ondo sentitzen naiz.'
    ),
    (
        82,
        '2025-12-11 07:22:00',
        126,
        81,
        89.5,
        1.77,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2025-12-11 09:20:00',
        135,
        84,
        79.0,
        1.67,
        68, 'Apur bat nekatuta.'
    ),
    (
        86,
        '2025-12-11 08:49:00',
        143,
        80,
        67.8,
        1.57,
        92, 'Apur bat nekatuta.'
    ),
    (
        88,
        '2025-12-11 10:42:00',
        127,
        81,
        90.5,
        1.81,
        70, 'Apur bat nekatuta.'
    ),
    (
        89,
        '2025-12-11 10:10:00',
        137,
        91,
        91.0,
        1.84,
        83, 'Apur bat nekatuta.'
    ),
    (
        90,
        '2025-12-11 08:44:00',
        120,
        79,
        65.0,
        1.60,
        69, 'Dena ondo.'
    ),
    (
        91,
        '2025-12-11 07:38:00',
        125,
        76,
        90.7,
        1.58,
        70, 'Apur bat nekatuta.'
    ),
    (
        94,
        '2025-12-11 07:49:00',
        138,
        80,
        87.0,
        1.83,
        87, 'Baraualdian.'
    ),
    (
        96,
        '2025-12-11 09:12:00',
        130,
        76,
        77.4,
        1.71,
        67, 'Baraualdian.'
    ),
    (
        98,
        '2025-12-11 07:40:00',
        127,
        78,
        84.2,
        1.60,
        73, 'Kirola egin ondoren.'
    ),
    (
        99,
        '2025-12-11 08:15:00',
        126,
        75,
        85.9,
        1.71,
        77, 'Gosariaren ondoren.'
    ),
    (
        100,
        '2025-12-11 08:43:00',
        132,
        81,
        82.7,
        1.57,
        78, 'Baraualdian.'
    ),
    (
        51,
        '2025-12-12 10:15:00',
        140,
        84,
        64.9,
        1.76,
        77, 'Apur bat nekatuta.'
    ),
    (
        52,
        '2025-12-12 08:29:00',
        120,
        85,
        93.2,
        1.77,
        91, 'Kirola egin ondoren.'
    ),
    (
        54,
        '2025-12-12 10:30:00',
        128,
        80,
        87.3,
        1.60,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        55,
        '2025-12-12 07:52:00',
        133,
        84,
        81.0,
        1.76,
        90, 'Apur bat nekatuta.'
    ),
    (
        56,
        '2025-12-12 10:33:00',
        125,
        79,
        90.8,
        1.61,
        75, 'Baraualdian.'
    ),
    (
        57,
        '2025-12-12 09:29:00',
        120,
        89,
        83.3,
        1.69,
        92, 'Gosariaren ondoren.'
    ),
    (
        59,
        '2025-12-12 07:52:00',
        114,
        82,
        63.5,
        1.73,
        75, 'Gosariaren ondoren.'
    ),
    (
        61,
        '2025-12-12 08:09:00',
        112,
        80,
        73.5,
        1.83,
        77, 'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-12-12 08:05:00',
        129,
        84,
        81.2,
        1.80,
        75, 'Apur bat nekatuta.'
    ),
    (
        64,
        '2025-12-12 07:32:00',
        137,
        74,
        94.1,
        1.56,
        88, 'Gosariaren ondoren.'
    ),
    (
        65,
        '2025-12-12 09:06:00',
        121,
        78,
        91.5,
        1.55,
        78, 'Baraualdian.'
    ),
    (
        66,
        '2025-12-12 08:07:00',
        116,
        78,
        74.3,
        1.59,
        90, 'Kirola egin ondoren.'
    ),
    (
        67,
        '2025-12-12 09:50:00',
        141,
        76,
        73.0,
        1.72,
        65, 'Ondo sentitzen naiz.'
    ),
    (
        70,
        '2025-12-12 09:54:00',
        125,
        77,
        75.8,
        1.70,
        66, 'Baraualdian.'
    ),
    (
        73,
        '2025-12-12 07:05:00',
        112,
        72,
        95.1,
        1.55,
        76, 'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2025-12-12 08:14:00',
        127,
        90,
        65.0,
        1.67,
        71, 'Apur bat nekatuta.'
    ),
    (
        75,
        '2025-12-12 07:15:00',
        130,
        71,
        59.3,
        1.65,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2025-12-12 08:07:00',
        111,
        80,
        65.2,
        1.69,
        82, 'Gosariaren ondoren.'
    ),
    (
        77,
        '2025-12-12 09:40:00',
        141,
        86,
        67.0,
        1.67,
        75, 'Gosariaren ondoren.'
    ),
    (
        78,
        '2025-12-12 07:29:00',
        135,
        83,
        62.5,
        1.61,
        79, 'Baraualdian.'
    ),
    (
        79,
        '2025-12-12 07:41:00',
        128,
        84,
        66.1,
        1.67,
        82, 'Baraualdian.'
    ),
    (
        80,
        '2025-12-12 10:22:00',
        129,
        92,
        63.4,
        1.78,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2025-12-12 07:50:00',
        135,
        93,
        86.0,
        1.58,
        93, 'Gosariaren ondoren.'
    ),
    (
        82,
        '2025-12-12 09:30:00',
        127,
        85,
        88.7,
        1.77,
        68, 'Dena ondo.'
    ),
    (
        83,
        '2025-12-12 07:11:00',
        136,
        94,
        64.8,
        1.80,
        92, 'Apur bat nekatuta.'
    ),
    (
        84,
        '2025-12-12 09:20:00',
        118,
        76,
        79.4,
        1.67,
        70, 'Baraualdian.'
    ),
    (
        85,
        '2025-12-12 07:27:00',
        139,
        84,
        80.2,
        1.72,
        77, 'Apur bat nekatuta.'
    ),
    (
        86,
        '2025-12-12 08:58:00',
        132,
        76,
        67.3,
        1.57,
        66, 'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2025-12-12 08:21:00',
        124,
        76,
        74.0,
        1.61,
        86, 'Dena ondo.'
    ),
    (
        88,
        '2025-12-12 09:22:00',
        111,
        84,
        90.3,
        1.81,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2025-12-12 07:01:00',
        133,
        79,
        90.1,
        1.84,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        90,
        '2025-12-12 08:05:00',
        138,
        88,
        66.7,
        1.60,
        67, 'Gosariaren ondoren.'
    ),
    (
        91,
        '2025-12-12 09:52:00',
        142,
        79,
        91.0,
        1.58,
        66, 'Kirola egin ondoren.'
    ),
    (
        92,
        '2025-12-12 09:50:00',
        135,
        84,
        59.1,
        1.79,
        86, 'Dena ondo.'
    ),
    (
        93,
        '2025-12-12 07:24:00',
        141,
        91,
        76.6,
        1.81,
        78, 'Apur bat nekatuta.'
    ),
    (
        94,
        '2025-12-12 10:23:00',
        139,
        76,
        86.1,
        1.83,
        91, 'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2025-12-12 10:52:00',
        134,
        79,
        89.6,
        1.77,
        82, 'Dena ondo.'
    ),
    (
        96,
        '2025-12-12 08:44:00',
        135,
        78,
        76.7,
        1.71,
        82, 'Dena ondo.'
    ),
    (
        97,
        '2025-12-12 07:35:00',
        133,
        80,
        86.6,
        1.56,
        83, 'Baraualdian.'
    ),
    (
        98,
        '2025-12-12 09:33:00',
        125,
        75,
        83.6,
        1.60,
        76, 'Gosariaren ondoren.'
    ),
    (
        99,
        '2025-12-12 08:03:00',
        125,
        73,
        86.2,
        1.71,
        94, 'Kirola egin ondoren.'
    ),
    (
        100,
        '2025-12-12 07:52:00',
        131,
        77,
        81.6,
        1.57,
        74, 'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2025-12-13 09:30:00',
        120,
        92,
        64.0,
        1.76,
        68, 'Gosariaren ondoren.'
    ),
    (
        52,
        '2025-12-13 08:00:00',
        121,
        81,
        94.5,
        1.77,
        93, 'Baraualdian.'
    ),
    (
        53,
        '2025-12-13 10:42:00',
        129,
        82,
        74.0,
        1.75,
        70, 'Kirola egin ondoren.'
    ),
    (
        54,
        '2025-12-13 09:58:00',
        128,
        82,
        87.1,
        1.60,
        75, 'Baraualdian.'
    ),
    (
        55,
        '2025-12-13 08:31:00',
        138,
        86,
        80.6,
        1.76,
        87, 'Apur bat nekatuta.'
    ),
    (
        56,
        '2025-12-13 09:40:00',
        136,
        94,
        90.0,
        1.61,
        84, 'Gosariaren ondoren.'
    ),
    (
        57,
        '2025-12-13 08:51:00',
        128,
        82,
        84.0,
        1.69,
        70, 'Ondo sentitzen naiz.'
    ),
    (
        58,
        '2025-12-13 08:46:00',
        128,
        85,
        67.5,
        1.68,
        65, 'Baraualdian.'
    ),
    (
        59,
        '2025-12-13 10:49:00',
        122,
        93,
        63.2,
        1.73,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2025-12-13 07:29:00',
        125,
        86,
        79.0,
        1.81,
        72, 'Gosariaren ondoren.'
    ),
    (
        61,
        '2025-12-13 08:52:00',
        130,
        92,
        72.3,
        1.83,
        66, 'Dena ondo.'
    ),
    (
        62,
        '2025-12-13 08:48:00',
        137,
        86,
        65.7,
        1.56,
        72, 'Baraualdian.'
    ),
    (
        64,
        '2025-12-13 07:40:00',
        129,
        76,
        94.1,
        1.56,
        84, 'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2025-12-13 08:49:00',
        133,
        77,
        90.3,
        1.55,
        77, 'Dena ondo.'
    ),
    (
        66,
        '2025-12-13 08:47:00',
        121,
        76,
        74.6,
        1.59,
        68, 'Dena ondo.'
    ),
    (
        67,
        '2025-12-13 09:54:00',
        138,
        90,
        71.9,
        1.72,
        94, 'Gosariaren ondoren.'
    ),
    (
        68,
        '2025-12-13 10:13:00',
        120,
        72,
        61.3,
        1.85,
        91, 'Dena ondo.'
    ),
    (
        69,
        '2025-12-13 08:55:00',
        133,
        89,
        95.6,
        1.66,
        74, 'Apur bat nekatuta.'
    ),
    (
        70,
        '2025-12-13 07:12:00',
        120,
        79,
        74.9,
        1.70,
        78, 'Dena ondo.'
    ),
    (
        71,
        '2025-12-13 08:52:00',
        129,
        72,
        89.3,
        1.63,
        93, 'Apur bat nekatuta.'
    ),
    (
        73,
        '2025-12-13 09:27:00',
        131,
        76,
        94.7,
        1.55,
        85, 'Apur bat nekatuta.'
    ),
    (
        74,
        '2025-12-13 07:14:00',
        121,
        84,
        64.7,
        1.67,
        68, 'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2025-12-13 07:26:00',
        111,
        83,
        66.9,
        1.69,
        73, 'Dena ondo.'
    ),
    (
        77,
        '2025-12-13 08:30:00',
        131,
        85,
        66.7,
        1.67,
        78, 'Kirola egin ondoren.'
    ),
    (
        78,
        '2025-12-13 09:53:00',
        131,
        83,
        62.1,
        1.61,
        77, 'Dena ondo.'
    ),
    (
        80,
        '2025-12-13 08:58:00',
        138,
        92,
        62.4,
        1.78,
        71, 'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2025-12-13 08:36:00',
        134,
        95,
        86.3,
        1.58,
        91, 'Baraualdian.'
    ),
    (
        82,
        '2025-12-13 10:37:00',
        125,
        84,
        88.7,
        1.77,
        72, 'Gosariaren ondoren.'
    ),
    (
        83,
        '2025-12-13 08:10:00',
        116,
        93,
        66.0,
        1.80,
        70, 'Dena ondo.'
    ),
    (
        84,
        '2025-12-13 10:30:00',
        135,
        87,
        78.8,
        1.67,
        81, 'Apur bat nekatuta.'
    ),
    (
        85,
        '2025-12-13 08:30:00',
        139,
        83,
        81.7,
        1.72,
        86, 'Dena ondo.'
    ),
    (
        86,
        '2025-12-13 08:17:00',
        128,
        85,
        67.3,
        1.57,
        80, 'Kirola egin ondoren.'
    ),
    (
        87,
        '2025-12-13 09:39:00',
        128,
        75,
        73.5,
        1.61,
        72, 'Baraualdian.'
    ),
    (
        88,
        '2025-12-13 09:29:00',
        118,
        83,
        90.7,
        1.81,
        76, 'Gaur goizean neurtuta.'
    ),
    (
        90,
        '2025-12-13 09:54:00',
        118,
        86,
        65.0,
        1.60,
        94, 'Dena ondo.'
    ),
    (
        92,
        '2025-12-13 07:54:00',
        127,
        79,
        60.3,
        1.79,
        69, 'Apur bat nekatuta.'
    ),
    (
        93,
        '2025-12-13 08:10:00',
        127,
        80,
        75.1,
        1.81,
        72, 'Gosariaren ondoren.'
    ),
    (
        94,
        '2025-12-13 10:25:00',
        135,
        76,
        87.6,
        1.83,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2025-12-13 08:25:00',
        135,
        77,
        89.4,
        1.77,
        66, 'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2025-12-13 08:06:00',
        134,
        80,
        78.0,
        1.71,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2025-12-13 10:21:00',
        126,
        85,
        87.3,
        1.56,
        67, 'Kirola egin ondoren.'
    ),
    (
        98,
        '2025-12-13 09:32:00',
        118,
        83,
        84.9,
        1.60,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        99,
        '2025-12-13 08:04:00',
        121,
        80,
        86.5,
        1.71,
        82, 'Dena ondo.'
    ),
    (
        100,
        '2025-12-13 09:53:00',
        122,
        83,
        82.0,
        1.57,
        66, 'Dena ondo.'
    ),
    (
        51,
        '2025-12-14 09:08:00',
        120,
        93,
        65.0,
        1.76,
        86, 'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2025-12-14 08:45:00',
        142,
        83,
        89.7,
        1.61,
        80, 'Dena ondo.'
    ),
    (
        57,
        '2025-12-14 07:39:00',
        122,
        86,
        83.9,
        1.69,
        74, 'Gosariaren ondoren.'
    ),
    (
        59,
        '2025-12-14 10:31:00',
        113,
        81,
        62.6,
        1.73,
        81, 'Baraualdian.'
    ),
    (
        60,
        '2025-12-14 08:03:00',
        134,
        89,
        78.1,
        1.81,
        90, 'Apur bat nekatuta.'
    ),
    (
        61,
        '2025-12-14 08:07:00',
        121,
        86,
        73.3,
        1.83,
        73, 'Gosariaren ondoren.'
    ),
    (
        62,
        '2025-12-14 07:12:00',
        126,
        73,
        66.2,
        1.56,
        74, 'Baraualdian.'
    ),
    (
        64,
        '2025-12-14 10:26:00',
        133,
        76,
        94.6,
        1.56,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2025-12-14 07:43:00',
        123,
        87,
        91.5,
        1.55,
        77, 'Apur bat nekatuta.'
    ),
    (
        66,
        '2025-12-14 09:13:00',
        135,
        84,
        75.4,
        1.59,
        85, 'Dena ondo.'
    ),
    (
        67,
        '2025-12-14 07:57:00',
        130,
        91,
        72.7,
        1.72,
        92, 'Apur bat nekatuta.'
    ),
    (
        68,
        '2025-12-14 08:50:00',
        139,
        80,
        60.2,
        1.85,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2025-12-14 10:32:00',
        126,
        87,
        95.7,
        1.66,
        77, 'Ondo sentitzen naiz.'
    ),
    (
        70,
        '2025-12-14 09:48:00',
        130,
        88,
        74.5,
        1.70,
        67, 'Baraualdian.'
    ),
    (
        71,
        '2025-12-14 10:58:00',
        133,
        73,
        89.9,
        1.63,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2025-12-14 08:01:00',
        135,
        80,
        91.5,
        1.69,
        92, 'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2025-12-14 09:53:00',
        120,
        74,
        96.0,
        1.55,
        77, 'Baraualdian.'
    ),
    (
        75,
        '2025-12-14 09:43:00',
        144,
        80,
        60.5,
        1.65,
        90, 'Kirola egin ondoren.'
    ),
    (
        77,
        '2025-12-14 08:23:00',
        123,
        83,
        67.9,
        1.67,
        78, 'Apur bat nekatuta.'
    ),
    (
        79,
        '2025-12-14 10:13:00',
        133,
        84,
        67.1,
        1.67,
        93, 'Baraualdian.'
    ),
    (
        81,
        '2025-12-14 08:23:00',
        129,
        83,
        85.8,
        1.58,
        77, 'Baraualdian.'
    ),
    (
        82,
        '2025-12-14 08:29:00',
        139,
        80,
        88.4,
        1.77,
        92, 'Baraualdian.'
    ),
    (
        83,
        '2025-12-14 09:14:00',
        122,
        83,
        65.4,
        1.80,
        67, 'Dena ondo.'
    ),
    (
        84,
        '2025-12-14 08:23:00',
        123,
        80,
        78.8,
        1.67,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2025-12-14 07:35:00',
        123,
        90,
        81.0,
        1.72,
        85, 'Gosariaren ondoren.'
    ),
    (
        86,
        '2025-12-14 08:05:00',
        143,
        74,
        68.7,
        1.57,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        87,
        '2025-12-14 08:06:00',
        141,
        88,
        73.1,
        1.61,
        88, 'Kirola egin ondoren.'
    ),
    (
        88,
        '2025-12-14 08:19:00',
        125,
        78,
        90.5,
        1.81,
        67, 'Baraualdian.'
    ),
    (
        89,
        '2025-12-14 08:24:00',
        136,
        92,
        90.8,
        1.84,
        94, 'Baraualdian.'
    ),
    (
        91,
        '2025-12-14 09:32:00',
        144,
        81,
        89.8,
        1.58,
        87, 'Kirola egin ondoren.'
    ),
    (
        93,
        '2025-12-14 08:53:00',
        135,
        83,
        75.7,
        1.81,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        94,
        '2025-12-14 10:27:00',
        135,
        87,
        86.2,
        1.83,
        87, 'Baraualdian.'
    ),
    (
        96,
        '2025-12-14 07:22:00',
        124,
        82,
        77.3,
        1.71,
        93, 'Apur bat nekatuta.'
    ),
    (
        98,
        '2025-12-14 09:09:00',
        127,
        83,
        83.3,
        1.60,
        76, 'Gosariaren ondoren.'
    ),
    (
        100,
        '2025-12-14 07:28:00',
        140,
        81,
        82.9,
        1.57,
        78, 'Baraualdian.'
    ),
    (
        51,
        '2025-12-15 07:45:00',
        130,
        85,
        65.0,
        1.76,
        72, 'Baraualdian.'
    ),
    (
        52,
        '2025-12-15 08:49:00',
        122,
        86,
        93.6,
        1.77,
        87, 'Gosariaren ondoren.'
    ),
    (
        53,
        '2025-12-15 09:26:00',
        132,
        93,
        75.2,
        1.75,
        79, 'Kirola egin ondoren.'
    ),
    (
        55,
        '2025-12-15 09:23:00',
        138,
        72,
        81.3,
        1.76,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        56,
        '2025-12-15 09:45:00',
        140,
        86,
        89.9,
        1.61,
        76, 'Apur bat nekatuta.'
    ),
    (
        57,
        '2025-12-15 10:54:00',
        136,
        90,
        83.4,
        1.69,
        70, 'Dena ondo.'
    ),
    (
        58,
        '2025-12-15 09:19:00',
        144,
        83,
        67.1,
        1.68,
        77, 'Ondo sentitzen naiz.'
    ),
    (
        59,
        '2025-12-15 09:28:00',
        119,
        92,
        62.3,
        1.73,
        70, 'Kirola egin ondoren.'
    ),
    (
        60,
        '2025-12-15 09:28:00',
        127,
        85,
        78.1,
        1.81,
        81, 'Apur bat nekatuta.'
    ),
    (
        62,
        '2025-12-15 10:29:00',
        134,
        77,
        66.9,
        1.56,
        81, 'Gosariaren ondoren.'
    ),
    (
        65,
        '2025-12-15 10:36:00',
        138,
        78,
        91.5,
        1.55,
        91, 'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2025-12-15 10:36:00',
        133,
        86,
        72.5,
        1.72,
        66, 'Dena ondo.'
    ),
    (
        68,
        '2025-12-15 09:32:00',
        132,
        87,
        61.1,
        1.85,
        79, 'Apur bat nekatuta.'
    ),
    (
        70,
        '2025-12-15 08:10:00',
        136,
        79,
        76.0,
        1.70,
        82, 'Baraualdian.'
    ),
    (
        71,
        '2025-12-15 09:27:00',
        120,
        78,
        89.4,
        1.63,
        87, 'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2025-12-15 10:52:00',
        131,
        79,
        92.7,
        1.69,
        78, 'Kirola egin ondoren.'
    ),
    (
        73,
        '2025-12-15 10:24:00',
        115,
        74,
        94.3,
        1.55,
        80, 'Kirola egin ondoren.'
    ),
    (
        74,
        '2025-12-15 10:24:00',
        120,
        83,
        64.0,
        1.67,
        76, 'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2025-12-15 07:08:00',
        131,
        76,
        59.5,
        1.65,
        91, 'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2025-12-15 09:17:00',
        114,
        81,
        66.6,
        1.69,
        76, 'Dena ondo.'
    ),
    (
        77,
        '2025-12-15 08:16:00',
        137,
        81,
        68.0,
        1.67,
        82, 'Apur bat nekatuta.'
    ),
    (
        78,
        '2025-12-15 10:33:00',
        121,
        75,
        63.7,
        1.61,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        79,
        '2025-12-15 10:39:00',
        125,
        77,
        66.0,
        1.67,
        84, 'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2025-12-15 10:28:00',
        122,
        85,
        62.7,
        1.78,
        74, 'Gosariaren ondoren.'
    ),
    (
        81,
        '2025-12-15 10:34:00',
        135,
        80,
        86.1,
        1.58,
        92, 'Kirola egin ondoren.'
    ),
    (
        82,
        '2025-12-15 09:46:00',
        141,
        80,
        90.0,
        1.77,
        65, 'Gosariaren ondoren.'
    ),
    (
        84,
        '2025-12-15 08:55:00',
        134,
        87,
        79.2,
        1.67,
        82, 'Gosariaren ondoren.'
    ),
    (
        85,
        '2025-12-15 08:27:00',
        137,
        83,
        81.2,
        1.72,
        92, 'Baraualdian.'
    ),
    (
        88,
        '2025-12-15 08:21:00',
        129,
        74,
        89.8,
        1.81,
        94, 'Gosariaren ondoren.'
    ),
    (
        89,
        '2025-12-15 07:45:00',
        137,
        86,
        91.0,
        1.84,
        94, 'Dena ondo.'
    ),
    (
        90,
        '2025-12-15 10:58:00',
        138,
        82,
        66.8,
        1.60,
        74, 'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2025-12-15 10:01:00',
        132,
        90,
        89.1,
        1.58,
        87, 'Baraualdian.'
    ),
    (
        93,
        '2025-12-15 10:30:00',
        141,
        88,
        76.5,
        1.81,
        65, 'Apur bat nekatuta.'
    ),
    (
        94,
        '2025-12-15 07:34:00',
        132,
        90,
        87.9,
        1.83,
        76, 'Baraualdian.'
    ),
    (
        95,
        '2025-12-15 09:57:00',
        131,
        77,
        89.3,
        1.77,
        66, 'Kirola egin ondoren.'
    ),
    (
        96,
        '2025-12-15 10:21:00',
        117,
        80,
        76.2,
        1.71,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        97,
        '2025-12-15 08:11:00',
        132,
        72,
        86.7,
        1.56,
        69, 'Dena ondo.'
    ),
    (
        100,
        '2025-12-15 07:06:00',
        121,
        84,
        82.8,
        1.57,
        85, 'Kirola egin ondoren.'
    ),
    (
        51,
        '2025-12-16 08:47:00',
        127,
        87,
        63.4,
        1.76,
        66, 'Ondo sentitzen naiz.'
    ),
    (
        53,
        '2025-12-16 09:42:00',
        127,
        86,
        75.4,
        1.75,
        76, 'Kirola egin ondoren.'
    ),
    (
        54,
        '2025-12-16 07:10:00',
        140,
        83,
        87.7,
        1.60,
        77, 'Kirola egin ondoren.'
    ),
    (
        55,
        '2025-12-16 09:39:00',
        130,
        71,
        81.6,
        1.76,
        91, 'Apur bat nekatuta.'
    ),
    (
        56,
        '2025-12-16 09:58:00',
        133,
        94,
        89.1,
        1.61,
        73, 'Gosariaren ondoren.'
    ),
    (
        58,
        '2025-12-16 09:04:00',
        126,
        81,
        66.0,
        1.68,
        83, 'Dena ondo.'
    ),
    (
        60,
        '2025-12-16 09:49:00',
        123,
        80,
        77.2,
        1.81,
        71, 'Ondo sentitzen naiz.'
    ),
    (
        61,
        '2025-12-16 08:43:00',
        114,
        87,
        73.6,
        1.83,
        74, 'Apur bat nekatuta.'
    ),
    (
        62,
        '2025-12-16 08:05:00',
        134,
        75,
        66.2,
        1.56,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        63,
        '2025-12-16 09:21:00',
        133,
        79,
        81.8,
        1.80,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        64,
        '2025-12-16 07:18:00',
        130,
        77,
        94.8,
        1.56,
        70, 'Kirola egin ondoren.'
    ),
    (
        65,
        '2025-12-16 08:45:00',
        128,
        85,
        90.4,
        1.55,
        84, 'Dena ondo.'
    ),
    (
        67,
        '2025-12-16 10:53:00',
        144,
        84,
        71.2,
        1.72,
        73, 'Baraualdian.'
    ),
    (
        68,
        '2025-12-16 10:23:00',
        126,
        75,
        61.5,
        1.85,
        65, 'Gosariaren ondoren.'
    ),
    (
        69,
        '2025-12-16 10:42:00',
        132,
        83,
        95.8,
        1.66,
        92, 'Kirola egin ondoren.'
    ),
    (
        71,
        '2025-12-16 09:50:00',
        139,
        82,
        88.5,
        1.63,
        74, 'Apur bat nekatuta.'
    ),
    (
        72,
        '2025-12-16 08:16:00',
        135,
        88,
        91.3,
        1.69,
        66, 'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2025-12-16 08:16:00',
        129,
        78,
        63.2,
        1.67,
        80, 'Apur bat nekatuta.'
    ),
    (
        75,
        '2025-12-16 09:26:00',
        143,
        74,
        60.6,
        1.65,
        90, 'Apur bat nekatuta.'
    ),
    (
        76,
        '2025-12-16 09:37:00',
        121,
        81,
        66.0,
        1.69,
        94, 'Apur bat nekatuta.'
    ),
    (
        77,
        '2025-12-16 07:05:00',
        128,
        80,
        67.9,
        1.67,
        78, 'Apur bat nekatuta.'
    ),
    (
        78,
        '2025-12-16 09:14:00',
        130,
        73,
        62.2,
        1.61,
        75, 'Dena ondo.'
    ),
    (
        79,
        '2025-12-16 08:57:00',
        132,
        77,
        66.6,
        1.67,
        80, 'Dena ondo.'
    ),
    (
        80,
        '2025-12-16 10:20:00',
        121,
        84,
        62.0,
        1.78,
        93, 'Kirola egin ondoren.'
    ),
    (
        82,
        '2025-12-16 08:31:00',
        137,
        87,
        88.6,
        1.77,
        90, 'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2025-12-16 07:50:00',
        132,
        81,
        79.1,
        1.67,
        83, 'Apur bat nekatuta.'
    ),
    (
        85,
        '2025-12-16 10:16:00',
        129,
        86,
        81.4,
        1.72,
        89, 'Dena ondo.'
    ),
    (
        87,
        '2025-12-16 07:09:00',
        121,
        86,
        74.0,
        1.61,
        70, 'Dena ondo.'
    ),
    (
        88,
        '2025-12-16 09:58:00',
        114,
        85,
        89.1,
        1.81,
        87, 'Baraualdian.'
    ),
    (
        89,
        '2025-12-16 07:01:00',
        131,
        80,
        91.5,
        1.84,
        79, 'Ondo sentitzen naiz.'
    ),
    (
        90,
        '2025-12-16 10:11:00',
        124,
        87,
        66.6,
        1.60,
        72, 'Ondo sentitzen naiz.'
    ),
    (
        91,
        '2025-12-16 09:03:00',
        130,
        88,
        90.3,
        1.58,
        87, 'Kirola egin ondoren.'
    ),
    (
        93,
        '2025-12-16 08:28:00',
        124,
        87,
        75.6,
        1.81,
        89, 'Apur bat nekatuta.'
    ),
    (
        94,
        '2025-12-16 09:38:00',
        131,
        86,
        87.0,
        1.83,
        65, 'Kirola egin ondoren.'
    ),
    (
        95,
        '2025-12-16 10:56:00',
        139,
        74,
        89.6,
        1.77,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2025-12-16 09:55:00',
        135,
        85,
        76.5,
        1.71,
        70, 'Ondo sentitzen naiz.'
    ),
    (
        99,
        '2025-12-16 09:21:00',
        121,
        77,
        85.8,
        1.71,
        66, 'Dena ondo.'
    ),
    (
        100,
        '2025-12-16 10:21:00',
        126,
        72,
        82.1,
        1.57,
        92, 'Apur bat nekatuta.'
    ),
    (
        51,
        '2025-12-17 09:35:00',
        135,
        86,
        63.7,
        1.76,
        88, 'Dena ondo.'
    ),
    (
        52,
        '2025-12-17 07:40:00',
        128,
        92,
        94.2,
        1.77,
        94, 'Gosariaren ondoren.'
    ),
    (
        53,
        '2025-12-17 09:23:00',
        119,
        85,
        74.5,
        1.75,
        87, 'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2025-12-17 10:54:00',
        140,
        76,
        87.7,
        1.60,
        93, 'Kirola egin ondoren.'
    ),
    (
        55,
        '2025-12-17 07:37:00',
        136,
        79,
        80.0,
        1.76,
        91, 'Dena ondo.'
    ),
    (
        56,
        '2025-12-17 09:57:00',
        133,
        91,
        90.8,
        1.61,
        85, 'Gosariaren ondoren.'
    ),
    (
        57,
        '2025-12-17 07:58:00',
        132,
        82,
        82.6,
        1.69,
        84, 'Apur bat nekatuta.'
    ),
    (
        58,
        '2025-12-17 08:57:00',
        140,
        89,
        66.7,
        1.68,
        91, 'Kirola egin ondoren.'
    ),
    (
        59,
        '2025-12-17 10:39:00',
        115,
        86,
        64.0,
        1.73,
        84, 'Baraualdian.'
    ),
    (
        60,
        '2025-12-17 07:42:00',
        128,
        90,
        77.5,
        1.81,
        66, 'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2025-12-17 10:00:00',
        130,
        84,
        73.7,
        1.83,
        84, 'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-12-17 10:01:00',
        133,
        84,
        81.9,
        1.80,
        93, 'Baraualdian.'
    ),
    (
        66,
        '2025-12-17 08:21:00',
        129,
        83,
        74.7,
        1.59,
        92, 'Dena ondo.'
    ),
    (
        67,
        '2025-12-17 10:46:00',
        126,
        80,
        72.6,
        1.72,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        68,
        '2025-12-17 08:32:00',
        128,
        73,
        61.9,
        1.85,
        65, 'Gosariaren ondoren.'
    ),
    (
        70,
        '2025-12-17 10:39:00',
        116,
        75,
        74.4,
        1.70,
        93, 'Dena ondo.'
    ),
    (
        72,
        '2025-12-17 07:20:00',
        128,
        77,
        91.2,
        1.69,
        93, 'Apur bat nekatuta.'
    ),
    (
        73,
        '2025-12-17 10:25:00',
        126,
        81,
        95.5,
        1.55,
        75, 'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2025-12-17 07:39:00',
        130,
        90,
        63.1,
        1.67,
        89, 'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2025-12-17 07:30:00',
        117,
        83,
        66.2,
        1.69,
        67, 'Baraualdian.'
    ),
    (
        77,
        '2025-12-17 09:01:00',
        140,
        93,
        67.2,
        1.67,
        79, 'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2025-12-17 07:19:00',
        122,
        82,
        62.9,
        1.61,
        66, 'Dena ondo.'
    ),
    (
        79,
        '2025-12-17 10:17:00',
        142,
        77,
        67.6,
        1.67,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2025-12-17 10:44:00',
        126,
        94,
        85.2,
        1.58,
        85, 'Dena ondo.'
    ),
    (
        82,
        '2025-12-17 09:15:00',
        130,
        94,
        88.2,
        1.77,
        67, 'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2025-12-17 08:03:00',
        126,
        87,
        65.4,
        1.80,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2025-12-17 08:48:00',
        119,
        88,
        81.5,
        1.72,
        92, 'Kirola egin ondoren.'
    ),
    (
        86,
        '2025-12-17 07:01:00',
        131,
        84,
        69.0,
        1.57,
        68, 'Dena ondo.'
    ),
    (
        88,
        '2025-12-17 10:07:00',
        122,
        80,
        90.2,
        1.81,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2025-12-17 10:07:00',
        136,
        91,
        90.7,
        1.84,
        76, 'Gaur goizean neurtuta.'
    ),
    (
        90,
        '2025-12-17 07:57:00',
        122,
        79,
        66.1,
        1.60,
        75, 'Gosariaren ondoren.'
    ),
    (
        91,
        '2025-12-17 08:08:00',
        128,
        87,
        90.9,
        1.58,
        77, 'Gosariaren ondoren.'
    ),
    (
        92,
        '2025-12-17 09:12:00',
        131,
        83,
        60.8,
        1.79,
        67, 'Kirola egin ondoren.'
    ),
    (
        94,
        '2025-12-17 10:52:00',
        126,
        87,
        86.5,
        1.83,
        72, 'Dena ondo.'
    ),
    (
        95,
        '2025-12-17 10:36:00',
        134,
        85,
        89.9,
        1.77,
        81, 'Dena ondo.'
    ),
    (
        96,
        '2025-12-17 07:45:00',
        122,
        82,
        76.5,
        1.71,
        65, 'Gosariaren ondoren.'
    ),
    (
        97,
        '2025-12-17 09:52:00',
        123,
        72,
        86.0,
        1.56,
        69, 'Apur bat nekatuta.'
    ),
    (
        98,
        '2025-12-17 07:37:00',
        135,
        77,
        84.3,
        1.60,
        87, 'Ondo sentitzen naiz.'
    ),
    (
        99,
        '2025-12-17 10:36:00',
        131,
        79,
        86.7,
        1.71,
        92, 'Apur bat nekatuta.'
    ),
    (
        100,
        '2025-12-17 10:26:00',
        123,
        72,
        82.1,
        1.57,
        75, 'Baraualdian.'
    ),
    (
        51,
        '2025-12-18 08:07:00',
        120,
        83,
        64.0,
        1.76,
        85, 'Kirola egin ondoren.'
    ),
    (
        52,
        '2025-12-18 07:48:00',
        125,
        90,
        93.9,
        1.77,
        72, 'Apur bat nekatuta.'
    ),
    (
        53,
        '2025-12-18 08:51:00',
        121,
        84,
        74.7,
        1.75,
        93, 'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2025-12-18 07:02:00',
        139,
        84,
        90.1,
        1.61,
        69, 'Dena ondo.'
    ),
    (
        57,
        '2025-12-18 07:48:00',
        131,
        91,
        83.9,
        1.69,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2025-12-18 09:55:00',
        116,
        86,
        72.8,
        1.83,
        83, 'Apur bat nekatuta.'
    ),
    (
        62,
        '2025-12-18 08:46:00',
        126,
        77,
        67.0,
        1.56,
        65, 'Dena ondo.'
    ),
    (
        63,
        '2025-12-18 08:41:00',
        139,
        81,
        80.3,
        1.80,
        73, 'Dena ondo.'
    ),
    (
        64,
        '2025-12-18 09:33:00',
        129,
        79,
        96.0,
        1.56,
        81, 'Kirola egin ondoren.'
    ),
    (
        66,
        '2025-12-18 10:18:00',
        124,
        85,
        75.1,
        1.59,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2025-12-18 07:48:00',
        127,
        79,
        71.7,
        1.72,
        82, 'Gosariaren ondoren.'
    ),
    (
        68,
        '2025-12-18 08:15:00',
        130,
        87,
        61.7,
        1.85,
        74, 'Ondo sentitzen naiz.'
    ),
    (
        69,
        '2025-12-18 08:13:00',
        129,
        87,
        95.2,
        1.66,
        66, 'Dena ondo.'
    ),
    (
        70,
        '2025-12-18 08:40:00',
        120,
        83,
        74.7,
        1.70,
        92, 'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2025-12-18 10:29:00',
        121,
        75,
        88.8,
        1.63,
        94, 'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2025-12-18 07:56:00',
        125,
        76,
        92.3,
        1.69,
        87, 'Apur bat nekatuta.'
    ),
    (
        73,
        '2025-12-18 10:10:00',
        119,
        82,
        94.0,
        1.55,
        92, 'Gosariaren ondoren.'
    ),
    (
        74,
        '2025-12-18 08:44:00',
        111,
        76,
        64.5,
        1.67,
        90, 'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2025-12-18 10:38:00',
        120,
        81,
        65.7,
        1.69,
        69, 'Dena ondo.'
    ),
    (
        79,
        '2025-12-18 08:24:00',
        131,
        86,
        67.4,
        1.67,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2025-12-18 09:01:00',
        129,
        91,
        62.7,
        1.78,
        89, 'Ondo sentitzen naiz.'
    ),
    (
        82,
        '2025-12-18 07:37:00',
        128,
        88,
        88.4,
        1.77,
        73, 'Gosariaren ondoren.'
    ),
    (
        83,
        '2025-12-18 10:01:00',
        124,
        80,
        65.6,
        1.80,
        78, 'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2025-12-18 10:18:00',
        136,
        78,
        78.4,
        1.67,
        85, 'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2025-12-18 09:15:00',
        127,
        83,
        82.0,
        1.72,
        92, 'Kirola egin ondoren.'
    ),
    (
        86,
        '2025-12-18 10:45:00',
        128,
        81,
        68.3,
        1.57,
        85, 'Gosariaren ondoren.'
    ),
    (
        88,
        '2025-12-18 09:36:00',
        130,
        76,
        90.9,
        1.81,
        67, 'Ondo sentitzen naiz.'
    ),
    (
        89,
        '2025-12-18 09:18:00',
        129,
        82,
        91.2,
        1.84,
        79, 'Gosariaren ondoren.'
    ),
    (
        90,
        '2025-12-18 09:28:00',
        133,
        82,
        66.1,
        1.60,
        74, 'Gosariaren ondoren.'
    ),
    (
        93,
        '2025-12-18 09:51:00',
        127,
        86,
        76.3,
        1.81,
        83, 'Apur bat nekatuta.'
    ),
    (
        94,
        '2025-12-18 07:29:00',
        126,
        78,
        86.2,
        1.83,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2025-12-18 08:05:00',
        137,
        87,
        90.0,
        1.77,
        81, 'Kirola egin ondoren.'
    ),
    (
        96,
        '2025-12-18 10:21:00',
        117,
        86,
        77.1,
        1.71,
        85, 'Gaur goizean neurtuta.'
    ),
    (
        52,
        '2025-12-19 09:12:00',
        136,
        94,
        95.0,
        1.77,
        68, 'Baraualdian.'
    ),
    (
        53,
        '2025-12-19 07:34:00',
        117,
        82,
        74.6,
        1.75,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2025-12-19 07:35:00',
        130,
        84,
        87.6,
        1.60,
        89, 'Dena ondo.'
    ),
    (
        55,
        '2025-12-19 10:08:00',
        137,
        78,
        81.8,
        1.76,
        87, 'Apur bat nekatuta.'
    ),
    (
        58,
        '2025-12-19 07:23:00',
        129,
        82,
        67.6,
        1.68,
        73, 'Ondo sentitzen naiz.'
    ),
    (
        59,
        '2025-12-19 07:27:00',
        124,
        81,
        62.5,
        1.73,
        94, 'Apur bat nekatuta.'
    ),
    (
        60,
        '2025-12-19 07:44:00',
        115,
        92,
        77.2,
        1.81,
        73, 'Apur bat nekatuta.'
    ),
    (
        61,
        '2025-12-19 10:37:00',
        130,
        79,
        72.1,
        1.83,
        76, 'Baraualdian.'
    ),
    (
        62,
        '2025-12-19 09:03:00',
        127,
        84,
        66.5,
        1.56,
        72, 'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2025-12-19 10:55:00',
        138,
        85,
        94.9,
        1.56,
        74, 'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2025-12-19 09:54:00',
        124,
        91,
        91.0,
        1.55,
        73, 'Baraualdian.'
    ),
    (
        66,
        '2025-12-19 07:47:00',
        116,
        76,
        74.5,
        1.59,
        68, 'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2025-12-19 08:45:00',
        142,
        79,
        72.7,
        1.72,
        76, 'Baraualdian.'
    ),
    (
        68,
        '2025-12-19 10:15:00',
        123,
        84,
        61.0,
        1.85,
        89, 'Kirola egin ondoren.'
    ),
    (
        69,
        '2025-12-19 10:15:00',
        136,
        78,
        95.7,
        1.66,
        72, 'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-12-19 10:33:00',
        128,
        82,
        74.5,
        1.70,
        83, 'Gosariaren ondoren.'
    ),
    (
        71,
        '2025-12-19 08:20:00',
        126,
        72,
        90.0,
        1.63,
        94, 'Apur bat nekatuta.'
    ),
    (
        72,
        '2025-12-19 09:08:00',
        131,
        89,
        92.9,
        1.69,
        90, 'Dena ondo.'
    ),
    (
        73,
        '2025-12-19 09:44:00',
        131,
        81,
        94.4,
        1.55,
        66, 'Gosariaren ondoren.'
    ),
    (
        74,
        '2025-12-19 08:40:00',
        111,
        89,
        64.9,
        1.67,
        86, 'Gosariaren ondoren.'
    ),
    (
        75,
        '2025-12-19 07:03:00',
        126,
        71,
        61.0,
        1.65,
        81, 'Kirola egin ondoren.'
    ),
    (
        76,
        '2025-12-19 09:08:00',
        126,
        90,
        65.5,
        1.69,
        75, 'Gosariaren ondoren.'
    ),
    (
        77,
        '2025-12-19 10:02:00',
        130,
        79,
        67.2,
        1.67,
        88, 'Dena ondo.'
    ),
    (
        78,
        '2025-12-19 09:45:00',
        117,
        83,
        63.7,
        1.61,
        71, 'Baraualdian.'
    ),
    (
        79,
        '2025-12-19 07:52:00',
        140,
        78,
        66.7,
        1.67,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2025-12-19 08:18:00',
        130,
        86,
        63.1,
        1.78,
        92, 'Dena ondo.'
    ),
    (
        81,
        '2025-12-19 10:07:00',
        130,
        83,
        86.5,
        1.58,
        92, 'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2025-12-19 08:09:00',
        135,
        86,
        65.2,
        1.80,
        91, 'Kirola egin ondoren.'
    ),
    (
        84,
        '2025-12-19 08:16:00',
        137,
        88,
        79.5,
        1.67,
        69, 'Baraualdian.'
    ),
    (
        86,
        '2025-12-19 10:43:00',
        129,
        82,
        67.7,
        1.57,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        87,
        '2025-12-19 08:40:00',
        133,
        81,
        72.7,
        1.61,
        80, 'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2025-12-19 08:09:00',
        111,
        87,
        90.4,
        1.81,
        71, 'Baraualdian.'
    ),
    (
        89,
        '2025-12-19 09:00:00',
        140,
        80,
        91.9,
        1.84,
        67, 'Apur bat nekatuta.'
    ),
    (
        90,
        '2025-12-19 09:48:00',
        134,
        79,
        66.3,
        1.60,
        76, 'Dena ondo.'
    ),
    (
        92,
        '2025-12-19 09:07:00',
        141,
        93,
        59.5,
        1.79,
        94, 'Dena ondo.'
    ),
    (
        93,
        '2025-12-19 07:44:00',
        136,
        90,
        76.9,
        1.81,
        86, 'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2025-12-19 10:14:00',
        143,
        82,
        90.8,
        1.77,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2025-12-19 09:49:00',
        129,
        88,
        77.4,
        1.71,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2025-12-19 10:00:00',
        131,
        90,
        84.4,
        1.60,
        84, 'Gosariaren ondoren.'
    ),
    (
        99,
        '2025-12-19 08:19:00',
        127,
        80,
        85.0,
        1.71,
        72, 'Dena ondo.'
    ),
    (
        100,
        '2025-12-19 09:08:00',
        122,
        72,
        82.0,
        1.57,
        94, 'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2025-12-20 10:48:00',
        140,
        84,
        63.4,
        1.76,
        94, 'Baraualdian.'
    ),
    (
        53,
        '2025-12-20 08:07:00',
        123,
        93,
        75.3,
        1.75,
        78, 'Kirola egin ondoren.'
    ),
    (
        54,
        '2025-12-20 10:13:00',
        127,
        80,
        86.0,
        1.60,
        79, 'Kirola egin ondoren.'
    ),
    (
        55,
        '2025-12-20 10:33:00',
        144,
        84,
        81.7,
        1.76,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        56,
        '2025-12-20 08:58:00',
        134,
        80,
        89.1,
        1.61,
        70, 'Baraualdian.'
    ),
    (
        57,
        '2025-12-20 08:19:00',
        119,
        80,
        83.2,
        1.69,
        81, 'Dena ondo.'
    ),
    (
        59,
        '2025-12-20 09:14:00',
        121,
        87,
        62.9,
        1.73,
        91, 'Apur bat nekatuta.'
    ),
    (
        60,
        '2025-12-20 07:24:00',
        122,
        80,
        77.4,
        1.81,
        68, 'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2025-12-20 07:19:00',
        116,
        83,
        72.9,
        1.83,
        73, 'Ondo sentitzen naiz.'
    ),
    (
        62,
        '2025-12-20 08:00:00',
        123,
        86,
        65.3,
        1.56,
        71, 'Gosariaren ondoren.'
    ),
    (
        63,
        '2025-12-20 08:57:00',
        141,
        91,
        81.2,
        1.80,
        75, 'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2025-12-20 09:12:00',
        129,
        78,
        95.0,
        1.56,
        71, 'Apur bat nekatuta.'
    ),
    (
        65,
        '2025-12-20 10:41:00',
        120,
        81,
        91.2,
        1.55,
        86, 'Kirola egin ondoren.'
    ),
    (
        66,
        '2025-12-20 09:17:00',
        136,
        83,
        76.0,
        1.59,
        78, 'Dena ondo.'
    ),
    (
        67,
        '2025-12-20 08:49:00',
        136,
        80,
        71.0,
        1.72,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        68,
        '2025-12-20 09:57:00',
        133,
        82,
        60.1,
        1.85,
        73, 'Kirola egin ondoren.'
    ),
    (
        69,
        '2025-12-20 10:52:00',
        132,
        84,
        95.8,
        1.66,
        79, 'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-12-20 10:34:00',
        130,
        86,
        75.9,
        1.70,
        78, 'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2025-12-20 07:07:00',
        125,
        84,
        88.2,
        1.63,
        84, 'Dena ondo.'
    ),
    (
        72,
        '2025-12-20 09:17:00',
        135,
        86,
        91.4,
        1.69,
        72, 'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2025-12-20 08:36:00',
        119,
        84,
        95.4,
        1.55,
        67, 'Dena ondo.'
    ),
    (
        74,
        '2025-12-20 08:51:00',
        129,
        81,
        63.7,
        1.67,
        79, 'Kirola egin ondoren.'
    ),
    (
        75,
        '2025-12-20 10:43:00',
        125,
        85,
        60.4,
        1.65,
        74, 'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2025-12-20 07:19:00',
        117,
        89,
        65.0,
        1.69,
        93, 'Ondo sentitzen naiz.'
    ),
    (
        79,
        '2025-12-20 09:45:00',
        134,
        74,
        67.7,
        1.67,
        70, 'Baraualdian.'
    ),
    (
        80,
        '2025-12-20 08:50:00',
        125,
        81,
        62.5,
        1.78,
        85, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2025-12-20 07:41:00',
        123,
        83,
        86.2,
        1.58,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        83,
        '2025-12-20 07:13:00',
        122,
        83,
        65.3,
        1.80,
        94, 'Kirola egin ondoren.'
    ),
    (
        84,
        '2025-12-20 09:13:00',
        134,
        86,
        79.3,
        1.67,
        78, 'Baraualdian.'
    ),
    (
        86,
        '2025-12-20 08:52:00',
        139,
        74,
        67.3,
        1.57,
        65, 'Gosariaren ondoren.'
    ),
    (
        87,
        '2025-12-20 08:29:00',
        130,
        86,
        72.4,
        1.61,
        73, 'Baraualdian.'
    ),
    (
        89,
        '2025-12-20 09:34:00',
        140,
        92,
        91.6,
        1.84,
        70, 'Apur bat nekatuta.'
    ),
    (
        92,
        '2025-12-20 07:41:00',
        129,
        92,
        60.6,
        1.79,
        86, 'Apur bat nekatuta.'
    ),
    (
        93,
        '2025-12-20 08:22:00',
        136,
        81,
        75.5,
        1.81,
        85, 'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2025-12-20 09:37:00',
        129,
        85,
        87.4,
        1.83,
        92, 'Dena ondo.'
    ),
    (
        95,
        '2025-12-20 09:22:00',
        125,
        85,
        89.0,
        1.77,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2025-12-20 08:22:00',
        127,
        79,
        76.4,
        1.71,
        79, 'Ondo sentitzen naiz.'
    ),
    (
        97,
        '2025-12-20 10:19:00',
        128,
        76,
        87.4,
        1.56,
        94, 'Apur bat nekatuta.'
    ),
    (
        98,
        '2025-12-20 10:23:00',
        127,
        83,
        83.5,
        1.60,
        79, 'Apur bat nekatuta.'
    ),
    (
        100,
        '2025-12-20 09:33:00',
        135,
        77,
        81.6,
        1.57,
        67, 'Apur bat nekatuta.'
    ),
    (
        51,
        '2025-12-21 09:37:00',
        140,
        80,
        63.9,
        1.76,
        74, 'Baraualdian.'
    ),
    (
        52,
        '2025-12-21 09:36:00',
        137,
        80,
        93.7,
        1.77,
        83, 'Baraualdian.'
    ),
    (
        53,
        '2025-12-21 09:31:00',
        120,
        87,
        74.6,
        1.75,
        69, 'Ondo sentitzen naiz.'
    ),
    (
        54,
        '2025-12-21 09:38:00',
        135,
        74,
        87.4,
        1.60,
        83, 'Baraualdian.'
    ),
    (
        55,
        '2025-12-21 08:45:00',
        132,
        86,
        80.4,
        1.76,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        57,
        '2025-12-21 07:50:00',
        131,
        79,
        82.3,
        1.69,
        77, 'Apur bat nekatuta.'
    ),
    (
        58,
        '2025-12-21 09:05:00',
        128,
        84,
        67.1,
        1.68,
        80, 'Apur bat nekatuta.'
    ),
    (
        59,
        '2025-12-21 10:27:00',
        117,
        93,
        62.5,
        1.73,
        89, 'Apur bat nekatuta.'
    ),
    (
        61,
        '2025-12-21 07:13:00',
        130,
        90,
        73.2,
        1.83,
        85, 'Ondo sentitzen naiz.'
    ),
    (
        62,
        '2025-12-21 08:28:00',
        126,
        80,
        66.7,
        1.56,
        90, 'Dena ondo.'
    ),
    (
        63,
        '2025-12-21 08:49:00',
        129,
        76,
        81.0,
        1.80,
        90, 'Kirola egin ondoren.'
    ),
    (
        64,
        '2025-12-21 10:41:00',
        124,
        73,
        94.1,
        1.56,
        69, 'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2025-12-21 08:54:00',
        132,
        80,
        71.9,
        1.72,
        80, 'Kirola egin ondoren.'
    ),
    (
        68,
        '2025-12-21 08:53:00',
        123,
        74,
        60.7,
        1.85,
        74, 'Baraualdian.'
    ),
    (
        69,
        '2025-12-21 10:57:00',
        132,
        78,
        95.1,
        1.66,
        65, 'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2025-12-21 08:39:00',
        131,
        80,
        88.9,
        1.63,
        82, 'Baraualdian.'
    ),
    (
        74,
        '2025-12-21 08:24:00',
        124,
        83,
        64.3,
        1.67,
        65, 'Gosariaren ondoren.'
    ),
    (
        76,
        '2025-12-21 08:08:00',
        111,
        89,
        66.1,
        1.69,
        80, 'Kirola egin ondoren.'
    ),
    (
        77,
        '2025-12-21 08:05:00',
        141,
        78,
        67.9,
        1.67,
        82, 'Dena ondo.'
    ),
    (
        78,
        '2025-12-21 07:30:00',
        130,
        80,
        63.9,
        1.61,
        88, 'Baraualdian.'
    ),
    (
        79,
        '2025-12-21 09:24:00',
        138,
        88,
        68.0,
        1.67,
        83, 'Gosariaren ondoren.'
    ),
    (
        80,
        '2025-12-21 09:47:00',
        121,
        87,
        62.4,
        1.78,
        75, 'Gosariaren ondoren.'
    ),
    (
        81,
        '2025-12-21 10:47:00',
        132,
        94,
        85.1,
        1.58,
        83, 'Apur bat nekatuta.'
    ),
    (
        82,
        '2025-12-21 08:20:00',
        129,
        94,
        88.2,
        1.77,
        89, 'Dena ondo.'
    ),
    (
        83,
        '2025-12-21 09:50:00',
        130,
        79,
        65.8,
        1.80,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2025-12-21 07:02:00',
        129,
        87,
        78.2,
        1.67,
        73, 'Kirola egin ondoren.'
    ),
    (
        85,
        '2025-12-21 07:31:00',
        131,
        79,
        81.6,
        1.72,
        78, 'Gaur goizean neurtuta.'
    ),
    (
        86,
        '2025-12-21 07:57:00',
        127,
        77,
        68.2,
        1.57,
        71, 'Dena ondo.'
    ),
    (
        87,
        '2025-12-21 07:28:00',
        124,
        75,
        73.4,
        1.61,
        84, 'Kirola egin ondoren.'
    ),
    (
        88,
        '2025-12-21 08:12:00',
        123,
        86,
        90.9,
        1.81,
        76, 'Gosariaren ondoren.'
    ),
    (
        90,
        '2025-12-21 07:31:00',
        127,
        80,
        65.8,
        1.60,
        67, 'Dena ondo.'
    ),
    (
        91,
        '2025-12-21 08:40:00',
        132,
        84,
        90.1,
        1.58,
        71, 'Kirola egin ondoren.'
    ),
    (
        92,
        '2025-12-21 08:20:00',
        129,
        92,
        59.8,
        1.79,
        81, 'Apur bat nekatuta.'
    ),
    (
        93,
        '2025-12-21 10:05:00',
        125,
        92,
        76.8,
        1.81,
        79, 'Gosariaren ondoren.'
    ),
    (
        94,
        '2025-12-21 10:15:00',
        137,
        79,
        86.5,
        1.83,
        88, 'Kirola egin ondoren.'
    ),
    (
        95,
        '2025-12-21 10:55:00',
        131,
        78,
        90.5,
        1.77,
        79, 'Gosariaren ondoren.'
    ),
    (
        96,
        '2025-12-21 09:40:00',
        132,
        87,
        76.7,
        1.71,
        77, 'Kirola egin ondoren.'
    ),
    (
        97,
        '2025-12-21 07:00:00',
        120,
        71,
        86.9,
        1.56,
        91, 'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2025-12-21 10:32:00',
        122,
        75,
        84.3,
        1.60,
        70, 'Ondo sentitzen naiz.'
    ),
    (
        99,
        '2025-12-21 08:06:00',
        133,
        87,
        85.8,
        1.71,
        65, 'Kirola egin ondoren.'
    ),
    (
        51,
        '2025-12-22 10:25:00',
        139,
        84,
        64.5,
        1.76,
        93, 'Apur bat nekatuta.'
    ),
    (
        52,
        '2025-12-22 10:48:00',
        118,
        81,
        93.6,
        1.77,
        89, 'Kirola egin ondoren.'
    ),
    (
        53,
        '2025-12-22 07:15:00',
        116,
        85,
        75.2,
        1.75,
        77, 'Kirola egin ondoren.'
    ),
    (
        54,
        '2025-12-22 08:02:00',
        126,
        82,
        87.5,
        1.60,
        89, 'Gosariaren ondoren.'
    ),
    (
        55,
        '2025-12-22 09:08:00',
        132,
        75,
        80.7,
        1.76,
        68, 'Kirola egin ondoren.'
    ),
    (
        56,
        '2025-12-22 10:37:00',
        143,
        80,
        89.0,
        1.61,
        71, 'Baraualdian.'
    ),
    (
        58,
        '2025-12-22 08:00:00',
        133,
        79,
        66.2,
        1.68,
        87, 'Dena ondo.'
    ),
    (
        59,
        '2025-12-22 10:49:00',
        115,
        85,
        63.2,
        1.73,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2025-12-22 07:18:00',
        116,
        84,
        77.7,
        1.81,
        68, 'Dena ondo.'
    ),
    (
        61,
        '2025-12-22 09:52:00',
        116,
        81,
        72.4,
        1.83,
        74, 'Ondo sentitzen naiz.'
    ),
    (
        62,
        '2025-12-22 09:58:00',
        139,
        84,
        66.5,
        1.56,
        93, 'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-12-22 08:59:00',
        139,
        88,
        81.3,
        1.80,
        68, 'Gosariaren ondoren.'
    ),
    (
        64,
        '2025-12-22 09:05:00',
        125,
        79,
        94.6,
        1.56,
        89, 'Kirola egin ondoren.'
    ),
    (
        66,
        '2025-12-22 07:10:00',
        134,
        88,
        74.0,
        1.59,
        81, 'Apur bat nekatuta.'
    ),
    (
        67,
        '2025-12-22 10:21:00',
        135,
        83,
        71.2,
        1.72,
        78, 'Gosariaren ondoren.'
    ),
    (
        68,
        '2025-12-22 07:24:00',
        136,
        79,
        61.1,
        1.85,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2025-12-22 08:34:00',
        136,
        90,
        74.7,
        1.70,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2025-12-22 10:44:00',
        129,
        83,
        88.7,
        1.63,
        94, 'Gosariaren ondoren.'
    ),
    (
        72,
        '2025-12-22 08:46:00',
        132,
        81,
        92.7,
        1.69,
        77, 'Gosariaren ondoren.'
    ),
    (
        73,
        '2025-12-22 10:12:00',
        125,
        81,
        94.4,
        1.55,
        70, 'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2025-12-22 07:35:00',
        129,
        79,
        64.7,
        1.67,
        85, 'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2025-12-22 07:07:00',
        131,
        72,
        59.0,
        1.65,
        80, 'Baraualdian.'
    ),
    (
        79,
        '2025-12-22 07:40:00',
        126,
        79,
        66.2,
        1.67,
        76, 'Apur bat nekatuta.'
    ),
    (
        81,
        '2025-12-22 10:18:00',
        123,
        82,
        85.1,
        1.58,
        91, 'Baraualdian.'
    ),
    (
        82,
        '2025-12-22 08:59:00',
        131,
        94,
        89.0,
        1.77,
        86, 'Kirola egin ondoren.'
    ),
    (
        83,
        '2025-12-22 10:00:00',
        123,
        93,
        66.0,
        1.80,
        65, 'Apur bat nekatuta.'
    ),
    (
        84,
        '2025-12-22 10:36:00',
        122,
        77,
        78.2,
        1.67,
        67, 'Dena ondo.'
    ),
    (
        85,
        '2025-12-22 07:32:00',
        135,
        87,
        81.2,
        1.72,
        89, 'Dena ondo.'
    ),
    (
        86,
        '2025-12-22 07:31:00',
        133,
        74,
        67.0,
        1.57,
        85, 'Apur bat nekatuta.'
    ),
    (
        87,
        '2025-12-22 08:56:00',
        122,
        82,
        73.8,
        1.61,
        75, 'Gosariaren ondoren.'
    ),
    (
        88,
        '2025-12-22 09:55:00',
        129,
        86,
        89.8,
        1.81,
        79, 'Dena ondo.'
    ),
    (
        89,
        '2025-12-22 10:50:00',
        139,
        78,
        90.2,
        1.84,
        94, 'Gosariaren ondoren.'
    ),
    (
        90,
        '2025-12-22 10:54:00',
        138,
        87,
        66.3,
        1.60,
        87, 'Gosariaren ondoren.'
    ),
    (
        92,
        '2025-12-22 09:12:00',
        144,
        87,
        59.1,
        1.79,
        88, 'Gosariaren ondoren.'
    ),
    (
        93,
        '2025-12-22 08:01:00',
        131,
        91,
        76.1,
        1.81,
        67, 'Baraualdian.'
    ),
    (
        94,
        '2025-12-22 10:51:00',
        128,
        90,
        86.5,
        1.83,
        69, 'Ondo sentitzen naiz.'
    ),
    (
        95,
        '2025-12-22 09:15:00',
        132,
        83,
        89.2,
        1.77,
        65, 'Baraualdian.'
    ),
    (
        96,
        '2025-12-22 09:35:00',
        125,
        79,
        76.8,
        1.71,
        68, 'Apur bat nekatuta.'
    ),
    (
        97,
        '2025-12-22 09:49:00',
        136,
        76,
        86.2,
        1.56,
        91, 'Gosariaren ondoren.'
    ),
    (
        98,
        '2025-12-22 07:32:00',
        118,
        84,
        83.6,
        1.60,
        90, 'Baraualdian.'
    ),
    (
        99,
        '2025-12-22 08:47:00',
        129,
        85,
        85.2,
        1.71,
        75, 'Gosariaren ondoren.'
    ),
    (
        100,
        '2025-12-22 10:17:00',
        129,
        75,
        82.3,
        1.57,
        77, 'Kirola egin ondoren.'
    ),
    (
        52,
        '2025-12-23 08:00:00',
        127,
        81,
        93.0,
        1.77,
        75, 'Dena ondo.'
    ),
    (
        53,
        '2025-12-23 10:50:00',
        120,
        80,
        74.7,
        1.75,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        54,
        '2025-12-23 07:27:00',
        126,
        76,
        86.2,
        1.60,
        81, 'Dena ondo.'
    ),
    (
        56,
        '2025-12-23 09:45:00',
        144,
        83,
        90.0,
        1.61,
        93, 'Kirola egin ondoren.'
    ),
    (
        57,
        '2025-12-23 07:11:00',
        130,
        91,
        82.8,
        1.69,
        94, 'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2025-12-23 07:41:00',
        127,
        86,
        63.2,
        1.73,
        66, 'Gosariaren ondoren.'
    ),
    (
        60,
        '2025-12-23 10:41:00',
        122,
        86,
        78.9,
        1.81,
        74, 'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2025-12-23 07:14:00',
        119,
        78,
        73.1,
        1.83,
        77, 'Baraualdian.'
    ),
    (
        62,
        '2025-12-23 07:33:00',
        130,
        75,
        65.5,
        1.56,
        84, 'Kirola egin ondoren.'
    ),
    (
        63,
        '2025-12-23 09:07:00',
        125,
        85,
        81.6,
        1.80,
        73, 'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2025-12-23 09:30:00',
        125,
        84,
        91.1,
        1.55,
        91, 'Ondo sentitzen naiz.'
    ),
    (
        66,
        '2025-12-23 09:39:00',
        124,
        76,
        74.0,
        1.59,
        88, 'Gosariaren ondoren.'
    ),
    (
        68,
        '2025-12-23 07:23:00',
        126,
        85,
        61.8,
        1.85,
        70, 'Gosariaren ondoren.'
    ),
    (
        69,
        '2025-12-23 09:13:00',
        126,
        87,
        95.5,
        1.66,
        87, 'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2025-12-23 08:14:00',
        130,
        88,
        74.1,
        1.70,
        74, 'Dena ondo.'
    ),
    (
        71,
        '2025-12-23 07:28:00',
        123,
        76,
        89.5,
        1.63,
        75, 'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2025-12-23 08:40:00',
        141,
        76,
        91.3,
        1.69,
        91, 'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2025-12-23 10:36:00',
        122,
        79,
        94.3,
        1.55,
        94, 'Apur bat nekatuta.'
    ),
    (
        74,
        '2025-12-23 09:44:00',
        131,
        85,
        64.3,
        1.67,
        69, 'Dena ondo.'
    ),
    (
        75,
        '2025-12-23 08:40:00',
        125,
        74,
        60.6,
        1.65,
        80, 'Dena ondo.'
    ),
    (
        76,
        '2025-12-23 09:55:00',
        130,
        93,
        65.6,
        1.69,
        94, 'Baraualdian.'
    ),
    (
        77,
        '2025-12-23 07:26:00',
        128,
        93,
        66.3,
        1.67,
        81, 'Kirola egin ondoren.'
    ),
    (
        78,
        '2025-12-23 10:56:00',
        124,
        78,
        62.5,
        1.61,
        65, 'Baraualdian.'
    ),
    (
        79,
        '2025-12-23 10:46:00',
        141,
        81,
        66.8,
        1.67,
        83, 'Gosariaren ondoren.'
    ),
    (
        82,
        '2025-12-23 09:03:00',
        141,
        86,
        89.0,
        1.77,
        91, 'Dena ondo.'
    ),
    (
        83,
        '2025-12-23 09:07:00',
        128,
        83,
        65.2,
        1.80,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2025-12-23 08:31:00',
        125,
        79,
        79.7,
        1.67,
        92, 'Gosariaren ondoren.'
    ),
    (
        85,
        '2025-12-23 07:16:00',
        124,
        90,
        80.9,
        1.72,
        86, 'Apur bat nekatuta.'
    ),
    (
        86,
        '2025-12-23 09:46:00',
        126,
        74,
        68.8,
        1.57,
        71, 'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2025-12-23 10:18:00',
        124,
        88,
        73.4,
        1.61,
        77, 'Gosariaren ondoren.'
    ),
    (
        88,
        '2025-12-23 08:40:00',
        125,
        72,
        91.0,
        1.81,
        85, 'Dena ondo.'
    ),
    (
        91,
        '2025-12-23 08:48:00',
        134,
        81,
        89.1,
        1.58,
        74, 'Baraualdian.'
    ),
    (
        92,
        '2025-12-23 10:29:00',
        131,
        92,
        59.0,
        1.79,
        69, 'Baraualdian.'
    ),
    (
        93,
        '2025-12-23 07:54:00',
        129,
        89,
        76.7,
        1.81,
        90, 'Baraualdian.'
    ),
    (
        95,
        '2025-12-23 07:54:00',
        143,
        74,
        90.3,
        1.77,
        77, 'Apur bat nekatuta.'
    ),
    (
        96,
        '2025-12-23 09:30:00',
        125,
        74,
        77.8,
        1.71,
        78, 'Baraualdian.'
    ),
    (
        98,
        '2025-12-23 09:13:00',
        136,
        85,
        83.3,
        1.60,
        79, 'Ondo sentitzen naiz.'
    ),
    (
        99,
        '2025-12-23 09:17:00',
        123,
        75,
        85.0,
        1.71,
        71, 'Gosariaren ondoren.'
    ),
    (
        51,
        '2025-12-24 09:56:00',
        134,
        86,
        64.0,
        1.76,
        80, 'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2025-12-24 09:31:00',
        119,
        80,
        74.1,
        1.75,
        82, 'Apur bat nekatuta.'
    ),
    (
        54,
        '2025-12-24 09:33:00',
        138,
        88,
        87.9,
        1.60,
        87, 'Apur bat nekatuta.'
    ),
    (
        55,
        '2025-12-24 09:18:00',
        130,
        73,
        80.7,
        1.76,
        85, 'Ondo sentitzen naiz.'
    ),
    (
        57,
        '2025-12-24 08:06:00',
        123,
        79,
        83.7,
        1.69,
        94, 'Ondo sentitzen naiz.'
    ),
    (
        58,
        '2025-12-24 08:10:00',
        134,
        84,
        66.9,
        1.68,
        87, 'Gosariaren ondoren.'
    ),
    (
        59,
        '2025-12-24 10:37:00',
        128,
        95,
        62.3,
        1.73,
        87, 'Dena ondo.'
    ),
    (
        60,
        '2025-12-24 07:01:00',
        130,
        82,
        79.0,
        1.81,
        82, 'Dena ondo.'
    ),
    (
        61,
        '2025-12-24 07:06:00',
        125,
        93,
        73.6,
        1.83,
        75, 'Ondo sentitzen naiz.'
    ),
    (
        62,
        '2025-12-24 08:56:00',
        131,
        75,
        65.1,
        1.56,
        66, 'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2025-12-24 09:58:00',
        130,
        86,
        81.3,
        1.80,
        80, 'Apur bat nekatuta.'
    ),
    (
        64,
        '2025-12-24 10:04:00',
        130,
        83,
        95.4,
        1.56,
        81, 'Baraualdian.'
    ),
    (
        65,
        '2025-12-24 08:13:00',
        136,
        86,
        91.8,
        1.55,
        86, 'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2025-12-24 08:20:00',
        137,
        77,
        71.3,
        1.72,
        89, 'Baraualdian.'
    ),
    (
        68,
        '2025-12-24 09:05:00',
        126,
        86,
        60.9,
        1.85,
        79, 'Baraualdian.'
    ),
    (
        69,
        '2025-12-24 07:19:00',
        144,
        91,
        95.7,
        1.66,
        92, 'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-12-24 10:26:00',
        136,
        80,
        75.9,
        1.70,
        81, 'Baraualdian.'
    ),
    (
        71,
        '2025-12-24 07:17:00',
        138,
        79,
        88.0,
        1.63,
        84, 'Baraualdian.'
    ),
    (
        73,
        '2025-12-24 09:01:00',
        130,
        79,
        95.7,
        1.55,
        67, 'Gosariaren ondoren.'
    ),
    (
        74,
        '2025-12-24 09:33:00',
        127,
        78,
        63.0,
        1.67,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2025-12-24 10:31:00',
        129,
        83,
        59.6,
        1.65,
        84, 'Baraualdian.'
    ),
    (
        76,
        '2025-12-24 07:57:00',
        116,
        88,
        66.9,
        1.69,
        86, 'Baraualdian.'
    ),
    (
        77,
        '2025-12-24 09:56:00',
        125,
        79,
        66.9,
        1.67,
        81, 'Apur bat nekatuta.'
    ),
    (
        78,
        '2025-12-24 08:02:00',
        131,
        73,
        64.0,
        1.61,
        88, 'Gosariaren ondoren.'
    ),
    (
        81,
        '2025-12-24 09:35:00',
        121,
        88,
        86.9,
        1.58,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2025-12-24 08:55:00',
        133,
        93,
        88.0,
        1.77,
        84, 'Kirola egin ondoren.'
    ),
    (
        83,
        '2025-12-24 10:31:00',
        117,
        80,
        64.7,
        1.80,
        66, 'Ondo sentitzen naiz.'
    ),
    (
        85,
        '2025-12-24 08:20:00',
        139,
        82,
        81.4,
        1.72,
        85, 'Kirola egin ondoren.'
    ),
    (
        86,
        '2025-12-24 07:23:00',
        139,
        81,
        68.8,
        1.57,
        69, 'Kirola egin ondoren.'
    ),
    (
        87,
        '2025-12-24 08:08:00',
        129,
        74,
        73.2,
        1.61,
        65, 'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2025-12-24 08:38:00',
        117,
        76,
        89.8,
        1.81,
        72, 'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2025-12-24 07:11:00',
        144,
        82,
        59.4,
        1.79,
        70, 'Gosariaren ondoren.'
    ),
    (
        93,
        '2025-12-24 10:58:00',
        133,
        84,
        76.2,
        1.81,
        84, 'Dena ondo.'
    ),
    (
        95,
        '2025-12-24 07:01:00',
        143,
        86,
        89.6,
        1.77,
        71, 'Baraualdian.'
    ),
    (
        96,
        '2025-12-24 09:55:00',
        120,
        80,
        76.0,
        1.71,
        83, 'Dena ondo.'
    ),
    (
        97,
        '2025-12-24 10:11:00',
        124,
        78,
        86.2,
        1.56,
        78, 'Baraualdian.'
    ),
    (
        98,
        '2025-12-24 08:19:00',
        129,
        83,
        83.2,
        1.60,
        86, 'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2025-12-24 07:16:00',
        136,
        72,
        83.0,
        1.57,
        85, 'Dena ondo.'
    ),
    (
        54,
        '2025-12-25 09:02:00',
        137,
        78,
        86.4,
        1.60,
        88, 'Baraualdian.'
    ),
    (
        55,
        '2025-12-25 08:41:00',
        139,
        75,
        80.5,
        1.76,
        82, 'Apur bat nekatuta.'
    ),
    (
        57,
        '2025-12-25 08:01:00',
        136,
        94,
        83.9,
        1.69,
        71, 'Apur bat nekatuta.'
    ),
    (
        58,
        '2025-12-25 09:31:00',
        136,
        84,
        67.9,
        1.68,
        73, 'Baraualdian.'
    ),
    (
        59,
        '2025-12-25 09:17:00',
        129,
        86,
        62.3,
        1.73,
        75, 'Kirola egin ondoren.'
    ),
    (
        60,
        '2025-12-25 09:53:00',
        116,
        86,
        78.6,
        1.81,
        71, 'Dena ondo.'
    ),
    (
        61,
        '2025-12-25 10:21:00',
        123,
        80,
        73.2,
        1.83,
        87, 'Gosariaren ondoren.'
    ),
    (
        62,
        '2025-12-25 07:45:00',
        130,
        72,
        66.1,
        1.56,
        76, 'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-12-25 10:25:00',
        126,
        90,
        81.7,
        1.80,
        68, 'Dena ondo.'
    ),
    (
        64,
        '2025-12-25 08:04:00',
        139,
        81,
        94.2,
        1.56,
        89, 'Apur bat nekatuta.'
    ),
    (
        65,
        '2025-12-25 10:37:00',
        121,
        91,
        91.2,
        1.55,
        82, 'Apur bat nekatuta.'
    ),
    (
        66,
        '2025-12-25 08:04:00',
        125,
        91,
        74.0,
        1.59,
        74, 'Baraualdian.'
    ),
    (
        67,
        '2025-12-25 07:18:00',
        128,
        85,
        73.0,
        1.72,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        68,
        '2025-12-25 10:46:00',
        140,
        82,
        60.1,
        1.85,
        90, 'Ondo sentitzen naiz.'
    ),
    (
        69,
        '2025-12-25 07:22:00',
        137,
        87,
        95.7,
        1.66,
        85, 'Ondo sentitzen naiz.'
    ),
    (
        70,
        '2025-12-25 07:44:00',
        124,
        85,
        74.7,
        1.70,
        85, 'Gosariaren ondoren.'
    ),
    (
        72,
        '2025-12-25 07:03:00',
        127,
        83,
        92.0,
        1.69,
        70, 'Kirola egin ondoren.'
    ),
    (
        73,
        '2025-12-25 09:07:00',
        129,
        78,
        94.3,
        1.55,
        94, 'Apur bat nekatuta.'
    ),
    (
        74,
        '2025-12-25 09:50:00',
        122,
        82,
        63.7,
        1.67,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2025-12-25 07:50:00',
        138,
        74,
        59.5,
        1.65,
        91, 'Dena ondo.'
    ),
    (
        78,
        '2025-12-25 09:36:00',
        131,
        84,
        63.9,
        1.61,
        94, 'Kirola egin ondoren.'
    ),
    (
        79,
        '2025-12-25 08:37:00',
        133,
        77,
        66.4,
        1.67,
        85, 'Apur bat nekatuta.'
    ),
    (
        80,
        '2025-12-25 10:52:00',
        136,
        92,
        62.8,
        1.78,
        90, 'Baraualdian.'
    ),
    (
        82,
        '2025-12-25 09:56:00',
        135,
        86,
        89.8,
        1.77,
        71, 'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2025-12-25 08:47:00',
        119,
        92,
        64.1,
        1.80,
        74, 'Apur bat nekatuta.'
    ),
    (
        84,
        '2025-12-25 10:59:00',
        134,
        77,
        78.3,
        1.67,
        75, 'Dena ondo.'
    ),
    (
        85,
        '2025-12-25 08:27:00',
        126,
        86,
        80.9,
        1.72,
        79, 'Kirola egin ondoren.'
    ),
    (
        86,
        '2025-12-25 07:17:00',
        143,
        81,
        68.4,
        1.57,
        77, 'Baraualdian.'
    ),
    (
        87,
        '2025-12-25 09:05:00',
        133,
        88,
        73.0,
        1.61,
        67, 'Baraualdian.'
    ),
    (
        88,
        '2025-12-25 09:21:00',
        113,
        83,
        90.6,
        1.81,
        79, 'Apur bat nekatuta.'
    ),
    (
        89,
        '2025-12-25 07:59:00',
        137,
        91,
        91.6,
        1.84,
        66, 'Kirola egin ondoren.'
    ),
    (
        90,
        '2025-12-25 07:46:00',
        132,
        79,
        65.7,
        1.60,
        89, 'Gosariaren ondoren.'
    ),
    (
        91,
        '2025-12-25 08:58:00',
        127,
        83,
        90.9,
        1.58,
        74, 'Gosariaren ondoren.'
    ),
    (
        92,
        '2025-12-25 09:58:00',
        132,
        80,
        61.0,
        1.79,
        86, 'Gosariaren ondoren.'
    ),
    (
        93,
        '2025-12-25 09:35:00',
        132,
        92,
        76.9,
        1.81,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2025-12-25 10:27:00',
        128,
        85,
        87.1,
        1.83,
        67, 'Kirola egin ondoren.'
    ),
    (
        95,
        '2025-12-25 08:53:00',
        131,
        82,
        89.0,
        1.77,
        76, 'Baraualdian.'
    ),
    (
        96,
        '2025-12-25 07:25:00',
        131,
        81,
        76.1,
        1.71,
        69, 'Dena ondo.'
    ),
    (
        97,
        '2025-12-25 07:59:00',
        135,
        75,
        88.0,
        1.56,
        91, 'Apur bat nekatuta.'
    ),
    (
        98,
        '2025-12-25 10:05:00',
        132,
        77,
        84.4,
        1.60,
        92, 'Baraualdian.'
    ),
    (
        100,
        '2025-12-25 08:49:00',
        136,
        83,
        82.8,
        1.57,
        92, 'Gosariaren ondoren.'
    ),
    (
        51,
        '2025-12-26 07:29:00',
        128,
        93,
        63.6,
        1.76,
        83, 'Gosariaren ondoren.'
    ),
    (
        52,
        '2025-12-26 09:43:00',
        122,
        81,
        95.0,
        1.77,
        79, 'Kirola egin ondoren.'
    ),
    (
        53,
        '2025-12-26 10:20:00',
        113,
        92,
        74.0,
        1.75,
        93, 'Kirola egin ondoren.'
    ),
    (
        54,
        '2025-12-26 08:17:00',
        135,
        80,
        86.9,
        1.60,
        86, 'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2025-12-26 07:57:00',
        142,
        79,
        81.0,
        1.76,
        77, 'Kirola egin ondoren.'
    ),
    (
        56,
        '2025-12-26 07:03:00',
        139,
        83,
        89.1,
        1.61,
        65, 'Kirola egin ondoren.'
    ),
    (
        57,
        '2025-12-26 07:33:00',
        119,
        82,
        82.1,
        1.69,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2025-12-26 07:26:00',
        138,
        81,
        66.5,
        1.68,
        74, 'Ondo sentitzen naiz.'
    ),
    (
        60,
        '2025-12-26 09:34:00',
        128,
        83,
        77.2,
        1.81,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        61,
        '2025-12-26 08:05:00',
        126,
        88,
        72.5,
        1.83,
        87, 'Dena ondo.'
    ),
    (
        63,
        '2025-12-26 10:00:00',
        136,
        90,
        81.2,
        1.80,
        94, 'Dena ondo.'
    ),
    (
        64,
        '2025-12-26 08:18:00',
        127,
        85,
        94.3,
        1.56,
        69, 'Gosariaren ondoren.'
    ),
    (
        66,
        '2025-12-26 10:26:00',
        120,
        78,
        74.1,
        1.59,
        72, 'Gosariaren ondoren.'
    ),
    (
        67,
        '2025-12-26 09:13:00',
        134,
        88,
        72.7,
        1.72,
        78, 'Gaur goizean neurtuta.'
    ),
    (
        68,
        '2025-12-26 09:46:00',
        138,
        72,
        60.0,
        1.85,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2025-12-26 09:28:00',
        142,
        76,
        95.0,
        1.66,
        86, 'Dena ondo.'
    ),
    (
        70,
        '2025-12-26 10:33:00',
        117,
        76,
        74.1,
        1.70,
        80, 'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2025-12-26 07:41:00',
        129,
        86,
        64.8,
        1.67,
        94, 'Apur bat nekatuta.'
    ),
    (
        75,
        '2025-12-26 07:48:00',
        126,
        77,
        60.6,
        1.65,
        94, 'Kirola egin ondoren.'
    ),
    (
        78,
        '2025-12-26 10:49:00',
        121,
        84,
        63.8,
        1.61,
        77, 'Kirola egin ondoren.'
    ),
    (
        79,
        '2025-12-26 07:16:00',
        142,
        74,
        66.4,
        1.67,
        80, 'Baraualdian.'
    ),
    (
        80,
        '2025-12-26 07:32:00',
        131,
        90,
        62.5,
        1.78,
        78, 'Baraualdian.'
    ),
    (
        81,
        '2025-12-26 07:33:00',
        129,
        80,
        85.6,
        1.58,
        80, 'Gosariaren ondoren.'
    ),
    (
        82,
        '2025-12-26 10:16:00',
        124,
        80,
        89.2,
        1.77,
        68, 'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2025-12-26 10:22:00',
        119,
        93,
        64.2,
        1.80,
        83, 'Dena ondo.'
    ),
    (
        85,
        '2025-12-26 07:20:00',
        120,
        80,
        80.5,
        1.72,
        87, 'Kirola egin ondoren.'
    ),
    (
        86,
        '2025-12-26 08:01:00',
        132,
        76,
        67.1,
        1.57,
        86, 'Kirola egin ondoren.'
    ),
    (
        88,
        '2025-12-26 10:47:00',
        121,
        73,
        89.6,
        1.81,
        66, 'Kirola egin ondoren.'
    ),
    (
        89,
        '2025-12-26 07:38:00',
        138,
        89,
        91.7,
        1.84,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2025-12-26 08:05:00',
        136,
        87,
        60.2,
        1.79,
        69, 'Gosariaren ondoren.'
    ),
    (
        93,
        '2025-12-26 08:41:00',
        139,
        91,
        76.8,
        1.81,
        80, 'Baraualdian.'
    ),
    (
        94,
        '2025-12-26 08:29:00',
        127,
        79,
        87.5,
        1.83,
        78, 'Kirola egin ondoren.'
    ),
    (
        95,
        '2025-12-26 08:43:00',
        126,
        76,
        89.9,
        1.77,
        66, 'Gosariaren ondoren.'
    ),
    (
        96,
        '2025-12-26 10:57:00',
        121,
        80,
        77.3,
        1.71,
        89, 'Dena ondo.'
    ),
    (
        97,
        '2025-12-26 10:15:00',
        137,
        82,
        87.5,
        1.56,
        91, 'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2025-12-26 07:21:00',
        123,
        90,
        85.0,
        1.60,
        91, 'Gosariaren ondoren.'
    ),
    (
        99,
        '2025-12-26 08:27:00',
        136,
        75,
        85.7,
        1.71,
        65, 'Gosariaren ondoren.'
    ),
    (
        100,
        '2025-12-26 08:19:00',
        133,
        83,
        81.4,
        1.57,
        65, 'Kirola egin ondoren.'
    ),
    (
        52,
        '2025-12-27 09:37:00',
        119,
        91,
        94.7,
        1.77,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2025-12-27 10:23:00',
        133,
        85,
        86.5,
        1.60,
        84, 'Gosariaren ondoren.'
    ),
    (
        55,
        '2025-12-27 07:30:00',
        133,
        73,
        81.1,
        1.76,
        87, 'Kirola egin ondoren.'
    ),
    (
        56,
        '2025-12-27 10:08:00',
        145,
        90,
        90.2,
        1.61,
        83, 'Gosariaren ondoren.'
    ),
    (
        57,
        '2025-12-27 08:41:00',
        135,
        94,
        82.9,
        1.69,
        78, 'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2025-12-27 09:35:00',
        128,
        81,
        67.8,
        1.68,
        89, 'Ondo sentitzen naiz.'
    ),
    (
        59,
        '2025-12-27 08:36:00',
        121,
        93,
        62.1,
        1.73,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2025-12-27 09:27:00',
        131,
        90,
        77.1,
        1.81,
        76, 'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2025-12-27 07:27:00',
        112,
        86,
        73.4,
        1.83,
        87, 'Baraualdian.'
    ),
    (
        62,
        '2025-12-27 08:03:00',
        131,
        71,
        66.2,
        1.56,
        69, 'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-12-27 08:26:00',
        133,
        90,
        81.2,
        1.80,
        81, 'Dena ondo.'
    ),
    (
        64,
        '2025-12-27 10:48:00',
        136,
        81,
        95.8,
        1.56,
        86, 'Apur bat nekatuta.'
    ),
    (
        65,
        '2025-12-27 07:11:00',
        123,
        85,
        90.9,
        1.55,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2025-12-27 09:44:00',
        129,
        78,
        74.6,
        1.59,
        75, 'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2025-12-27 10:12:00',
        128,
        87,
        72.4,
        1.72,
        76, 'Kirola egin ondoren.'
    ),
    (
        68,
        '2025-12-27 08:30:00',
        134,
        83,
        61.7,
        1.85,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2025-12-27 10:04:00',
        126,
        80,
        94.9,
        1.66,
        88, 'Baraualdian.'
    ),
    (
        71,
        '2025-12-27 08:55:00',
        129,
        71,
        89.6,
        1.63,
        90, 'Kirola egin ondoren.'
    ),
    (
        72,
        '2025-12-27 10:46:00',
        125,
        86,
        92.1,
        1.69,
        67, 'Baraualdian.'
    ),
    (
        75,
        '2025-12-27 10:30:00',
        130,
        85,
        59.4,
        1.65,
        76, 'Gosariaren ondoren.'
    ),
    (
        76,
        '2025-12-27 10:25:00',
        121,
        93,
        66.8,
        1.69,
        77, 'Baraualdian.'
    ),
    (
        78,
        '2025-12-27 07:44:00',
        119,
        85,
        62.8,
        1.61,
        81, 'Gosariaren ondoren.'
    ),
    (
        79,
        '2025-12-27 10:47:00',
        138,
        80,
        66.5,
        1.67,
        88, 'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2025-12-27 09:47:00',
        134,
        81,
        62.3,
        1.78,
        70, 'Ondo sentitzen naiz.'
    ),
    (
        81,
        '2025-12-27 09:10:00',
        134,
        83,
        86.1,
        1.58,
        74, 'Gosariaren ondoren.'
    ),
    (
        82,
        '2025-12-27 08:20:00',
        138,
        89,
        88.8,
        1.77,
        87, 'Gaur goizean neurtuta.'
    ),
    (
        83,
        '2025-12-27 09:39:00',
        122,
        91,
        64.8,
        1.80,
        75, 'Kirola egin ondoren.'
    ),
    (
        84,
        '2025-12-27 08:43:00',
        127,
        84,
        78.7,
        1.67,
        79, 'Dena ondo.'
    ),
    (
        85,
        '2025-12-27 10:54:00',
        124,
        86,
        81.2,
        1.72,
        92, 'Baraualdian.'
    ),
    (
        86,
        '2025-12-27 08:37:00',
        133,
        74,
        69.0,
        1.57,
        77, 'Gosariaren ondoren.'
    ),
    (
        88,
        '2025-12-27 07:05:00',
        113,
        85,
        89.2,
        1.81,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        90,
        '2025-12-27 09:21:00',
        122,
        91,
        65.1,
        1.60,
        68, 'Apur bat nekatuta.'
    ),
    (
        91,
        '2025-12-27 08:09:00',
        143,
        91,
        90.8,
        1.58,
        79, 'Dena ondo.'
    ),
    (
        92,
        '2025-12-27 08:22:00',
        130,
        85,
        59.0,
        1.79,
        91, 'Gosariaren ondoren.'
    ),
    (
        93,
        '2025-12-27 08:57:00',
        137,
        94,
        75.0,
        1.81,
        67, 'Apur bat nekatuta.'
    ),
    (
        94,
        '2025-12-27 10:51:00',
        133,
        85,
        87.2,
        1.83,
        73, 'Apur bat nekatuta.'
    ),
    (
        95,
        '2025-12-27 10:31:00',
        141,
        74,
        89.9,
        1.77,
        90, 'Apur bat nekatuta.'
    ),
    (
        96,
        '2025-12-27 10:36:00',
        131,
        81,
        77.5,
        1.71,
        88, 'Dena ondo.'
    ),
    (
        97,
        '2025-12-27 08:24:00',
        126,
        75,
        86.3,
        1.56,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        98,
        '2025-12-27 09:42:00',
        138,
        83,
        83.0,
        1.60,
        71, 'Gaur goizean neurtuta.'
    ),
    (
        99,
        '2025-12-27 10:43:00',
        136,
        76,
        85.6,
        1.71,
        73, 'Baraualdian.'
    ),
    (
        100,
        '2025-12-27 08:16:00',
        134,
        83,
        81.1,
        1.57,
        90, 'Ondo sentitzen naiz.'
    ),
    (
        52,
        '2025-12-28 08:33:00',
        133,
        88,
        94.0,
        1.77,
        70, 'Apur bat nekatuta.'
    ),
    (
        53,
        '2025-12-28 08:35:00',
        116,
        92,
        75.2,
        1.75,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2025-12-28 10:53:00',
        136,
        84,
        86.1,
        1.60,
        88, 'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2025-12-28 08:03:00',
        135,
        82,
        80.7,
        1.76,
        85, 'Gosariaren ondoren.'
    ),
    (
        56,
        '2025-12-28 07:09:00',
        128,
        91,
        90.6,
        1.61,
        71, 'Gaur goizean neurtuta.'
    ),
    (
        57,
        '2025-12-28 08:16:00',
        129,
        85,
        84.0,
        1.69,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2025-12-28 08:53:00',
        115,
        93,
        62.3,
        1.73,
        76, 'Gosariaren ondoren.'
    ),
    (
        60,
        '2025-12-28 08:36:00',
        118,
        82,
        77.5,
        1.81,
        71, 'Dena ondo.'
    ),
    (
        61,
        '2025-12-28 07:46:00',
        111,
        82,
        73.9,
        1.83,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        62,
        '2025-12-28 07:56:00',
        123,
        83,
        66.4,
        1.56,
        75, 'Gosariaren ondoren.'
    ),
    (
        64,
        '2025-12-28 07:23:00',
        131,
        88,
        94.9,
        1.56,
        91, 'Baraualdian.'
    ),
    (
        65,
        '2025-12-28 08:14:00',
        137,
        87,
        90.2,
        1.55,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2025-12-28 09:04:00',
        117,
        81,
        75.7,
        1.59,
        92, 'Dena ondo.'
    ),
    (
        67,
        '2025-12-28 10:59:00',
        125,
        84,
        71.9,
        1.72,
        70, 'Kirola egin ondoren.'
    ),
    (
        68,
        '2025-12-28 08:18:00',
        127,
        73,
        60.1,
        1.85,
        93, 'Baraualdian.'
    ),
    (
        69,
        '2025-12-28 10:31:00',
        126,
        76,
        94.4,
        1.66,
        68, 'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2025-12-28 09:41:00',
        117,
        79,
        74.3,
        1.70,
        65, 'Apur bat nekatuta.'
    ),
    (
        71,
        '2025-12-28 07:28:00',
        134,
        72,
        89.5,
        1.63,
        79, 'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2025-12-28 09:23:00',
        136,
        78,
        92.9,
        1.69,
        74, 'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2025-12-28 07:43:00',
        118,
        83,
        95.6,
        1.55,
        90, 'Apur bat nekatuta.'
    ),
    (
        74,
        '2025-12-28 08:08:00',
        114,
        86,
        63.0,
        1.67,
        79, 'Gosariaren ondoren.'
    ),
    (
        75,
        '2025-12-28 08:22:00',
        127,
        76,
        59.3,
        1.65,
        91, 'Gosariaren ondoren.'
    ),
    (
        76,
        '2025-12-28 10:25:00',
        130,
        84,
        65.7,
        1.69,
        78, 'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2025-12-28 10:31:00',
        120,
        86,
        63.7,
        1.61,
        90, 'Apur bat nekatuta.'
    ),
    (
        79,
        '2025-12-28 08:57:00',
        125,
        82,
        66.5,
        1.67,
        65, 'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2025-12-28 07:01:00',
        138,
        85,
        63.3,
        1.78,
        71, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2025-12-28 10:42:00',
        136,
        82,
        86.6,
        1.58,
        93, 'Gosariaren ondoren.'
    ),
    (
        83,
        '2025-12-28 10:02:00',
        130,
        94,
        65.5,
        1.80,
        91, 'Dena ondo.'
    ),
    (
        84,
        '2025-12-28 10:05:00',
        136,
        84,
        79.6,
        1.67,
        80, 'Gosariaren ondoren.'
    ),
    (
        85,
        '2025-12-28 08:48:00',
        132,
        88,
        81.9,
        1.72,
        75, 'Apur bat nekatuta.'
    ),
    (
        87,
        '2025-12-28 10:18:00',
        125,
        74,
        72.5,
        1.61,
        80, 'Dena ondo.'
    ),
    (
        88,
        '2025-12-28 08:15:00',
        122,
        84,
        89.2,
        1.81,
        74, 'Kirola egin ondoren.'
    ),
    (
        89,
        '2025-12-28 07:09:00',
        139,
        79,
        91.8,
        1.84,
        65, 'Ondo sentitzen naiz.'
    ),
    (
        90,
        '2025-12-28 08:24:00',
        130,
        82,
        65.0,
        1.60,
        68, 'Gosariaren ondoren.'
    ),
    (
        93,
        '2025-12-28 07:40:00',
        125,
        94,
        76.3,
        1.81,
        94, 'Ondo sentitzen naiz.'
    ),
    (
        94,
        '2025-12-28 09:32:00',
        135,
        79,
        87.3,
        1.83,
        88, 'Dena ondo.'
    ),
    (
        95,
        '2025-12-28 07:11:00',
        125,
        75,
        89.9,
        1.77,
        90, 'Dena ondo.'
    ),
    (
        97,
        '2025-12-28 08:20:00',
        136,
        80,
        86.7,
        1.56,
        91, 'Gosariaren ondoren.'
    ),
    (
        98,
        '2025-12-28 07:36:00',
        129,
        78,
        84.7,
        1.60,
        82, 'Dena ondo.'
    ),
    (
        99,
        '2025-12-28 09:24:00',
        121,
        86,
        86.1,
        1.71,
        88, 'Kirola egin ondoren.'
    ),
    (
        100,
        '2025-12-28 07:32:00',
        133,
        73,
        82.9,
        1.57,
        65, 'Baraualdian.'
    ),
    (
        52,
        '2025-12-29 07:32:00',
        119,
        93,
        93.8,
        1.77,
        73, 'Gosariaren ondoren.'
    ),
    (
        53,
        '2025-12-29 09:25:00',
        130,
        79,
        74.0,
        1.75,
        76, 'Baraualdian.'
    ),
    (
        54,
        '2025-12-29 08:36:00',
        126,
        78,
        86.2,
        1.60,
        76, 'Kirola egin ondoren.'
    ),
    (
        55,
        '2025-12-29 07:31:00',
        124,
        81,
        81.6,
        1.76,
        89, 'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2025-12-29 08:15:00',
        138,
        93,
        90.4,
        1.61,
        74, 'Gosariaren ondoren.'
    ),
    (
        58,
        '2025-12-29 07:55:00',
        132,
        84,
        66.8,
        1.68,
        91, 'Baraualdian.'
    ),
    (
        59,
        '2025-12-29 07:13:00',
        122,
        95,
        62.6,
        1.73,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2025-12-29 07:19:00',
        123,
        80,
        78.6,
        1.81,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        61,
        '2025-12-29 08:14:00',
        113,
        93,
        72.9,
        1.83,
        86, 'Apur bat nekatuta.'
    ),
    (
        63,
        '2025-12-29 07:54:00',
        138,
        83,
        81.9,
        1.80,
        91, 'Dena ondo.'
    ),
    (
        64,
        '2025-12-29 08:19:00',
        126,
        86,
        95.6,
        1.56,
        89, 'Dena ondo.'
    ),
    (
        66,
        '2025-12-29 09:42:00',
        120,
        88,
        75.9,
        1.59,
        67, 'Dena ondo.'
    ),
    (
        67,
        '2025-12-29 08:01:00',
        130,
        81,
        72.5,
        1.72,
        78, 'Kirola egin ondoren.'
    ),
    (
        69,
        '2025-12-29 09:59:00',
        125,
        88,
        94.1,
        1.66,
        69, 'Kirola egin ondoren.'
    ),
    (
        70,
        '2025-12-29 08:17:00',
        122,
        75,
        75.5,
        1.70,
        90, 'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2025-12-29 08:14:00',
        135,
        77,
        89.5,
        1.63,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2025-12-29 08:02:00',
        138,
        74,
        92.8,
        1.69,
        81, 'Gosariaren ondoren.'
    ),
    (
        73,
        '2025-12-29 07:50:00',
        123,
        73,
        95.4,
        1.55,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2025-12-29 08:35:00',
        117,
        88,
        64.0,
        1.67,
        79, 'Kirola egin ondoren.'
    ),
    (
        75,
        '2025-12-29 08:31:00',
        128,
        82,
        59.6,
        1.65,
        86, 'Gosariaren ondoren.'
    ),
    (
        77,
        '2025-12-29 09:24:00',
        126,
        88,
        66.1,
        1.67,
        80, 'Gaur goizean neurtuta.'
    ),
    (
        78,
        '2025-12-29 09:14:00',
        117,
        78,
        62.2,
        1.61,
        67, 'Apur bat nekatuta.'
    ),
    (
        81,
        '2025-12-29 09:15:00',
        122,
        95,
        86.2,
        1.58,
        80, 'Baraualdian.'
    ),
    (
        82,
        '2025-12-29 07:15:00',
        125,
        84,
        89.1,
        1.77,
        74, 'Dena ondo.'
    ),
    (
        83,
        '2025-12-29 07:05:00',
        125,
        86,
        65.9,
        1.80,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        85,
        '2025-12-29 08:16:00',
        131,
        87,
        80.5,
        1.72,
        79, 'Apur bat nekatuta.'
    ),
    (
        86,
        '2025-12-29 10:11:00',
        126,
        79,
        68.8,
        1.57,
        84, 'Apur bat nekatuta.'
    ),
    (
        87,
        '2025-12-29 07:41:00',
        133,
        87,
        72.8,
        1.61,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        88,
        '2025-12-29 09:44:00',
        111,
        80,
        91.0,
        1.81,
        73, 'Baraualdian.'
    ),
    (
        90,
        '2025-12-29 07:12:00',
        130,
        88,
        66.1,
        1.60,
        91, 'Apur bat nekatuta.'
    ),
    (
        91,
        '2025-12-29 07:39:00',
        127,
        76,
        89.6,
        1.58,
        89, 'Baraualdian.'
    ),
    (
        92,
        '2025-12-29 08:15:00',
        127,
        83,
        59.3,
        1.79,
        82, 'Dena ondo.'
    ),
    (
        93,
        '2025-12-29 09:33:00',
        132,
        86,
        76.4,
        1.81,
        71, 'Dena ondo.'
    ),
    (
        94,
        '2025-12-29 07:41:00',
        122,
        87,
        86.8,
        1.83,
        91, 'Baraualdian.'
    ),
    (
        95,
        '2025-12-29 07:11:00',
        144,
        86,
        90.2,
        1.77,
        89, 'Kirola egin ondoren.'
    ),
    (
        96,
        '2025-12-29 07:54:00',
        129,
        87,
        77.9,
        1.71,
        86, 'Ondo sentitzen naiz.'
    ),
    (
        97,
        '2025-12-29 08:08:00',
        126,
        79,
        87.1,
        1.56,
        80, 'Kirola egin ondoren.'
    ),
    (
        98,
        '2025-12-29 07:41:00',
        120,
        88,
        85.0,
        1.60,
        69, 'Ondo sentitzen naiz.'
    ),
    (
        100,
        '2025-12-29 09:10:00',
        125,
        78,
        82.6,
        1.57,
        85, 'Dena ondo.'
    ),
    (
        51,
        '2025-12-30 09:02:00',
        122,
        88,
        65.0,
        1.76,
        81, 'Gosariaren ondoren.'
    ),
    (
        52,
        '2025-12-30 07:50:00',
        128,
        85,
        93.8,
        1.77,
        66, 'Apur bat nekatuta.'
    ),
    (
        53,
        '2025-12-30 09:08:00',
        119,
        91,
        74.2,
        1.75,
        81, 'Baraualdian.'
    ),
    (
        54,
        '2025-12-30 08:44:00',
        143,
        81,
        86.8,
        1.60,
        94, 'Apur bat nekatuta.'
    ),
    (
        55,
        '2025-12-30 10:27:00',
        139,
        82,
        80.4,
        1.76,
        94, 'Dena ondo.'
    ),
    (
        56,
        '2025-12-30 10:07:00',
        131,
        91,
        89.9,
        1.61,
        80, 'Dena ondo.'
    ),
    (
        57,
        '2025-12-30 10:06:00',
        124,
        83,
        82.0,
        1.69,
        77, 'Ondo sentitzen naiz.'
    ),
    (
        58,
        '2025-12-30 10:04:00',
        125,
        76,
        67.5,
        1.68,
        84, 'Baraualdian.'
    ),
    (
        59,
        '2025-12-30 09:14:00',
        129,
        87,
        63.9,
        1.73,
        90, 'Dena ondo.'
    ),
    (
        60,
        '2025-12-30 07:55:00',
        128,
        94,
        78.7,
        1.81,
        78, 'Ondo sentitzen naiz.'
    ),
    (
        61,
        '2025-12-30 09:12:00',
        129,
        88,
        72.1,
        1.83,
        80, 'Gosariaren ondoren.'
    ),
    (
        62,
        '2025-12-30 07:24:00',
        123,
        79,
        66.1,
        1.56,
        92, 'Kirola egin ondoren.'
    ),
    (
        63,
        '2025-12-30 08:48:00',
        129,
        88,
        80.8,
        1.80,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        64,
        '2025-12-30 09:44:00',
        131,
        81,
        95.9,
        1.56,
        72, 'Apur bat nekatuta.'
    ),
    (
        65,
        '2025-12-30 10:38:00',
        135,
        76,
        91.5,
        1.55,
        73, 'Dena ondo.'
    ),
    (
        66,
        '2025-12-30 10:00:00',
        122,
        84,
        74.7,
        1.59,
        92, 'Gosariaren ondoren.'
    ),
    (
        67,
        '2025-12-30 08:56:00',
        134,
        82,
        72.8,
        1.72,
        87, 'Apur bat nekatuta.'
    ),
    (
        69,
        '2025-12-30 09:12:00',
        143,
        82,
        94.6,
        1.66,
        80, 'Apur bat nekatuta.'
    ),
    (
        70,
        '2025-12-30 10:30:00',
        119,
        80,
        75.3,
        1.70,
        82, 'Gosariaren ondoren.'
    ),
    (
        71,
        '2025-12-30 07:28:00',
        140,
        83,
        88.9,
        1.63,
        86, 'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2025-12-30 09:40:00',
        135,
        87,
        91.6,
        1.69,
        93, 'Dena ondo.'
    ),
    (
        73,
        '2025-12-30 08:08:00',
        123,
        84,
        94.3,
        1.55,
        81, 'Apur bat nekatuta.'
    ),
    (
        74,
        '2025-12-30 10:19:00',
        127,
        84,
        63.8,
        1.67,
        78, 'Dena ondo.'
    ),
    (
        76,
        '2025-12-30 08:02:00',
        123,
        89,
        65.6,
        1.69,
        77, 'Gosariaren ondoren.'
    ),
    (
        78,
        '2025-12-30 08:39:00',
        135,
        74,
        63.4,
        1.61,
        83, 'Gosariaren ondoren.'
    ),
    (
        79,
        '2025-12-30 09:54:00',
        132,
        82,
        67.7,
        1.67,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2025-12-30 07:03:00',
        129,
        81,
        64.0,
        1.78,
        92, 'Ondo sentitzen naiz.'
    ),
    (
        81,
        '2025-12-30 10:16:00',
        125,
        93,
        85.5,
        1.58,
        69, 'Dena ondo.'
    ),
    (
        83,
        '2025-12-30 08:24:00',
        136,
        82,
        65.6,
        1.80,
        65, 'Baraualdian.'
    ),
    (
        87,
        '2025-12-30 10:46:00',
        136,
        85,
        72.5,
        1.61,
        94, 'Kirola egin ondoren.'
    ),
    (
        88,
        '2025-12-30 10:06:00',
        121,
        86,
        90.7,
        1.81,
        65, 'Baraualdian.'
    ),
    (
        89,
        '2025-12-30 08:09:00',
        137,
        89,
        90.8,
        1.84,
        92, 'Gosariaren ondoren.'
    ),
    (
        90,
        '2025-12-30 07:11:00',
        133,
        84,
        66.9,
        1.60,
        66, 'Baraualdian.'
    ),
    (
        91,
        '2025-12-30 09:04:00',
        135,
        88,
        89.4,
        1.58,
        79, 'Baraualdian.'
    ),
    (
        92,
        '2025-12-30 09:07:00',
        127,
        92,
        59.7,
        1.79,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2025-12-30 07:20:00',
        124,
        88,
        76.5,
        1.81,
        78, 'Apur bat nekatuta.'
    ),
    (
        94,
        '2025-12-30 07:52:00',
        129,
        77,
        87.3,
        1.83,
        71, 'Baraualdian.'
    ),
    (
        95,
        '2025-12-30 08:33:00',
        136,
        82,
        91.0,
        1.77,
        93, 'Kirola egin ondoren.'
    ),
    (
        97,
        '2025-12-30 08:43:00',
        125,
        82,
        86.2,
        1.56,
        91, 'Dena ondo.'
    ),
    (
        98,
        '2025-12-30 07:11:00',
        131,
        79,
        84.5,
        1.60,
        77, 'Baraualdian.'
    ),
    (
        99,
        '2025-12-30 07:39:00',
        123,
        73,
        86.3,
        1.71,
        89, 'Kirola egin ondoren.'
    ),
    (
        100,
        '2025-12-30 08:27:00',
        138,
        82,
        81.2,
        1.57,
        74, 'Gosariaren ondoren.'
    ),
    (
        51,
        '2025-12-31 09:24:00',
        124,
        88,
        63.1,
        1.76,
        69, 'Dena ondo.'
    ),
    (
        52,
        '2025-12-31 07:07:00',
        136,
        79,
        93.4,
        1.77,
        66, 'Ondo sentitzen naiz.'
    ),
    (
        53,
        '2025-12-31 09:49:00',
        132,
        89,
        74.8,
        1.75,
        83, 'Kirola egin ondoren.'
    ),
    (
        54,
        '2025-12-31 09:54:00',
        134,
        80,
        86.8,
        1.60,
        77, 'Apur bat nekatuta.'
    ),
    (
        55,
        '2025-12-31 07:30:00',
        128,
        75,
        80.9,
        1.76,
        78, 'Gaur goizean neurtuta.'
    ),
    (
        56,
        '2025-12-31 07:12:00',
        143,
        94,
        90.0,
        1.61,
        85, 'Kirola egin ondoren.'
    ),
    (
        57,
        '2025-12-31 07:05:00',
        130,
        86,
        82.3,
        1.69,
        90, 'Kirola egin ondoren.'
    ),
    (
        58,
        '2025-12-31 10:00:00',
        134,
        82,
        66.4,
        1.68,
        79, 'Gosariaren ondoren.'
    ),
    (
        59,
        '2025-12-31 09:09:00',
        112,
        94,
        63.4,
        1.73,
        87, 'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2025-12-31 08:16:00',
        119,
        90,
        77.0,
        1.81,
        74, 'Dena ondo.'
    ),
    (
        61,
        '2025-12-31 10:41:00',
        128,
        83,
        72.9,
        1.83,
        74, 'Gaur goizean neurtuta.'
    ),
    (
        63,
        '2025-12-31 07:39:00',
        125,
        87,
        80.6,
        1.80,
        77, 'Kirola egin ondoren.'
    ),
    (
        64,
        '2025-12-31 09:48:00',
        128,
        79,
        94.9,
        1.56,
        92, 'Kirola egin ondoren.'
    ),
    (
        65,
        '2025-12-31 10:15:00',
        133,
        87,
        92.0,
        1.55,
        70, 'Apur bat nekatuta.'
    ),
    (
        66,
        '2025-12-31 10:00:00',
        136,
        89,
        75.5,
        1.59,
        80, 'Gosariaren ondoren.'
    ),
    (
        69,
        '2025-12-31 07:36:00',
        141,
        86,
        94.1,
        1.66,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2025-12-31 09:25:00',
        135,
        83,
        75.4,
        1.70,
        74, 'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2025-12-31 07:24:00',
        131,
        81,
        88.2,
        1.63,
        75, 'Dena ondo.'
    ),
    (
        74,
        '2025-12-31 10:18:00',
        120,
        86,
        64.3,
        1.67,
        68, 'Gosariaren ondoren.'
    ),
    (
        75,
        '2025-12-31 08:55:00',
        126,
        71,
        60.3,
        1.65,
        84, 'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2025-12-31 09:22:00',
        116,
        94,
        65.9,
        1.69,
        67, 'Dena ondo.'
    ),
    (
        77,
        '2025-12-31 08:07:00',
        128,
        92,
        66.1,
        1.67,
        77, 'Baraualdian.'
    ),
    (
        78,
        '2025-12-31 07:19:00',
        123,
        81,
        63.2,
        1.61,
        91, 'Dena ondo.'
    ),
    (
        79,
        '2025-12-31 08:06:00',
        128,
        80,
        66.9,
        1.67,
        77, 'Apur bat nekatuta.'
    ),
    (
        80,
        '2025-12-31 07:54:00',
        127,
        88,
        62.3,
        1.78,
        91, 'Baraualdian.'
    ),
    (
        82,
        '2025-12-31 10:52:00',
        141,
        89,
        89.5,
        1.77,
        78, 'Kirola egin ondoren.'
    ),
    (
        85,
        '2025-12-31 09:26:00',
        125,
        80,
        81.0,
        1.72,
        90, 'Kirola egin ondoren.'
    ),
    (
        86,
        '2025-12-31 08:36:00',
        124,
        80,
        69.0,
        1.57,
        69, 'Dena ondo.'
    ),
    (
        87,
        '2025-12-31 09:29:00',
        135,
        77,
        73.4,
        1.61,
        86, 'Kirola egin ondoren.'
    ),
    (
        88,
        '2025-12-31 07:35:00',
        123,
        73,
        90.3,
        1.81,
        89, 'Baraualdian.'
    ),
    (
        90,
        '2025-12-31 08:27:00',
        119,
        79,
        65.1,
        1.60,
        65, 'Dena ondo.'
    ),
    (
        91,
        '2025-12-31 09:13:00',
        127,
        90,
        90.6,
        1.58,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2025-12-31 10:45:00',
        127,
        92,
        60.2,
        1.79,
        89, 'Kirola egin ondoren.'
    ),
    (
        93,
        '2025-12-31 10:39:00',
        141,
        85,
        76.0,
        1.81,
        94, 'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2025-12-31 09:49:00',
        131,
        91,
        86.8,
        1.83,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        95,
        '2025-12-31 10:29:00',
        139,
        72,
        89.0,
        1.77,
        77, 'Baraualdian.'
    ),
    (
        96,
        '2025-12-31 07:22:00',
        134,
        88,
        76.2,
        1.71,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2025-12-31 07:29:00',
        136,
        72,
        86.6,
        1.56,
        72, 'Baraualdian.'
    ),
    (
        98,
        '2025-12-31 10:58:00',
        134,
        89,
        83.2,
        1.60,
        75, 'Baraualdian.'
    ),
    (
        100,
        '2025-12-31 07:53:00',
        120,
        80,
        82.2,
        1.57,
        70, 'Baraualdian.'
    ),
    (
        51,
        '2026-01-01 09:07:00',
        131,
        82,
        64.1,
        1.76,
        86, 'Gaur goizean neurtuta.'
    ),
    (
        52,
        '2026-01-01 09:20:00',
        125,
        93,
        94.9,
        1.77,
        66, 'Dena ondo.'
    ),
    (
        53,
        '2026-01-01 09:32:00',
        119,
        86,
        74.6,
        1.75,
        89, 'Gosariaren ondoren.'
    ),
    (
        54,
        '2026-01-01 07:20:00',
        137,
        82,
        87.4,
        1.60,
        89, 'Ondo sentitzen naiz.'
    ),
    (
        55,
        '2026-01-01 09:13:00',
        127,
        84,
        80.0,
        1.76,
        91, 'Kirola egin ondoren.'
    ),
    (
        56,
        '2026-01-01 08:41:00',
        141,
        87,
        89.5,
        1.61,
        72, 'Ondo sentitzen naiz.'
    ),
    (
        57,
        '2026-01-01 08:11:00',
        128,
        80,
        83.7,
        1.69,
        94, 'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2026-01-01 10:18:00',
        114,
        92,
        62.9,
        1.73,
        85, 'Ondo sentitzen naiz.'
    ),
    (
        60,
        '2026-01-01 09:32:00',
        135,
        89,
        77.2,
        1.81,
        73, 'Gosariaren ondoren.'
    ),
    (
        61,
        '2026-01-01 07:40:00',
        113,
        78,
        73.6,
        1.83,
        88, 'Ondo sentitzen naiz.'
    ),
    (
        62,
        '2026-01-01 09:01:00',
        139,
        82,
        65.6,
        1.56,
        86, 'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2026-01-01 08:17:00',
        129,
        90,
        82.0,
        1.80,
        83, 'Dena ondo.'
    ),
    (
        64,
        '2026-01-01 10:17:00',
        130,
        73,
        95.7,
        1.56,
        80, 'Apur bat nekatuta.'
    ),
    (
        65,
        '2026-01-01 10:38:00',
        136,
        76,
        91.1,
        1.55,
        87, 'Dena ondo.'
    ),
    (
        66,
        '2026-01-01 07:31:00',
        119,
        85,
        74.7,
        1.59,
        66, 'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2026-01-01 10:21:00',
        140,
        82,
        72.7,
        1.72,
        90, 'Ondo sentitzen naiz.'
    ),
    (
        68,
        '2026-01-01 08:01:00',
        128,
        86,
        61.7,
        1.85,
        86, 'Kirola egin ondoren.'
    ),
    (
        69,
        '2026-01-01 07:52:00',
        127,
        82,
        95.7,
        1.66,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2026-01-01 10:13:00',
        135,
        86,
        74.7,
        1.70,
        88, 'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-01-01 07:57:00',
        122,
        77,
        88.8,
        1.63,
        77, 'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2026-01-01 10:08:00',
        121,
        80,
        94.7,
        1.55,
        93, 'Apur bat nekatuta.'
    ),
    (
        74,
        '2026-01-01 09:00:00',
        127,
        82,
        63.5,
        1.67,
        75, 'Gosariaren ondoren.'
    ),
    (
        75,
        '2026-01-01 09:03:00',
        144,
        85,
        59.9,
        1.65,
        85, 'Apur bat nekatuta.'
    ),
    (
        76,
        '2026-01-01 07:18:00',
        130,
        92,
        65.9,
        1.69,
        83, 'Kirola egin ondoren.'
    ),
    (
        78,
        '2026-01-01 07:45:00',
        117,
        83,
        62.9,
        1.61,
        90, 'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-01-01 09:26:00',
        133,
        92,
        62.2,
        1.78,
        65, 'Gosariaren ondoren.'
    ),
    (
        81,
        '2026-01-01 07:53:00',
        138,
        88,
        86.4,
        1.58,
        70, 'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-01-01 10:15:00',
        137,
        92,
        89.7,
        1.77,
        79, 'Kirola egin ondoren.'
    ),
    (
        84,
        '2026-01-01 10:52:00',
        137,
        86,
        79.5,
        1.67,
        75, 'Kirola egin ondoren.'
    ),
    (
        88,
        '2026-01-01 08:38:00',
        120,
        81,
        90.3,
        1.81,
        91, 'Dena ondo.'
    ),
    (
        89,
        '2026-01-01 07:53:00',
        123,
        78,
        92.0,
        1.84,
        89, 'Apur bat nekatuta.'
    ),
    (
        90,
        '2026-01-01 08:27:00',
        131,
        80,
        65.3,
        1.60,
        77, 'Dena ondo.'
    ),
    (
        93,
        '2026-01-01 07:47:00',
        133,
        79,
        75.7,
        1.81,
        69, 'Apur bat nekatuta.'
    ),
    (
        94,
        '2026-01-01 09:49:00',
        122,
        82,
        86.8,
        1.83,
        76, 'Apur bat nekatuta.'
    ),
    (
        96,
        '2026-01-01 09:50:00',
        129,
        83,
        77.7,
        1.71,
        71, 'Baraualdian.'
    ),
    (
        97,
        '2026-01-01 10:20:00',
        131,
        77,
        87.3,
        1.56,
        73, 'Ondo sentitzen naiz.'
    ),
    (
        98,
        '2026-01-01 09:39:00',
        120,
        81,
        84.0,
        1.60,
        66, 'Apur bat nekatuta.'
    ),
    (
        100,
        '2026-01-01 09:46:00',
        138,
        81,
        82.9,
        1.57,
        71, 'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2026-01-02 07:53:00',
        140,
        84,
        63.4,
        1.76,
        78, 'Dena ondo.'
    ),
    (
        53,
        '2026-01-02 10:16:00',
        119,
        83,
        75.4,
        1.75,
        73, 'Gosariaren ondoren.'
    ),
    (
        55,
        '2026-01-02 10:03:00',
        136,
        84,
        80.8,
        1.76,
        90, 'Dena ondo.'
    ),
    (
        56,
        '2026-01-02 10:55:00',
        138,
        87,
        90.1,
        1.61,
        87, 'Apur bat nekatuta.'
    ),
    (
        57,
        '2026-01-02 07:36:00',
        123,
        93,
        82.6,
        1.69,
        85, 'Kirola egin ondoren.'
    ),
    (
        58,
        '2026-01-02 09:22:00',
        130,
        79,
        67.9,
        1.68,
        75, 'Gosariaren ondoren.'
    ),
    (
        59,
        '2026-01-02 10:25:00',
        123,
        81,
        62.6,
        1.73,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        61,
        '2026-01-02 08:06:00',
        122,
        82,
        73.6,
        1.83,
        90, 'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2026-01-02 09:03:00',
        139,
        78,
        82.0,
        1.80,
        79, 'Gosariaren ondoren.'
    ),
    (
        64,
        '2026-01-02 09:56:00',
        141,
        73,
        95.1,
        1.56,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2026-01-02 07:13:00',
        138,
        81,
        90.6,
        1.55,
        94, 'Dena ondo.'
    ),
    (
        69,
        '2026-01-02 07:20:00',
        142,
        88,
        95.6,
        1.66,
        92, 'Apur bat nekatuta.'
    ),
    (
        70,
        '2026-01-02 10:23:00',
        121,
        86,
        75.1,
        1.70,
        80, 'Dena ondo.'
    ),
    (
        72,
        '2026-01-02 09:35:00',
        138,
        81,
        92.4,
        1.69,
        88, 'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-01-02 08:57:00',
        119,
        80,
        94.6,
        1.55,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2026-01-02 10:10:00',
        119,
        87,
        63.2,
        1.67,
        76, 'Baraualdian.'
    ),
    (
        75,
        '2026-01-02 09:59:00',
        127,
        83,
        59.6,
        1.65,
        80, 'Baraualdian.'
    ),
    (
        77,
        '2026-01-02 09:00:00',
        134,
        86,
        66.6,
        1.67,
        68, 'Gaur goizean neurtuta.'
    ),
    (
        78,
        '2026-01-02 09:47:00',
        123,
        82,
        62.9,
        1.61,
        87, 'Apur bat nekatuta.'
    ),
    (
        79,
        '2026-01-02 09:22:00',
        141,
        78,
        67.3,
        1.67,
        93, 'Gosariaren ondoren.'
    ),
    (
        81,
        '2026-01-02 10:48:00',
        133,
        93,
        86.9,
        1.58,
        79, 'Gosariaren ondoren.'
    ),
    (
        82,
        '2026-01-02 10:04:00',
        127,
        93,
        88.1,
        1.77,
        67, 'Gosariaren ondoren.'
    ),
    (
        83,
        '2026-01-02 08:50:00',
        130,
        94,
        65.8,
        1.80,
        73, 'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2026-01-02 08:48:00',
        130,
        76,
        78.8,
        1.67,
        71, 'Dena ondo.'
    ),
    (
        85,
        '2026-01-02 08:03:00',
        137,
        91,
        81.1,
        1.72,
        72, 'Dena ondo.'
    ),
    (
        86,
        '2026-01-02 10:08:00',
        134,
        83,
        67.7,
        1.57,
        81, 'Baraualdian.'
    ),
    (
        87,
        '2026-01-02 08:28:00',
        137,
        84,
        74.0,
        1.61,
        70, 'Baraualdian.'
    ),
    (
        88,
        '2026-01-02 07:00:00',
        123,
        86,
        89.9,
        1.81,
        75, 'Baraualdian.'
    ),
    (
        89,
        '2026-01-02 10:19:00',
        139,
        83,
        90.0,
        1.84,
        74, 'Ondo sentitzen naiz.'
    ),
    (
        90,
        '2026-01-02 08:41:00',
        136,
        79,
        65.5,
        1.60,
        69, 'Kirola egin ondoren.'
    ),
    (
        91,
        '2026-01-02 09:20:00',
        130,
        89,
        90.2,
        1.58,
        72, 'Apur bat nekatuta.'
    ),
    (
        92,
        '2026-01-02 07:20:00',
        126,
        93,
        59.0,
        1.79,
        78, 'Kirola egin ondoren.'
    ),
    (
        93,
        '2026-01-02 10:39:00',
        129,
        80,
        76.5,
        1.81,
        68, 'Ondo sentitzen naiz.'
    ),
    (
        94,
        '2026-01-02 08:06:00',
        135,
        86,
        87.0,
        1.83,
        92, 'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2026-01-02 07:01:00',
        139,
        73,
        89.9,
        1.77,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2026-01-02 07:31:00',
        126,
        74,
        77.1,
        1.71,
        77, 'Apur bat nekatuta.'
    ),
    (
        97,
        '2026-01-02 10:14:00',
        120,
        86,
        87.4,
        1.56,
        82, 'Apur bat nekatuta.'
    ),
    (
        98,
        '2026-01-02 08:19:00',
        138,
        76,
        83.6,
        1.60,
        75, 'Gosariaren ondoren.'
    ),
    (
        99,
        '2026-01-02 09:10:00',
        122,
        74,
        86.8,
        1.71,
        90, 'Apur bat nekatuta.'
    ),
    (
        100,
        '2026-01-02 09:03:00',
        133,
        79,
        81.2,
        1.57,
        88, 'Kirola egin ondoren.'
    ),
    (
        51,
        '2026-01-03 10:54:00',
        128,
        81,
        64.9,
        1.76,
        76, 'Dena ondo.'
    ),
    (
        52,
        '2026-01-03 10:33:00',
        123,
        94,
        94.7,
        1.77,
        84, 'Kirola egin ondoren.'
    ),
    (
        53,
        '2026-01-03 08:00:00',
        131,
        85,
        74.8,
        1.75,
        72, 'Baraualdian.'
    ),
    (
        54,
        '2026-01-03 10:42:00',
        139,
        89,
        87.8,
        1.60,
        74, 'Gosariaren ondoren.'
    ),
    (
        56,
        '2026-01-03 10:55:00',
        143,
        82,
        90.8,
        1.61,
        84, 'Kirola egin ondoren.'
    ),
    (
        57,
        '2026-01-03 07:40:00',
        128,
        85,
        84.0,
        1.69,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2026-01-03 08:44:00',
        132,
        85,
        66.5,
        1.68,
        88, 'Dena ondo.'
    ),
    (
        59,
        '2026-01-03 09:40:00',
        112,
        88,
        62.7,
        1.73,
        83, 'Dena ondo.'
    ),
    (
        60,
        '2026-01-03 07:55:00',
        135,
        84,
        78.2,
        1.81,
        75, 'Ondo sentitzen naiz.'
    ),
    (
        61,
        '2026-01-03 09:33:00',
        121,
        90,
        73.2,
        1.83,
        82, 'Gosariaren ondoren.'
    ),
    (
        63,
        '2026-01-03 09:07:00',
        134,
        85,
        80.0,
        1.80,
        87, 'Dena ondo.'
    ),
    (
        65,
        '2026-01-03 09:12:00',
        121,
        88,
        91.6,
        1.55,
        82, 'Baraualdian.'
    ),
    (
        66,
        '2026-01-03 10:03:00',
        134,
        84,
        75.0,
        1.59,
        71, 'Baraualdian.'
    ),
    (
        67,
        '2026-01-03 08:32:00',
        143,
        79,
        71.1,
        1.72,
        89, 'Baraualdian.'
    ),
    (
        68,
        '2026-01-03 08:12:00',
        134,
        86,
        60.1,
        1.85,
        71, 'Dena ondo.'
    ),
    (
        71,
        '2026-01-03 08:47:00',
        121,
        74,
        88.9,
        1.63,
        84, 'Baraualdian.'
    ),
    (
        72,
        '2026-01-03 09:48:00',
        126,
        82,
        91.7,
        1.69,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2026-01-03 08:28:00',
        126,
        79,
        64.5,
        1.67,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2026-01-03 10:40:00',
        138,
        75,
        60.3,
        1.65,
        88, 'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2026-01-03 10:23:00',
        127,
        84,
        65.2,
        1.69,
        87, 'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2026-01-03 07:18:00',
        133,
        87,
        67.0,
        1.67,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        78,
        '2026-01-03 07:03:00',
        122,
        77,
        63.7,
        1.61,
        80, 'Apur bat nekatuta.'
    ),
    (
        79,
        '2026-01-03 10:32:00',
        123,
        74,
        66.2,
        1.67,
        72, 'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2026-01-03 07:46:00',
        128,
        90,
        63.1,
        1.78,
        77, 'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-01-03 07:04:00',
        131,
        81,
        89.3,
        1.77,
        72, 'Gosariaren ondoren.'
    ),
    (
        83,
        '2026-01-03 09:24:00',
        136,
        86,
        65.3,
        1.80,
        79, 'Kirola egin ondoren.'
    ),
    (
        84,
        '2026-01-03 08:50:00',
        131,
        90,
        78.5,
        1.67,
        89, 'Baraualdian.'
    ),
    (
        85,
        '2026-01-03 10:16:00',
        136,
        79,
        81.9,
        1.72,
        79, 'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2026-01-03 10:28:00',
        140,
        78,
        72.3,
        1.61,
        82, 'Baraualdian.'
    ),
    (
        88,
        '2026-01-03 07:26:00',
        129,
        86,
        90.7,
        1.81,
        78, 'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2026-01-03 08:51:00',
        132,
        84,
        91.4,
        1.84,
        70, 'Gosariaren ondoren.'
    ),
    (
        90,
        '2026-01-03 07:43:00',
        138,
        81,
        66.1,
        1.60,
        66, 'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2026-01-03 08:07:00',
        126,
        88,
        60.9,
        1.79,
        81, 'Dena ondo.'
    ),
    (
        93,
        '2026-01-03 08:25:00',
        127,
        87,
        75.3,
        1.81,
        73, 'Kirola egin ondoren.'
    ),
    (
        94,
        '2026-01-03 09:38:00',
        132,
        85,
        87.8,
        1.83,
        83, 'Baraualdian.'
    ),
    (
        95,
        '2026-01-03 09:53:00',
        126,
        74,
        89.7,
        1.77,
        84, 'Ondo sentitzen naiz.'
    ),
    (
        97,
        '2026-01-03 08:24:00',
        126,
        85,
        87.5,
        1.56,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-01-03 08:34:00',
        126,
        89,
        83.1,
        1.60,
        82, 'Dena ondo.'
    ),
    (
        99,
        '2026-01-03 08:50:00',
        124,
        88,
        85.1,
        1.71,
        80, 'Ondo sentitzen naiz.'
    ),
    (
        100,
        '2026-01-03 07:29:00',
        140,
        86,
        81.0,
        1.57,
        76, 'Baraualdian.'
    ),
    (
        51,
        '2026-01-04 10:16:00',
        130,
        79,
        63.1,
        1.76,
        90, 'Baraualdian.'
    ),
    (
        52,
        '2026-01-04 09:43:00',
        125,
        94,
        93.1,
        1.77,
        94, 'Dena ondo.'
    ),
    (
        53,
        '2026-01-04 09:15:00',
        126,
        82,
        75.2,
        1.75,
        80, 'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2026-01-04 07:38:00',
        130,
        76,
        81.9,
        1.76,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        56,
        '2026-01-04 08:02:00',
        129,
        88,
        89.7,
        1.61,
        80, 'Gosariaren ondoren.'
    ),
    (
        57,
        '2026-01-04 09:26:00',
        117,
        82,
        83.5,
        1.69,
        78, 'Kirola egin ondoren.'
    ),
    (
        58,
        '2026-01-04 07:37:00',
        128,
        90,
        66.7,
        1.68,
        79, 'Kirola egin ondoren.'
    ),
    (
        59,
        '2026-01-04 09:47:00',
        130,
        92,
        63.0,
        1.73,
        73, 'Kirola egin ondoren.'
    ),
    (
        61,
        '2026-01-04 07:06:00',
        129,
        93,
        73.4,
        1.83,
        73, 'Apur bat nekatuta.'
    ),
    (
        62,
        '2026-01-04 10:56:00',
        130,
        73,
        65.0,
        1.56,
        79, 'Dena ondo.'
    ),
    (
        63,
        '2026-01-04 09:55:00',
        143,
        86,
        81.9,
        1.80,
        88, 'Baraualdian.'
    ),
    (
        65,
        '2026-01-04 07:17:00',
        122,
        82,
        90.5,
        1.55,
        94, 'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2026-01-04 10:55:00',
        122,
        82,
        74.8,
        1.59,
        87, 'Kirola egin ondoren.'
    ),
    (
        68,
        '2026-01-04 07:48:00',
        135,
        74,
        61.3,
        1.85,
        72, 'Dena ondo.'
    ),
    (
        69,
        '2026-01-04 10:36:00',
        138,
        81,
        95.5,
        1.66,
        79, 'Ondo sentitzen naiz.'
    ),
    (
        70,
        '2026-01-04 10:17:00',
        135,
        83,
        74.9,
        1.70,
        85, 'Baraualdian.'
    ),
    (
        72,
        '2026-01-04 09:39:00',
        134,
        78,
        92.4,
        1.69,
        71, 'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2026-01-04 08:20:00',
        123,
        83,
        95.3,
        1.55,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2026-01-04 09:44:00',
        119,
        76,
        63.7,
        1.67,
        79, 'Baraualdian.'
    ),
    (
        75,
        '2026-01-04 09:05:00',
        144,
        76,
        59.1,
        1.65,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2026-01-04 07:36:00',
        126,
        82,
        66.7,
        1.69,
        79, 'Ondo sentitzen naiz.'
    ),
    (
        77,
        '2026-01-04 07:01:00',
        124,
        84,
        67.4,
        1.67,
        65, 'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2026-01-04 10:38:00',
        134,
        77,
        63.8,
        1.61,
        91, 'Baraualdian.'
    ),
    (
        79,
        '2026-01-04 09:17:00',
        133,
        81,
        67.0,
        1.67,
        77, 'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2026-01-04 10:46:00',
        126,
        84,
        63.5,
        1.78,
        66, 'Ondo sentitzen naiz.'
    ),
    (
        81,
        '2026-01-04 10:31:00',
        130,
        91,
        86.1,
        1.58,
        83, 'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-01-04 09:16:00',
        129,
        83,
        90.0,
        1.77,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        83,
        '2026-01-04 08:02:00',
        124,
        89,
        65.9,
        1.80,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2026-01-04 07:47:00',
        122,
        80,
        78.5,
        1.67,
        86, 'Apur bat nekatuta.'
    ),
    (
        85,
        '2026-01-04 07:13:00',
        122,
        88,
        81.0,
        1.72,
        67, 'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2026-01-04 10:53:00',
        138,
        76,
        67.3,
        1.57,
        79, 'Baraualdian.'
    ),
    (
        87,
        '2026-01-04 09:10:00',
        122,
        82,
        73.5,
        1.61,
        75, 'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2026-01-04 10:27:00',
        123,
        75,
        89.7,
        1.81,
        68, 'Apur bat nekatuta.'
    ),
    (
        89,
        '2026-01-04 10:16:00',
        143,
        90,
        91.1,
        1.84,
        68, 'Apur bat nekatuta.'
    ),
    (
        92,
        '2026-01-04 10:54:00',
        133,
        83,
        59.5,
        1.79,
        70, 'Gosariaren ondoren.'
    ),
    (
        93,
        '2026-01-04 08:41:00',
        121,
        79,
        75.5,
        1.81,
        74, 'Apur bat nekatuta.'
    ),
    (
        95,
        '2026-01-04 10:19:00',
        128,
        84,
        89.7,
        1.77,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2026-01-04 08:37:00',
        119,
        76,
        77.4,
        1.71,
        92, 'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2026-01-04 10:45:00',
        135,
        81,
        87.9,
        1.56,
        80, 'Gosariaren ondoren.'
    ),
    (
        98,
        '2026-01-04 10:05:00',
        122,
        82,
        84.7,
        1.60,
        65, 'Baraualdian.'
    ),
    (
        99,
        '2026-01-04 10:22:00',
        127,
        82,
        85.6,
        1.71,
        85, 'Apur bat nekatuta.'
    ),
    (
        100,
        '2026-01-04 10:25:00',
        131,
        78,
        81.0,
        1.57,
        66, 'Apur bat nekatuta.'
    ),
    (
        51,
        '2026-01-05 08:04:00',
        121,
        81,
        64.2,
        1.76,
        80, 'Apur bat nekatuta.'
    ),
    (
        52,
        '2026-01-05 07:44:00',
        134,
        85,
        94.2,
        1.77,
        86, 'Kirola egin ondoren.'
    ),
    (
        53,
        '2026-01-05 07:30:00',
        133,
        81,
        75.7,
        1.75,
        94, 'Ondo sentitzen naiz.'
    ),
    (
        54,
        '2026-01-05 07:47:00',
        133,
        80,
        86.6,
        1.60,
        72, 'Dena ondo.'
    ),
    (
        55,
        '2026-01-05 08:59:00',
        130,
        81,
        80.2,
        1.76,
        87, 'Gaur goizean neurtuta.'
    ),
    (
        57,
        '2026-01-05 08:17:00',
        130,
        81,
        83.4,
        1.69,
        65, 'Kirola egin ondoren.'
    ),
    (
        58,
        '2026-01-05 09:13:00',
        138,
        80,
        67.2,
        1.68,
        75, 'Apur bat nekatuta.'
    ),
    (
        59,
        '2026-01-05 09:16:00',
        119,
        92,
        62.5,
        1.73,
        91, 'Kirola egin ondoren.'
    ),
    (
        60,
        '2026-01-05 10:46:00',
        120,
        94,
        78.5,
        1.81,
        77, 'Kirola egin ondoren.'
    ),
    (
        61,
        '2026-01-05 10:47:00',
        120,
        79,
        72.9,
        1.83,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        62,
        '2026-01-05 08:26:00',
        126,
        85,
        66.0,
        1.56,
        85, 'Apur bat nekatuta.'
    ),
    (
        63,
        '2026-01-05 10:45:00',
        137,
        76,
        81.8,
        1.80,
        86, 'Baraualdian.'
    ),
    (
        64,
        '2026-01-05 09:01:00',
        124,
        84,
        94.2,
        1.56,
        71, 'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2026-01-05 08:30:00',
        129,
        76,
        90.5,
        1.55,
        72, 'Kirola egin ondoren.'
    ),
    (
        66,
        '2026-01-05 10:54:00',
        122,
        88,
        75.2,
        1.59,
        87, 'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2026-01-05 07:11:00',
        126,
        84,
        72.4,
        1.72,
        72, 'Baraualdian.'
    ),
    (
        68,
        '2026-01-05 07:31:00',
        124,
        73,
        62.0,
        1.85,
        94, 'Kirola egin ondoren.'
    ),
    (
        69,
        '2026-01-05 07:05:00',
        143,
        82,
        94.3,
        1.66,
        91, 'Gosariaren ondoren.'
    ),
    (
        71,
        '2026-01-05 08:58:00',
        133,
        73,
        89.2,
        1.63,
        89, 'Apur bat nekatuta.'
    ),
    (
        72,
        '2026-01-05 10:57:00',
        136,
        76,
        91.3,
        1.69,
        78, 'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2026-01-05 08:49:00',
        127,
        79,
        95.0,
        1.55,
        80, 'Baraualdian.'
    ),
    (
        74,
        '2026-01-05 08:44:00',
        112,
        86,
        65.0,
        1.67,
        71, 'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2026-01-05 10:06:00',
        136,
        84,
        59.0,
        1.65,
        85, 'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2026-01-05 08:07:00',
        123,
        95,
        65.1,
        1.69,
        81, 'Kirola egin ondoren.'
    ),
    (
        78,
        '2026-01-05 07:02:00',
        119,
        80,
        63.3,
        1.61,
        77, 'Dena ondo.'
    ),
    (
        79,
        '2026-01-05 09:42:00',
        136,
        84,
        67.4,
        1.67,
        87, 'Gosariaren ondoren.'
    ),
    (
        82,
        '2026-01-05 07:19:00',
        135,
        85,
        89.3,
        1.77,
        88, 'Dena ondo.'
    ),
    (
        83,
        '2026-01-05 08:50:00',
        130,
        92,
        65.4,
        1.80,
        78, 'Dena ondo.'
    ),
    (
        84,
        '2026-01-05 07:41:00',
        124,
        84,
        78.4,
        1.67,
        73, 'Apur bat nekatuta.'
    ),
    (
        85,
        '2026-01-05 08:08:00',
        127,
        83,
        80.8,
        1.72,
        86, 'Dena ondo.'
    ),
    (
        88,
        '2026-01-05 07:39:00',
        128,
        83,
        89.9,
        1.81,
        65, 'Baraualdian.'
    ),
    (
        89,
        '2026-01-05 07:01:00',
        131,
        79,
        90.7,
        1.84,
        88, 'Ondo sentitzen naiz.'
    ),
    (
        90,
        '2026-01-05 09:23:00',
        131,
        82,
        65.2,
        1.60,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2026-01-05 07:48:00',
        132,
        79,
        90.0,
        1.58,
        90, 'Gosariaren ondoren.'
    ),
    (
        92,
        '2026-01-05 10:51:00',
        141,
        79,
        59.9,
        1.79,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2026-01-05 10:26:00',
        124,
        86,
        76.9,
        1.81,
        66, 'Gosariaren ondoren.'
    ),
    (
        94,
        '2026-01-05 08:25:00',
        129,
        78,
        86.2,
        1.83,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2026-01-05 09:59:00',
        124,
        84,
        89.0,
        1.77,
        78, 'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-01-05 09:09:00',
        136,
        86,
        76.0,
        1.71,
        79, 'Kirola egin ondoren.'
    ),
    (
        97,
        '2026-01-05 08:48:00',
        138,
        71,
        87.8,
        1.56,
        83, 'Dena ondo.'
    ),
    (
        98,
        '2026-01-05 08:28:00',
        120,
        84,
        84.0,
        1.60,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        99,
        '2026-01-05 07:56:00',
        129,
        73,
        85.1,
        1.71,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2026-01-05 08:08:00',
        127,
        77,
        81.0,
        1.57,
        84, 'Gosariaren ondoren.'
    ),
    (
        52,
        '2026-01-06 09:48:00',
        132,
        79,
        93.3,
        1.77,
        92, 'Gosariaren ondoren.'
    ),
    (
        53,
        '2026-01-06 09:06:00',
        124,
        86,
        74.8,
        1.75,
        87, 'Baraualdian.'
    ),
    (
        54,
        '2026-01-06 10:11:00',
        130,
        74,
        86.5,
        1.60,
        90, 'Apur bat nekatuta.'
    ),
    (
        55,
        '2026-01-06 09:21:00',
        139,
        86,
        81.4,
        1.76,
        73, 'Apur bat nekatuta.'
    ),
    (
        56,
        '2026-01-06 08:17:00',
        133,
        86,
        90.6,
        1.61,
        80, 'Kirola egin ondoren.'
    ),
    (
        57,
        '2026-01-06 10:14:00',
        116,
        81,
        83.6,
        1.69,
        82, 'Apur bat nekatuta.'
    ),
    (
        58,
        '2026-01-06 10:34:00',
        134,
        88,
        67.3,
        1.68,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2026-01-06 10:41:00',
        126,
        85,
        62.0,
        1.73,
        88, 'Gosariaren ondoren.'
    ),
    (
        61,
        '2026-01-06 10:20:00',
        120,
        91,
        73.1,
        1.83,
        65, 'Dena ondo.'
    ),
    (
        62,
        '2026-01-06 09:19:00',
        124,
        73,
        65.0,
        1.56,
        72, 'Dena ondo.'
    ),
    (
        64,
        '2026-01-06 08:56:00',
        125,
        81,
        95.7,
        1.56,
        77, 'Baraualdian.'
    ),
    (
        65,
        '2026-01-06 07:15:00',
        135,
        85,
        90.5,
        1.55,
        87, 'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2026-01-06 07:25:00',
        117,
        76,
        74.3,
        1.59,
        65, 'Gosariaren ondoren.'
    ),
    (
        67,
        '2026-01-06 10:57:00',
        135,
        76,
        71.4,
        1.72,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        68,
        '2026-01-06 09:05:00',
        124,
        78,
        61.2,
        1.85,
        76, 'Baraualdian.'
    ),
    (
        69,
        '2026-01-06 09:58:00',
        129,
        80,
        94.3,
        1.66,
        93, 'Kirola egin ondoren.'
    ),
    (
        70,
        '2026-01-06 08:39:00',
        136,
        89,
        76.0,
        1.70,
        80, 'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-01-06 08:15:00',
        134,
        78,
        89.5,
        1.63,
        81, 'Apur bat nekatuta.'
    ),
    (
        72,
        '2026-01-06 10:33:00',
        128,
        84,
        93.0,
        1.69,
        91, 'Dena ondo.'
    ),
    (
        74,
        '2026-01-06 07:03:00',
        124,
        76,
        63.5,
        1.67,
        84, 'Kirola egin ondoren.'
    ),
    (
        75,
        '2026-01-06 07:56:00',
        129,
        79,
        61.0,
        1.65,
        81, 'Kirola egin ondoren.'
    ),
    (
        77,
        '2026-01-06 09:07:00',
        128,
        88,
        67.0,
        1.67,
        76, 'Kirola egin ondoren.'
    ),
    (
        78,
        '2026-01-06 09:16:00',
        130,
        74,
        63.7,
        1.61,
        92, 'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2026-01-06 08:18:00',
        131,
        83,
        63.6,
        1.78,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-01-06 09:57:00',
        143,
        84,
        88.6,
        1.77,
        76, 'Gosariaren ondoren.'
    ),
    (
        83,
        '2026-01-06 09:30:00',
        129,
        86,
        65.3,
        1.80,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2026-01-06 08:34:00',
        138,
        90,
        80.6,
        1.72,
        89, 'Baraualdian.'
    ),
    (
        87,
        '2026-01-06 07:12:00',
        134,
        83,
        72.7,
        1.61,
        76, 'Baraualdian.'
    ),
    (
        88,
        '2026-01-06 08:16:00',
        118,
        76,
        89.0,
        1.81,
        90, 'Ondo sentitzen naiz.'
    ),
    (
        90,
        '2026-01-06 10:02:00',
        138,
        92,
        66.9,
        1.60,
        74, 'Apur bat nekatuta.'
    ),
    (
        93,
        '2026-01-06 10:10:00',
        138,
        84,
        76.6,
        1.81,
        75, 'Gosariaren ondoren.'
    ),
    (
        94,
        '2026-01-06 07:37:00',
        139,
        77,
        86.7,
        1.83,
        71, 'Dena ondo.'
    ),
    (
        95,
        '2026-01-06 08:41:00',
        128,
        83,
        89.1,
        1.77,
        90, 'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-01-06 07:36:00',
        132,
        85,
        76.2,
        1.71,
        77, 'Kirola egin ondoren.'
    ),
    (
        97,
        '2026-01-06 07:07:00',
        125,
        74,
        86.2,
        1.56,
        93, 'Gosariaren ondoren.'
    ),
    (
        98,
        '2026-01-06 10:33:00',
        131,
        82,
        84.2,
        1.60,
        72, 'Gosariaren ondoren.'
    ),
    (
        100,
        '2026-01-06 07:15:00',
        136,
        75,
        81.4,
        1.57,
        86, 'Baraualdian.'
    ),
    (
        51,
        '2026-01-07 08:14:00',
        123,
        88,
        63.4,
        1.76,
        93, 'Baraualdian.'
    ),
    (
        52,
        '2026-01-07 10:24:00',
        135,
        91,
        94.0,
        1.77,
        92, 'Dena ondo.'
    ),
    (
        53,
        '2026-01-07 08:02:00',
        127,
        88,
        75.8,
        1.75,
        87, 'Gosariaren ondoren.'
    ),
    (
        54,
        '2026-01-07 10:54:00',
        134,
        84,
        86.1,
        1.60,
        81, 'Kirola egin ondoren.'
    ),
    (
        55,
        '2026-01-07 10:08:00',
        126,
        85,
        80.8,
        1.76,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2026-01-07 09:47:00',
        136,
        88,
        89.4,
        1.61,
        67, 'Gosariaren ondoren.'
    ),
    (
        57,
        '2026-01-07 10:33:00',
        123,
        84,
        83.3,
        1.69,
        90, 'Gosariaren ondoren.'
    ),
    (
        60,
        '2026-01-07 07:56:00',
        115,
        93,
        78.0,
        1.81,
        74, 'Gosariaren ondoren.'
    ),
    (
        62,
        '2026-01-07 09:46:00',
        139,
        82,
        66.1,
        1.56,
        91, 'Gosariaren ondoren.'
    ),
    (
        64,
        '2026-01-07 09:11:00',
        128,
        84,
        95.0,
        1.56,
        87, 'Ondo sentitzen naiz.'
    ),
    (
        66,
        '2026-01-07 09:06:00',
        136,
        81,
        74.8,
        1.59,
        78, 'Kirola egin ondoren.'
    ),
    (
        67,
        '2026-01-07 10:56:00',
        125,
        80,
        72.6,
        1.72,
        73, 'Dena ondo.'
    ),
    (
        68,
        '2026-01-07 08:12:00',
        138,
        73,
        60.2,
        1.85,
        87, 'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2026-01-07 09:44:00',
        130,
        80,
        95.3,
        1.66,
        92, 'Dena ondo.'
    ),
    (
        70,
        '2026-01-07 08:55:00',
        131,
        79,
        75.1,
        1.70,
        71, 'Apur bat nekatuta.'
    ),
    (
        71,
        '2026-01-07 07:48:00',
        123,
        79,
        89.5,
        1.63,
        80, 'Kirola egin ondoren.'
    ),
    (
        72,
        '2026-01-07 10:21:00',
        130,
        84,
        92.4,
        1.69,
        81, 'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-01-07 07:03:00',
        128,
        71,
        95.9,
        1.55,
        67, 'Kirola egin ondoren.'
    ),
    (
        74,
        '2026-01-07 08:20:00',
        117,
        78,
        63.3,
        1.67,
        79, 'Baraualdian.'
    ),
    (
        75,
        '2026-01-07 08:52:00',
        129,
        83,
        60.4,
        1.65,
        70, 'Dena ondo.'
    ),
    (
        78,
        '2026-01-07 09:37:00',
        132,
        82,
        63.0,
        1.61,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        79,
        '2026-01-07 10:23:00',
        139,
        88,
        66.0,
        1.67,
        90, 'Dena ondo.'
    ),
    (
        80,
        '2026-01-07 09:49:00',
        124,
        79,
        62.9,
        1.78,
        87, 'Dena ondo.'
    ),
    (
        83,
        '2026-01-07 07:17:00',
        131,
        86,
        65.3,
        1.80,
        86, 'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2026-01-07 07:50:00',
        129,
        80,
        81.1,
        1.72,
        91, 'Gaur goizean neurtuta.'
    ),
    (
        86,
        '2026-01-07 10:58:00',
        134,
        73,
        68.0,
        1.57,
        85, 'Apur bat nekatuta.'
    ),
    (
        87,
        '2026-01-07 09:18:00',
        134,
        81,
        73.3,
        1.61,
        92, 'Apur bat nekatuta.'
    ),
    (
        88,
        '2026-01-07 07:17:00',
        111,
        83,
        90.8,
        1.81,
        76, 'Gosariaren ondoren.'
    ),
    (
        89,
        '2026-01-07 08:18:00',
        134,
        84,
        90.1,
        1.84,
        67, 'Gosariaren ondoren.'
    ),
    (
        90,
        '2026-01-07 07:20:00',
        119,
        86,
        65.1,
        1.60,
        78, 'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2026-01-07 09:44:00',
        131,
        81,
        90.6,
        1.58,
        75, 'Apur bat nekatuta.'
    ),
    (
        93,
        '2026-01-07 09:03:00',
        123,
        80,
        76.2,
        1.81,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2026-01-07 10:16:00',
        129,
        82,
        86.5,
        1.83,
        74, 'Kirola egin ondoren.'
    ),
    (
        97,
        '2026-01-07 10:16:00',
        130,
        86,
        86.7,
        1.56,
        66, 'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-01-07 10:05:00',
        127,
        76,
        84.6,
        1.60,
        80, 'Apur bat nekatuta.'
    ),
    (
        100,
        '2026-01-07 10:18:00',
        139,
        84,
        81.9,
        1.57,
        91, 'Baraualdian.'
    ),
    (
        52,
        '2026-01-08 10:50:00',
        126,
        94,
        94.1,
        1.77,
        80, 'Baraualdian.'
    ),
    (
        54,
        '2026-01-08 10:31:00',
        145,
        88,
        87.6,
        1.60,
        67, 'Apur bat nekatuta.'
    ),
    (
        55,
        '2026-01-08 07:01:00',
        140,
        77,
        80.7,
        1.76,
        84, 'Kirola egin ondoren.'
    ),
    (
        56,
        '2026-01-08 09:46:00',
        132,
        79,
        89.2,
        1.61,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        57,
        '2026-01-08 08:30:00',
        121,
        83,
        83.3,
        1.69,
        87, 'Baraualdian.'
    ),
    (
        58,
        '2026-01-08 08:04:00',
        141,
        76,
        67.3,
        1.68,
        93, 'Apur bat nekatuta.'
    ),
    (
        59,
        '2026-01-08 09:51:00',
        130,
        82,
        64.0,
        1.73,
        83, 'Apur bat nekatuta.'
    ),
    (
        60,
        '2026-01-08 09:44:00',
        121,
        88,
        78.2,
        1.81,
        80, 'Gosariaren ondoren.'
    ),
    (
        61,
        '2026-01-08 07:06:00',
        116,
        93,
        72.5,
        1.83,
        67, 'Gosariaren ondoren.'
    ),
    (
        62,
        '2026-01-08 08:50:00',
        139,
        74,
        65.6,
        1.56,
        84, 'Kirola egin ondoren.'
    ),
    (
        63,
        '2026-01-08 09:24:00',
        137,
        81,
        81.9,
        1.80,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2026-01-08 10:39:00',
        131,
        85,
        94.8,
        1.56,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2026-01-08 08:57:00',
        134,
        91,
        91.9,
        1.55,
        92, 'Gosariaren ondoren.'
    ),
    (
        66,
        '2026-01-08 09:59:00',
        136,
        79,
        75.7,
        1.59,
        83, 'Kirola egin ondoren.'
    ),
    (
        67,
        '2026-01-08 07:15:00',
        131,
        87,
        72.7,
        1.72,
        74, 'Apur bat nekatuta.'
    ),
    (
        68,
        '2026-01-08 07:05:00',
        131,
        84,
        60.5,
        1.85,
        92, 'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2026-01-08 10:53:00',
        139,
        90,
        94.8,
        1.66,
        75, 'Dena ondo.'
    ),
    (
        70,
        '2026-01-08 07:14:00',
        119,
        81,
        74.6,
        1.70,
        85, 'Apur bat nekatuta.'
    ),
    (
        71,
        '2026-01-08 08:55:00',
        138,
        72,
        89.1,
        1.63,
        91, 'Baraualdian.'
    ),
    (
        72,
        '2026-01-08 09:32:00',
        142,
        77,
        92.5,
        1.69,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2026-01-08 07:13:00',
        123,
        86,
        95.7,
        1.55,
        77, 'Baraualdian.'
    ),
    (
        74,
        '2026-01-08 07:32:00',
        127,
        78,
        64.8,
        1.67,
        94, 'Ondo sentitzen naiz.'
    ),
    (
        75,
        '2026-01-08 09:47:00',
        130,
        85,
        60.3,
        1.65,
        68, 'Baraualdian.'
    ),
    (
        76,
        '2026-01-08 10:05:00',
        129,
        83,
        66.7,
        1.69,
        75, 'Dena ondo.'
    ),
    (
        77,
        '2026-01-08 09:10:00',
        129,
        92,
        67.1,
        1.67,
        74, 'Ondo sentitzen naiz.'
    ),
    (
        79,
        '2026-01-08 09:51:00',
        141,
        76,
        67.9,
        1.67,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2026-01-08 10:51:00',
        131,
        95,
        86.2,
        1.58,
        73, 'Dena ondo.'
    ),
    (
        82,
        '2026-01-08 08:41:00',
        132,
        85,
        88.6,
        1.77,
        66, 'Baraualdian.'
    ),
    (
        83,
        '2026-01-08 08:27:00',
        130,
        79,
        65.9,
        1.80,
        75, 'Apur bat nekatuta.'
    ),
    (
        84,
        '2026-01-08 09:24:00',
        118,
        77,
        78.0,
        1.67,
        76, 'Gosariaren ondoren.'
    ),
    (
        85,
        '2026-01-08 08:12:00',
        128,
        83,
        80.4,
        1.72,
        88, 'Gaur goizean neurtuta.'
    ),
    (
        86,
        '2026-01-08 07:06:00',
        143,
        86,
        68.7,
        1.57,
        67, 'Gosariaren ondoren.'
    ),
    (
        87,
        '2026-01-08 08:56:00',
        133,
        80,
        72.2,
        1.61,
        74, 'Kirola egin ondoren.'
    ),
    (
        89,
        '2026-01-08 10:31:00',
        132,
        77,
        91.4,
        1.84,
        85, 'Baraualdian.'
    ),
    (
        90,
        '2026-01-08 09:04:00',
        121,
        88,
        66.4,
        1.60,
        74, 'Baraualdian.'
    ),
    (
        91,
        '2026-01-08 08:49:00',
        127,
        80,
        89.8,
        1.58,
        74, 'Kirola egin ondoren.'
    ),
    (
        92,
        '2026-01-08 07:54:00',
        140,
        92,
        60.8,
        1.79,
        79, 'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2026-01-08 10:57:00',
        125,
        89,
        75.7,
        1.81,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2026-01-08 08:01:00',
        142,
        78,
        86.5,
        1.83,
        75, 'Gosariaren ondoren.'
    ),
    (
        95,
        '2026-01-08 09:15:00',
        143,
        85,
        91.0,
        1.77,
        74, 'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2026-01-08 09:58:00',
        128,
        82,
        86.1,
        1.56,
        93, 'Baraualdian.'
    ),
    (
        98,
        '2026-01-08 09:22:00',
        118,
        86,
        83.8,
        1.60,
        72, 'Baraualdian.'
    ),
    (
        99,
        '2026-01-08 08:59:00',
        130,
        84,
        86.1,
        1.71,
        85, 'Apur bat nekatuta.'
    ),
    (
        100,
        '2026-01-08 08:59:00',
        134,
        85,
        82.7,
        1.57,
        74, 'Gaur goizean neurtuta.'
    ),
    (
        51,
        '2026-01-09 08:16:00',
        128,
        89,
        64.6,
        1.76,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        52,
        '2026-01-09 08:46:00',
        138,
        92,
        94.1,
        1.77,
        71, 'Apur bat nekatuta.'
    ),
    (
        53,
        '2026-01-09 09:45:00',
        122,
        82,
        75.4,
        1.75,
        74, 'Apur bat nekatuta.'
    ),
    (
        55,
        '2026-01-09 10:14:00',
        138,
        86,
        81.1,
        1.76,
        70, 'Kirola egin ondoren.'
    ),
    (
        56,
        '2026-01-09 09:28:00',
        139,
        89,
        89.6,
        1.61,
        75, 'Kirola egin ondoren.'
    ),
    (
        61,
        '2026-01-09 09:14:00',
        123,
        89,
        72.8,
        1.83,
        89, 'Dena ondo.'
    ),
    (
        62,
        '2026-01-09 08:13:00',
        125,
        76,
        66.1,
        1.56,
        93, 'Dena ondo.'
    ),
    (
        63,
        '2026-01-09 07:47:00',
        128,
        84,
        81.1,
        1.80,
        71, 'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2026-01-09 07:18:00',
        135,
        91,
        90.2,
        1.55,
        77, 'Apur bat nekatuta.'
    ),
    (
        66,
        '2026-01-09 07:39:00',
        123,
        87,
        74.1,
        1.59,
        66, 'Dena ondo.'
    ),
    (
        67,
        '2026-01-09 07:57:00',
        136,
        76,
        71.0,
        1.72,
        85, 'Gosariaren ondoren.'
    ),
    (
        68,
        '2026-01-09 07:40:00',
        122,
        86,
        60.3,
        1.85,
        70, 'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-01-09 08:17:00',
        136,
        87,
        96.0,
        1.66,
        71, 'Gosariaren ondoren.'
    ),
    (
        70,
        '2026-01-09 10:51:00',
        117,
        75,
        74.5,
        1.70,
        69, 'Gosariaren ondoren.'
    ),
    (
        71,
        '2026-01-09 09:34:00',
        133,
        72,
        89.2,
        1.63,
        81, 'Gosariaren ondoren.'
    ),
    (
        72,
        '2026-01-09 10:20:00',
        129,
        77,
        92.0,
        1.69,
        80, 'Apur bat nekatuta.'
    ),
    (
        73,
        '2026-01-09 07:53:00',
        112,
        81,
        95.1,
        1.55,
        82, 'Dena ondo.'
    ),
    (
        75,
        '2026-01-09 10:56:00',
        127,
        85,
        60.9,
        1.65,
        91, 'Apur bat nekatuta.'
    ),
    (
        77,
        '2026-01-09 10:31:00',
        122,
        85,
        67.1,
        1.67,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        78,
        '2026-01-09 07:43:00',
        128,
        86,
        62.5,
        1.61,
        75, 'Gosariaren ondoren.'
    ),
    (
        79,
        '2026-01-09 07:07:00',
        140,
        80,
        67.3,
        1.67,
        71, 'Kirola egin ondoren.'
    ),
    (
        80,
        '2026-01-09 08:02:00',
        127,
        89,
        62.0,
        1.78,
        66, 'Gosariaren ondoren.'
    ),
    (
        81,
        '2026-01-09 08:02:00',
        125,
        92,
        85.6,
        1.58,
        66, 'Dena ondo.'
    ),
    (
        83,
        '2026-01-09 08:21:00',
        116,
        93,
        65.2,
        1.80,
        87, 'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2026-01-09 08:07:00',
        137,
        90,
        78.2,
        1.67,
        92, 'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2026-01-09 10:36:00',
        127,
        81,
        80.8,
        1.72,
        83, 'Kirola egin ondoren.'
    ),
    (
        90,
        '2026-01-09 07:18:00',
        136,
        89,
        65.7,
        1.60,
        66, 'Ondo sentitzen naiz.'
    ),
    (
        92,
        '2026-01-09 08:10:00',
        140,
        90,
        59.7,
        1.79,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2026-01-09 10:29:00',
        133,
        76,
        87.5,
        1.83,
        94, 'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2026-01-09 10:43:00',
        143,
        78,
        90.5,
        1.77,
        69, 'Dena ondo.'
    ),
    (
        97,
        '2026-01-09 10:35:00',
        134,
        77,
        87.2,
        1.56,
        75, 'Kirola egin ondoren.'
    ),
    (
        98,
        '2026-01-09 08:57:00',
        119,
        76,
        83.3,
        1.60,
        65, 'Apur bat nekatuta.'
    ),
    (
        99,
        '2026-01-09 10:11:00',
        124,
        84,
        85.1,
        1.71,
        81, 'Baraualdian.'
    ),
    (
        100,
        '2026-01-09 08:47:00',
        122,
        86,
        82.0,
        1.57,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        51,
        '2026-01-10 09:44:00',
        120,
        80,
        63.3,
        1.76,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2026-01-10 08:13:00',
        132,
        81,
        86.6,
        1.60,
        76, 'Baraualdian.'
    ),
    (
        55,
        '2026-01-10 08:34:00',
        136,
        71,
        80.1,
        1.76,
        72, 'Baraualdian.'
    ),
    (
        57,
        '2026-01-10 09:20:00',
        133,
        88,
        82.4,
        1.69,
        92, 'Gosariaren ondoren.'
    ),
    (
        58,
        '2026-01-10 10:25:00',
        142,
        79,
        67.8,
        1.68,
        87, 'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2026-01-10 07:13:00',
        129,
        82,
        63.9,
        1.73,
        91, 'Apur bat nekatuta.'
    ),
    (
        63,
        '2026-01-10 08:59:00',
        126,
        80,
        81.7,
        1.80,
        90, 'Apur bat nekatuta.'
    ),
    (
        64,
        '2026-01-10 10:51:00',
        135,
        82,
        95.5,
        1.56,
        74, 'Baraualdian.'
    ),
    (
        65,
        '2026-01-10 07:21:00',
        124,
        82,
        91.9,
        1.55,
        88, 'Apur bat nekatuta.'
    ),
    (
        66,
        '2026-01-10 07:27:00',
        121,
        81,
        74.7,
        1.59,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2026-01-10 09:34:00',
        137,
        82,
        94.7,
        1.66,
        93, 'Apur bat nekatuta.'
    ),
    (
        70,
        '2026-01-10 07:22:00',
        117,
        81,
        74.5,
        1.70,
        66, 'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-01-10 07:40:00',
        130,
        74,
        89.6,
        1.63,
        84, 'Dena ondo.'
    ),
    (
        72,
        '2026-01-10 07:14:00',
        140,
        86,
        91.4,
        1.69,
        78, 'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-01-10 07:58:00',
        128,
        73,
        95.3,
        1.55,
        68, 'Dena ondo.'
    ),
    (
        74,
        '2026-01-10 10:56:00',
        119,
        83,
        63.5,
        1.67,
        77, 'Baraualdian.'
    ),
    (
        76,
        '2026-01-10 09:03:00',
        119,
        85,
        65.0,
        1.69,
        72, 'Baraualdian.'
    ),
    (
        77,
        '2026-01-10 08:28:00',
        137,
        79,
        67.9,
        1.67,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        78,
        '2026-01-10 08:13:00',
        126,
        75,
        63.7,
        1.61,
        68, 'Dena ondo.'
    ),
    (
        79,
        '2026-01-10 08:28:00',
        126,
        89,
        66.6,
        1.67,
        66, 'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-01-10 09:33:00',
        125,
        88,
        62.9,
        1.78,
        85, 'Dena ondo.'
    ),
    (
        83,
        '2026-01-10 10:26:00',
        130,
        90,
        64.1,
        1.80,
        70, 'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2026-01-10 10:35:00',
        117,
        76,
        79.0,
        1.67,
        85, 'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2026-01-10 10:23:00',
        140,
        75,
        68.9,
        1.57,
        73, 'Apur bat nekatuta.'
    ),
    (
        87,
        '2026-01-10 07:27:00',
        124,
        88,
        73.5,
        1.61,
        90, 'Apur bat nekatuta.'
    ),
    (
        88,
        '2026-01-10 09:38:00',
        127,
        81,
        90.1,
        1.81,
        82, 'Baraualdian.'
    ),
    (
        89,
        '2026-01-10 10:24:00',
        140,
        92,
        91.3,
        1.84,
        90, 'Kirola egin ondoren.'
    ),
    (
        90,
        '2026-01-10 08:37:00',
        130,
        79,
        65.9,
        1.60,
        68, 'Baraualdian.'
    ),
    (
        91,
        '2026-01-10 10:27:00',
        135,
        83,
        91.0,
        1.58,
        89, 'Baraualdian.'
    ),
    (
        92,
        '2026-01-10 10:46:00',
        128,
        92,
        59.9,
        1.79,
        87, 'Dena ondo.'
    ),
    (
        93,
        '2026-01-10 09:41:00',
        139,
        87,
        76.3,
        1.81,
        70, 'Kirola egin ondoren.'
    ),
    (
        94,
        '2026-01-10 08:41:00',
        126,
        85,
        86.1,
        1.83,
        91, 'Baraualdian.'
    ),
    (
        97,
        '2026-01-10 09:58:00',
        137,
        72,
        87.4,
        1.56,
        68, 'Kirola egin ondoren.'
    ),
    (
        100,
        '2026-01-10 08:45:00',
        127,
        77,
        82.6,
        1.57,
        69, 'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2026-01-11 08:48:00',
        129,
        87,
        63.2,
        1.76,
        70, 'Kirola egin ondoren.'
    ),
    (
        53,
        '2026-01-11 09:54:00',
        113,
        80,
        75.3,
        1.75,
        68, 'Dena ondo.'
    ),
    (
        54,
        '2026-01-11 08:44:00',
        144,
        76,
        86.1,
        1.60,
        74, 'Dena ondo.'
    ),
    (
        55,
        '2026-01-11 08:57:00',
        140,
        80,
        80.3,
        1.76,
        72, 'Apur bat nekatuta.'
    ),
    (
        56,
        '2026-01-11 09:33:00',
        135,
        84,
        90.2,
        1.61,
        79, 'Kirola egin ondoren.'
    ),
    (
        58,
        '2026-01-11 10:27:00',
        145,
        76,
        67.3,
        1.68,
        88, 'Ondo sentitzen naiz.'
    ),
    (
        59,
        '2026-01-11 08:54:00',
        125,
        80,
        63.4,
        1.73,
        90, 'Ondo sentitzen naiz.'
    ),
    (
        60,
        '2026-01-11 10:34:00',
        119,
        89,
        78.5,
        1.81,
        70, 'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-01-11 07:10:00',
        124,
        83,
        73.7,
        1.83,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        62,
        '2026-01-11 09:13:00',
        136,
        81,
        66.2,
        1.56,
        90, 'Apur bat nekatuta.'
    ),
    (
        64,
        '2026-01-11 10:09:00',
        140,
        74,
        94.0,
        1.56,
        87, 'Baraualdian.'
    ),
    (
        65,
        '2026-01-11 08:38:00',
        134,
        84,
        91.4,
        1.55,
        75, 'Kirola egin ondoren.'
    ),
    (
        66,
        '2026-01-11 09:03:00',
        133,
        79,
        75.0,
        1.59,
        94, 'Dena ondo.'
    ),
    (
        67,
        '2026-01-11 09:51:00',
        137,
        83,
        71.6,
        1.72,
        93, 'Kirola egin ondoren.'
    ),
    (
        69,
        '2026-01-11 07:47:00',
        141,
        84,
        95.8,
        1.66,
        86, 'Kirola egin ondoren.'
    ),
    (
        70,
        '2026-01-11 08:42:00',
        119,
        86,
        74.3,
        1.70,
        68, 'Baraualdian.'
    ),
    (
        71,
        '2026-01-11 07:48:00',
        122,
        77,
        88.1,
        1.63,
        92, 'Baraualdian.'
    ),
    (
        72,
        '2026-01-11 08:20:00',
        134,
        83,
        91.0,
        1.69,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2026-01-11 09:20:00',
        129,
        81,
        95.9,
        1.55,
        82, 'Gosariaren ondoren.'
    ),
    (
        75,
        '2026-01-11 08:38:00',
        131,
        83,
        59.2,
        1.65,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2026-01-11 09:34:00',
        120,
        93,
        66.4,
        1.69,
        71, 'Ondo sentitzen naiz.'
    ),
    (
        77,
        '2026-01-11 08:23:00',
        129,
        89,
        66.3,
        1.67,
        88, 'Kirola egin ondoren.'
    ),
    (
        78,
        '2026-01-11 10:12:00',
        120,
        80,
        62.8,
        1.61,
        83, 'Gosariaren ondoren.'
    ),
    (
        79,
        '2026-01-11 10:47:00',
        133,
        78,
        67.6,
        1.67,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2026-01-11 07:15:00',
        124,
        87,
        64.0,
        1.78,
        75, 'Gosariaren ondoren.'
    ),
    (
        82,
        '2026-01-11 10:45:00',
        131,
        79,
        88.5,
        1.77,
        86, 'Gosariaren ondoren.'
    ),
    (
        84,
        '2026-01-11 10:15:00',
        134,
        89,
        79.5,
        1.67,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2026-01-11 08:40:00',
        131,
        83,
        80.7,
        1.72,
        74, 'Gosariaren ondoren.'
    ),
    (
        86,
        '2026-01-11 08:41:00',
        123,
        86,
        67.6,
        1.57,
        94, 'Kirola egin ondoren.'
    ),
    (
        87,
        '2026-01-11 09:44:00',
        132,
        87,
        73.2,
        1.61,
        92, 'Baraualdian.'
    ),
    (
        88,
        '2026-01-11 07:01:00',
        122,
        75,
        89.1,
        1.81,
        86, 'Apur bat nekatuta.'
    ),
    (
        89,
        '2026-01-11 07:16:00',
        128,
        78,
        92.0,
        1.84,
        74, 'Apur bat nekatuta.'
    ),
    (
        90,
        '2026-01-11 07:49:00',
        124,
        85,
        66.2,
        1.60,
        93, 'Kirola egin ondoren.'
    ),
    (
        93,
        '2026-01-11 10:26:00',
        121,
        92,
        76.2,
        1.81,
        92, 'Gosariaren ondoren.'
    ),
    (
        94,
        '2026-01-11 08:12:00',
        124,
        88,
        87.7,
        1.83,
        82, 'Baraualdian.'
    ),
    (
        95,
        '2026-01-11 08:03:00',
        127,
        87,
        90.1,
        1.77,
        89, 'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-01-11 09:41:00',
        129,
        74,
        76.1,
        1.71,
        89, 'Dena ondo.'
    ),
    (
        97,
        '2026-01-11 07:56:00',
        138,
        83,
        87.4,
        1.56,
        74, 'Apur bat nekatuta.'
    ),
    (
        98,
        '2026-01-11 07:21:00',
        134,
        75,
        84.3,
        1.60,
        83, 'Kirola egin ondoren.'
    ),
    (
        99,
        '2026-01-11 10:10:00',
        129,
        76,
        86.3,
        1.71,
        89, 'Ondo sentitzen naiz.'
    ),
    (
        100,
        '2026-01-11 09:38:00',
        125,
        79,
        82.5,
        1.57,
        84, 'Apur bat nekatuta.'
    ),
    (
        52,
        '2026-01-12 09:08:00',
        129,
        93,
        94.5,
        1.77,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2026-01-12 08:57:00',
        120,
        78,
        74.4,
        1.75,
        73, 'Baraualdian.'
    ),
    (
        54,
        '2026-01-12 07:30:00',
        137,
        89,
        87.6,
        1.60,
        93, 'Ondo sentitzen naiz.'
    ),
    (
        55,
        '2026-01-12 10:46:00',
        143,
        80,
        82.0,
        1.76,
        80, 'Apur bat nekatuta.'
    ),
    (
        56,
        '2026-01-12 07:49:00',
        126,
        83,
        89.5,
        1.61,
        83, 'Apur bat nekatuta.'
    ),
    (
        57,
        '2026-01-12 10:19:00',
        121,
        88,
        82.5,
        1.69,
        92, 'Baraualdian.'
    ),
    (
        59,
        '2026-01-12 07:44:00',
        117,
        80,
        62.6,
        1.73,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2026-01-12 09:59:00',
        132,
        91,
        78.3,
        1.81,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        61,
        '2026-01-12 09:48:00',
        119,
        79,
        72.4,
        1.83,
        83, 'Kirola egin ondoren.'
    ),
    (
        62,
        '2026-01-12 09:46:00',
        122,
        77,
        65.9,
        1.56,
        69, 'Apur bat nekatuta.'
    ),
    (
        64,
        '2026-01-12 07:19:00',
        121,
        73,
        94.8,
        1.56,
        92, 'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2026-01-12 07:14:00',
        136,
        91,
        90.5,
        1.55,
        69, 'Apur bat nekatuta.'
    ),
    (
        66,
        '2026-01-12 10:55:00',
        126,
        85,
        75.6,
        1.59,
        68, 'Kirola egin ondoren.'
    ),
    (
        67,
        '2026-01-12 07:46:00',
        142,
        86,
        71.2,
        1.72,
        75, 'Dena ondo.'
    ),
    (
        68,
        '2026-01-12 09:22:00',
        132,
        73,
        61.8,
        1.85,
        74, 'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-01-12 10:20:00',
        131,
        80,
        94.8,
        1.66,
        68, 'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-01-12 08:03:00',
        127,
        77,
        88.7,
        1.63,
        70, 'Dena ondo.'
    ),
    (
        72,
        '2026-01-12 08:18:00',
        132,
        89,
        92.7,
        1.69,
        66, 'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2026-01-12 10:14:00',
        131,
        71,
        94.1,
        1.55,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2026-01-12 10:23:00',
        128,
        84,
        63.0,
        1.67,
        66, 'Gosariaren ondoren.'
    ),
    (
        75,
        '2026-01-12 09:01:00',
        140,
        77,
        60.7,
        1.65,
        82, 'Ondo sentitzen naiz.'
    ),
    (
        77,
        '2026-01-12 10:21:00',
        139,
        87,
        66.2,
        1.67,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        79,
        '2026-01-12 09:31:00',
        137,
        79,
        67.4,
        1.67,
        91, 'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2026-01-12 08:27:00',
        128,
        88,
        63.7,
        1.78,
        74, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-01-12 08:09:00',
        132,
        82,
        85.2,
        1.58,
        70, 'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-01-12 08:15:00',
        132,
        87,
        89.2,
        1.77,
        68, 'Dena ondo.'
    ),
    (
        83,
        '2026-01-12 09:00:00',
        124,
        92,
        65.6,
        1.80,
        89, 'Dena ondo.'
    ),
    (
        84,
        '2026-01-12 07:51:00',
        129,
        79,
        79.8,
        1.67,
        93, 'Baraualdian.'
    ),
    (
        85,
        '2026-01-12 08:48:00',
        128,
        85,
        80.4,
        1.72,
        87, 'Baraualdian.'
    ),
    (
        86,
        '2026-01-12 08:44:00',
        138,
        77,
        68.8,
        1.57,
        78, 'Gaur goizean neurtuta.'
    ),
    (
        88,
        '2026-01-12 07:02:00',
        124,
        82,
        89.0,
        1.81,
        78, 'Apur bat nekatuta.'
    ),
    (
        89,
        '2026-01-12 07:06:00',
        141,
        88,
        91.5,
        1.84,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        90,
        '2026-01-12 10:56:00',
        120,
        79,
        65.8,
        1.60,
        84, 'Ondo sentitzen naiz.'
    ),
    (
        92,
        '2026-01-12 09:12:00',
        129,
        84,
        59.9,
        1.79,
        88, 'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2026-01-12 09:38:00',
        121,
        90,
        75.1,
        1.81,
        72, 'Baraualdian.'
    ),
    (
        94,
        '2026-01-12 09:41:00',
        122,
        79,
        86.1,
        1.83,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2026-01-12 08:33:00',
        136,
        77,
        78.0,
        1.71,
        78, 'Ondo sentitzen naiz.'
    ),
    (
        98,
        '2026-01-12 07:56:00',
        126,
        80,
        85.0,
        1.60,
        80, 'Kirola egin ondoren.'
    ),
    (
        100,
        '2026-01-12 10:46:00',
        129,
        72,
        82.4,
        1.57,
        73, 'Apur bat nekatuta.'
    ),
    (
        51,
        '2026-01-13 07:55:00',
        128,
        90,
        64.7,
        1.76,
        94, 'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2026-01-13 07:36:00',
        140,
        83,
        86.1,
        1.60,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2026-01-13 08:49:00',
        124,
        71,
        80.1,
        1.76,
        89, 'Apur bat nekatuta.'
    ),
    (
        56,
        '2026-01-13 07:13:00',
        139,
        92,
        89.4,
        1.61,
        91, 'Gaur goizean neurtuta.'
    ),
    (
        57,
        '2026-01-13 10:43:00',
        124,
        89,
        82.0,
        1.69,
        88, 'Ondo sentitzen naiz.'
    ),
    (
        58,
        '2026-01-13 10:36:00',
        127,
        82,
        66.2,
        1.68,
        77, 'Gosariaren ondoren.'
    ),
    (
        59,
        '2026-01-13 09:14:00',
        126,
        86,
        63.4,
        1.73,
        72, 'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2026-01-13 10:17:00',
        131,
        79,
        73.3,
        1.83,
        65, 'Kirola egin ondoren.'
    ),
    (
        62,
        '2026-01-13 08:23:00',
        134,
        84,
        65.9,
        1.56,
        94, 'Apur bat nekatuta.'
    ),
    (
        63,
        '2026-01-13 09:45:00',
        144,
        87,
        80.2,
        1.80,
        84, 'Baraualdian.'
    ),
    (
        64,
        '2026-01-13 09:03:00',
        140,
        76,
        94.8,
        1.56,
        84, 'Kirola egin ondoren.'
    ),
    (
        66,
        '2026-01-13 07:41:00',
        129,
        90,
        75.6,
        1.59,
        67, 'Gosariaren ondoren.'
    ),
    (
        67,
        '2026-01-13 08:46:00',
        134,
        90,
        71.4,
        1.72,
        92, 'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-01-13 08:35:00',
        139,
        82,
        94.1,
        1.66,
        66, 'Kirola egin ondoren.'
    ),
    (
        70,
        '2026-01-13 09:50:00',
        135,
        77,
        75.2,
        1.70,
        84, 'Kirola egin ondoren.'
    ),
    (
        71,
        '2026-01-13 07:44:00',
        123,
        86,
        89.0,
        1.63,
        72, 'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2026-01-13 09:19:00',
        134,
        82,
        92.2,
        1.69,
        86, 'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2026-01-13 10:54:00',
        123,
        89,
        63.8,
        1.67,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2026-01-13 09:50:00',
        126,
        81,
        60.0,
        1.65,
        68, 'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2026-01-13 08:48:00',
        121,
        87,
        65.6,
        1.69,
        78, 'Gosariaren ondoren.'
    ),
    (
        78,
        '2026-01-13 10:42:00',
        127,
        74,
        63.2,
        1.61,
        69, 'Dena ondo.'
    ),
    (
        79,
        '2026-01-13 08:55:00',
        143,
        88,
        67.1,
        1.67,
        79, 'Baraualdian.'
    ),
    (
        80,
        '2026-01-13 10:39:00',
        132,
        79,
        62.0,
        1.78,
        71, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-01-13 08:51:00',
        121,
        93,
        85.1,
        1.58,
        76, 'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-01-13 08:07:00',
        130,
        79,
        88.9,
        1.77,
        84, 'Gosariaren ondoren.'
    ),
    (
        83,
        '2026-01-13 09:26:00',
        117,
        92,
        65.2,
        1.80,
        75, 'Baraualdian.'
    ),
    (
        85,
        '2026-01-13 07:48:00',
        128,
        88,
        81.0,
        1.72,
        92, 'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2026-01-13 08:21:00',
        129,
        88,
        73.5,
        1.61,
        76, 'Kirola egin ondoren.'
    ),
    (
        88,
        '2026-01-13 09:50:00',
        114,
        73,
        90.1,
        1.81,
        78, 'Baraualdian.'
    ),
    (
        89,
        '2026-01-13 08:45:00',
        142,
        77,
        90.0,
        1.84,
        92, 'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2026-01-13 10:37:00',
        145,
        78,
        90.4,
        1.58,
        79, 'Kirola egin ondoren.'
    ),
    (
        92,
        '2026-01-13 07:32:00',
        125,
        81,
        59.3,
        1.79,
        88, 'Apur bat nekatuta.'
    ),
    (
        93,
        '2026-01-13 07:59:00',
        123,
        85,
        75.1,
        1.81,
        89, 'Gosariaren ondoren.'
    ),
    (
        96,
        '2026-01-13 07:05:00',
        122,
        80,
        76.9,
        1.71,
        76, 'Apur bat nekatuta.'
    ),
    (
        97,
        '2026-01-13 07:42:00',
        132,
        71,
        87.2,
        1.56,
        85, 'Gosariaren ondoren.'
    ),
    (
        99,
        '2026-01-13 08:51:00',
        121,
        79,
        86.7,
        1.71,
        89, 'Gosariaren ondoren.'
    ),
    (
        100,
        '2026-01-13 08:45:00',
        122,
        85,
        81.3,
        1.57,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        52,
        '2026-01-14 10:42:00',
        120,
        91,
        94.0,
        1.77,
        89, 'Baraualdian.'
    ),
    (
        53,
        '2026-01-14 10:16:00',
        118,
        91,
        75.7,
        1.75,
        75, 'Gosariaren ondoren.'
    ),
    (
        54,
        '2026-01-14 08:33:00',
        129,
        84,
        86.0,
        1.60,
        90, 'Apur bat nekatuta.'
    ),
    (
        55,
        '2026-01-14 08:14:00',
        125,
        76,
        81.9,
        1.76,
        94, 'Baraualdian.'
    ),
    (
        56,
        '2026-01-14 09:34:00',
        143,
        82,
        90.4,
        1.61,
        84, 'Ondo sentitzen naiz.'
    ),
    (
        57,
        '2026-01-14 08:19:00',
        129,
        84,
        83.3,
        1.69,
        93, 'Baraualdian.'
    ),
    (
        58,
        '2026-01-14 09:36:00',
        143,
        87,
        67.6,
        1.68,
        73, 'Apur bat nekatuta.'
    ),
    (
        59,
        '2026-01-14 08:21:00',
        112,
        85,
        63.8,
        1.73,
        78, 'Gosariaren ondoren.'
    ),
    (
        60,
        '2026-01-14 08:55:00',
        132,
        88,
        77.9,
        1.81,
        94, 'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2026-01-14 08:19:00',
        129,
        87,
        72.6,
        1.83,
        78, 'Dena ondo.'
    ),
    (
        62,
        '2026-01-14 10:36:00',
        125,
        80,
        65.2,
        1.56,
        86, 'Dena ondo.'
    ),
    (
        64,
        '2026-01-14 09:14:00',
        123,
        88,
        94.4,
        1.56,
        80, 'Apur bat nekatuta.'
    ),
    (
        68,
        '2026-01-14 09:30:00',
        138,
        80,
        62.0,
        1.85,
        82, 'Baraualdian.'
    ),
    (
        69,
        '2026-01-14 07:28:00',
        142,
        78,
        95.5,
        1.66,
        87, 'Dena ondo.'
    ),
    (
        70,
        '2026-01-14 07:07:00',
        116,
        76,
        74.5,
        1.70,
        67, 'Kirola egin ondoren.'
    ),
    (
        72,
        '2026-01-14 07:10:00',
        128,
        74,
        92.6,
        1.69,
        75, 'Apur bat nekatuta.'
    ),
    (
        73,
        '2026-01-14 08:07:00',
        115,
        76,
        94.5,
        1.55,
        89, 'Dena ondo.'
    ),
    (
        75,
        '2026-01-14 08:54:00',
        143,
        75,
        59.2,
        1.65,
        66, 'Dena ondo.'
    ),
    (
        76,
        '2026-01-14 07:13:00',
        127,
        81,
        65.3,
        1.69,
        70, 'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2026-01-14 09:15:00',
        128,
        90,
        66.0,
        1.67,
        89, 'Apur bat nekatuta.'
    ),
    (
        79,
        '2026-01-14 10:54:00',
        138,
        77,
        66.6,
        1.67,
        68, 'Apur bat nekatuta.'
    ),
    (
        80,
        '2026-01-14 09:41:00',
        134,
        81,
        62.7,
        1.78,
        91, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-01-14 10:20:00',
        121,
        86,
        86.4,
        1.58,
        79, 'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-01-14 08:03:00',
        139,
        84,
        88.7,
        1.77,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2026-01-14 09:00:00',
        132,
        89,
        65.4,
        1.80,
        65, 'Kirola egin ondoren.'
    ),
    (
        84,
        '2026-01-14 09:56:00',
        131,
        81,
        79.6,
        1.67,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2026-01-14 10:05:00',
        120,
        82,
        80.5,
        1.72,
        77, 'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2026-01-14 07:48:00',
        143,
        73,
        68.0,
        1.57,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        88,
        '2026-01-14 10:03:00',
        116,
        79,
        89.2,
        1.81,
        72, 'Dena ondo.'
    ),
    (
        89,
        '2026-01-14 07:33:00',
        128,
        78,
        90.8,
        1.84,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        90,
        '2026-01-14 08:40:00',
        130,
        93,
        65.7,
        1.60,
        72, 'Apur bat nekatuta.'
    ),
    (
        91,
        '2026-01-14 10:26:00',
        143,
        77,
        90.8,
        1.58,
        87, 'Baraualdian.'
    ),
    (
        92,
        '2026-01-14 08:39:00',
        127,
        90,
        60.8,
        1.79,
        86, 'Baraualdian.'
    ),
    (
        93,
        '2026-01-14 08:28:00',
        136,
        90,
        76.9,
        1.81,
        73, 'Dena ondo.'
    ),
    (
        95,
        '2026-01-14 07:52:00',
        136,
        79,
        89.0,
        1.77,
        86, 'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2026-01-14 08:40:00',
        126,
        82,
        77.1,
        1.71,
        87, 'Kirola egin ondoren.'
    ),
    (
        97,
        '2026-01-14 07:33:00',
        134,
        86,
        87.3,
        1.56,
        65, 'Kirola egin ondoren.'
    ),
    (
        98,
        '2026-01-14 07:06:00',
        128,
        78,
        84.6,
        1.60,
        77, 'Baraualdian.'
    ),
    (
        99,
        '2026-01-14 09:11:00',
        124,
        77,
        86.9,
        1.71,
        75, 'Dena ondo.'
    ),
    (
        51,
        '2026-01-15 10:12:00',
        134,
        78,
        64.4,
        1.76,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        52,
        '2026-01-15 08:02:00',
        128,
        87,
        94.7,
        1.77,
        82, 'Ondo sentitzen naiz.'
    ),
    (
        54,
        '2026-01-15 10:28:00',
        129,
        89,
        87.7,
        1.60,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2026-01-15 09:27:00',
        144,
        78,
        80.4,
        1.76,
        68, 'Gaur goizean neurtuta.'
    ),
    (
        56,
        '2026-01-15 09:43:00',
        145,
        88,
        91.0,
        1.61,
        70, 'Gosariaren ondoren.'
    ),
    (
        58,
        '2026-01-15 10:50:00',
        127,
        90,
        66.0,
        1.68,
        70, 'Baraualdian.'
    ),
    (
        61,
        '2026-01-15 09:48:00',
        122,
        81,
        73.0,
        1.83,
        82, 'Dena ondo.'
    ),
    (
        62,
        '2026-01-15 10:21:00',
        124,
        73,
        66.9,
        1.56,
        78, 'Baraualdian.'
    ),
    (
        64,
        '2026-01-15 07:34:00',
        127,
        83,
        95.2,
        1.56,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2026-01-15 09:30:00',
        133,
        85,
        91.6,
        1.55,
        81, 'Baraualdian.'
    ),
    (
        66,
        '2026-01-15 07:45:00',
        136,
        90,
        74.7,
        1.59,
        80, 'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-01-15 08:18:00',
        125,
        84,
        95.4,
        1.66,
        76, 'Kirola egin ondoren.'
    ),
    (
        70,
        '2026-01-15 07:04:00',
        123,
        79,
        75.8,
        1.70,
        67, 'Dena ondo.'
    ),
    (
        71,
        '2026-01-15 07:02:00',
        131,
        73,
        88.8,
        1.63,
        86, 'Gosariaren ondoren.'
    ),
    (
        72,
        '2026-01-15 08:55:00',
        138,
        74,
        91.5,
        1.69,
        93, 'Dena ondo.'
    ),
    (
        74,
        '2026-01-15 09:38:00',
        111,
        82,
        64.8,
        1.67,
        70, 'Kirola egin ondoren.'
    ),
    (
        75,
        '2026-01-15 08:09:00',
        141,
        72,
        60.1,
        1.65,
        75, 'Gosariaren ondoren.'
    ),
    (
        76,
        '2026-01-15 10:58:00',
        116,
        82,
        65.9,
        1.69,
        74, 'Dena ondo.'
    ),
    (
        77,
        '2026-01-15 09:42:00',
        133,
        87,
        67.4,
        1.67,
        65, 'Kirola egin ondoren.'
    ),
    (
        78,
        '2026-01-15 10:52:00',
        118,
        88,
        62.0,
        1.61,
        66, 'Kirola egin ondoren.'
    ),
    (
        79,
        '2026-01-15 09:21:00',
        126,
        76,
        66.8,
        1.67,
        80, 'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-01-15 07:33:00',
        138,
        79,
        63.3,
        1.78,
        68, 'Apur bat nekatuta.'
    ),
    (
        81,
        '2026-01-15 10:02:00',
        129,
        92,
        86.1,
        1.58,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-01-15 07:59:00',
        125,
        88,
        89.7,
        1.77,
        82, 'Kirola egin ondoren.'
    ),
    (
        83,
        '2026-01-15 07:20:00',
        132,
        94,
        64.2,
        1.80,
        69, 'Baraualdian.'
    ),
    (
        84,
        '2026-01-15 08:50:00',
        125,
        85,
        78.9,
        1.67,
        72, 'Gosariaren ondoren.'
    ),
    (
        85,
        '2026-01-15 08:30:00',
        131,
        92,
        80.7,
        1.72,
        65, 'Kirola egin ondoren.'
    ),
    (
        88,
        '2026-01-15 07:15:00',
        112,
        77,
        89.7,
        1.81,
        79, 'Gosariaren ondoren.'
    ),
    (
        91,
        '2026-01-15 07:31:00',
        145,
        85,
        89.3,
        1.58,
        77, 'Kirola egin ondoren.'
    ),
    (
        92,
        '2026-01-15 08:04:00',
        129,
        89,
        60.0,
        1.79,
        65, 'Dena ondo.'
    ),
    (
        93,
        '2026-01-15 09:08:00',
        134,
        83,
        76.9,
        1.81,
        70, 'Apur bat nekatuta.'
    ),
    (
        94,
        '2026-01-15 10:21:00',
        137,
        86,
        86.5,
        1.83,
        78, 'Dena ondo.'
    ),
    (
        95,
        '2026-01-15 10:33:00',
        144,
        77,
        90.3,
        1.77,
        71, 'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-01-15 10:39:00',
        117,
        86,
        77.7,
        1.71,
        81, 'Kirola egin ondoren.'
    ),
    (
        97,
        '2026-01-15 10:51:00',
        124,
        81,
        87.8,
        1.56,
        87, 'Baraualdian.'
    ),
    (
        98,
        '2026-01-15 08:29:00',
        122,
        80,
        83.8,
        1.60,
        78, 'Apur bat nekatuta.'
    ),
    (
        99,
        '2026-01-15 07:38:00',
        130,
        77,
        85.7,
        1.71,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2026-01-15 08:59:00',
        125,
        80,
        82.2,
        1.57,
        83, 'Kirola egin ondoren.'
    ),
    (
        52,
        '2026-01-16 07:54:00',
        119,
        81,
        94.5,
        1.77,
        70, 'Dena ondo.'
    ),
    (
        53,
        '2026-01-16 10:30:00',
        114,
        92,
        75.7,
        1.75,
        67, 'Gosariaren ondoren.'
    ),
    (
        54,
        '2026-01-16 07:36:00',
        129,
        76,
        86.1,
        1.60,
        72, 'Gosariaren ondoren.'
    ),
    (
        56,
        '2026-01-16 08:04:00',
        134,
        86,
        89.2,
        1.61,
        71, 'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2026-01-16 07:26:00',
        132,
        84,
        67.6,
        1.68,
        68, 'Kirola egin ondoren.'
    ),
    (
        59,
        '2026-01-16 08:13:00',
        116,
        83,
        62.1,
        1.73,
        80, 'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2026-01-16 09:19:00',
        128,
        79,
        74.0,
        1.83,
        74, 'Apur bat nekatuta.'
    ),
    (
        62,
        '2026-01-16 09:39:00',
        132,
        83,
        66.9,
        1.56,
        89, 'Apur bat nekatuta.'
    ),
    (
        65,
        '2026-01-16 08:05:00',
        136,
        86,
        90.0,
        1.55,
        84, 'Gosariaren ondoren.'
    ),
    (
        66,
        '2026-01-16 08:45:00',
        120,
        87,
        74.7,
        1.59,
        72, 'Baraualdian.'
    ),
    (
        67,
        '2026-01-16 07:27:00',
        128,
        81,
        71.5,
        1.72,
        77, 'Baraualdian.'
    ),
    (
        68,
        '2026-01-16 09:10:00',
        139,
        87,
        60.0,
        1.85,
        82, 'Baraualdian.'
    ),
    (
        69,
        '2026-01-16 07:16:00',
        134,
        83,
        94.8,
        1.66,
        77, 'Apur bat nekatuta.'
    ),
    (
        71,
        '2026-01-16 07:26:00',
        133,
        74,
        89.6,
        1.63,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2026-01-16 07:23:00',
        143,
        88,
        92.0,
        1.69,
        90, 'Gosariaren ondoren.'
    ),
    (
        73,
        '2026-01-16 07:24:00',
        127,
        72,
        94.2,
        1.55,
        66, 'Dena ondo.'
    ),
    (
        74,
        '2026-01-16 07:51:00',
        123,
        90,
        64.9,
        1.67,
        85, 'Kirola egin ondoren.'
    ),
    (
        75,
        '2026-01-16 09:24:00',
        135,
        81,
        59.0,
        1.65,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2026-01-16 10:11:00',
        136,
        81,
        67.1,
        1.67,
        83, 'Apur bat nekatuta.'
    ),
    (
        78,
        '2026-01-16 10:40:00',
        118,
        80,
        62.4,
        1.61,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        79,
        '2026-01-16 09:17:00',
        136,
        84,
        66.7,
        1.67,
        67, 'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-01-16 07:07:00',
        132,
        92,
        62.6,
        1.78,
        66, 'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-01-16 09:54:00',
        143,
        88,
        89.8,
        1.77,
        93, 'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2026-01-16 09:28:00',
        121,
        84,
        65.7,
        1.80,
        67, 'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2026-01-16 07:53:00',
        123,
        90,
        79.7,
        1.67,
        77, 'Apur bat nekatuta.'
    ),
    (
        85,
        '2026-01-16 09:23:00',
        126,
        91,
        81.1,
        1.72,
        91, 'Dena ondo.'
    ),
    (
        86,
        '2026-01-16 08:07:00',
        126,
        72,
        67.7,
        1.57,
        75, 'Dena ondo.'
    ),
    (
        87,
        '2026-01-16 10:51:00',
        140,
        81,
        72.0,
        1.61,
        83, 'Apur bat nekatuta.'
    ),
    (
        88,
        '2026-01-16 08:29:00',
        120,
        78,
        90.4,
        1.81,
        68, 'Apur bat nekatuta.'
    ),
    (
        89,
        '2026-01-16 07:17:00',
        140,
        78,
        90.0,
        1.84,
        85, 'Baraualdian.'
    ),
    (
        90,
        '2026-01-16 10:29:00',
        125,
        79,
        65.1,
        1.60,
        84, 'Dena ondo.'
    ),
    (
        91,
        '2026-01-16 07:17:00',
        139,
        80,
        89.6,
        1.58,
        80, 'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2026-01-16 10:29:00',
        131,
        80,
        76.5,
        1.81,
        74, 'Kirola egin ondoren.'
    ),
    (
        95,
        '2026-01-16 10:51:00',
        135,
        81,
        89.6,
        1.77,
        71, 'Gosariaren ondoren.'
    ),
    (
        96,
        '2026-01-16 10:48:00',
        122,
        78,
        77.2,
        1.71,
        82, 'Gosariaren ondoren.'
    ),
    (
        97,
        '2026-01-16 08:03:00',
        139,
        71,
        86.0,
        1.56,
        76, 'Apur bat nekatuta.'
    ),
    (
        98,
        '2026-01-16 09:04:00',
        126,
        79,
        83.8,
        1.60,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2026-01-16 10:51:00',
        135,
        78,
        81.6,
        1.57,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        51,
        '2026-01-17 09:50:00',
        120,
        86,
        63.4,
        1.76,
        78, 'Dena ondo.'
    ),
    (
        52,
        '2026-01-17 09:01:00',
        131,
        93,
        93.1,
        1.77,
        67, 'Baraualdian.'
    ),
    (
        53,
        '2026-01-17 09:08:00',
        125,
        90,
        75.1,
        1.75,
        93, 'Apur bat nekatuta.'
    ),
    (
        54,
        '2026-01-17 10:31:00',
        132,
        82,
        87.0,
        1.60,
        86, 'Gosariaren ondoren.'
    ),
    (
        55,
        '2026-01-17 07:02:00',
        129,
        85,
        80.8,
        1.76,
        88, 'Dena ondo.'
    ),
    (
        56,
        '2026-01-17 07:03:00',
        128,
        87,
        89.2,
        1.61,
        82, 'Baraualdian.'
    ),
    (
        57,
        '2026-01-17 08:43:00',
        129,
        85,
        82.4,
        1.69,
        72, 'Apur bat nekatuta.'
    ),
    (
        58,
        '2026-01-17 08:05:00',
        144,
        90,
        67.2,
        1.68,
        84, 'Baraualdian.'
    ),
    (
        59,
        '2026-01-17 07:18:00',
        116,
        89,
        63.2,
        1.73,
        90, 'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-01-17 10:14:00',
        129,
        91,
        72.4,
        1.83,
        80, 'Gaur goizean neurtuta.'
    ),
    (
        62,
        '2026-01-17 08:49:00',
        133,
        83,
        65.2,
        1.56,
        84, 'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2026-01-17 07:42:00',
        140,
        73,
        95.3,
        1.56,
        86, 'Dena ondo.'
    ),
    (
        65,
        '2026-01-17 10:33:00',
        126,
        85,
        90.1,
        1.55,
        67, 'Baraualdian.'
    ),
    (
        66,
        '2026-01-17 09:23:00',
        132,
        78,
        74.5,
        1.59,
        76, 'Dena ondo.'
    ),
    (
        67,
        '2026-01-17 09:41:00',
        128,
        79,
        71.4,
        1.72,
        88, 'Baraualdian.'
    ),
    (
        68,
        '2026-01-17 07:09:00',
        123,
        72,
        60.9,
        1.85,
        68, 'Dena ondo.'
    ),
    (
        69,
        '2026-01-17 10:38:00',
        141,
        80,
        95.6,
        1.66,
        77, 'Apur bat nekatuta.'
    ),
    (
        70,
        '2026-01-17 08:34:00',
        124,
        77,
        74.0,
        1.70,
        89, 'Kirola egin ondoren.'
    ),
    (
        71,
        '2026-01-17 07:17:00',
        129,
        85,
        90.0,
        1.63,
        85, 'Apur bat nekatuta.'
    ),
    (
        72,
        '2026-01-17 09:34:00',
        137,
        84,
        91.1,
        1.69,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2026-01-17 09:04:00',
        113,
        73,
        94.9,
        1.55,
        70, 'Gosariaren ondoren.'
    ),
    (
        74,
        '2026-01-17 07:47:00',
        122,
        90,
        63.3,
        1.67,
        86, 'Baraualdian.'
    ),
    (
        75,
        '2026-01-17 07:07:00',
        145,
        72,
        59.0,
        1.65,
        82, 'Dena ondo.'
    ),
    (
        76,
        '2026-01-17 09:11:00',
        124,
        86,
        67.0,
        1.69,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2026-01-17 10:27:00',
        139,
        81,
        67.8,
        1.67,
        68, 'Dena ondo.'
    ),
    (
        78,
        '2026-01-17 07:25:00',
        129,
        77,
        63.9,
        1.61,
        72, 'Dena ondo.'
    ),
    (
        79,
        '2026-01-17 07:54:00',
        138,
        81,
        67.5,
        1.67,
        67, 'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2026-01-17 07:42:00',
        137,
        84,
        63.8,
        1.78,
        92, 'Gosariaren ondoren.'
    ),
    (
        82,
        '2026-01-17 10:51:00',
        132,
        85,
        89.8,
        1.77,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2026-01-17 08:01:00',
        125,
        84,
        65.1,
        1.80,
        91, 'Kirola egin ondoren.'
    ),
    (
        85,
        '2026-01-17 07:56:00',
        126,
        91,
        80.7,
        1.72,
        84, 'Kirola egin ondoren.'
    ),
    (
        86,
        '2026-01-17 08:09:00',
        133,
        81,
        67.2,
        1.57,
        72, 'Baraualdian.'
    ),
    (
        87,
        '2026-01-17 08:15:00',
        136,
        84,
        73.8,
        1.61,
        88, 'Gaur goizean neurtuta.'
    ),
    (
        88,
        '2026-01-17 10:32:00',
        130,
        86,
        90.4,
        1.81,
        86, 'Kirola egin ondoren.'
    ),
    (
        89,
        '2026-01-17 08:42:00',
        129,
        92,
        90.7,
        1.84,
        75, 'Kirola egin ondoren.'
    ),
    (
        90,
        '2026-01-17 07:51:00',
        130,
        86,
        65.1,
        1.60,
        92, 'Gosariaren ondoren.'
    ),
    (
        91,
        '2026-01-17 09:24:00',
        134,
        87,
        89.7,
        1.58,
        68, 'Ondo sentitzen naiz.'
    ),
    (
        92,
        '2026-01-17 09:14:00',
        144,
        91,
        59.9,
        1.79,
        66, 'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2026-01-17 10:07:00',
        126,
        93,
        75.8,
        1.81,
        73, 'Apur bat nekatuta.'
    ),
    (
        94,
        '2026-01-17 07:36:00',
        134,
        89,
        87.9,
        1.83,
        69, 'Kirola egin ondoren.'
    ),
    (
        95,
        '2026-01-17 10:48:00',
        141,
        81,
        89.3,
        1.77,
        71, 'Apur bat nekatuta.'
    ),
    (
        96,
        '2026-01-17 09:57:00',
        120,
        88,
        76.3,
        1.71,
        80, 'Baraualdian.'
    ),
    (
        97,
        '2026-01-17 09:10:00',
        124,
        74,
        86.8,
        1.56,
        80, 'Dena ondo.'
    ),
    (
        98,
        '2026-01-17 08:30:00',
        131,
        86,
        83.2,
        1.60,
        90, 'Kirola egin ondoren.'
    ),
    (
        99,
        '2026-01-17 08:45:00',
        129,
        74,
        86.0,
        1.71,
        67, 'Apur bat nekatuta.'
    ),
    (
        100,
        '2026-01-17 07:51:00',
        120,
        72,
        82.5,
        1.57,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        51,
        '2026-01-18 08:52:00',
        134,
        79,
        64.3,
        1.76,
        67, 'Gosariaren ondoren.'
    ),
    (
        52,
        '2026-01-18 10:27:00',
        136,
        92,
        94.3,
        1.77,
        82, 'Dena ondo.'
    ),
    (
        53,
        '2026-01-18 09:16:00',
        127,
        86,
        74.2,
        1.75,
        94, 'Baraualdian.'
    ),
    (
        55,
        '2026-01-18 10:35:00',
        134,
        83,
        82.0,
        1.76,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2026-01-18 08:23:00',
        138,
        83,
        67.0,
        1.68,
        73, 'Gosariaren ondoren.'
    ),
    (
        59,
        '2026-01-18 07:05:00',
        125,
        95,
        63.7,
        1.73,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2026-01-18 08:56:00',
        118,
        92,
        72.1,
        1.83,
        79, 'Apur bat nekatuta.'
    ),
    (
        62,
        '2026-01-18 09:58:00',
        121,
        77,
        66.0,
        1.56,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        63,
        '2026-01-18 08:08:00',
        138,
        78,
        81.8,
        1.80,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        64,
        '2026-01-18 08:22:00',
        133,
        75,
        95.9,
        1.56,
        74, 'Baraualdian.'
    ),
    (
        65,
        '2026-01-18 10:07:00',
        120,
        81,
        92.0,
        1.55,
        92, 'Gosariaren ondoren.'
    ),
    (
        66,
        '2026-01-18 07:32:00',
        129,
        91,
        75.8,
        1.59,
        92, 'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2026-01-18 09:10:00',
        143,
        76,
        71.6,
        1.72,
        87, 'Dena ondo.'
    ),
    (
        68,
        '2026-01-18 09:34:00',
        130,
        83,
        60.5,
        1.85,
        86, 'Kirola egin ondoren.'
    ),
    (
        69,
        '2026-01-18 07:15:00',
        133,
        89,
        94.2,
        1.66,
        89, 'Dena ondo.'
    ),
    (
        71,
        '2026-01-18 07:57:00',
        120,
        77,
        89.9,
        1.63,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2026-01-18 08:44:00',
        123,
        84,
        91.8,
        1.69,
        65, 'Gosariaren ondoren.'
    ),
    (
        74,
        '2026-01-18 08:42:00',
        119,
        80,
        63.4,
        1.67,
        91, 'Gosariaren ondoren.'
    ),
    (
        75,
        '2026-01-18 08:24:00',
        143,
        72,
        60.4,
        1.65,
        73, 'Dena ondo.'
    ),
    (
        76,
        '2026-01-18 08:06:00',
        124,
        89,
        65.3,
        1.69,
        71, 'Baraualdian.'
    ),
    (
        77,
        '2026-01-18 09:54:00',
        126,
        89,
        67.8,
        1.67,
        71, 'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2026-01-18 07:30:00',
        136,
        79,
        63.2,
        1.61,
        80, 'Baraualdian.'
    ),
    (
        79,
        '2026-01-18 07:10:00',
        135,
        76,
        66.0,
        1.67,
        80, 'Apur bat nekatuta.'
    ),
    (
        80,
        '2026-01-18 09:42:00',
        133,
        83,
        62.1,
        1.78,
        65, 'Baraualdian.'
    ),
    (
        81,
        '2026-01-18 07:14:00',
        133,
        83,
        85.5,
        1.58,
        83, 'Dena ondo.'
    ),
    (
        82,
        '2026-01-18 09:17:00',
        141,
        94,
        88.8,
        1.77,
        87, 'Apur bat nekatuta.'
    ),
    (
        84,
        '2026-01-18 09:34:00',
        131,
        86,
        78.9,
        1.67,
        84, 'Kirola egin ondoren.'
    ),
    (
        86,
        '2026-01-18 07:49:00',
        129,
        80,
        68.7,
        1.57,
        71, 'Gaur goizean neurtuta.'
    ),
    (
        88,
        '2026-01-18 10:09:00',
        128,
        85,
        90.6,
        1.81,
        92, 'Baraualdian.'
    ),
    (
        89,
        '2026-01-18 08:16:00',
        141,
        80,
        90.8,
        1.84,
        89, 'Gosariaren ondoren.'
    ),
    (
        90,
        '2026-01-18 09:20:00',
        127,
        79,
        66.6,
        1.60,
        69, 'Baraualdian.'
    ),
    (
        92,
        '2026-01-18 07:02:00',
        134,
        86,
        60.1,
        1.79,
        66, 'Gosariaren ondoren.'
    ),
    (
        93,
        '2026-01-18 09:02:00',
        136,
        91,
        75.3,
        1.81,
        75, 'Baraualdian.'
    ),
    (
        94,
        '2026-01-18 07:18:00',
        128,
        77,
        87.9,
        1.83,
        67, 'Apur bat nekatuta.'
    ),
    (
        95,
        '2026-01-18 08:03:00',
        135,
        86,
        90.6,
        1.77,
        77, 'Apur bat nekatuta.'
    ),
    (
        96,
        '2026-01-18 10:57:00',
        128,
        82,
        76.5,
        1.71,
        85, 'Baraualdian.'
    ),
    (
        97,
        '2026-01-18 09:49:00',
        127,
        81,
        86.5,
        1.56,
        68, 'Baraualdian.'
    ),
    (
        98,
        '2026-01-18 10:10:00',
        122,
        84,
        84.4,
        1.60,
        79, 'Apur bat nekatuta.'
    ),
    (
        99,
        '2026-01-18 09:30:00',
        132,
        86,
        86.4,
        1.71,
        66, 'Dena ondo.'
    ),
    (
        100,
        '2026-01-18 08:56:00',
        137,
        79,
        83.0,
        1.57,
        69, 'Dena ondo.'
    ),
    (
        52,
        '2026-01-19 10:48:00',
        127,
        85,
        94.4,
        1.77,
        79, 'Kirola egin ondoren.'
    ),
    (
        53,
        '2026-01-19 07:07:00',
        117,
        84,
        74.3,
        1.75,
        66, 'Apur bat nekatuta.'
    ),
    (
        56,
        '2026-01-19 10:04:00',
        144,
        94,
        89.1,
        1.61,
        70, 'Apur bat nekatuta.'
    ),
    (
        58,
        '2026-01-19 08:06:00',
        126,
        76,
        66.8,
        1.68,
        78, 'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2026-01-19 10:15:00',
        121,
        81,
        62.2,
        1.73,
        89, 'Baraualdian.'
    ),
    (
        60,
        '2026-01-19 09:27:00',
        116,
        85,
        79.0,
        1.81,
        86, 'Gosariaren ondoren.'
    ),
    (
        61,
        '2026-01-19 07:07:00',
        131,
        78,
        72.1,
        1.83,
        92, 'Apur bat nekatuta.'
    ),
    (
        62,
        '2026-01-19 08:47:00',
        131,
        76,
        66.2,
        1.56,
        73, 'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2026-01-19 10:42:00',
        134,
        79,
        80.3,
        1.80,
        80, 'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2026-01-19 10:14:00',
        125,
        77,
        90.1,
        1.55,
        94, 'Ondo sentitzen naiz.'
    ),
    (
        66,
        '2026-01-19 08:35:00',
        127,
        85,
        74.7,
        1.59,
        91, 'Baraualdian.'
    ),
    (
        67,
        '2026-01-19 09:47:00',
        139,
        85,
        71.0,
        1.72,
        84, 'Baraualdian.'
    ),
    (
        68,
        '2026-01-19 09:09:00',
        123,
        84,
        61.2,
        1.85,
        86, 'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-01-19 08:43:00',
        131,
        82,
        94.0,
        1.66,
        69, 'Baraualdian.'
    ),
    (
        70,
        '2026-01-19 07:30:00',
        134,
        85,
        74.2,
        1.70,
        73, 'Kirola egin ondoren.'
    ),
    (
        71,
        '2026-01-19 07:48:00',
        125,
        85,
        88.7,
        1.63,
        79, 'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2026-01-19 07:51:00',
        124,
        75,
        91.7,
        1.69,
        92, 'Baraualdian.'
    ),
    (
        75,
        '2026-01-19 10:45:00',
        128,
        80,
        59.7,
        1.65,
        71, 'Baraualdian.'
    ),
    (
        76,
        '2026-01-19 10:05:00',
        124,
        90,
        65.7,
        1.69,
        78, 'Gosariaren ondoren.'
    ),
    (
        77,
        '2026-01-19 07:02:00',
        140,
        90,
        66.2,
        1.67,
        75, 'Gosariaren ondoren.'
    ),
    (
        78,
        '2026-01-19 10:45:00',
        131,
        75,
        62.0,
        1.61,
        82, 'Ondo sentitzen naiz.'
    ),
    (
        79,
        '2026-01-19 10:30:00',
        142,
        87,
        66.5,
        1.67,
        92, 'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2026-01-19 08:01:00',
        136,
        84,
        62.1,
        1.78,
        84, 'Apur bat nekatuta.'
    ),
    (
        83,
        '2026-01-19 08:11:00',
        121,
        94,
        64.2,
        1.80,
        86, 'Apur bat nekatuta.'
    ),
    (
        85,
        '2026-01-19 09:27:00',
        129,
        83,
        80.2,
        1.72,
        86, 'Apur bat nekatuta.'
    ),
    (
        86,
        '2026-01-19 07:22:00',
        140,
        87,
        68.5,
        1.57,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2026-01-19 09:37:00',
        121,
        76,
        73.0,
        1.61,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2026-01-19 07:03:00',
        118,
        80,
        90.3,
        1.81,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2026-01-19 09:55:00',
        127,
        79,
        91.7,
        1.84,
        75, 'Baraualdian.'
    ),
    (
        90,
        '2026-01-19 09:01:00',
        138,
        79,
        65.8,
        1.60,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        91,
        '2026-01-19 10:13:00',
        133,
        81,
        89.7,
        1.58,
        94, 'Baraualdian.'
    ),
    (
        92,
        '2026-01-19 07:54:00',
        141,
        83,
        60.0,
        1.79,
        68, 'Kirola egin ondoren.'
    ),
    (
        93,
        '2026-01-19 10:45:00',
        135,
        83,
        76.2,
        1.81,
        82, 'Apur bat nekatuta.'
    ),
    (
        95,
        '2026-01-19 09:12:00',
        136,
        77,
        89.1,
        1.77,
        86, 'Apur bat nekatuta.'
    ),
    (
        96,
        '2026-01-19 09:26:00',
        121,
        77,
        77.9,
        1.71,
        88, 'Baraualdian.'
    ),
    (
        97,
        '2026-01-19 07:51:00',
        124,
        74,
        87.9,
        1.56,
        93, 'Dena ondo.'
    ),
    (
        98,
        '2026-01-19 09:01:00',
        119,
        83,
        84.6,
        1.60,
        71, 'Kirola egin ondoren.'
    ),
    (
        99,
        '2026-01-19 07:37:00',
        131,
        74,
        85.1,
        1.71,
        79, 'Apur bat nekatuta.'
    ),
    (
        100,
        '2026-01-19 09:40:00',
        135,
        73,
        81.5,
        1.57,
        65, 'Dena ondo.'
    ),
    (
        51,
        '2026-01-20 07:36:00',
        136,
        83,
        63.0,
        1.76,
        71, 'Baraualdian.'
    ),
    (
        52,
        '2026-01-20 07:07:00',
        129,
        93,
        93.3,
        1.77,
        77, 'Baraualdian.'
    ),
    (
        53,
        '2026-01-20 09:43:00',
        124,
        92,
        74.1,
        1.75,
        89, 'Dena ondo.'
    ),
    (
        54,
        '2026-01-20 08:17:00',
        133,
        81,
        86.9,
        1.60,
        72, 'Apur bat nekatuta.'
    ),
    (
        55,
        '2026-01-20 08:50:00',
        140,
        71,
        81.0,
        1.76,
        65, 'Kirola egin ondoren.'
    ),
    (
        56,
        '2026-01-20 08:15:00',
        133,
        93,
        90.8,
        1.61,
        87, 'Apur bat nekatuta.'
    ),
    (
        57,
        '2026-01-20 08:50:00',
        121,
        88,
        83.2,
        1.69,
        82, 'Baraualdian.'
    ),
    (
        58,
        '2026-01-20 09:53:00',
        126,
        83,
        67.6,
        1.68,
        87, 'Baraualdian.'
    ),
    (
        61,
        '2026-01-20 08:50:00',
        126,
        81,
        72.4,
        1.83,
        72, 'Gaur goizean neurtuta.'
    ),
    (
        62,
        '2026-01-20 08:32:00',
        122,
        77,
        66.6,
        1.56,
        84, 'Dena ondo.'
    ),
    (
        63,
        '2026-01-20 08:18:00',
        142,
        78,
        80.0,
        1.80,
        91, 'Dena ondo.'
    ),
    (
        64,
        '2026-01-20 09:23:00',
        121,
        77,
        95.1,
        1.56,
        87, 'Ondo sentitzen naiz.'
    ),
    (
        66,
        '2026-01-20 09:53:00',
        135,
        89,
        74.7,
        1.59,
        77, 'Kirola egin ondoren.'
    ),
    (
        68,
        '2026-01-20 07:08:00',
        136,
        83,
        60.4,
        1.85,
        78, 'Dena ondo.'
    ),
    (
        69,
        '2026-01-20 10:01:00',
        139,
        87,
        94.3,
        1.66,
        65, 'Kirola egin ondoren.'
    ),
    (
        70,
        '2026-01-20 10:59:00',
        133,
        76,
        75.1,
        1.70,
        86, 'Baraualdian.'
    ),
    (
        71,
        '2026-01-20 08:34:00',
        134,
        86,
        88.7,
        1.63,
        73, 'Dena ondo.'
    ),
    (
        72,
        '2026-01-20 10:03:00',
        133,
        87,
        93.0,
        1.69,
        71, 'Apur bat nekatuta.'
    ),
    (
        73,
        '2026-01-20 09:19:00',
        127,
        74,
        95.5,
        1.55,
        86, 'Gosariaren ondoren.'
    ),
    (
        74,
        '2026-01-20 09:23:00',
        130,
        78,
        63.8,
        1.67,
        65, 'Baraualdian.'
    ),
    (
        75,
        '2026-01-20 09:49:00',
        141,
        72,
        59.7,
        1.65,
        91, 'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2026-01-20 08:12:00',
        119,
        90,
        66.1,
        1.69,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2026-01-20 10:00:00',
        125,
        90,
        66.2,
        1.67,
        87, 'Baraualdian.'
    ),
    (
        78,
        '2026-01-20 08:07:00',
        132,
        80,
        62.2,
        1.61,
        87, 'Ondo sentitzen naiz.'
    ),
    (
        79,
        '2026-01-20 08:31:00',
        136,
        77,
        67.6,
        1.67,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2026-01-20 07:14:00',
        135,
        93,
        63.9,
        1.78,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2026-01-20 10:51:00',
        119,
        86,
        86.2,
        1.58,
        87, 'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-01-20 09:12:00',
        130,
        93,
        88.5,
        1.77,
        80, 'Kirola egin ondoren.'
    ),
    (
        83,
        '2026-01-20 10:01:00',
        135,
        85,
        65.5,
        1.80,
        92, 'Baraualdian.'
    ),
    (
        84,
        '2026-01-20 10:39:00',
        137,
        78,
        78.6,
        1.67,
        70, 'Kirola egin ondoren.'
    ),
    (
        85,
        '2026-01-20 07:04:00',
        119,
        90,
        82.0,
        1.72,
        84, 'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2026-01-20 09:49:00',
        141,
        78,
        67.4,
        1.57,
        83, 'Baraualdian.'
    ),
    (
        87,
        '2026-01-20 07:50:00',
        140,
        80,
        73.7,
        1.61,
        88, 'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2026-01-20 08:35:00',
        126,
        78,
        90.1,
        1.84,
        81, 'Kirola egin ondoren.'
    ),
    (
        90,
        '2026-01-20 10:46:00',
        134,
        90,
        66.5,
        1.60,
        69, 'Ondo sentitzen naiz.'
    ),
    (
        92,
        '2026-01-20 09:49:00',
        132,
        82,
        60.1,
        1.79,
        79, 'Dena ondo.'
    ),
    (
        93,
        '2026-01-20 09:50:00',
        132,
        83,
        75.8,
        1.81,
        94, 'Kirola egin ondoren.'
    ),
    (
        94,
        '2026-01-20 07:13:00',
        123,
        88,
        86.0,
        1.83,
        69, 'Kirola egin ondoren.'
    ),
    (
        95,
        '2026-01-20 09:24:00',
        141,
        76,
        90.7,
        1.77,
        67, 'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-01-20 09:52:00',
        125,
        76,
        77.9,
        1.71,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2026-01-20 10:17:00',
        124,
        84,
        87.5,
        1.56,
        81, 'Gosariaren ondoren.'
    ),
    (
        98,
        '2026-01-20 10:08:00',
        119,
        80,
        85.0,
        1.60,
        71, 'Ondo sentitzen naiz.'
    ),
    (
        99,
        '2026-01-20 09:05:00',
        131,
        83,
        86.8,
        1.71,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2026-01-20 09:07:00',
        132,
        76,
        81.1,
        1.57,
        74, 'Apur bat nekatuta.'
    ),
    (
        51,
        '2026-01-21 08:37:00',
        133,
        89,
        64.2,
        1.76,
        90, 'Apur bat nekatuta.'
    ),
    (
        54,
        '2026-01-21 10:26:00',
        131,
        87,
        87.7,
        1.60,
        91, 'Apur bat nekatuta.'
    ),
    (
        55,
        '2026-01-21 08:12:00',
        128,
        78,
        81.6,
        1.76,
        83, 'Baraualdian.'
    ),
    (
        56,
        '2026-01-21 09:12:00',
        134,
        87,
        90.1,
        1.61,
        94, 'Gosariaren ondoren.'
    ),
    (
        57,
        '2026-01-21 10:05:00',
        118,
        90,
        82.1,
        1.69,
        87, 'Dena ondo.'
    ),
    (
        58,
        '2026-01-21 10:21:00',
        140,
        83,
        67.0,
        1.68,
        78, 'Baraualdian.'
    ),
    (
        59,
        '2026-01-21 09:11:00',
        112,
        81,
        64.0,
        1.73,
        87, 'Ondo sentitzen naiz.'
    ),
    (
        60,
        '2026-01-21 07:27:00',
        117,
        80,
        77.3,
        1.81,
        88, 'Kirola egin ondoren.'
    ),
    (
        61,
        '2026-01-21 10:44:00',
        124,
        93,
        72.2,
        1.83,
        79, 'Ondo sentitzen naiz.'
    ),
    (
        62,
        '2026-01-21 07:57:00',
        137,
        75,
        66.5,
        1.56,
        81, 'Baraualdian.'
    ),
    (
        63,
        '2026-01-21 08:20:00',
        141,
        88,
        81.6,
        1.80,
        87, 'Gaur goizean neurtuta.'
    ),
    (
        64,
        '2026-01-21 08:50:00',
        135,
        74,
        94.2,
        1.56,
        77, 'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2026-01-21 10:52:00',
        128,
        77,
        91.8,
        1.55,
        65, 'Kirola egin ondoren.'
    ),
    (
        66,
        '2026-01-21 07:49:00',
        129,
        76,
        75.7,
        1.59,
        84, 'Baraualdian.'
    ),
    (
        67,
        '2026-01-21 09:54:00',
        138,
        77,
        72.1,
        1.72,
        82, 'Ondo sentitzen naiz.'
    ),
    (
        68,
        '2026-01-21 07:13:00',
        125,
        78,
        60.7,
        1.85,
        88, 'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-01-21 07:57:00',
        137,
        82,
        94.6,
        1.66,
        82, 'Baraualdian.'
    ),
    (
        72,
        '2026-01-21 08:14:00',
        127,
        84,
        92.7,
        1.69,
        74, 'Gosariaren ondoren.'
    ),
    (
        73,
        '2026-01-21 09:57:00',
        118,
        81,
        94.6,
        1.55,
        75, 'Ondo sentitzen naiz.'
    ),
    (
        75,
        '2026-01-21 08:23:00',
        125,
        84,
        61.0,
        1.65,
        68, 'Dena ondo.'
    ),
    (
        77,
        '2026-01-21 08:39:00',
        137,
        84,
        66.0,
        1.67,
        77, 'Dena ondo.'
    ),
    (
        78,
        '2026-01-21 08:54:00',
        124,
        87,
        63.0,
        1.61,
        77, 'Dena ondo.'
    ),
    (
        79,
        '2026-01-21 07:29:00',
        136,
        76,
        68.0,
        1.67,
        75, 'Baraualdian.'
    ),
    (
        80,
        '2026-01-21 08:31:00',
        135,
        81,
        62.0,
        1.78,
        91, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-01-21 09:43:00',
        139,
        94,
        85.7,
        1.58,
        89, 'Ondo sentitzen naiz.'
    ),
    (
        82,
        '2026-01-21 10:03:00',
        134,
        94,
        90.0,
        1.77,
        89, 'Apur bat nekatuta.'
    ),
    (
        83,
        '2026-01-21 08:03:00',
        125,
        93,
        65.4,
        1.80,
        76, 'Apur bat nekatuta.'
    ),
    (
        85,
        '2026-01-21 08:28:00',
        122,
        81,
        80.6,
        1.72,
        65, 'Apur bat nekatuta.'
    ),
    (
        86,
        '2026-01-21 07:31:00',
        130,
        84,
        67.1,
        1.57,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2026-01-21 08:18:00',
        124,
        75,
        73.2,
        1.61,
        82, 'Dena ondo.'
    ),
    (
        90,
        '2026-01-21 10:59:00',
        128,
        80,
        65.5,
        1.60,
        75, 'Dena ondo.'
    ),
    (
        91,
        '2026-01-21 07:34:00',
        126,
        81,
        90.0,
        1.58,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2026-01-21 09:41:00',
        124,
        86,
        75.3,
        1.81,
        72, 'Kirola egin ondoren.'
    ),
    (
        94,
        '2026-01-21 07:45:00',
        141,
        77,
        86.6,
        1.83,
        92, 'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2026-01-21 08:47:00',
        127,
        79,
        90.0,
        1.77,
        75, 'Apur bat nekatuta.'
    ),
    (
        97,
        '2026-01-21 09:58:00',
        139,
        86,
        86.3,
        1.56,
        66, 'Gosariaren ondoren.'
    ),
    (
        98,
        '2026-01-21 09:32:00',
        137,
        76,
        85.0,
        1.60,
        84, 'Dena ondo.'
    ),
    (
        99,
        '2026-01-21 10:00:00',
        126,
        73,
        87.0,
        1.71,
        83, 'Baraualdian.'
    ),
    (
        100,
        '2026-01-21 09:33:00',
        137,
        76,
        81.1,
        1.57,
        79, 'Baraualdian.'
    ),
    (
        51,
        '2026-01-22 09:45:00',
        128,
        81,
        64.2,
        1.76,
        93, 'Ondo sentitzen naiz.'
    ),
    (
        52,
        '2026-01-22 07:28:00',
        131,
        87,
        94.9,
        1.77,
        80, 'Baraualdian.'
    ),
    (
        53,
        '2026-01-22 07:06:00',
        122,
        78,
        75.3,
        1.75,
        90, 'Apur bat nekatuta.'
    ),
    (
        54,
        '2026-01-22 10:56:00',
        132,
        84,
        86.5,
        1.60,
        68, 'Gosariaren ondoren.'
    ),
    (
        55,
        '2026-01-22 10:19:00',
        127,
        86,
        82.0,
        1.76,
        65, 'Dena ondo.'
    ),
    (
        58,
        '2026-01-22 08:10:00',
        141,
        77,
        67.9,
        1.68,
        75, 'Baraualdian.'
    ),
    (
        59,
        '2026-01-22 09:59:00',
        124,
        91,
        63.3,
        1.73,
        91, 'Kirola egin ondoren.'
    ),
    (
        60,
        '2026-01-22 10:29:00',
        132,
        90,
        77.4,
        1.81,
        74, 'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2026-01-22 08:42:00',
        125,
        81,
        73.1,
        1.83,
        73, 'Gosariaren ondoren.'
    ),
    (
        62,
        '2026-01-22 09:27:00',
        125,
        83,
        65.8,
        1.56,
        75, 'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2026-01-22 10:28:00',
        128,
        76,
        81.1,
        1.80,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2026-01-22 07:06:00',
        140,
        75,
        95.0,
        1.56,
        69, 'Kirola egin ondoren.'
    ),
    (
        65,
        '2026-01-22 08:16:00',
        128,
        77,
        91.2,
        1.55,
        91, 'Dena ondo.'
    ),
    (
        66,
        '2026-01-22 09:34:00',
        128,
        85,
        74.6,
        1.59,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2026-01-22 09:46:00',
        128,
        84,
        71.0,
        1.72,
        72, 'Ondo sentitzen naiz.'
    ),
    (
        68,
        '2026-01-22 10:44:00',
        140,
        83,
        60.4,
        1.85,
        89, 'Kirola egin ondoren.'
    ),
    (
        69,
        '2026-01-22 07:18:00',
        132,
        80,
        95.3,
        1.66,
        81, 'Baraualdian.'
    ),
    (
        70,
        '2026-01-22 10:07:00',
        120,
        76,
        74.4,
        1.70,
        82, 'Apur bat nekatuta.'
    ),
    (
        71,
        '2026-01-22 10:27:00',
        124,
        78,
        88.5,
        1.63,
        84, 'Kirola egin ondoren.'
    ),
    (
        72,
        '2026-01-22 08:20:00',
        126,
        79,
        92.0,
        1.69,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2026-01-22 10:30:00',
        123,
        75,
        95.7,
        1.55,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2026-01-22 09:34:00',
        113,
        90,
        63.3,
        1.67,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        78,
        '2026-01-22 07:15:00',
        117,
        86,
        63.5,
        1.61,
        86, 'Kirola egin ondoren.'
    ),
    (
        79,
        '2026-01-22 07:26:00',
        136,
        82,
        67.8,
        1.67,
        76, 'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-01-22 09:08:00',
        129,
        82,
        63.6,
        1.78,
        88, 'Dena ondo.'
    ),
    (
        84,
        '2026-01-22 09:52:00',
        135,
        76,
        80.0,
        1.67,
        87, 'Dena ondo.'
    ),
    (
        85,
        '2026-01-22 09:43:00',
        135,
        78,
        80.1,
        1.72,
        89, 'Baraualdian.'
    ),
    (
        86,
        '2026-01-22 08:19:00',
        132,
        77,
        69.0,
        1.57,
        92, 'Gosariaren ondoren.'
    ),
    (
        88,
        '2026-01-22 09:22:00',
        118,
        80,
        89.3,
        1.81,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2026-01-22 09:35:00',
        123,
        89,
        91.1,
        1.84,
        77, 'Baraualdian.'
    ),
    (
        90,
        '2026-01-22 08:24:00',
        128,
        81,
        66.8,
        1.60,
        80, 'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2026-01-22 07:55:00',
        124,
        92,
        75.9,
        1.81,
        83, 'Gosariaren ondoren.'
    ),
    (
        94,
        '2026-01-22 09:35:00',
        123,
        89,
        86.2,
        1.83,
        91, 'Ondo sentitzen naiz.'
    ),
    (
        95,
        '2026-01-22 07:00:00',
        130,
        77,
        91.0,
        1.77,
        83, 'Gosariaren ondoren.'
    ),
    (
        96,
        '2026-01-22 07:55:00',
        132,
        77,
        76.8,
        1.71,
        79, 'Baraualdian.'
    ),
    (
        97,
        '2026-01-22 08:19:00',
        128,
        83,
        87.7,
        1.56,
        66, 'Baraualdian.'
    ),
    (
        98,
        '2026-01-22 09:08:00',
        130,
        84,
        84.3,
        1.60,
        84, 'Gosariaren ondoren.'
    ),
    (
        99,
        '2026-01-22 09:04:00',
        119,
        74,
        85.0,
        1.71,
        86, 'Baraualdian.'
    ),
    (
        52,
        '2026-01-23 09:51:00',
        127,
        94,
        94.1,
        1.77,
        84, 'Gosariaren ondoren.'
    ),
    (
        53,
        '2026-01-23 07:49:00',
        133,
        82,
        74.0,
        1.75,
        72, 'Dena ondo.'
    ),
    (
        54,
        '2026-01-23 07:55:00',
        141,
        84,
        86.2,
        1.60,
        82, 'Ondo sentitzen naiz.'
    ),
    (
        55,
        '2026-01-23 07:41:00',
        124,
        85,
        80.2,
        1.76,
        90, 'Baraualdian.'
    ),
    (
        57,
        '2026-01-23 07:55:00',
        123,
        86,
        83.9,
        1.69,
        65, 'Ondo sentitzen naiz.'
    ),
    (
        58,
        '2026-01-23 07:36:00',
        129,
        90,
        67.4,
        1.68,
        91, 'Gosariaren ondoren.'
    ),
    (
        59,
        '2026-01-23 07:09:00',
        122,
        83,
        63.2,
        1.73,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2026-01-23 10:38:00',
        134,
        94,
        78.7,
        1.81,
        68, 'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-01-23 09:14:00',
        128,
        82,
        73.3,
        1.83,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        62,
        '2026-01-23 07:09:00',
        140,
        78,
        65.4,
        1.56,
        84, 'Gosariaren ondoren.'
    ),
    (
        65,
        '2026-01-23 07:52:00',
        125,
        86,
        90.3,
        1.55,
        94, 'Kirola egin ondoren.'
    ),
    (
        66,
        '2026-01-23 07:31:00',
        126,
        82,
        75.3,
        1.59,
        89, 'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2026-01-23 09:10:00',
        138,
        84,
        71.1,
        1.72,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        68,
        '2026-01-23 09:05:00',
        120,
        81,
        60.3,
        1.85,
        93, 'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-01-23 08:17:00',
        133,
        76,
        94.5,
        1.66,
        87, 'Dena ondo.'
    ),
    (
        70,
        '2026-01-23 09:55:00',
        136,
        79,
        75.0,
        1.70,
        87, 'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2026-01-23 07:06:00',
        134,
        83,
        89.7,
        1.63,
        81, 'Baraualdian.'
    ),
    (
        73,
        '2026-01-23 07:20:00',
        118,
        75,
        95.3,
        1.55,
        78, 'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2026-01-23 07:28:00',
        113,
        86,
        63.5,
        1.67,
        76, 'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2026-01-23 08:38:00',
        145,
        84,
        60.5,
        1.65,
        74, 'Apur bat nekatuta.'
    ),
    (
        76,
        '2026-01-23 10:40:00',
        126,
        88,
        66.4,
        1.69,
        76, 'Dena ondo.'
    ),
    (
        77,
        '2026-01-23 09:33:00',
        137,
        89,
        68.0,
        1.67,
        78, 'Dena ondo.'
    ),
    (
        79,
        '2026-01-23 09:09:00',
        131,
        75,
        66.3,
        1.67,
        70, 'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-01-23 07:32:00',
        122,
        85,
        62.8,
        1.78,
        78, 'Apur bat nekatuta.'
    ),
    (
        81,
        '2026-01-23 09:58:00',
        131,
        84,
        87.0,
        1.58,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-01-23 09:30:00',
        136,
        86,
        89.4,
        1.77,
        85, 'Kirola egin ondoren.'
    ),
    (
        83,
        '2026-01-23 07:56:00',
        128,
        87,
        64.6,
        1.80,
        87, 'Baraualdian.'
    ),
    (
        84,
        '2026-01-23 08:01:00',
        131,
        79,
        79.2,
        1.67,
        79, 'Kirola egin ondoren.'
    ),
    (
        85,
        '2026-01-23 08:31:00',
        137,
        85,
        80.6,
        1.72,
        78, 'Baraualdian.'
    ),
    (
        86,
        '2026-01-23 09:19:00',
        134,
        74,
        68.5,
        1.57,
        69, 'Gosariaren ondoren.'
    ),
    (
        89,
        '2026-01-23 09:43:00',
        132,
        91,
        91.5,
        1.84,
        92, 'Dena ondo.'
    ),
    (
        90,
        '2026-01-23 10:47:00',
        119,
        83,
        66.4,
        1.60,
        77, 'Ondo sentitzen naiz.'
    ),
    (
        94,
        '2026-01-23 08:32:00',
        134,
        83,
        86.1,
        1.83,
        92, 'Kirola egin ondoren.'
    ),
    (
        95,
        '2026-01-23 08:14:00',
        128,
        80,
        91.0,
        1.77,
        68, 'Apur bat nekatuta.'
    ),
    (
        96,
        '2026-01-23 08:23:00',
        137,
        76,
        76.8,
        1.71,
        79, 'Apur bat nekatuta.'
    ),
    (
        97,
        '2026-01-23 08:06:00',
        130,
        73,
        86.9,
        1.56,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-01-23 08:21:00',
        120,
        82,
        84.0,
        1.60,
        94, 'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2026-01-23 10:02:00',
        136,
        79,
        82.9,
        1.57,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        51,
        '2026-01-24 08:11:00',
        123,
        81,
        63.9,
        1.76,
        75, 'Baraualdian.'
    ),
    (
        53,
        '2026-01-24 09:47:00',
        124,
        84,
        75.5,
        1.75,
        78, 'Gosariaren ondoren.'
    ),
    (
        54,
        '2026-01-24 08:48:00',
        137,
        80,
        87.6,
        1.60,
        86, 'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2026-01-24 07:20:00',
        141,
        84,
        89.8,
        1.61,
        70, 'Kirola egin ondoren.'
    ),
    (
        57,
        '2026-01-24 07:38:00',
        119,
        88,
        83.2,
        1.69,
        76, 'Dena ondo.'
    ),
    (
        58,
        '2026-01-24 08:41:00',
        135,
        78,
        67.2,
        1.68,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        59,
        '2026-01-24 07:04:00',
        123,
        92,
        62.1,
        1.73,
        80, 'Apur bat nekatuta.'
    ),
    (
        60,
        '2026-01-24 09:33:00',
        116,
        87,
        78.6,
        1.81,
        77, 'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-01-24 10:04:00',
        124,
        90,
        72.8,
        1.83,
        74, 'Gosariaren ondoren.'
    ),
    (
        62,
        '2026-01-24 07:27:00',
        123,
        71,
        65.0,
        1.56,
        79, 'Apur bat nekatuta.'
    ),
    (
        63,
        '2026-01-24 09:43:00',
        134,
        79,
        80.9,
        1.80,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        64,
        '2026-01-24 09:35:00',
        130,
        79,
        95.4,
        1.56,
        79, 'Baraualdian.'
    ),
    (
        65,
        '2026-01-24 09:01:00',
        135,
        76,
        90.6,
        1.55,
        81, 'Apur bat nekatuta.'
    ),
    (
        66,
        '2026-01-24 07:11:00',
        132,
        76,
        75.9,
        1.59,
        86, 'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2026-01-24 07:58:00',
        131,
        90,
        71.2,
        1.72,
        87, 'Baraualdian.'
    ),
    (
        68,
        '2026-01-24 07:55:00',
        129,
        72,
        60.5,
        1.85,
        88, 'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-01-24 08:36:00',
        137,
        76,
        95.8,
        1.66,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2026-01-24 09:40:00',
        125,
        88,
        74.9,
        1.70,
        87, 'Baraualdian.'
    ),
    (
        71,
        '2026-01-24 08:55:00',
        122,
        86,
        89.0,
        1.63,
        92, 'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2026-01-24 07:10:00',
        134,
        85,
        91.1,
        1.69,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2026-01-24 10:12:00',
        121,
        83,
        95.1,
        1.55,
        86, 'Gosariaren ondoren.'
    ),
    (
        74,
        '2026-01-24 08:17:00',
        120,
        79,
        63.3,
        1.67,
        68, 'Apur bat nekatuta.'
    ),
    (
        75,
        '2026-01-24 08:25:00',
        137,
        71,
        59.8,
        1.65,
        77, 'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2026-01-24 08:25:00',
        130,
        85,
        66.2,
        1.69,
        70, 'Apur bat nekatuta.'
    ),
    (
        77,
        '2026-01-24 07:05:00',
        135,
        85,
        67.6,
        1.67,
        67, 'Dena ondo.'
    ),
    (
        78,
        '2026-01-24 09:37:00',
        124,
        84,
        62.8,
        1.61,
        77, 'Baraualdian.'
    ),
    (
        79,
        '2026-01-24 07:40:00',
        143,
        77,
        67.2,
        1.67,
        65, 'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-01-24 10:13:00',
        123,
        84,
        63.3,
        1.78,
        79, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-01-24 09:04:00',
        119,
        84,
        86.2,
        1.58,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-01-24 10:42:00',
        143,
        79,
        88.2,
        1.77,
        83, 'Kirola egin ondoren.'
    ),
    (
        83,
        '2026-01-24 08:24:00',
        133,
        80,
        65.9,
        1.80,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2026-01-24 10:48:00',
        118,
        81,
        79.3,
        1.67,
        85, 'Dena ondo.'
    ),
    (
        85,
        '2026-01-24 10:34:00',
        119,
        88,
        81.1,
        1.72,
        67, 'Kirola egin ondoren.'
    ),
    (
        86,
        '2026-01-24 08:46:00',
        128,
        78,
        68.1,
        1.57,
        89, 'Dena ondo.'
    ),
    (
        88,
        '2026-01-24 07:43:00',
        114,
        80,
        90.0,
        1.81,
        67, 'Apur bat nekatuta.'
    ),
    (
        89,
        '2026-01-24 07:09:00',
        131,
        88,
        91.4,
        1.84,
        92, 'Gosariaren ondoren.'
    ),
    (
        91,
        '2026-01-24 10:48:00',
        127,
        90,
        89.9,
        1.58,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2026-01-24 07:43:00',
        138,
        93,
        59.7,
        1.79,
        72, 'Kirola egin ondoren.'
    ),
    (
        93,
        '2026-01-24 07:05:00',
        126,
        83,
        75.1,
        1.81,
        70, 'Ondo sentitzen naiz.'
    ),
    (
        94,
        '2026-01-24 08:59:00',
        138,
        80,
        86.3,
        1.83,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2026-01-24 09:20:00',
        125,
        73,
        90.6,
        1.77,
        89, 'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-01-24 10:21:00',
        122,
        78,
        76.5,
        1.71,
        75, 'Baraualdian.'
    ),
    (
        97,
        '2026-01-24 10:48:00',
        135,
        71,
        86.5,
        1.56,
        93, 'Baraualdian.'
    ),
    (
        98,
        '2026-01-24 08:30:00',
        120,
        87,
        83.1,
        1.60,
        94, 'Gaur goizean neurtuta.'
    ),
    (
        99,
        '2026-01-24 10:17:00',
        132,
        75,
        85.6,
        1.71,
        69, 'Gosariaren ondoren.'
    ),
    (
        51,
        '2026-01-25 09:35:00',
        129,
        88,
        64.9,
        1.76,
        72, 'Kirola egin ondoren.'
    ),
    (
        53,
        '2026-01-25 07:40:00',
        117,
        89,
        75.7,
        1.75,
        77, 'Kirola egin ondoren.'
    ),
    (
        54,
        '2026-01-25 08:28:00',
        126,
        76,
        86.3,
        1.60,
        91, 'Kirola egin ondoren.'
    ),
    (
        55,
        '2026-01-25 10:23:00',
        137,
        84,
        81.7,
        1.76,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        56,
        '2026-01-25 07:33:00',
        140,
        87,
        90.0,
        1.61,
        76, 'Gaur goizean neurtuta.'
    ),
    (
        57,
        '2026-01-25 09:09:00',
        129,
        85,
        83.4,
        1.69,
        92, 'Dena ondo.'
    ),
    (
        59,
        '2026-01-25 08:44:00',
        124,
        83,
        62.0,
        1.73,
        82, 'Kirola egin ondoren.'
    ),
    (
        60,
        '2026-01-25 09:28:00',
        134,
        93,
        78.9,
        1.81,
        82, 'Baraualdian.'
    ),
    (
        63,
        '2026-01-25 09:58:00',
        131,
        86,
        81.7,
        1.80,
        85, 'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2026-01-25 09:35:00',
        127,
        90,
        91.0,
        1.55,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2026-01-25 09:23:00',
        132,
        86,
        75.4,
        1.59,
        77, 'Dena ondo.'
    ),
    (
        67,
        '2026-01-25 07:59:00',
        133,
        82,
        71.8,
        1.72,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        68,
        '2026-01-25 07:53:00',
        126,
        84,
        60.6,
        1.85,
        80, 'Dena ondo.'
    ),
    (
        69,
        '2026-01-25 10:54:00',
        125,
        91,
        94.3,
        1.66,
        84, 'Gosariaren ondoren.'
    ),
    (
        70,
        '2026-01-25 09:51:00',
        121,
        75,
        74.7,
        1.70,
        78, 'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2026-01-25 07:07:00',
        120,
        72,
        95.5,
        1.55,
        68, 'Dena ondo.'
    ),
    (
        74,
        '2026-01-25 10:44:00',
        130,
        79,
        64.1,
        1.67,
        92, 'Kirola egin ondoren.'
    ),
    (
        75,
        '2026-01-25 10:28:00',
        130,
        70,
        60.2,
        1.65,
        89, 'Dena ondo.'
    ),
    (
        76,
        '2026-01-25 07:49:00',
        114,
        93,
        67.0,
        1.69,
        92, 'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2026-01-25 10:53:00',
        127,
        87,
        67.0,
        1.67,
        70, 'Apur bat nekatuta.'
    ),
    (
        78,
        '2026-01-25 10:30:00',
        131,
        74,
        62.7,
        1.61,
        75, 'Dena ondo.'
    ),
    (
        79,
        '2026-01-25 09:34:00',
        130,
        76,
        67.8,
        1.67,
        80, 'Kirola egin ondoren.'
    ),
    (
        80,
        '2026-01-25 10:34:00',
        139,
        79,
        62.7,
        1.78,
        87, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-01-25 08:51:00',
        125,
        85,
        85.8,
        1.58,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-01-25 07:55:00',
        126,
        89,
        89.1,
        1.77,
        79, 'Apur bat nekatuta.'
    ),
    (
        83,
        '2026-01-25 07:02:00',
        130,
        93,
        65.0,
        1.80,
        70, 'Dena ondo.'
    ),
    (
        84,
        '2026-01-25 07:20:00',
        130,
        79,
        79.9,
        1.67,
        67, 'Baraualdian.'
    ),
    (
        85,
        '2026-01-25 09:51:00',
        120,
        78,
        81.3,
        1.72,
        69, 'Apur bat nekatuta.'
    ),
    (
        86,
        '2026-01-25 07:40:00',
        137,
        80,
        68.0,
        1.57,
        85, 'Apur bat nekatuta.'
    ),
    (
        87,
        '2026-01-25 08:21:00',
        138,
        78,
        72.5,
        1.61,
        94, 'Gaur goizean neurtuta.'
    ),
    (
        88,
        '2026-01-25 09:27:00',
        127,
        79,
        89.8,
        1.81,
        72, 'Gosariaren ondoren.'
    ),
    (
        89,
        '2026-01-25 08:57:00',
        125,
        86,
        90.8,
        1.84,
        80, 'Baraualdian.'
    ),
    (
        90,
        '2026-01-25 10:08:00',
        119,
        89,
        66.2,
        1.60,
        82, 'Apur bat nekatuta.'
    ),
    (
        91,
        '2026-01-25 07:44:00',
        144,
        86,
        90.8,
        1.58,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2026-01-25 08:11:00',
        129,
        90,
        59.1,
        1.79,
        77, 'Gosariaren ondoren.'
    ),
    (
        93,
        '2026-01-25 10:21:00',
        138,
        84,
        75.1,
        1.81,
        77, 'Kirola egin ondoren.'
    ),
    (
        95,
        '2026-01-25 09:55:00',
        127,
        74,
        90.1,
        1.77,
        68, 'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-01-25 08:05:00',
        133,
        78,
        77.8,
        1.71,
        83, 'Dena ondo.'
    ),
    (
        97,
        '2026-01-25 09:10:00',
        134,
        85,
        87.5,
        1.56,
        87, 'Gaur goizean neurtuta.'
    ),
    (
        99,
        '2026-01-25 08:41:00',
        118,
        73,
        87.0,
        1.71,
        84, 'Dena ondo.'
    ),
    (
        51,
        '2026-01-26 09:44:00',
        130,
        88,
        63.1,
        1.76,
        83, 'Apur bat nekatuta.'
    ),
    (
        52,
        '2026-01-26 08:15:00',
        120,
        93,
        94.3,
        1.77,
        92, 'Baraualdian.'
    ),
    (
        53,
        '2026-01-26 07:01:00',
        131,
        85,
        75.3,
        1.75,
        94, 'Apur bat nekatuta.'
    ),
    (
        56,
        '2026-01-26 09:19:00',
        129,
        83,
        90.4,
        1.61,
        83, 'Baraualdian.'
    ),
    (
        57,
        '2026-01-26 10:39:00',
        133,
        81,
        83.1,
        1.69,
        71, 'Baraualdian.'
    ),
    (
        58,
        '2026-01-26 08:07:00',
        134,
        86,
        67.2,
        1.68,
        72, 'Kirola egin ondoren.'
    ),
    (
        59,
        '2026-01-26 10:24:00',
        130,
        94,
        63.2,
        1.73,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2026-01-26 08:10:00',
        121,
        95,
        77.2,
        1.81,
        69, 'Gosariaren ondoren.'
    ),
    (
        61,
        '2026-01-26 10:57:00',
        131,
        78,
        73.1,
        1.83,
        81, 'Dena ondo.'
    ),
    (
        62,
        '2026-01-26 10:21:00',
        137,
        82,
        65.9,
        1.56,
        65, 'Gosariaren ondoren.'
    ),
    (
        63,
        '2026-01-26 07:03:00',
        138,
        86,
        81.9,
        1.80,
        89, 'Gosariaren ondoren.'
    ),
    (
        64,
        '2026-01-26 09:39:00',
        137,
        80,
        95.2,
        1.56,
        84, 'Gosariaren ondoren.'
    ),
    (
        66,
        '2026-01-26 10:45:00',
        116,
        80,
        74.1,
        1.59,
        80, 'Apur bat nekatuta.'
    ),
    (
        67,
        '2026-01-26 09:49:00',
        126,
        83,
        71.8,
        1.72,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        68,
        '2026-01-26 07:42:00',
        135,
        73,
        61.3,
        1.85,
        88, 'Ondo sentitzen naiz.'
    ),
    (
        69,
        '2026-01-26 08:09:00',
        130,
        78,
        95.0,
        1.66,
        87, 'Kirola egin ondoren.'
    ),
    (
        70,
        '2026-01-26 10:16:00',
        123,
        77,
        75.9,
        1.70,
        91, 'Dena ondo.'
    ),
    (
        71,
        '2026-01-26 07:06:00',
        123,
        81,
        89.8,
        1.63,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2026-01-26 09:01:00',
        141,
        89,
        92.2,
        1.69,
        78, 'Apur bat nekatuta.'
    ),
    (
        73,
        '2026-01-26 09:11:00',
        122,
        79,
        95.4,
        1.55,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2026-01-26 07:42:00',
        125,
        79,
        63.3,
        1.67,
        88, 'Apur bat nekatuta.'
    ),
    (
        75,
        '2026-01-26 10:34:00',
        136,
        74,
        59.9,
        1.65,
        65, 'Dena ondo.'
    ),
    (
        76,
        '2026-01-26 08:26:00',
        114,
        88,
        66.6,
        1.69,
        74, 'Apur bat nekatuta.'
    ),
    (
        77,
        '2026-01-26 09:04:00',
        135,
        90,
        66.5,
        1.67,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2026-01-26 10:18:00',
        120,
        78,
        63.3,
        1.61,
        80, 'Gaur goizean neurtuta.'
    ),
    (
        79,
        '2026-01-26 10:09:00',
        125,
        89,
        66.2,
        1.67,
        92, 'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-01-26 07:54:00',
        123,
        85,
        63.3,
        1.78,
        65, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-01-26 09:40:00',
        121,
        89,
        86.3,
        1.58,
        67, 'Baraualdian.'
    ),
    (
        83,
        '2026-01-26 09:07:00',
        129,
        93,
        64.3,
        1.80,
        80, 'Apur bat nekatuta.'
    ),
    (
        84,
        '2026-01-26 08:46:00',
        118,
        91,
        79.3,
        1.67,
        94, 'Apur bat nekatuta.'
    ),
    (
        85,
        '2026-01-26 07:24:00',
        127,
        88,
        81.5,
        1.72,
        87, 'Dena ondo.'
    ),
    (
        88,
        '2026-01-26 07:40:00',
        116,
        79,
        89.6,
        1.81,
        83, 'Dena ondo.'
    ),
    (
        89,
        '2026-01-26 07:20:00',
        141,
        88,
        91.9,
        1.84,
        68, 'Apur bat nekatuta.'
    ),
    (
        91,
        '2026-01-26 10:24:00',
        139,
        81,
        89.6,
        1.58,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2026-01-26 10:04:00',
        129,
        93,
        59.2,
        1.79,
        90, 'Gosariaren ondoren.'
    ),
    (
        93,
        '2026-01-26 08:42:00',
        126,
        93,
        75.7,
        1.81,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2026-01-26 10:08:00',
        137,
        77,
        87.3,
        1.83,
        89, 'Dena ondo.'
    ),
    (
        95,
        '2026-01-26 09:04:00',
        137,
        85,
        91.0,
        1.77,
        86, 'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2026-01-26 07:13:00',
        129,
        76,
        86.2,
        1.56,
        66, 'Kirola egin ondoren.'
    ),
    (
        98,
        '2026-01-26 10:21:00',
        136,
        79,
        83.9,
        1.60,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        99,
        '2026-01-26 09:52:00',
        120,
        75,
        86.6,
        1.71,
        86, 'Kirola egin ondoren.'
    ),
    (
        51,
        '2026-01-27 07:52:00',
        120,
        86,
        63.2,
        1.76,
        86, 'Kirola egin ondoren.'
    ),
    (
        52,
        '2026-01-27 09:22:00',
        127,
        88,
        93.9,
        1.77,
        67, 'Gosariaren ondoren.'
    ),
    (
        53,
        '2026-01-27 10:17:00',
        125,
        93,
        75.0,
        1.75,
        79, 'Baraualdian.'
    ),
    (
        55,
        '2026-01-27 09:32:00',
        133,
        73,
        81.0,
        1.76,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2026-01-27 07:29:00',
        130,
        90,
        90.6,
        1.61,
        93, 'Kirola egin ondoren.'
    ),
    (
        58,
        '2026-01-27 10:37:00',
        136,
        90,
        66.2,
        1.68,
        77, 'Kirola egin ondoren.'
    ),
    (
        59,
        '2026-01-27 10:50:00',
        114,
        83,
        62.5,
        1.73,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2026-01-27 10:38:00',
        133,
        83,
        77.7,
        1.81,
        85, 'Baraualdian.'
    ),
    (
        61,
        '2026-01-27 10:33:00',
        129,
        93,
        72.2,
        1.83,
        92, 'Gosariaren ondoren.'
    ),
    (
        62,
        '2026-01-27 09:18:00',
        126,
        78,
        65.7,
        1.56,
        77, 'Kirola egin ondoren.'
    ),
    (
        63,
        '2026-01-27 09:56:00',
        132,
        79,
        81.8,
        1.80,
        84, 'Dena ondo.'
    ),
    (
        64,
        '2026-01-27 07:05:00',
        121,
        80,
        95.2,
        1.56,
        68, 'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2026-01-27 10:03:00',
        138,
        85,
        91.3,
        1.55,
        85, 'Apur bat nekatuta.'
    ),
    (
        67,
        '2026-01-27 07:17:00',
        138,
        80,
        71.8,
        1.72,
        89, 'Dena ondo.'
    ),
    (
        68,
        '2026-01-27 09:09:00',
        122,
        83,
        60.7,
        1.85,
        79, 'Gosariaren ondoren.'
    ),
    (
        70,
        '2026-01-27 10:33:00',
        125,
        77,
        75.9,
        1.70,
        75, 'Dena ondo.'
    ),
    (
        71,
        '2026-01-27 09:54:00',
        138,
        77,
        89.4,
        1.63,
        70, 'Apur bat nekatuta.'
    ),
    (
        72,
        '2026-01-27 10:42:00',
        143,
        76,
        91.6,
        1.69,
        79, 'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-01-27 08:16:00',
        126,
        78,
        95.1,
        1.55,
        69, 'Gosariaren ondoren.'
    ),
    (
        74,
        '2026-01-27 07:49:00',
        112,
        82,
        64.3,
        1.67,
        78, 'Ondo sentitzen naiz.'
    ),
    (
        75,
        '2026-01-27 08:06:00',
        125,
        80,
        60.8,
        1.65,
        76, 'Kirola egin ondoren.'
    ),
    (
        76,
        '2026-01-27 10:45:00',
        118,
        81,
        65.7,
        1.69,
        78, 'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2026-01-27 09:50:00',
        130,
        91,
        66.4,
        1.67,
        92, 'Baraualdian.'
    ),
    (
        78,
        '2026-01-27 07:01:00',
        130,
        81,
        63.6,
        1.61,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        79,
        '2026-01-27 07:47:00',
        133,
        78,
        66.7,
        1.67,
        73, 'Dena ondo.'
    ),
    (
        80,
        '2026-01-27 09:12:00',
        130,
        94,
        62.1,
        1.78,
        79, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-01-27 07:49:00',
        138,
        92,
        85.2,
        1.58,
        72, 'Gosariaren ondoren.'
    ),
    (
        82,
        '2026-01-27 08:46:00',
        126,
        82,
        89.1,
        1.77,
        86, 'Dena ondo.'
    ),
    (
        83,
        '2026-01-27 10:10:00',
        133,
        91,
        64.4,
        1.80,
        80, 'Ondo sentitzen naiz.'
    ),
    (
        85,
        '2026-01-27 08:55:00',
        133,
        85,
        80.9,
        1.72,
        90, 'Apur bat nekatuta.'
    ),
    (
        86,
        '2026-01-27 07:33:00',
        139,
        81,
        68.7,
        1.57,
        84, 'Baraualdian.'
    ),
    (
        87,
        '2026-01-27 09:05:00',
        138,
        81,
        73.8,
        1.61,
        81, 'Baraualdian.'
    ),
    (
        88,
        '2026-01-27 07:33:00',
        119,
        77,
        89.5,
        1.81,
        91, 'Apur bat nekatuta.'
    ),
    (
        89,
        '2026-01-27 08:48:00',
        138,
        90,
        90.1,
        1.84,
        68, 'Gosariaren ondoren.'
    ),
    (
        90,
        '2026-01-27 07:02:00',
        130,
        84,
        66.5,
        1.60,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2026-01-27 07:31:00',
        133,
        83,
        89.3,
        1.58,
        66, 'Baraualdian.'
    ),
    (
        92,
        '2026-01-27 09:41:00',
        140,
        91,
        59.3,
        1.79,
        88, 'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2026-01-27 08:38:00',
        140,
        94,
        76.4,
        1.81,
        69, 'Kirola egin ondoren.'
    ),
    (
        96,
        '2026-01-27 09:15:00',
        123,
        82,
        77.4,
        1.71,
        70, 'Gosariaren ondoren.'
    ),
    (
        99,
        '2026-01-27 10:30:00',
        130,
        88,
        87.0,
        1.71,
        77, 'Gosariaren ondoren.'
    ),
    (
        100,
        '2026-01-27 08:23:00',
        130,
        72,
        81.9,
        1.57,
        86, 'Baraualdian.'
    ),
    (
        51,
        '2026-01-28 10:38:00',
        120,
        81,
        63.5,
        1.76,
        89, 'Dena ondo.'
    ),
    (
        52,
        '2026-01-28 07:29:00',
        136,
        86,
        94.8,
        1.77,
        84, 'Dena ondo.'
    ),
    (
        53,
        '2026-01-28 09:33:00',
        132,
        83,
        74.4,
        1.75,
        74, 'Gosariaren ondoren.'
    ),
    (
        54,
        '2026-01-28 09:03:00',
        133,
        85,
        86.5,
        1.60,
        74, 'Dena ondo.'
    ),
    (
        55,
        '2026-01-28 09:33:00',
        136,
        78,
        81.1,
        1.76,
        89, 'Gosariaren ondoren.'
    ),
    (
        56,
        '2026-01-28 09:26:00',
        129,
        88,
        89.5,
        1.61,
        75, 'Baraualdian.'
    ),
    (
        57,
        '2026-01-28 10:41:00',
        129,
        93,
        83.8,
        1.69,
        83, 'Baraualdian.'
    ),
    (
        58,
        '2026-01-28 07:04:00',
        135,
        83,
        66.2,
        1.68,
        83, 'Apur bat nekatuta.'
    ),
    (
        59,
        '2026-01-28 09:23:00',
        113,
        95,
        63.2,
        1.73,
        91, 'Apur bat nekatuta.'
    ),
    (
        60,
        '2026-01-28 09:57:00',
        127,
        80,
        78.4,
        1.81,
        68, 'Baraualdian.'
    ),
    (
        63,
        '2026-01-28 09:50:00',
        129,
        78,
        80.8,
        1.80,
        86, 'Apur bat nekatuta.'
    ),
    (
        65,
        '2026-01-28 10:51:00',
        136,
        76,
        90.3,
        1.55,
        84, 'Gosariaren ondoren.'
    ),
    (
        66,
        '2026-01-28 08:34:00',
        122,
        79,
        74.7,
        1.59,
        76, 'Kirola egin ondoren.'
    ),
    (
        67,
        '2026-01-28 09:25:00',
        139,
        87,
        72.9,
        1.72,
        92, 'Dena ondo.'
    ),
    (
        68,
        '2026-01-28 07:59:00',
        131,
        76,
        60.6,
        1.85,
        83, 'Gosariaren ondoren.'
    ),
    (
        71,
        '2026-01-28 10:19:00',
        133,
        71,
        89.8,
        1.63,
        77, 'Apur bat nekatuta.'
    ),
    (
        72,
        '2026-01-28 10:56:00',
        141,
        82,
        91.9,
        1.69,
        67, 'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-01-28 07:51:00',
        111,
        85,
        95.4,
        1.55,
        78, 'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2026-01-28 07:23:00',
        130,
        83,
        64.8,
        1.67,
        94, 'Gosariaren ondoren.'
    ),
    (
        75,
        '2026-01-28 10:06:00',
        134,
        79,
        59.3,
        1.65,
        81, 'Apur bat nekatuta.'
    ),
    (
        76,
        '2026-01-28 08:31:00',
        126,
        95,
        66.1,
        1.69,
        69, 'Kirola egin ondoren.'
    ),
    (
        77,
        '2026-01-28 10:19:00',
        140,
        87,
        66.5,
        1.67,
        65, 'Kirola egin ondoren.'
    ),
    (
        79,
        '2026-01-28 09:22:00',
        140,
        79,
        67.9,
        1.67,
        81, 'Dena ondo.'
    ),
    (
        82,
        '2026-01-28 08:44:00',
        125,
        94,
        88.2,
        1.77,
        87, 'Dena ondo.'
    ),
    (
        83,
        '2026-01-28 07:16:00',
        132,
        91,
        66.0,
        1.80,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2026-01-28 10:01:00',
        136,
        89,
        79.6,
        1.67,
        72, 'Apur bat nekatuta.'
    ),
    (
        85,
        '2026-01-28 07:56:00',
        125,
        83,
        80.4,
        1.72,
        71, 'Baraualdian.'
    ),
    (
        86,
        '2026-01-28 08:29:00',
        130,
        83,
        67.1,
        1.57,
        72, 'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2026-01-28 08:22:00',
        128,
        76,
        74.0,
        1.61,
        69, 'Apur bat nekatuta.'
    ),
    (
        88,
        '2026-01-28 08:29:00',
        124,
        74,
        90.7,
        1.81,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        90,
        '2026-01-28 08:58:00',
        137,
        92,
        66.4,
        1.60,
        67, 'Gosariaren ondoren.'
    ),
    (
        92,
        '2026-01-28 10:18:00',
        135,
        90,
        59.3,
        1.79,
        74, 'Dena ondo.'
    ),
    (
        93,
        '2026-01-28 09:23:00',
        139,
        84,
        75.0,
        1.81,
        75, 'Gosariaren ondoren.'
    ),
    (
        94,
        '2026-01-28 08:52:00',
        126,
        90,
        87.6,
        1.83,
        72, 'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2026-01-28 10:49:00',
        129,
        81,
        76.0,
        1.71,
        66, 'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2026-01-28 10:37:00',
        133,
        85,
        86.5,
        1.56,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-01-28 10:09:00',
        138,
        76,
        84.2,
        1.60,
        86, 'Kirola egin ondoren.'
    ),
    (
        99,
        '2026-01-28 10:16:00',
        123,
        81,
        85.8,
        1.71,
        89, 'Kirola egin ondoren.'
    ),
    (
        100,
        '2026-01-28 07:13:00',
        138,
        73,
        81.6,
        1.57,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2026-01-29 08:46:00',
        123,
        78,
        74.6,
        1.75,
        85, 'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2026-01-29 10:37:00',
        143,
        81,
        86.2,
        1.60,
        82, 'Gosariaren ondoren.'
    ),
    (
        55,
        '2026-01-29 10:48:00',
        135,
        82,
        81.8,
        1.76,
        72, 'Dena ondo.'
    ),
    (
        56,
        '2026-01-29 07:36:00',
        133,
        89,
        89.4,
        1.61,
        66, 'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2026-01-29 09:27:00',
        119,
        91,
        62.9,
        1.73,
        65, 'Kirola egin ondoren.'
    ),
    (
        60,
        '2026-01-29 09:05:00',
        131,
        85,
        77.2,
        1.81,
        75, 'Baraualdian.'
    ),
    (
        61,
        '2026-01-29 08:23:00',
        120,
        81,
        72.0,
        1.83,
        85, 'Kirola egin ondoren.'
    ),
    (
        65,
        '2026-01-29 07:59:00',
        132,
        91,
        90.6,
        1.55,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2026-01-29 07:54:00',
        133,
        91,
        74.7,
        1.59,
        87, 'Dena ondo.'
    ),
    (
        68,
        '2026-01-29 08:59:00',
        128,
        77,
        60.3,
        1.85,
        71, 'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2026-01-29 09:03:00',
        136,
        87,
        95.7,
        1.66,
        82, 'Apur bat nekatuta.'
    ),
    (
        71,
        '2026-01-29 07:11:00',
        126,
        73,
        88.3,
        1.63,
        85, 'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2026-01-29 09:47:00',
        130,
        81,
        92.4,
        1.69,
        77, 'Baraualdian.'
    ),
    (
        73,
        '2026-01-29 08:57:00',
        116,
        73,
        94.1,
        1.55,
        87, 'Baraualdian.'
    ),
    (
        74,
        '2026-01-29 10:31:00',
        131,
        81,
        64.5,
        1.67,
        81, 'Kirola egin ondoren.'
    ),
    (
        76,
        '2026-01-29 08:11:00',
        114,
        82,
        66.3,
        1.69,
        67, 'Baraualdian.'
    ),
    (
        78,
        '2026-01-29 08:48:00',
        117,
        76,
        63.3,
        1.61,
        85, 'Ondo sentitzen naiz.'
    ),
    (
        79,
        '2026-01-29 08:48:00',
        135,
        89,
        66.0,
        1.67,
        92, 'Gosariaren ondoren.'
    ),
    (
        81,
        '2026-01-29 07:02:00',
        133,
        83,
        85.4,
        1.58,
        90, 'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2026-01-29 10:43:00',
        120,
        81,
        65.8,
        1.80,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2026-01-29 08:06:00',
        134,
        84,
        79.2,
        1.67,
        67, 'Dena ondo.'
    ),
    (
        87,
        '2026-01-29 10:33:00',
        121,
        76,
        72.9,
        1.61,
        89, 'Dena ondo.'
    ),
    (
        88,
        '2026-01-29 07:57:00',
        118,
        86,
        89.6,
        1.81,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2026-01-29 07:45:00',
        138,
        76,
        86.7,
        1.83,
        67, 'Dena ondo.'
    ),
    (
        95,
        '2026-01-29 07:32:00',
        129,
        73,
        89.9,
        1.77,
        89, 'Apur bat nekatuta.'
    ),
    (
        96,
        '2026-01-29 07:18:00',
        133,
        85,
        76.2,
        1.71,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        97,
        '2026-01-29 08:53:00',
        138,
        74,
        86.4,
        1.56,
        91, 'Ondo sentitzen naiz.'
    ),
    (
        98,
        '2026-01-29 08:18:00',
        126,
        89,
        84.5,
        1.60,
        70, 'Kirola egin ondoren.'
    ),
    (
        100,
        '2026-01-29 08:41:00',
        138,
        84,
        81.4,
        1.57,
        65, 'Dena ondo.'
    ),
    (
        52,
        '2026-01-30 09:56:00',
        138,
        79,
        93.9,
        1.77,
        72, 'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2026-01-30 07:38:00',
        114,
        82,
        74.5,
        1.75,
        94, 'Baraualdian.'
    ),
    (
        54,
        '2026-01-30 09:29:00',
        138,
        84,
        87.3,
        1.60,
        92, 'Gosariaren ondoren.'
    ),
    (
        57,
        '2026-01-30 08:12:00',
        135,
        80,
        82.9,
        1.69,
        90, 'Dena ondo.'
    ),
    (
        58,
        '2026-01-30 10:15:00',
        144,
        84,
        66.9,
        1.68,
        78, 'Gosariaren ondoren.'
    ),
    (
        59,
        '2026-01-30 10:06:00',
        121,
        82,
        62.9,
        1.73,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        60,
        '2026-01-30 08:01:00',
        125,
        83,
        77.1,
        1.81,
        84, 'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-01-30 07:34:00',
        112,
        85,
        73.6,
        1.83,
        76, 'Baraualdian.'
    ),
    (
        62,
        '2026-01-30 07:29:00',
        124,
        72,
        66.8,
        1.56,
        69, 'Gosariaren ondoren.'
    ),
    (
        64,
        '2026-01-30 07:18:00',
        131,
        86,
        95.6,
        1.56,
        73, 'Ondo sentitzen naiz.'
    ),
    (
        66,
        '2026-01-30 08:47:00',
        122,
        84,
        74.6,
        1.59,
        86, 'Baraualdian.'
    ),
    (
        68,
        '2026-01-30 08:13:00',
        125,
        87,
        61.3,
        1.85,
        70, 'Baraualdian.'
    ),
    (
        69,
        '2026-01-30 07:53:00',
        128,
        77,
        94.4,
        1.66,
        72, 'Gosariaren ondoren.'
    ),
    (
        70,
        '2026-01-30 07:31:00',
        134,
        87,
        74.3,
        1.70,
        73, 'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-01-30 10:12:00',
        120,
        80,
        89.2,
        1.63,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2026-01-30 08:07:00',
        142,
        87,
        91.6,
        1.69,
        80, 'Gosariaren ondoren.'
    ),
    (
        73,
        '2026-01-30 10:44:00',
        130,
        75,
        94.0,
        1.55,
        91, 'Dena ondo.'
    ),
    (
        74,
        '2026-01-30 09:43:00',
        125,
        77,
        64.2,
        1.67,
        82, 'Dena ondo.'
    ),
    (
        75,
        '2026-01-30 09:29:00',
        140,
        73,
        59.3,
        1.65,
        88, 'Kirola egin ondoren.'
    ),
    (
        76,
        '2026-01-30 10:54:00',
        119,
        95,
        66.4,
        1.69,
        87, 'Apur bat nekatuta.'
    ),
    (
        77,
        '2026-01-30 09:11:00',
        140,
        93,
        66.4,
        1.67,
        76, 'Gaur goizean neurtuta.'
    ),
    (
        78,
        '2026-01-30 07:28:00',
        132,
        82,
        62.5,
        1.61,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2026-01-30 08:33:00',
        130,
        83,
        62.4,
        1.78,
        82, 'Baraualdian.'
    ),
    (
        81,
        '2026-01-30 09:53:00',
        125,
        81,
        85.1,
        1.58,
        69, 'Dena ondo.'
    ),
    (
        82,
        '2026-01-30 07:23:00',
        141,
        88,
        88.8,
        1.77,
        84, 'Gosariaren ondoren.'
    ),
    (
        83,
        '2026-01-30 07:56:00',
        118,
        94,
        64.7,
        1.80,
        80, 'Apur bat nekatuta.'
    ),
    (
        84,
        '2026-01-30 09:45:00',
        134,
        79,
        79.8,
        1.67,
        70, 'Baraualdian.'
    ),
    (
        85,
        '2026-01-30 09:19:00',
        124,
        87,
        81.5,
        1.72,
        65, 'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2026-01-30 09:01:00',
        126,
        86,
        73.7,
        1.61,
        71, 'Dena ondo.'
    ),
    (
        88,
        '2026-01-30 10:54:00',
        113,
        84,
        90.3,
        1.81,
        75, 'Apur bat nekatuta.'
    ),
    (
        89,
        '2026-01-30 07:36:00',
        134,
        86,
        90.3,
        1.84,
        90, 'Dena ondo.'
    ),
    (
        90,
        '2026-01-30 09:37:00',
        119,
        93,
        65.7,
        1.60,
        74, 'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2026-01-30 07:50:00',
        132,
        77,
        89.6,
        1.58,
        87, 'Gosariaren ondoren.'
    ),
    (
        92,
        '2026-01-30 08:54:00',
        128,
        81,
        60.8,
        1.79,
        78, 'Gosariaren ondoren.'
    ),
    (
        94,
        '2026-01-30 08:49:00',
        125,
        78,
        87.3,
        1.83,
        87, 'Dena ondo.'
    ),
    (
        95,
        '2026-01-30 09:26:00',
        138,
        79,
        89.9,
        1.77,
        85, 'Gosariaren ondoren.'
    ),
    (
        96,
        '2026-01-30 08:04:00',
        117,
        74,
        76.3,
        1.71,
        80, 'Gosariaren ondoren.'
    ),
    (
        97,
        '2026-01-30 08:44:00',
        136,
        79,
        87.2,
        1.56,
        85, 'Baraualdian.'
    ),
    (
        99,
        '2026-01-30 10:32:00',
        120,
        80,
        85.8,
        1.71,
        77, 'Apur bat nekatuta.'
    ),
    (
        100,
        '2026-01-30 08:59:00',
        120,
        87,
        82.8,
        1.57,
        81, 'Baraualdian.'
    ),
    (
        51,
        '2026-01-31 07:10:00',
        126,
        90,
        63.6,
        1.76,
        87, 'Gosariaren ondoren.'
    ),
    (
        54,
        '2026-01-31 08:56:00',
        133,
        77,
        87.6,
        1.60,
        93, 'Kirola egin ondoren.'
    ),
    (
        56,
        '2026-01-31 08:11:00',
        134,
        84,
        90.0,
        1.61,
        89, 'Dena ondo.'
    ),
    (
        57,
        '2026-01-31 10:25:00',
        122,
        80,
        82.8,
        1.69,
        88, 'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2026-01-31 08:13:00',
        133,
        82,
        67.5,
        1.68,
        83, 'Kirola egin ondoren.'
    ),
    (
        59,
        '2026-01-31 10:43:00',
        128,
        83,
        63.7,
        1.73,
        76, 'Baraualdian.'
    ),
    (
        60,
        '2026-01-31 07:56:00',
        132,
        83,
        77.6,
        1.81,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2026-01-31 10:05:00',
        121,
        93,
        73.6,
        1.83,
        68, 'Dena ondo.'
    ),
    (
        62,
        '2026-01-31 09:38:00',
        134,
        71,
        65.1,
        1.56,
        93, 'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2026-01-31 09:31:00',
        142,
        90,
        81.9,
        1.80,
        74, 'Dena ondo.'
    ),
    (
        64,
        '2026-01-31 09:02:00',
        126,
        88,
        94.9,
        1.56,
        80, 'Kirola egin ondoren.'
    ),
    (
        65,
        '2026-01-31 09:02:00',
        122,
        88,
        91.0,
        1.55,
        88, 'Apur bat nekatuta.'
    ),
    (
        68,
        '2026-01-31 09:34:00',
        125,
        83,
        60.8,
        1.85,
        80, 'Dena ondo.'
    ),
    (
        70,
        '2026-01-31 10:03:00',
        132,
        88,
        74.6,
        1.70,
        71, 'Apur bat nekatuta.'
    ),
    (
        72,
        '2026-01-31 10:30:00',
        133,
        80,
        93.0,
        1.69,
        68, 'Baraualdian.'
    ),
    (
        73,
        '2026-01-31 10:03:00',
        120,
        71,
        94.6,
        1.55,
        78, 'Baraualdian.'
    ),
    (
        75,
        '2026-01-31 08:21:00',
        138,
        73,
        60.6,
        1.65,
        82, 'Dena ondo.'
    ),
    (
        76,
        '2026-01-31 09:26:00',
        114,
        92,
        65.9,
        1.69,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2026-01-31 09:47:00',
        130,
        80,
        62.7,
        1.61,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        80,
        '2026-01-31 08:28:00',
        128,
        90,
        62.4,
        1.78,
        77, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-01-31 07:07:00',
        133,
        90,
        85.5,
        1.58,
        85, 'Kirola egin ondoren.'
    ),
    (
        82,
        '2026-01-31 08:52:00',
        132,
        90,
        89.9,
        1.77,
        75, 'Dena ondo.'
    ),
    (
        83,
        '2026-01-31 08:01:00',
        126,
        86,
        64.2,
        1.80,
        87, 'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2026-01-31 09:04:00',
        137,
        88,
        78.5,
        1.67,
        71, 'Gosariaren ondoren.'
    ),
    (
        85,
        '2026-01-31 08:05:00',
        139,
        80,
        81.3,
        1.72,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2026-01-31 08:57:00',
        136,
        84,
        68.8,
        1.57,
        66, 'Gaur goizean neurtuta.'
    ),
    (
        87,
        '2026-01-31 10:34:00',
        128,
        87,
        72.3,
        1.61,
        80, 'Apur bat nekatuta.'
    ),
    (
        88,
        '2026-01-31 07:29:00',
        122,
        73,
        90.3,
        1.81,
        65, 'Gosariaren ondoren.'
    ),
    (
        90,
        '2026-01-31 07:05:00',
        133,
        88,
        66.0,
        1.60,
        85, 'Kirola egin ondoren.'
    ),
    (
        91,
        '2026-01-31 09:43:00',
        128,
        90,
        90.2,
        1.58,
        80, 'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2026-01-31 09:26:00',
        129,
        91,
        59.7,
        1.79,
        94, 'Ondo sentitzen naiz.'
    ),
    (
        93,
        '2026-01-31 07:14:00',
        124,
        84,
        77.0,
        1.81,
        94, 'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2026-01-31 07:28:00',
        118,
        82,
        76.6,
        1.71,
        72, 'Dena ondo.'
    ),
    (
        97,
        '2026-01-31 07:53:00',
        134,
        80,
        87.8,
        1.56,
        86, 'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-01-31 08:39:00',
        127,
        84,
        84.0,
        1.60,
        79, 'Baraualdian.'
    ),
    (
        99,
        '2026-01-31 09:50:00',
        135,
        83,
        85.8,
        1.71,
        91, 'Dena ondo.'
    ),
    (
        51,
        '2026-02-01 09:14:00',
        128,
        84,
        63.2,
        1.76,
        77, 'Dena ondo.'
    ),
    (
        52,
        '2026-02-01 10:48:00',
        129,
        82,
        93.9,
        1.77,
        81, 'Apur bat nekatuta.'
    ),
    (
        53,
        '2026-02-01 08:58:00',
        123,
        90,
        74.3,
        1.75,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2026-02-01 10:19:00',
        141,
        76,
        87.3,
        1.60,
        91, 'Gosariaren ondoren.'
    ),
    (
        55,
        '2026-02-01 08:00:00',
        131,
        77,
        81.6,
        1.76,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        56,
        '2026-02-01 07:27:00',
        131,
        94,
        90.6,
        1.61,
        94, 'Dena ondo.'
    ),
    (
        58,
        '2026-02-01 08:05:00',
        137,
        83,
        66.7,
        1.68,
        66, 'Dena ondo.'
    ),
    (
        59,
        '2026-02-01 10:16:00',
        129,
        92,
        63.7,
        1.73,
        84, 'Gosariaren ondoren.'
    ),
    (
        60,
        '2026-02-01 09:49:00',
        133,
        91,
        77.4,
        1.81,
        67, 'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-02-01 07:58:00',
        123,
        93,
        72.8,
        1.83,
        93, 'Apur bat nekatuta.'
    ),
    (
        62,
        '2026-02-01 10:02:00',
        135,
        85,
        66.5,
        1.56,
        67, 'Apur bat nekatuta.'
    ),
    (
        63,
        '2026-02-01 10:20:00',
        139,
        88,
        80.5,
        1.80,
        88, 'Dena ondo.'
    ),
    (
        64,
        '2026-02-01 10:30:00',
        134,
        88,
        95.1,
        1.56,
        86, 'Gosariaren ondoren.'
    ),
    (
        65,
        '2026-02-01 07:10:00',
        136,
        76,
        90.9,
        1.55,
        88, 'Gosariaren ondoren.'
    ),
    (
        66,
        '2026-02-01 10:20:00',
        127,
        85,
        75.9,
        1.59,
        94, 'Kirola egin ondoren.'
    ),
    (
        67,
        '2026-02-01 08:46:00',
        132,
        91,
        72.1,
        1.72,
        67, 'Baraualdian.'
    ),
    (
        68,
        '2026-02-01 08:35:00',
        140,
        78,
        61.1,
        1.85,
        74, 'Apur bat nekatuta.'
    ),
    (
        70,
        '2026-02-01 09:46:00',
        131,
        75,
        75.1,
        1.70,
        78, 'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2026-02-01 09:26:00',
        121,
        86,
        88.8,
        1.63,
        91, 'Dena ondo.'
    ),
    (
        72,
        '2026-02-01 09:21:00',
        139,
        75,
        91.3,
        1.69,
        72, 'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-02-01 07:58:00',
        111,
        73,
        95.4,
        1.55,
        77, 'Kirola egin ondoren.'
    ),
    (
        74,
        '2026-02-01 08:51:00',
        113,
        86,
        63.2,
        1.67,
        94, 'Dena ondo.'
    ),
    (
        76,
        '2026-02-01 08:27:00',
        129,
        87,
        66.0,
        1.69,
        87, 'Ondo sentitzen naiz.'
    ),
    (
        77,
        '2026-02-01 08:49:00',
        123,
        84,
        66.6,
        1.67,
        76, 'Baraualdian.'
    ),
    (
        78,
        '2026-02-01 07:33:00',
        117,
        78,
        62.6,
        1.61,
        82, 'Baraualdian.'
    ),
    (
        80,
        '2026-02-01 07:21:00',
        120,
        92,
        62.2,
        1.78,
        71, 'Dena ondo.'
    ),
    (
        81,
        '2026-02-01 10:58:00',
        131,
        82,
        86.2,
        1.58,
        92, 'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-02-01 07:12:00',
        134,
        90,
        88.0,
        1.77,
        75, 'Apur bat nekatuta.'
    ),
    (
        85,
        '2026-02-01 10:44:00',
        136,
        87,
        80.0,
        1.72,
        68, 'Apur bat nekatuta.'
    ),
    (
        86,
        '2026-02-01 08:19:00',
        137,
        77,
        67.6,
        1.57,
        91, 'Kirola egin ondoren.'
    ),
    (
        87,
        '2026-02-01 08:11:00',
        139,
        87,
        73.2,
        1.61,
        66, 'Gosariaren ondoren.'
    ),
    (
        89,
        '2026-02-01 07:57:00',
        138,
        90,
        91.4,
        1.84,
        94, 'Apur bat nekatuta.'
    ),
    (
        90,
        '2026-02-01 08:04:00',
        119,
        85,
        66.6,
        1.60,
        79, 'Ondo sentitzen naiz.'
    ),
    (
        91,
        '2026-02-01 10:39:00',
        127,
        82,
        90.3,
        1.58,
        80, 'Gosariaren ondoren.'
    ),
    (
        93,
        '2026-02-01 08:27:00',
        122,
        87,
        75.9,
        1.81,
        72, 'Apur bat nekatuta.'
    ),
    (
        94,
        '2026-02-01 09:58:00',
        126,
        83,
        87.5,
        1.83,
        70, 'Baraualdian.'
    ),
    (
        95,
        '2026-02-01 09:56:00',
        140,
        74,
        90.7,
        1.77,
        76, 'Baraualdian.'
    ),
    (
        96,
        '2026-02-01 09:54:00',
        122,
        76,
        76.7,
        1.71,
        84, 'Baraualdian.'
    ),
    (
        97,
        '2026-02-01 09:55:00',
        122,
        72,
        86.9,
        1.56,
        84, 'Dena ondo.'
    ),
    (
        99,
        '2026-02-01 07:23:00',
        118,
        83,
        86.5,
        1.71,
        77, 'Dena ondo.'
    ),
    (
        51,
        '2026-02-02 08:56:00',
        136,
        93,
        64.3,
        1.76,
        80, 'Baraualdian.'
    ),
    (
        52,
        '2026-02-02 10:07:00',
        121,
        92,
        94.0,
        1.77,
        87, 'Apur bat nekatuta.'
    ),
    (
        54,
        '2026-02-02 08:38:00',
        133,
        84,
        86.0,
        1.60,
        91, 'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2026-02-02 10:09:00',
        126,
        84,
        81.8,
        1.76,
        66, 'Dena ondo.'
    ),
    (
        56,
        '2026-02-02 10:24:00',
        144,
        87,
        90.6,
        1.61,
        74, 'Gaur goizean neurtuta.'
    ),
    (
        57,
        '2026-02-02 09:37:00',
        136,
        87,
        83.5,
        1.69,
        80, 'Kirola egin ondoren.'
    ),
    (
        59,
        '2026-02-02 10:33:00',
        130,
        83,
        63.1,
        1.73,
        70, 'Kirola egin ondoren.'
    ),
    (
        60,
        '2026-02-02 07:34:00',
        126,
        93,
        78.3,
        1.81,
        68, 'Dena ondo.'
    ),
    (
        64,
        '2026-02-02 08:44:00',
        134,
        79,
        94.6,
        1.56,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2026-02-02 07:05:00',
        133,
        79,
        92.0,
        1.55,
        67, 'Dena ondo.'
    ),
    (
        66,
        '2026-02-02 08:42:00',
        121,
        82,
        74.4,
        1.59,
        81, 'Apur bat nekatuta.'
    ),
    (
        67,
        '2026-02-02 09:14:00',
        128,
        80,
        71.6,
        1.72,
        78, 'Kirola egin ondoren.'
    ),
    (
        68,
        '2026-02-02 07:57:00',
        135,
        80,
        61.1,
        1.85,
        71, 'Ondo sentitzen naiz.'
    ),
    (
        69,
        '2026-02-02 08:07:00',
        130,
        78,
        95.7,
        1.66,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2026-02-02 10:21:00',
        135,
        88,
        74.1,
        1.70,
        76, 'Gosariaren ondoren.'
    ),
    (
        71,
        '2026-02-02 10:09:00',
        120,
        80,
        88.8,
        1.63,
        69, 'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2026-02-02 08:57:00',
        143,
        79,
        91.1,
        1.69,
        91, 'Gosariaren ondoren.'
    ),
    (
        73,
        '2026-02-02 09:20:00',
        112,
        72,
        94.8,
        1.55,
        92, 'Kirola egin ondoren.'
    ),
    (
        76,
        '2026-02-02 09:34:00',
        130,
        94,
        66.2,
        1.69,
        70, 'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2026-02-02 10:04:00',
        118,
        76,
        62.0,
        1.61,
        67, 'Baraualdian.'
    ),
    (
        79,
        '2026-02-02 10:39:00',
        142,
        76,
        66.0,
        1.67,
        92, 'Kirola egin ondoren.'
    ),
    (
        80,
        '2026-02-02 10:46:00',
        139,
        83,
        63.6,
        1.78,
        87, 'Ondo sentitzen naiz.'
    ),
    (
        81,
        '2026-02-02 09:37:00',
        129,
        86,
        86.2,
        1.58,
        90, 'Gosariaren ondoren.'
    ),
    (
        82,
        '2026-02-02 07:48:00',
        134,
        84,
        88.1,
        1.77,
        69, 'Baraualdian.'
    ),
    (
        84,
        '2026-02-02 10:02:00',
        136,
        79,
        78.0,
        1.67,
        92, 'Kirola egin ondoren.'
    ),
    (
        86,
        '2026-02-02 07:10:00',
        126,
        79,
        67.6,
        1.57,
        65, 'Dena ondo.'
    ),
    (
        87,
        '2026-02-02 08:58:00',
        140,
        87,
        73.7,
        1.61,
        73, 'Gosariaren ondoren.'
    ),
    (
        88,
        '2026-02-02 07:32:00',
        126,
        87,
        90.4,
        1.81,
        71, 'Dena ondo.'
    ),
    (
        89,
        '2026-02-02 10:43:00',
        124,
        87,
        90.7,
        1.84,
        80, 'Apur bat nekatuta.'
    ),
    (
        90,
        '2026-02-02 10:18:00',
        124,
        78,
        65.7,
        1.60,
        67, 'Gosariaren ondoren.'
    ),
    (
        91,
        '2026-02-02 08:45:00',
        144,
        79,
        89.7,
        1.58,
        69, 'Ondo sentitzen naiz.'
    ),
    (
        92,
        '2026-02-02 08:52:00',
        129,
        84,
        60.8,
        1.79,
        71, 'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2026-02-02 08:30:00',
        133,
        87,
        87.6,
        1.83,
        65, 'Apur bat nekatuta.'
    ),
    (
        95,
        '2026-02-02 10:39:00',
        138,
        75,
        89.5,
        1.77,
        91, 'Gosariaren ondoren.'
    ),
    (
        96,
        '2026-02-02 08:15:00',
        117,
        88,
        77.6,
        1.71,
        73, 'Ondo sentitzen naiz.'
    ),
    (
        98,
        '2026-02-02 07:22:00',
        128,
        88,
        83.8,
        1.60,
        65, 'Dena ondo.'
    ),
    (
        99,
        '2026-02-02 08:27:00',
        118,
        75,
        86.8,
        1.71,
        79, 'Gosariaren ondoren.'
    ),
    (
        100,
        '2026-02-02 10:24:00',
        140,
        73,
        81.2,
        1.57,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        51,
        '2026-02-03 07:24:00',
        133,
        80,
        64.4,
        1.76,
        78, 'Baraualdian.'
    ),
    (
        52,
        '2026-02-03 07:09:00',
        136,
        81,
        94.7,
        1.77,
        70, 'Dena ondo.'
    ),
    (
        53,
        '2026-02-03 10:18:00',
        119,
        93,
        74.1,
        1.75,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2026-02-03 10:11:00',
        124,
        75,
        81.9,
        1.76,
        79, 'Apur bat nekatuta.'
    ),
    (
        56,
        '2026-02-03 07:47:00',
        145,
        80,
        89.2,
        1.61,
        70, 'Apur bat nekatuta.'
    ),
    (
        57,
        '2026-02-03 07:30:00',
        125,
        91,
        82.5,
        1.69,
        74, 'Baraualdian.'
    ),
    (
        58,
        '2026-02-03 09:46:00',
        134,
        79,
        66.5,
        1.68,
        76, 'Apur bat nekatuta.'
    ),
    (
        59,
        '2026-02-03 10:51:00',
        129,
        88,
        63.4,
        1.73,
        76, 'Baraualdian.'
    ),
    (
        60,
        '2026-02-03 09:45:00',
        116,
        85,
        78.6,
        1.81,
        84, 'Gosariaren ondoren.'
    ),
    (
        61,
        '2026-02-03 08:41:00',
        112,
        80,
        73.9,
        1.83,
        91, 'Gaur goizean neurtuta.'
    ),
    (
        62,
        '2026-02-03 10:58:00',
        120,
        79,
        66.0,
        1.56,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        63,
        '2026-02-03 10:29:00',
        143,
        76,
        81.7,
        1.80,
        93, 'Dena ondo.'
    ),
    (
        65,
        '2026-02-03 08:14:00',
        122,
        77,
        90.8,
        1.55,
        79, 'Gosariaren ondoren.'
    ),
    (
        66,
        '2026-02-03 10:22:00',
        134,
        77,
        74.3,
        1.59,
        67, 'Dena ondo.'
    ),
    (
        68,
        '2026-02-03 10:32:00',
        131,
        83,
        60.9,
        1.85,
        82, 'Kirola egin ondoren.'
    ),
    (
        69,
        '2026-02-03 08:46:00',
        144,
        81,
        95.9,
        1.66,
        93, 'Ondo sentitzen naiz.'
    ),
    (
        70,
        '2026-02-03 10:49:00',
        136,
        82,
        74.3,
        1.70,
        74, 'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2026-02-03 10:54:00',
        122,
        83,
        88.5,
        1.63,
        67, 'Baraualdian.'
    ),
    (
        73,
        '2026-02-03 07:42:00',
        131,
        84,
        95.5,
        1.55,
        70, 'Ondo sentitzen naiz.'
    ),
    (
        74,
        '2026-02-03 08:58:00',
        122,
        76,
        64.4,
        1.67,
        92, 'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2026-02-03 07:48:00',
        132,
        84,
        60.6,
        1.65,
        83, 'Apur bat nekatuta.'
    ),
    (
        79,
        '2026-02-03 09:11:00',
        123,
        86,
        67.7,
        1.67,
        74, 'Baraualdian.'
    ),
    (
        81,
        '2026-02-03 08:41:00',
        134,
        86,
        87.0,
        1.58,
        84, 'Dena ondo.'
    ),
    (
        82,
        '2026-02-03 08:19:00',
        137,
        89,
        89.9,
        1.77,
        93, 'Dena ondo.'
    ),
    (
        83,
        '2026-02-03 09:57:00',
        134,
        89,
        65.3,
        1.80,
        81, 'Baraualdian.'
    ),
    (
        85,
        '2026-02-03 07:30:00',
        134,
        80,
        80.6,
        1.72,
        90, 'Gosariaren ondoren.'
    ),
    (
        86,
        '2026-02-03 07:54:00',
        124,
        86,
        68.3,
        1.57,
        77, 'Apur bat nekatuta.'
    ),
    (
        87,
        '2026-02-03 07:33:00',
        132,
        77,
        72.4,
        1.61,
        69, 'Dena ondo.'
    ),
    (
        90,
        '2026-02-03 08:33:00',
        121,
        90,
        66.7,
        1.60,
        84, 'Gosariaren ondoren.'
    ),
    (
        91,
        '2026-02-03 07:15:00',
        131,
        83,
        89.7,
        1.58,
        66, 'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2026-02-03 07:08:00',
        132,
        84,
        76.0,
        1.81,
        75, 'Kirola egin ondoren.'
    ),
    (
        94,
        '2026-02-03 08:01:00',
        128,
        87,
        87.8,
        1.83,
        85, 'Gosariaren ondoren.'
    ),
    (
        95,
        '2026-02-03 09:16:00',
        136,
        78,
        89.4,
        1.77,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2026-02-03 08:01:00',
        122,
        83,
        87.2,
        1.56,
        66, 'Baraualdian.'
    ),
    (
        98,
        '2026-02-03 09:36:00',
        133,
        75,
        84.3,
        1.60,
        83, 'Dena ondo.'
    ),
    (
        99,
        '2026-02-03 09:18:00',
        131,
        85,
        85.1,
        1.71,
        93, 'Kirola egin ondoren.'
    ),
    (
        100,
        '2026-02-03 08:04:00',
        140,
        87,
        81.7,
        1.57,
        87, 'Gosariaren ondoren.'
    ),
    (
        51,
        '2026-02-04 08:11:00',
        139,
        82,
        64.8,
        1.76,
        74, 'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2026-02-04 07:54:00',
        128,
        80,
        74.0,
        1.75,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2026-02-04 10:11:00',
        137,
        85,
        86.5,
        1.60,
        85, 'Apur bat nekatuta.'
    ),
    (
        55,
        '2026-02-04 09:37:00',
        139,
        84,
        80.9,
        1.76,
        89, 'Gosariaren ondoren.'
    ),
    (
        57,
        '2026-02-04 07:32:00',
        120,
        81,
        83.7,
        1.69,
        67, 'Gosariaren ondoren.'
    ),
    (
        58,
        '2026-02-04 07:20:00',
        145,
        87,
        67.6,
        1.68,
        77, 'Apur bat nekatuta.'
    ),
    (
        60,
        '2026-02-04 09:00:00',
        134,
        81,
        78.0,
        1.81,
        78, 'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-02-04 07:42:00',
        116,
        83,
        72.5,
        1.83,
        88, 'Gosariaren ondoren.'
    ),
    (
        62,
        '2026-02-04 10:43:00',
        138,
        84,
        66.7,
        1.56,
        69, 'Gosariaren ondoren.'
    ),
    (
        63,
        '2026-02-04 08:36:00',
        143,
        78,
        80.6,
        1.80,
        85, 'Baraualdian.'
    ),
    (
        64,
        '2026-02-04 10:31:00',
        123,
        75,
        95.0,
        1.56,
        90, 'Dena ondo.'
    ),
    (
        65,
        '2026-02-04 07:48:00',
        134,
        83,
        91.0,
        1.55,
        76, 'Apur bat nekatuta.'
    ),
    (
        66,
        '2026-02-04 09:45:00',
        130,
        79,
        74.4,
        1.59,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2026-02-04 09:45:00',
        136,
        85,
        94.7,
        1.66,
        75, 'Apur bat nekatuta.'
    ),
    (
        70,
        '2026-02-04 10:37:00',
        136,
        77,
        76.0,
        1.70,
        71, 'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2026-02-04 08:30:00',
        125,
        72,
        88.5,
        1.63,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2026-02-04 10:59:00',
        140,
        79,
        91.5,
        1.69,
        76, 'Dena ondo.'
    ),
    (
        73,
        '2026-02-04 09:57:00',
        131,
        82,
        95.6,
        1.55,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2026-02-04 09:05:00',
        142,
        82,
        60.0,
        1.65,
        77, 'Baraualdian.'
    ),
    (
        76,
        '2026-02-04 08:06:00',
        110,
        94,
        66.1,
        1.69,
        94, 'Dena ondo.'
    ),
    (
        80,
        '2026-02-04 10:23:00',
        127,
        81,
        63.2,
        1.78,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2026-02-04 08:58:00',
        139,
        94,
        86.1,
        1.58,
        70, 'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-02-04 08:42:00',
        140,
        93,
        88.9,
        1.77,
        72, 'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2026-02-04 10:38:00',
        119,
        92,
        65.8,
        1.80,
        70, 'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2026-02-04 07:53:00',
        119,
        90,
        79.8,
        1.67,
        92, 'Baraualdian.'
    ),
    (
        85,
        '2026-02-04 10:00:00',
        120,
        88,
        81.0,
        1.72,
        88, 'Gaur goizean neurtuta.'
    ),
    (
        87,
        '2026-02-04 07:14:00',
        122,
        76,
        72.9,
        1.61,
        78, 'Dena ondo.'
    ),
    (
        89,
        '2026-02-04 07:06:00',
        126,
        87,
        90.2,
        1.84,
        85, 'Dena ondo.'
    ),
    (
        90,
        '2026-02-04 09:56:00',
        125,
        92,
        66.9,
        1.60,
        89, 'Dena ondo.'
    ),
    (
        92,
        '2026-02-04 09:59:00',
        127,
        81,
        59.5,
        1.79,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2026-02-04 07:25:00',
        123,
        90,
        76.4,
        1.81,
        67, 'Apur bat nekatuta.'
    ),
    (
        94,
        '2026-02-04 10:05:00',
        132,
        87,
        87.0,
        1.83,
        68, 'Kirola egin ondoren.'
    ),
    (
        95,
        '2026-02-04 09:56:00',
        136,
        87,
        89.7,
        1.77,
        71, 'Apur bat nekatuta.'
    ),
    (
        96,
        '2026-02-04 10:00:00',
        125,
        82,
        76.7,
        1.71,
        83, 'Gosariaren ondoren.'
    ),
    (
        98,
        '2026-02-04 08:23:00',
        130,
        90,
        84.7,
        1.60,
        78, 'Ondo sentitzen naiz.'
    ),
    (
        99,
        '2026-02-04 07:21:00',
        119,
        73,
        86.6,
        1.71,
        72, 'Ondo sentitzen naiz.'
    ),
    (
        100,
        '2026-02-04 08:10:00',
        130,
        86,
        81.8,
        1.57,
        86, 'Gaur goizean neurtuta.'
    ),
    (
        51,
        '2026-02-05 10:48:00',
        126,
        91,
        64.8,
        1.76,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        52,
        '2026-02-05 09:46:00',
        134,
        87,
        94.0,
        1.77,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2026-02-05 08:52:00',
        135,
        76,
        80.3,
        1.76,
        70, 'Apur bat nekatuta.'
    ),
    (
        56,
        '2026-02-05 07:58:00',
        129,
        80,
        89.4,
        1.61,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        57,
        '2026-02-05 08:43:00',
        118,
        87,
        82.8,
        1.69,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2026-02-05 09:19:00',
        129,
        85,
        67.0,
        1.68,
        84, 'Dena ondo.'
    ),
    (
        59,
        '2026-02-05 10:51:00',
        116,
        80,
        62.0,
        1.73,
        68, 'Baraualdian.'
    ),
    (
        60,
        '2026-02-05 09:18:00',
        129,
        94,
        77.7,
        1.81,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        61,
        '2026-02-05 07:09:00',
        123,
        82,
        73.1,
        1.83,
        75, 'Apur bat nekatuta.'
    ),
    (
        62,
        '2026-02-05 07:02:00',
        125,
        81,
        65.3,
        1.56,
        90, 'Baraualdian.'
    ),
    (
        63,
        '2026-02-05 08:46:00',
        128,
        84,
        80.3,
        1.80,
        77, 'Dena ondo.'
    ),
    (
        64,
        '2026-02-05 07:39:00',
        124,
        73,
        95.4,
        1.56,
        86, 'Apur bat nekatuta.'
    ),
    (
        65,
        '2026-02-05 08:30:00',
        123,
        86,
        90.4,
        1.55,
        67, 'Ondo sentitzen naiz.'
    ),
    (
        66,
        '2026-02-05 09:41:00',
        127,
        78,
        75.0,
        1.59,
        88, 'Gosariaren ondoren.'
    ),
    (
        67,
        '2026-02-05 07:08:00',
        138,
        79,
        72.7,
        1.72,
        72, 'Dena ondo.'
    ),
    (
        69,
        '2026-02-05 07:13:00',
        130,
        78,
        95.7,
        1.66,
        77, 'Baraualdian.'
    ),
    (
        70,
        '2026-02-05 09:36:00',
        124,
        77,
        75.0,
        1.70,
        71, 'Baraualdian.'
    ),
    (
        72,
        '2026-02-05 08:58:00',
        128,
        80,
        91.3,
        1.69,
        75, 'Gosariaren ondoren.'
    ),
    (
        73,
        '2026-02-05 08:02:00',
        111,
        77,
        94.0,
        1.55,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2026-02-05 09:51:00',
        121,
        91,
        64.3,
        1.67,
        88, 'Kirola egin ondoren.'
    ),
    (
        75,
        '2026-02-05 08:31:00',
        128,
        82,
        59.1,
        1.65,
        85, 'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2026-02-05 09:02:00',
        110,
        93,
        65.2,
        1.69,
        79, 'Baraualdian.'
    ),
    (
        77,
        '2026-02-05 07:30:00',
        138,
        92,
        67.6,
        1.67,
        77, 'Kirola egin ondoren.'
    ),
    (
        78,
        '2026-02-05 09:38:00',
        127,
        83,
        62.8,
        1.61,
        66, 'Ondo sentitzen naiz.'
    ),
    (
        79,
        '2026-02-05 09:55:00',
        127,
        78,
        66.4,
        1.67,
        93, 'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2026-02-05 08:52:00',
        132,
        94,
        62.6,
        1.78,
        94, 'Gosariaren ondoren.'
    ),
    (
        81,
        '2026-02-05 10:39:00',
        126,
        90,
        86.3,
        1.58,
        74, 'Kirola egin ondoren.'
    ),
    (
        82,
        '2026-02-05 08:43:00',
        136,
        80,
        88.4,
        1.77,
        92, 'Ondo sentitzen naiz.'
    ),
    (
        83,
        '2026-02-05 10:09:00',
        134,
        83,
        64.0,
        1.80,
        80, 'Gosariaren ondoren.'
    ),
    (
        84,
        '2026-02-05 08:01:00',
        121,
        82,
        78.9,
        1.67,
        69, 'Gosariaren ondoren.'
    ),
    (
        85,
        '2026-02-05 08:28:00',
        131,
        84,
        81.5,
        1.72,
        69, 'Gosariaren ondoren.'
    ),
    (
        86,
        '2026-02-05 09:46:00',
        129,
        79,
        68.9,
        1.57,
        72, 'Ondo sentitzen naiz.'
    ),
    (
        87,
        '2026-02-05 10:35:00',
        137,
        88,
        73.2,
        1.61,
        78, 'Dena ondo.'
    ),
    (
        89,
        '2026-02-05 09:14:00',
        135,
        82,
        90.1,
        1.84,
        79, 'Ondo sentitzen naiz.'
    ),
    (
        90,
        '2026-02-05 08:48:00',
        119,
        87,
        67.0,
        1.60,
        83, 'Apur bat nekatuta.'
    ),
    (
        91,
        '2026-02-05 09:07:00',
        129,
        80,
        89.5,
        1.58,
        83, 'Gosariaren ondoren.'
    ),
    (
        93,
        '2026-02-05 10:33:00',
        138,
        90,
        76.2,
        1.81,
        82, 'Apur bat nekatuta.'
    ),
    (
        94,
        '2026-02-05 09:03:00',
        129,
        84,
        86.1,
        1.83,
        75, 'Ondo sentitzen naiz.'
    ),
    (
        95,
        '2026-02-05 09:46:00',
        133,
        86,
        90.5,
        1.77,
        84, 'Dena ondo.'
    ),
    (
        96,
        '2026-02-05 09:31:00',
        130,
        87,
        76.8,
        1.71,
        87, 'Apur bat nekatuta.'
    ),
    (
        97,
        '2026-02-05 08:06:00',
        121,
        81,
        87.6,
        1.56,
        76, 'Kirola egin ondoren.'
    ),
    (
        98,
        '2026-02-05 09:20:00',
        122,
        81,
        84.8,
        1.60,
        69, 'Dena ondo.'
    ),
    (
        51,
        '2026-02-06 10:06:00',
        120,
        90,
        64.2,
        1.76,
        81, 'Baraualdian.'
    ),
    (
        54,
        '2026-02-06 10:44:00',
        138,
        80,
        87.7,
        1.60,
        72, 'Baraualdian.'
    ),
    (
        56,
        '2026-02-06 09:50:00',
        140,
        84,
        90.2,
        1.61,
        79, 'Kirola egin ondoren.'
    ),
    (
        57,
        '2026-02-06 10:28:00',
        126,
        89,
        83.8,
        1.69,
        82, 'Apur bat nekatuta.'
    ),
    (
        58,
        '2026-02-06 07:03:00',
        141,
        78,
        66.8,
        1.68,
        92, 'Dena ondo.'
    ),
    (
        59,
        '2026-02-06 09:27:00',
        116,
        81,
        63.4,
        1.73,
        76, 'Apur bat nekatuta.'
    ),
    (
        60,
        '2026-02-06 07:56:00',
        130,
        94,
        77.6,
        1.81,
        91, 'Dena ondo.'
    ),
    (
        61,
        '2026-02-06 08:04:00',
        125,
        83,
        72.7,
        1.83,
        70, 'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2026-02-06 07:05:00',
        140,
        74,
        94.3,
        1.56,
        68, 'Gosariaren ondoren.'
    ),
    (
        65,
        '2026-02-06 07:32:00',
        130,
        76,
        91.5,
        1.55,
        76, 'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2026-02-06 08:46:00',
        135,
        83,
        74.4,
        1.59,
        78, 'Baraualdian.'
    ),
    (
        67,
        '2026-02-06 09:27:00',
        135,
        79,
        72.8,
        1.72,
        77, 'Kirola egin ondoren.'
    ),
    (
        68,
        '2026-02-06 08:38:00',
        134,
        84,
        60.7,
        1.85,
        74, 'Baraualdian.'
    ),
    (
        69,
        '2026-02-06 08:55:00',
        125,
        80,
        95.6,
        1.66,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2026-02-06 07:25:00',
        118,
        78,
        74.3,
        1.70,
        87, 'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-02-06 10:38:00',
        131,
        75,
        88.2,
        1.63,
        73, 'Kirola egin ondoren.'
    ),
    (
        72,
        '2026-02-06 07:30:00',
        130,
        77,
        91.2,
        1.69,
        87, 'Baraualdian.'
    ),
    (
        74,
        '2026-02-06 10:02:00',
        128,
        91,
        63.2,
        1.67,
        80, 'Baraualdian.'
    ),
    (
        75,
        '2026-02-06 07:46:00',
        132,
        85,
        59.5,
        1.65,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2026-02-06 07:04:00',
        110,
        87,
        66.9,
        1.69,
        84, 'Dena ondo.'
    ),
    (
        77,
        '2026-02-06 10:20:00',
        136,
        88,
        67.3,
        1.67,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        78,
        '2026-02-06 10:38:00',
        127,
        83,
        63.1,
        1.61,
        68, 'Gosariaren ondoren.'
    ),
    (
        79,
        '2026-02-06 07:50:00',
        124,
        85,
        67.9,
        1.67,
        71, 'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2026-02-06 08:57:00',
        126,
        84,
        62.4,
        1.78,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2026-02-06 08:49:00',
        125,
        85,
        86.1,
        1.58,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-02-06 07:15:00',
        143,
        86,
        88.0,
        1.77,
        72, 'Baraualdian.'
    ),
    (
        83,
        '2026-02-06 09:12:00',
        133,
        90,
        64.1,
        1.80,
        79, 'Kirola egin ondoren.'
    ),
    (
        84,
        '2026-02-06 08:15:00',
        118,
        80,
        78.6,
        1.67,
        70, 'Gosariaren ondoren.'
    ),
    (
        85,
        '2026-02-06 07:56:00',
        120,
        79,
        81.9,
        1.72,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2026-02-06 09:01:00',
        137,
        87,
        67.5,
        1.57,
        70, 'Gaur goizean neurtuta.'
    ),
    (
        87,
        '2026-02-06 10:23:00',
        137,
        88,
        73.4,
        1.61,
        90, 'Kirola egin ondoren.'
    ),
    (
        89,
        '2026-02-06 09:38:00',
        142,
        83,
        91.0,
        1.84,
        70, 'Gosariaren ondoren.'
    ),
    (
        90,
        '2026-02-06 09:55:00',
        120,
        86,
        66.4,
        1.60,
        84, 'Apur bat nekatuta.'
    ),
    (
        91,
        '2026-02-06 08:33:00',
        136,
        80,
        89.4,
        1.58,
        70, 'Apur bat nekatuta.'
    ),
    (
        94,
        '2026-02-06 10:22:00',
        131,
        89,
        86.3,
        1.83,
        81, 'Baraualdian.'
    ),
    (
        95,
        '2026-02-06 09:50:00',
        143,
        84,
        90.5,
        1.77,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2026-02-06 08:51:00',
        135,
        79,
        76.9,
        1.71,
        74, 'Gosariaren ondoren.'
    ),
    (
        97,
        '2026-02-06 10:33:00',
        135,
        81,
        87.5,
        1.56,
        82, 'Dena ondo.'
    ),
    (
        98,
        '2026-02-06 08:33:00',
        127,
        81,
        83.0,
        1.60,
        90, 'Apur bat nekatuta.'
    ),
    (
        99,
        '2026-02-06 08:48:00',
        122,
        77,
        86.0,
        1.71,
        68, 'Baraualdian.'
    ),
    (
        100,
        '2026-02-06 09:28:00',
        125,
        86,
        81.8,
        1.57,
        73, 'Apur bat nekatuta.'
    ),
    (
        51,
        '2026-02-07 09:54:00',
        129,
        82,
        64.9,
        1.76,
        79, 'Apur bat nekatuta.'
    ),
    (
        52,
        '2026-02-07 07:09:00',
        119,
        81,
        93.0,
        1.77,
        73, 'Gosariaren ondoren.'
    ),
    (
        55,
        '2026-02-07 08:56:00',
        136,
        86,
        81.9,
        1.76,
        90, 'Dena ondo.'
    ),
    (
        57,
        '2026-02-07 08:25:00',
        127,
        79,
        83.4,
        1.69,
        69, 'Gosariaren ondoren.'
    ),
    (
        59,
        '2026-02-07 09:02:00',
        120,
        95,
        62.2,
        1.73,
        82, 'Kirola egin ondoren.'
    ),
    (
        60,
        '2026-02-07 08:01:00',
        123,
        89,
        77.1,
        1.81,
        80, 'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2026-02-07 08:08:00',
        125,
        78,
        72.2,
        1.83,
        81, 'Apur bat nekatuta.'
    ),
    (
        62,
        '2026-02-07 10:25:00',
        121,
        78,
        65.1,
        1.56,
        82, 'Kirola egin ondoren.'
    ),
    (
        63,
        '2026-02-07 10:13:00',
        137,
        83,
        81.3,
        1.80,
        77, 'Kirola egin ondoren.'
    ),
    (
        64,
        '2026-02-07 07:58:00',
        141,
        75,
        94.5,
        1.56,
        66, 'Dena ondo.'
    ),
    (
        66,
        '2026-02-07 08:07:00',
        127,
        89,
        74.3,
        1.59,
        81, 'Gosariaren ondoren.'
    ),
    (
        67,
        '2026-02-07 08:13:00',
        135,
        81,
        72.9,
        1.72,
        70, 'Gaur goizean neurtuta.'
    ),
    (
        68,
        '2026-02-07 08:40:00',
        136,
        78,
        60.5,
        1.85,
        82, 'Kirola egin ondoren.'
    ),
    (
        69,
        '2026-02-07 07:13:00',
        137,
        80,
        95.3,
        1.66,
        87, 'Kirola egin ondoren.'
    ),
    (
        71,
        '2026-02-07 07:35:00',
        123,
        85,
        90.0,
        1.63,
        77, 'Dena ondo.'
    ),
    (
        72,
        '2026-02-07 09:23:00',
        131,
        78,
        92.2,
        1.69,
        65, 'Kirola egin ondoren.'
    ),
    (
        74,
        '2026-02-07 09:24:00',
        112,
        83,
        63.4,
        1.67,
        75, 'Apur bat nekatuta.'
    ),
    (
        75,
        '2026-02-07 09:05:00',
        130,
        75,
        60.4,
        1.65,
        78, 'Apur bat nekatuta.'
    ),
    (
        76,
        '2026-02-07 10:48:00',
        114,
        84,
        65.1,
        1.69,
        81, 'Gosariaren ondoren.'
    ),
    (
        77,
        '2026-02-07 08:45:00',
        138,
        78,
        66.1,
        1.67,
        75, 'Gosariaren ondoren.'
    ),
    (
        78,
        '2026-02-07 07:07:00',
        125,
        79,
        62.5,
        1.61,
        67, 'Baraualdian.'
    ),
    (
        79,
        '2026-02-07 10:04:00',
        128,
        87,
        66.3,
        1.67,
        90, 'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-02-07 10:34:00',
        129,
        91,
        62.3,
        1.78,
        74, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-02-07 07:16:00',
        128,
        84,
        86.2,
        1.58,
        74, 'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-02-07 09:50:00',
        133,
        88,
        88.3,
        1.77,
        65, 'Dena ondo.'
    ),
    (
        83,
        '2026-02-07 09:10:00',
        122,
        87,
        64.5,
        1.80,
        68, 'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2026-02-07 08:06:00',
        129,
        89,
        79.9,
        1.67,
        93, 'Dena ondo.'
    ),
    (
        85,
        '2026-02-07 09:45:00',
        132,
        90,
        80.9,
        1.72,
        85, 'Dena ondo.'
    ),
    (
        86,
        '2026-02-07 07:44:00',
        134,
        73,
        67.9,
        1.57,
        73, 'Dena ondo.'
    ),
    (
        87,
        '2026-02-07 08:17:00',
        140,
        82,
        74.0,
        1.61,
        82, 'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2026-02-07 07:29:00',
        121,
        75,
        90.9,
        1.81,
        87, 'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2026-02-07 09:15:00',
        126,
        88,
        92.0,
        1.84,
        73, 'Dena ondo.'
    ),
    (
        91,
        '2026-02-07 09:12:00',
        135,
        76,
        89.1,
        1.58,
        74, 'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2026-02-07 08:45:00',
        124,
        93,
        76.4,
        1.81,
        83, 'Gosariaren ondoren.'
    ),
    (
        96,
        '2026-02-07 08:33:00',
        133,
        76,
        78.0,
        1.71,
        92, 'Apur bat nekatuta.'
    ),
    (
        97,
        '2026-02-07 07:54:00',
        131,
        75,
        88.0,
        1.56,
        88, 'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-02-07 08:13:00',
        138,
        89,
        83.3,
        1.60,
        82, 'Gosariaren ondoren.'
    ),
    (
        100,
        '2026-02-07 09:01:00',
        140,
        82,
        81.8,
        1.57,
        85, 'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2026-02-08 08:12:00',
        120,
        90,
        63.1,
        1.76,
        66, 'Apur bat nekatuta.'
    ),
    (
        52,
        '2026-02-08 08:13:00',
        132,
        91,
        94.8,
        1.77,
        85, 'Dena ondo.'
    ),
    (
        53,
        '2026-02-08 10:32:00',
        118,
        89,
        75.4,
        1.75,
        65, 'Ondo sentitzen naiz.'
    ),
    (
        54,
        '2026-02-08 07:07:00',
        137,
        86,
        87.6,
        1.60,
        78, 'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2026-02-08 08:05:00',
        130,
        77,
        81.1,
        1.76,
        73, 'Gosariaren ondoren.'
    ),
    (
        59,
        '2026-02-08 08:05:00',
        120,
        81,
        63.6,
        1.73,
        90, 'Gosariaren ondoren.'
    ),
    (
        60,
        '2026-02-08 08:44:00',
        133,
        95,
        78.0,
        1.81,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2026-02-08 07:22:00',
        130,
        82,
        73.5,
        1.83,
        92, 'Gosariaren ondoren.'
    ),
    (
        62,
        '2026-02-08 07:11:00',
        128,
        76,
        65.1,
        1.56,
        67, 'Kirola egin ondoren.'
    ),
    (
        64,
        '2026-02-08 09:27:00',
        127,
        84,
        94.3,
        1.56,
        90, 'Gosariaren ondoren.'
    ),
    (
        65,
        '2026-02-08 09:23:00',
        131,
        78,
        91.5,
        1.55,
        74, 'Dena ondo.'
    ),
    (
        66,
        '2026-02-08 08:25:00',
        133,
        89,
        74.6,
        1.59,
        79, 'Dena ondo.'
    ),
    (
        67,
        '2026-02-08 08:00:00',
        125,
        80,
        71.8,
        1.72,
        83, 'Baraualdian.'
    ),
    (
        68,
        '2026-02-08 07:16:00',
        125,
        84,
        61.4,
        1.85,
        76, 'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-02-08 10:11:00',
        125,
        90,
        94.0,
        1.66,
        66, 'Apur bat nekatuta.'
    ),
    (
        70,
        '2026-02-08 09:37:00',
        123,
        83,
        75.8,
        1.70,
        87, 'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-02-08 07:53:00',
        124,
        77,
        88.9,
        1.63,
        94, 'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2026-02-08 07:58:00',
        139,
        85,
        92.5,
        1.69,
        71, 'Dena ondo.'
    ),
    (
        73,
        '2026-02-08 07:48:00',
        123,
        79,
        94.4,
        1.55,
        86, 'Gaur goizean neurtuta.'
    ),
    (
        74,
        '2026-02-08 07:04:00',
        122,
        83,
        63.6,
        1.67,
        79, 'Kirola egin ondoren.'
    ),
    (
        76,
        '2026-02-08 08:49:00',
        117,
        93,
        65.1,
        1.69,
        82, 'Kirola egin ondoren.'
    ),
    (
        77,
        '2026-02-08 09:56:00',
        129,
        79,
        66.6,
        1.67,
        77, 'Gosariaren ondoren.'
    ),
    (
        78,
        '2026-02-08 10:20:00',
        127,
        80,
        63.9,
        1.61,
        79, 'Kirola egin ondoren.'
    ),
    (
        79,
        '2026-02-08 09:16:00',
        126,
        75,
        66.6,
        1.67,
        65, 'Baraualdian.'
    ),
    (
        80,
        '2026-02-08 08:06:00',
        131,
        90,
        63.0,
        1.78,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2026-02-08 10:45:00',
        137,
        84,
        86.6,
        1.58,
        70, 'Kirola egin ondoren.'
    ),
    (
        82,
        '2026-02-08 08:06:00',
        125,
        91,
        88.9,
        1.77,
        72, 'Baraualdian.'
    ),
    (
        83,
        '2026-02-08 10:05:00',
        118,
        85,
        65.0,
        1.80,
        66, 'Baraualdian.'
    ),
    (
        84,
        '2026-02-08 07:15:00',
        121,
        82,
        78.2,
        1.67,
        83, 'Kirola egin ondoren.'
    ),
    (
        86,
        '2026-02-08 10:17:00',
        130,
        79,
        68.8,
        1.57,
        83, 'Baraualdian.'
    ),
    (
        87,
        '2026-02-08 10:35:00',
        141,
        87,
        73.1,
        1.61,
        88, 'Baraualdian.'
    ),
    (
        88,
        '2026-02-08 09:06:00',
        124,
        72,
        89.3,
        1.81,
        74, 'Gosariaren ondoren.'
    ),
    (
        89,
        '2026-02-08 07:58:00',
        125,
        78,
        90.8,
        1.84,
        73, 'Apur bat nekatuta.'
    ),
    (
        90,
        '2026-02-08 08:41:00',
        137,
        79,
        66.3,
        1.60,
        89, 'Apur bat nekatuta.'
    ),
    (
        91,
        '2026-02-08 08:07:00',
        130,
        91,
        90.7,
        1.58,
        73, 'Gosariaren ondoren.'
    ),
    (
        92,
        '2026-02-08 09:43:00',
        127,
        90,
        59.9,
        1.79,
        87, 'Kirola egin ondoren.'
    ),
    (
        93,
        '2026-02-08 10:45:00',
        131,
        90,
        76.3,
        1.81,
        84, 'Dena ondo.'
    ),
    (
        95,
        '2026-02-08 08:19:00',
        133,
        84,
        89.6,
        1.77,
        68, 'Apur bat nekatuta.'
    ),
    (
        96,
        '2026-02-08 07:31:00',
        135,
        81,
        76.0,
        1.71,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-02-08 08:09:00',
        123,
        77,
        84.4,
        1.60,
        85, 'Dena ondo.'
    ),
    (
        100,
        '2026-02-08 07:10:00',
        130,
        83,
        82.8,
        1.57,
        83, 'Gosariaren ondoren.'
    ),
    (
        51,
        '2026-02-09 10:58:00',
        120,
        80,
        64.0,
        1.76,
        78, 'Dena ondo.'
    ),
    (
        52,
        '2026-02-09 09:19:00',
        118,
        81,
        93.0,
        1.77,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2026-02-09 08:57:00',
        130,
        88,
        75.1,
        1.75,
        90, 'Kirola egin ondoren.'
    ),
    (
        54,
        '2026-02-09 09:00:00',
        145,
        89,
        86.2,
        1.60,
        70, 'Baraualdian.'
    ),
    (
        55,
        '2026-02-09 07:49:00',
        134,
        74,
        80.0,
        1.76,
        89, 'Apur bat nekatuta.'
    ),
    (
        56,
        '2026-02-09 08:31:00',
        137,
        79,
        89.5,
        1.61,
        93, 'Gosariaren ondoren.'
    ),
    (
        57,
        '2026-02-09 09:13:00',
        135,
        90,
        82.3,
        1.69,
        69, 'Dena ondo.'
    ),
    (
        58,
        '2026-02-09 09:38:00',
        140,
        79,
        67.0,
        1.68,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2026-02-09 10:04:00',
        126,
        88,
        62.8,
        1.73,
        76, 'Dena ondo.'
    ),
    (
        62,
        '2026-02-09 09:28:00',
        126,
        76,
        66.2,
        1.56,
        90, 'Baraualdian.'
    ),
    (
        63,
        '2026-02-09 10:23:00',
        130,
        81,
        81.3,
        1.80,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        64,
        '2026-02-09 07:19:00',
        136,
        82,
        95.1,
        1.56,
        84, 'Kirola egin ondoren.'
    ),
    (
        65,
        '2026-02-09 07:23:00',
        135,
        85,
        91.5,
        1.55,
        87, 'Kirola egin ondoren.'
    ),
    (
        66,
        '2026-02-09 10:20:00',
        131,
        84,
        75.3,
        1.59,
        93, 'Gosariaren ondoren.'
    ),
    (
        68,
        '2026-02-09 09:08:00',
        126,
        77,
        60.9,
        1.85,
        65, 'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-02-09 08:36:00',
        124,
        87,
        94.0,
        1.66,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2026-02-09 09:49:00',
        129,
        81,
        92.9,
        1.69,
        71, 'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-02-09 07:04:00',
        116,
        84,
        95.8,
        1.55,
        92, 'Dena ondo.'
    ),
    (
        74,
        '2026-02-09 08:17:00',
        127,
        78,
        63.4,
        1.67,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        75,
        '2026-02-09 10:13:00',
        136,
        82,
        61.0,
        1.65,
        83, 'Apur bat nekatuta.'
    ),
    (
        76,
        '2026-02-09 07:51:00',
        112,
        92,
        67.0,
        1.69,
        85, 'Baraualdian.'
    ),
    (
        77,
        '2026-02-09 10:30:00',
        121,
        85,
        67.1,
        1.67,
        92, 'Kirola egin ondoren.'
    ),
    (
        78,
        '2026-02-09 07:36:00',
        126,
        73,
        63.0,
        1.61,
        92, 'Ondo sentitzen naiz.'
    ),
    (
        79,
        '2026-02-09 08:33:00',
        138,
        77,
        67.5,
        1.67,
        88, 'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-02-09 09:23:00',
        125,
        87,
        62.1,
        1.78,
        74, 'Baraualdian.'
    ),
    (
        81,
        '2026-02-09 08:32:00',
        138,
        93,
        85.5,
        1.58,
        74, 'Gosariaren ondoren.'
    ),
    (
        82,
        '2026-02-09 08:25:00',
        132,
        90,
        89.4,
        1.77,
        88, 'Gaur goizean neurtuta.'
    ),
    (
        83,
        '2026-02-09 09:14:00',
        131,
        87,
        64.3,
        1.80,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2026-02-09 09:41:00',
        121,
        89,
        79.3,
        1.67,
        71, 'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2026-02-09 10:40:00',
        125,
        93,
        81.3,
        1.72,
        75, 'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2026-02-09 07:01:00',
        127,
        73,
        67.5,
        1.57,
        85, 'Baraualdian.'
    ),
    (
        87,
        '2026-02-09 07:14:00',
        123,
        74,
        72.1,
        1.61,
        77, 'Dena ondo.'
    ),
    (
        88,
        '2026-02-09 08:22:00',
        123,
        77,
        91.0,
        1.81,
        69, 'Ondo sentitzen naiz.'
    ),
    (
        89,
        '2026-02-09 09:13:00',
        124,
        90,
        90.9,
        1.84,
        80, 'Dena ondo.'
    ),
    (
        90,
        '2026-02-09 07:11:00',
        133,
        89,
        66.1,
        1.60,
        76, 'Dena ondo.'
    ),
    (
        91,
        '2026-02-09 07:31:00',
        130,
        91,
        89.1,
        1.58,
        66, 'Dena ondo.'
    ),
    (
        93,
        '2026-02-09 10:04:00',
        139,
        83,
        75.5,
        1.81,
        68, 'Ondo sentitzen naiz.'
    ),
    (
        94,
        '2026-02-09 10:49:00',
        131,
        88,
        86.1,
        1.83,
        94, 'Kirola egin ondoren.'
    ),
    (
        95,
        '2026-02-09 07:24:00',
        132,
        85,
        90.6,
        1.77,
        72, 'Dena ondo.'
    ),
    (
        96,
        '2026-02-09 08:48:00',
        132,
        76,
        76.2,
        1.71,
        91, 'Kirola egin ondoren.'
    ),
    (
        97,
        '2026-02-09 10:02:00',
        126,
        73,
        86.2,
        1.56,
        91, 'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-02-09 10:03:00',
        135,
        84,
        83.1,
        1.60,
        69, 'Ondo sentitzen naiz.'
    ),
    (
        99,
        '2026-02-09 10:08:00',
        121,
        78,
        85.0,
        1.71,
        88, 'Baraualdian.'
    ),
    (
        51,
        '2026-02-10 08:52:00',
        121,
        92,
        64.8,
        1.76,
        72, 'Gosariaren ondoren.'
    ),
    (
        52,
        '2026-02-10 09:21:00',
        133,
        85,
        94.9,
        1.77,
        72, 'Dena ondo.'
    ),
    (
        53,
        '2026-02-10 08:56:00',
        117,
        93,
        75.3,
        1.75,
        71, 'Baraualdian.'
    ),
    (
        54,
        '2026-02-10 10:03:00',
        136,
        85,
        87.1,
        1.60,
        70, 'Ondo sentitzen naiz.'
    ),
    (
        55,
        '2026-02-10 09:46:00',
        134,
        71,
        80.5,
        1.76,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2026-02-10 10:14:00',
        139,
        84,
        89.1,
        1.61,
        86, 'Baraualdian.'
    ),
    (
        57,
        '2026-02-10 08:58:00',
        121,
        94,
        82.0,
        1.69,
        94, 'Apur bat nekatuta.'
    ),
    (
        58,
        '2026-02-10 09:32:00',
        134,
        77,
        67.0,
        1.68,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2026-02-10 09:44:00',
        123,
        93,
        62.7,
        1.73,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        60,
        '2026-02-10 08:36:00',
        127,
        81,
        78.5,
        1.81,
        88, 'Gaur goizean neurtuta.'
    ),
    (
        61,
        '2026-02-10 10:07:00',
        121,
        88,
        72.6,
        1.83,
        86, 'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2026-02-10 10:37:00',
        125,
        84,
        94.6,
        1.56,
        74, 'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2026-02-10 10:12:00',
        128,
        78,
        90.3,
        1.55,
        69, 'Ondo sentitzen naiz.'
    ),
    (
        66,
        '2026-02-10 10:15:00',
        120,
        84,
        74.8,
        1.59,
        68, 'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2026-02-10 10:01:00',
        129,
        88,
        71.4,
        1.72,
        74, 'Dena ondo.'
    ),
    (
        68,
        '2026-02-10 08:28:00',
        128,
        82,
        60.1,
        1.85,
        82, 'Kirola egin ondoren.'
    ),
    (
        69,
        '2026-02-10 07:53:00',
        138,
        85,
        95.0,
        1.66,
        94, 'Gosariaren ondoren.'
    ),
    (
        70,
        '2026-02-10 07:59:00',
        127,
        75,
        75.2,
        1.70,
        82, 'Gosariaren ondoren.'
    ),
    (
        71,
        '2026-02-10 10:32:00',
        129,
        83,
        88.0,
        1.63,
        68, 'Apur bat nekatuta.'
    ),
    (
        72,
        '2026-02-10 10:28:00',
        143,
        84,
        91.9,
        1.69,
        88, 'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-02-10 10:23:00',
        113,
        75,
        94.4,
        1.55,
        76, 'Apur bat nekatuta.'
    ),
    (
        74,
        '2026-02-10 07:10:00',
        123,
        79,
        63.8,
        1.67,
        81, 'Baraualdian.'
    ),
    (
        75,
        '2026-02-10 10:27:00',
        130,
        74,
        61.0,
        1.65,
        65, 'Gosariaren ondoren.'
    ),
    (
        76,
        '2026-02-10 10:44:00',
        120,
        86,
        66.0,
        1.69,
        84, 'Kirola egin ondoren.'
    ),
    (
        77,
        '2026-02-10 07:51:00',
        125,
        89,
        66.3,
        1.67,
        82, 'Apur bat nekatuta.'
    ),
    (
        78,
        '2026-02-10 10:31:00',
        123,
        85,
        62.7,
        1.61,
        68, 'Gaur goizean neurtuta.'
    ),
    (
        79,
        '2026-02-10 09:58:00',
        134,
        83,
        66.5,
        1.67,
        78, 'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-02-10 07:23:00',
        132,
        85,
        63.6,
        1.78,
        77, 'Apur bat nekatuta.'
    ),
    (
        81,
        '2026-02-10 07:53:00',
        130,
        84,
        86.3,
        1.58,
        77, 'Apur bat nekatuta.'
    ),
    (
        82,
        '2026-02-10 08:40:00',
        129,
        87,
        90.0,
        1.77,
        73, 'Gosariaren ondoren.'
    ),
    (
        83,
        '2026-02-10 08:04:00',
        123,
        93,
        66.0,
        1.80,
        86, 'Gosariaren ondoren.'
    ),
    (
        85,
        '2026-02-10 10:02:00',
        126,
        79,
        82.0,
        1.72,
        72, 'Gosariaren ondoren.'
    ),
    (
        87,
        '2026-02-10 09:25:00',
        139,
        86,
        73.7,
        1.61,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2026-02-10 07:54:00',
        134,
        81,
        90.4,
        1.84,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        91,
        '2026-02-10 10:23:00',
        135,
        79,
        90.2,
        1.58,
        86, 'Dena ondo.'
    ),
    (
        94,
        '2026-02-10 07:50:00',
        124,
        87,
        87.8,
        1.83,
        77, 'Baraualdian.'
    ),
    (
        95,
        '2026-02-10 08:58:00',
        126,
        83,
        89.9,
        1.77,
        85, 'Dena ondo.'
    ),
    (
        96,
        '2026-02-10 09:58:00',
        123,
        76,
        76.8,
        1.71,
        83, 'Kirola egin ondoren.'
    ),
    (
        97,
        '2026-02-10 07:26:00',
        120,
        81,
        87.1,
        1.56,
        76, 'Baraualdian.'
    ),
    (
        98,
        '2026-02-10 08:55:00',
        126,
        76,
        84.5,
        1.60,
        86, 'Dena ondo.'
    ),
    (
        51,
        '2026-02-11 08:01:00',
        120,
        86,
        63.5,
        1.76,
        72, 'Baraualdian.'
    ),
    (
        52,
        '2026-02-11 08:13:00',
        120,
        83,
        94.0,
        1.77,
        65, 'Apur bat nekatuta.'
    ),
    (
        53,
        '2026-02-11 09:39:00',
        130,
        78,
        75.8,
        1.75,
        79, 'Kirola egin ondoren.'
    ),
    (
        54,
        '2026-02-11 09:39:00',
        130,
        74,
        87.5,
        1.60,
        78, 'Kirola egin ondoren.'
    ),
    (
        56,
        '2026-02-11 10:10:00',
        134,
        82,
        90.9,
        1.61,
        82, 'Ondo sentitzen naiz.'
    ),
    (
        57,
        '2026-02-11 07:14:00',
        119,
        93,
        83.1,
        1.69,
        72, 'Ondo sentitzen naiz.'
    ),
    (
        58,
        '2026-02-11 09:58:00',
        133,
        76,
        66.1,
        1.68,
        82, 'Apur bat nekatuta.'
    ),
    (
        60,
        '2026-02-11 08:58:00',
        121,
        91,
        78.1,
        1.81,
        75, 'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2026-02-11 09:42:00',
        123,
        79,
        94.2,
        1.56,
        94, 'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2026-02-11 10:15:00',
        140,
        88,
        91.6,
        1.55,
        89, 'Baraualdian.'
    ),
    (
        67,
        '2026-02-11 09:11:00',
        143,
        87,
        71.6,
        1.72,
        84, 'Kirola egin ondoren.'
    ),
    (
        68,
        '2026-02-11 07:45:00',
        126,
        83,
        61.1,
        1.85,
        71, 'Baraualdian.'
    ),
    (
        69,
        '2026-02-11 09:39:00',
        127,
        83,
        95.1,
        1.66,
        93, 'Dena ondo.'
    ),
    (
        71,
        '2026-02-11 10:48:00',
        139,
        78,
        88.3,
        1.63,
        69, 'Gosariaren ondoren.'
    ),
    (
        72,
        '2026-02-11 08:04:00',
        131,
        75,
        91.8,
        1.69,
        91, 'Dena ondo.'
    ),
    (
        73,
        '2026-02-11 07:47:00',
        129,
        85,
        95.1,
        1.55,
        94, 'Kirola egin ondoren.'
    ),
    (
        74,
        '2026-02-11 08:09:00',
        118,
        79,
        64.8,
        1.67,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        75,
        '2026-02-11 07:57:00',
        139,
        83,
        59.0,
        1.65,
        88, 'Kirola egin ondoren.'
    ),
    (
        76,
        '2026-02-11 09:29:00',
        129,
        81,
        65.2,
        1.69,
        72, 'Gosariaren ondoren.'
    ),
    (
        77,
        '2026-02-11 10:49:00',
        124,
        79,
        67.3,
        1.67,
        93, 'Apur bat nekatuta.'
    ),
    (
        78,
        '2026-02-11 09:04:00',
        124,
        82,
        62.5,
        1.61,
        79, 'Kirola egin ondoren.'
    ),
    (
        79,
        '2026-02-11 09:26:00',
        131,
        84,
        67.1,
        1.67,
        75, 'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-02-11 07:36:00',
        128,
        94,
        62.7,
        1.78,
        81, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-02-11 09:48:00',
        136,
        89,
        85.7,
        1.58,
        65, 'Baraualdian.'
    ),
    (
        83,
        '2026-02-11 09:23:00',
        136,
        90,
        64.5,
        1.80,
        87, 'Gosariaren ondoren.'
    ),
    (
        84,
        '2026-02-11 10:26:00',
        134,
        84,
        78.6,
        1.67,
        65, 'Gosariaren ondoren.'
    ),
    (
        85,
        '2026-02-11 10:31:00',
        127,
        80,
        80.0,
        1.72,
        68, 'Gaur goizean neurtuta.'
    ),
    (
        87,
        '2026-02-11 08:15:00',
        123,
        80,
        73.0,
        1.61,
        68, 'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2026-02-11 07:07:00',
        137,
        87,
        90.4,
        1.84,
        88, 'Gaur goizean neurtuta.'
    ),
    (
        90,
        '2026-02-11 07:31:00',
        132,
        92,
        67.0,
        1.60,
        91, 'Baraualdian.'
    ),
    (
        91,
        '2026-02-11 10:28:00',
        136,
        76,
        89.1,
        1.58,
        73, 'Kirola egin ondoren.'
    ),
    (
        92,
        '2026-02-11 10:48:00',
        144,
        79,
        59.9,
        1.79,
        81, 'Apur bat nekatuta.'
    ),
    (
        93,
        '2026-02-11 08:02:00',
        131,
        84,
        76.9,
        1.81,
        91, 'Apur bat nekatuta.'
    ),
    (
        94,
        '2026-02-11 09:14:00',
        124,
        81,
        86.1,
        1.83,
        81, 'Baraualdian.'
    ),
    (
        95,
        '2026-02-11 09:58:00',
        141,
        72,
        89.7,
        1.77,
        70, 'Gaur goizean neurtuta.'
    ),
    (
        96,
        '2026-02-11 08:57:00',
        137,
        88,
        77.6,
        1.71,
        82, 'Ondo sentitzen naiz.'
    ),
    (
        97,
        '2026-02-11 09:19:00',
        138,
        79,
        87.8,
        1.56,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-02-11 08:24:00',
        129,
        78,
        83.2,
        1.60,
        81, 'Baraualdian.'
    ),
    (
        99,
        '2026-02-11 09:39:00',
        137,
        79,
        85.7,
        1.71,
        86, 'Gosariaren ondoren.'
    ),
    (
        100,
        '2026-02-11 08:24:00',
        136,
        74,
        81.4,
        1.57,
        72, 'Baraualdian.'
    ),
    (
        51,
        '2026-02-12 09:04:00',
        140,
        84,
        63.0,
        1.76,
        80, 'Gaur goizean neurtuta.'
    ),
    (
        52,
        '2026-02-12 08:43:00',
        130,
        79,
        93.8,
        1.77,
        73, 'Gosariaren ondoren.'
    ),
    (
        54,
        '2026-02-12 07:15:00',
        144,
        88,
        87.0,
        1.60,
        84, 'Baraualdian.'
    ),
    (
        55,
        '2026-02-12 07:19:00',
        142,
        71,
        80.6,
        1.76,
        68, 'Baraualdian.'
    ),
    (
        56,
        '2026-02-12 10:23:00',
        125,
        90,
        90.0,
        1.61,
        90, 'Gosariaren ondoren.'
    ),
    (
        57,
        '2026-02-12 10:27:00',
        126,
        85,
        83.4,
        1.69,
        68, 'Kirola egin ondoren.'
    ),
    (
        58,
        '2026-02-12 08:33:00',
        134,
        82,
        67.9,
        1.68,
        82, 'Baraualdian.'
    ),
    (
        60,
        '2026-02-12 10:00:00',
        115,
        89,
        78.3,
        1.81,
        93, 'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-02-12 09:20:00',
        126,
        90,
        72.3,
        1.83,
        94, 'Apur bat nekatuta.'
    ),
    (
        62,
        '2026-02-12 09:12:00',
        121,
        83,
        65.5,
        1.56,
        87, 'Baraualdian.'
    ),
    (
        63,
        '2026-02-12 07:34:00',
        140,
        81,
        81.5,
        1.80,
        81, 'Baraualdian.'
    ),
    (
        65,
        '2026-02-12 08:57:00',
        131,
        82,
        90.1,
        1.55,
        72, 'Apur bat nekatuta.'
    ),
    (
        66,
        '2026-02-12 10:43:00',
        124,
        83,
        74.9,
        1.59,
        78, 'Baraualdian.'
    ),
    (
        67,
        '2026-02-12 07:33:00',
        127,
        78,
        72.5,
        1.72,
        85, 'Kirola egin ondoren.'
    ),
    (
        68,
        '2026-02-12 09:10:00',
        120,
        86,
        60.3,
        1.85,
        67, 'Baraualdian.'
    ),
    (
        69,
        '2026-02-12 10:55:00',
        138,
        85,
        94.2,
        1.66,
        67, 'Kirola egin ondoren.'
    ),
    (
        70,
        '2026-02-12 10:29:00',
        134,
        81,
        75.8,
        1.70,
        88, 'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-02-12 10:15:00',
        135,
        79,
        88.6,
        1.63,
        82, 'Kirola egin ondoren.'
    ),
    (
        72,
        '2026-02-12 10:39:00',
        139,
        85,
        92.1,
        1.69,
        68, 'Baraualdian.'
    ),
    (
        73,
        '2026-02-12 10:41:00',
        124,
        80,
        94.2,
        1.55,
        76, 'Gosariaren ondoren.'
    ),
    (
        74,
        '2026-02-12 10:30:00',
        130,
        79,
        63.2,
        1.67,
        83, 'Apur bat nekatuta.'
    ),
    (
        75,
        '2026-02-12 08:28:00',
        125,
        82,
        59.1,
        1.65,
        71, 'Kirola egin ondoren.'
    ),
    (
        76,
        '2026-02-12 08:31:00',
        119,
        81,
        65.6,
        1.69,
        94, 'Ondo sentitzen naiz.'
    ),
    (
        77,
        '2026-02-12 09:12:00',
        132,
        92,
        67.7,
        1.67,
        79, 'Dena ondo.'
    ),
    (
        78,
        '2026-02-12 09:36:00',
        124,
        77,
        63.9,
        1.61,
        89, 'Kirola egin ondoren.'
    ),
    (
        79,
        '2026-02-12 10:30:00',
        133,
        86,
        67.3,
        1.67,
        85, 'Ondo sentitzen naiz.'
    ),
    (
        80,
        '2026-02-12 09:27:00',
        133,
        83,
        62.9,
        1.78,
        76, 'Gosariaren ondoren.'
    ),
    (
        81,
        '2026-02-12 10:18:00',
        125,
        86,
        85.7,
        1.58,
        92, 'Baraualdian.'
    ),
    (
        83,
        '2026-02-12 08:29:00',
        116,
        91,
        64.4,
        1.80,
        71, 'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2026-02-12 10:21:00',
        127,
        81,
        79.5,
        1.67,
        76, 'Baraualdian.'
    ),
    (
        85,
        '2026-02-12 08:40:00',
        134,
        79,
        81.0,
        1.72,
        79, 'Kirola egin ondoren.'
    ),
    (
        86,
        '2026-02-12 09:17:00',
        136,
        72,
        68.4,
        1.57,
        70, 'Gaur goizean neurtuta.'
    ),
    (
        88,
        '2026-02-12 07:16:00',
        114,
        81,
        90.3,
        1.81,
        92, 'Ondo sentitzen naiz.'
    ),
    (
        89,
        '2026-02-12 09:30:00',
        129,
        79,
        91.1,
        1.84,
        73, 'Ondo sentitzen naiz.'
    ),
    (
        90,
        '2026-02-12 09:09:00',
        120,
        92,
        65.9,
        1.60,
        93, 'Baraualdian.'
    ),
    (
        92,
        '2026-02-12 07:44:00',
        142,
        89,
        59.1,
        1.79,
        75, 'Gosariaren ondoren.'
    ),
    (
        94,
        '2026-02-12 10:17:00',
        130,
        80,
        87.3,
        1.83,
        88, 'Gosariaren ondoren.'
    ),
    (
        95,
        '2026-02-12 10:49:00',
        136,
        83,
        89.6,
        1.77,
        93, 'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-02-12 09:49:00',
        119,
        77,
        77.8,
        1.71,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2026-02-12 07:25:00',
        129,
        76,
        86.8,
        1.56,
        66, 'Gosariaren ondoren.'
    ),
    (
        98,
        '2026-02-12 10:45:00',
        138,
        88,
        84.6,
        1.60,
        68, 'Apur bat nekatuta.'
    ),
    (
        99,
        '2026-02-12 07:14:00',
        121,
        75,
        85.9,
        1.71,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2026-02-12 09:31:00',
        124,
        73,
        82.0,
        1.57,
        68, 'Apur bat nekatuta.'
    ),
    (
        52,
        '2026-02-13 07:03:00',
        131,
        81,
        93.4,
        1.77,
        85, 'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2026-02-13 10:54:00',
        125,
        74,
        87.5,
        1.60,
        92, 'Baraualdian.'
    ),
    (
        55,
        '2026-02-13 07:36:00',
        125,
        73,
        80.9,
        1.76,
        82, 'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2026-02-13 09:36:00',
        134,
        80,
        90.0,
        1.61,
        68, 'Apur bat nekatuta.'
    ),
    (
        57,
        '2026-02-13 09:00:00',
        124,
        90,
        82.8,
        1.69,
        67, 'Baraualdian.'
    ),
    (
        58,
        '2026-02-13 09:19:00',
        128,
        76,
        67.6,
        1.68,
        94, 'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2026-02-13 10:04:00',
        119,
        82,
        62.2,
        1.73,
        69, 'Dena ondo.'
    ),
    (
        60,
        '2026-02-13 10:53:00',
        128,
        93,
        78.3,
        1.81,
        85, 'Gosariaren ondoren.'
    ),
    (
        62,
        '2026-02-13 09:27:00',
        122,
        83,
        66.0,
        1.56,
        93, 'Kirola egin ondoren.'
    ),
    (
        63,
        '2026-02-13 07:38:00',
        125,
        83,
        81.3,
        1.80,
        71, 'Baraualdian.'
    ),
    (
        64,
        '2026-02-13 10:56:00',
        130,
        76,
        95.7,
        1.56,
        87, 'Dena ondo.'
    ),
    (
        65,
        '2026-02-13 08:15:00',
        125,
        86,
        90.2,
        1.55,
        77, 'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2026-02-13 07:06:00',
        142,
        81,
        72.5,
        1.72,
        89, 'Dena ondo.'
    ),
    (
        68,
        '2026-02-13 08:04:00',
        135,
        76,
        61.3,
        1.85,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2026-02-13 07:32:00',
        131,
        86,
        95.3,
        1.66,
        76, 'Apur bat nekatuta.'
    ),
    (
        70,
        '2026-02-13 07:25:00',
        117,
        83,
        74.2,
        1.70,
        67, 'Kirola egin ondoren.'
    ),
    (
        71,
        '2026-02-13 10:55:00',
        125,
        73,
        88.8,
        1.63,
        68, 'Gosariaren ondoren.'
    ),
    (
        72,
        '2026-02-13 10:14:00',
        140,
        76,
        92.7,
        1.69,
        67, 'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-02-13 07:19:00',
        120,
        83,
        94.8,
        1.55,
        85, 'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2026-02-13 10:03:00',
        120,
        94,
        65.1,
        1.69,
        69, 'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2026-02-13 07:05:00',
        122,
        79,
        63.4,
        1.61,
        76, 'Apur bat nekatuta.'
    ),
    (
        80,
        '2026-02-13 09:58:00',
        125,
        86,
        63.9,
        1.78,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-02-13 09:33:00',
        136,
        90,
        89.1,
        1.77,
        67, 'Gosariaren ondoren.'
    ),
    (
        83,
        '2026-02-13 07:10:00',
        123,
        79,
        65.2,
        1.80,
        78, 'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2026-02-13 07:32:00',
        132,
        85,
        79.9,
        1.67,
        82, 'Kirola egin ondoren.'
    ),
    (
        85,
        '2026-02-13 09:40:00',
        125,
        84,
        81.9,
        1.72,
        69, 'Baraualdian.'
    ),
    (
        86,
        '2026-02-13 10:00:00',
        124,
        81,
        67.4,
        1.57,
        94, 'Baraualdian.'
    ),
    (
        87,
        '2026-02-13 07:17:00',
        126,
        75,
        73.8,
        1.61,
        77, 'Baraualdian.'
    ),
    (
        90,
        '2026-02-13 08:25:00',
        122,
        93,
        66.0,
        1.60,
        65, 'Baraualdian.'
    ),
    (
        91,
        '2026-02-13 09:43:00',
        143,
        89,
        90.2,
        1.58,
        66, 'Gosariaren ondoren.'
    ),
    (
        92,
        '2026-02-13 07:53:00',
        130,
        89,
        60.2,
        1.79,
        85, 'Apur bat nekatuta.'
    ),
    (
        93,
        '2026-02-13 10:35:00',
        139,
        82,
        76.2,
        1.81,
        75, 'Baraualdian.'
    ),
    (
        96,
        '2026-02-13 08:20:00',
        123,
        79,
        76.0,
        1.71,
        79, 'Baraualdian.'
    ),
    (
        97,
        '2026-02-13 09:13:00',
        127,
        74,
        86.4,
        1.56,
        90, 'Kirola egin ondoren.'
    ),
    (
        98,
        '2026-02-13 08:08:00',
        126,
        81,
        83.0,
        1.60,
        66, 'Ondo sentitzen naiz.'
    ),
    (
        99,
        '2026-02-13 09:50:00',
        121,
        79,
        85.1,
        1.71,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2026-02-13 10:26:00',
        124,
        78,
        82.6,
        1.57,
        65, 'Baraualdian.'
    ),
    (
        52,
        '2026-02-14 07:50:00',
        137,
        87,
        94.8,
        1.77,
        65, 'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2026-02-14 09:39:00',
        123,
        92,
        75.9,
        1.75,
        87, 'Baraualdian.'
    ),
    (
        54,
        '2026-02-14 09:39:00',
        144,
        74,
        87.6,
        1.60,
        94, 'Kirola egin ondoren.'
    ),
    (
        55,
        '2026-02-14 10:53:00',
        128,
        73,
        80.1,
        1.76,
        92, 'Dena ondo.'
    ),
    (
        56,
        '2026-02-14 09:48:00',
        135,
        92,
        89.6,
        1.61,
        88, 'Kirola egin ondoren.'
    ),
    (
        57,
        '2026-02-14 07:02:00',
        131,
        87,
        82.4,
        1.69,
        84, 'Kirola egin ondoren.'
    ),
    (
        58,
        '2026-02-14 08:01:00',
        135,
        90,
        66.9,
        1.68,
        65, 'Gosariaren ondoren.'
    ),
    (
        60,
        '2026-02-14 07:27:00',
        125,
        83,
        77.3,
        1.81,
        75, 'Kirola egin ondoren.'
    ),
    (
        61,
        '2026-02-14 08:04:00',
        131,
        86,
        73.0,
        1.83,
        78, 'Gosariaren ondoren.'
    ),
    (
        63,
        '2026-02-14 07:08:00',
        127,
        81,
        81.5,
        1.80,
        77, 'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2026-02-14 10:38:00',
        125,
        80,
        95.2,
        1.56,
        67, 'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2026-02-14 09:18:00',
        131,
        80,
        91.9,
        1.55,
        94, 'Ondo sentitzen naiz.'
    ),
    (
        66,
        '2026-02-14 10:37:00',
        120,
        79,
        74.4,
        1.59,
        68, 'Gosariaren ondoren.'
    ),
    (
        67,
        '2026-02-14 09:30:00',
        130,
        84,
        71.8,
        1.72,
        82, 'Ondo sentitzen naiz.'
    ),
    (
        68,
        '2026-02-14 09:31:00',
        133,
        82,
        61.9,
        1.85,
        93, 'Dena ondo.'
    ),
    (
        69,
        '2026-02-14 08:36:00',
        140,
        79,
        95.2,
        1.66,
        94, 'Baraualdian.'
    ),
    (
        70,
        '2026-02-14 07:26:00',
        117,
        88,
        74.4,
        1.70,
        89, 'Baraualdian.'
    ),
    (
        71,
        '2026-02-14 09:19:00',
        130,
        76,
        88.4,
        1.63,
        85, 'Kirola egin ondoren.'
    ),
    (
        72,
        '2026-02-14 08:58:00',
        127,
        74,
        92.8,
        1.69,
        88, 'Dena ondo.'
    ),
    (
        73,
        '2026-02-14 07:45:00',
        112,
        81,
        94.3,
        1.55,
        76, 'Apur bat nekatuta.'
    ),
    (
        74,
        '2026-02-14 09:04:00',
        125,
        80,
        64.2,
        1.67,
        77, 'Kirola egin ondoren.'
    ),
    (
        76,
        '2026-02-14 07:47:00',
        129,
        93,
        65.0,
        1.69,
        74, 'Apur bat nekatuta.'
    ),
    (
        78,
        '2026-02-14 09:27:00',
        129,
        78,
        63.3,
        1.61,
        74, 'Dena ondo.'
    ),
    (
        79,
        '2026-02-14 10:26:00',
        133,
        88,
        67.0,
        1.67,
        70, 'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-02-14 07:51:00',
        123,
        82,
        90.0,
        1.77,
        71, 'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2026-02-14 08:10:00',
        119,
        82,
        78.9,
        1.67,
        82, 'Apur bat nekatuta.'
    ),
    (
        86,
        '2026-02-14 08:59:00',
        133,
        82,
        68.6,
        1.57,
        77, 'Baraualdian.'
    ),
    (
        89,
        '2026-02-14 08:20:00',
        137,
        91,
        90.2,
        1.84,
        72, 'Dena ondo.'
    ),
    (
        90,
        '2026-02-14 08:10:00',
        126,
        92,
        66.4,
        1.60,
        77, 'Dena ondo.'
    ),
    (
        91,
        '2026-02-14 08:58:00',
        125,
        78,
        89.3,
        1.58,
        85, 'Gosariaren ondoren.'
    ),
    (
        92,
        '2026-02-14 09:23:00',
        125,
        80,
        59.6,
        1.79,
        86, 'Baraualdian.'
    ),
    (
        93,
        '2026-02-14 10:21:00',
        136,
        82,
        75.5,
        1.81,
        69, 'Kirola egin ondoren.'
    ),
    (
        94,
        '2026-02-14 08:01:00',
        139,
        82,
        87.9,
        1.83,
        84, 'Gosariaren ondoren.'
    ),
    (
        95,
        '2026-02-14 08:06:00',
        131,
        74,
        89.4,
        1.77,
        70, 'Kirola egin ondoren.'
    ),
    (
        99,
        '2026-02-14 09:00:00',
        123,
        78,
        85.3,
        1.71,
        67, 'Kirola egin ondoren.'
    ),
    (
        100,
        '2026-02-14 08:11:00',
        127,
        73,
        81.5,
        1.57,
        79, 'Apur bat nekatuta.'
    ),
    (
        51,
        '2026-02-15 10:52:00',
        123,
        83,
        63.0,
        1.76,
        92, 'Kirola egin ondoren.'
    ),
    (
        52,
        '2026-02-15 10:37:00',
        126,
        80,
        94.7,
        1.77,
        76, 'Dena ondo.'
    ),
    (
        53,
        '2026-02-15 08:09:00',
        127,
        90,
        74.3,
        1.75,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        54,
        '2026-02-15 10:07:00',
        132,
        87,
        87.6,
        1.60,
        92, 'Ondo sentitzen naiz.'
    ),
    (
        56,
        '2026-02-15 08:18:00',
        131,
        86,
        90.1,
        1.61,
        72, 'Gaur goizean neurtuta.'
    ),
    (
        58,
        '2026-02-15 07:07:00',
        135,
        89,
        66.2,
        1.68,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        59,
        '2026-02-15 07:20:00',
        114,
        83,
        63.3,
        1.73,
        67, 'Baraualdian.'
    ),
    (
        60,
        '2026-02-15 07:15:00',
        115,
        86,
        78.2,
        1.81,
        82, 'Gosariaren ondoren.'
    ),
    (
        61,
        '2026-02-15 08:34:00',
        129,
        80,
        72.0,
        1.83,
        80, 'Apur bat nekatuta.'
    ),
    (
        63,
        '2026-02-15 07:18:00',
        136,
        90,
        81.0,
        1.80,
        65, 'Ondo sentitzen naiz.'
    ),
    (
        64,
        '2026-02-15 10:02:00',
        133,
        73,
        95.6,
        1.56,
        78, 'Gosariaren ondoren.'
    ),
    (
        65,
        '2026-02-15 08:13:00',
        139,
        79,
        90.4,
        1.55,
        94, 'Apur bat nekatuta.'
    ),
    (
        66,
        '2026-02-15 09:08:00',
        133,
        88,
        74.8,
        1.59,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2026-02-15 09:39:00',
        130,
        90,
        71.7,
        1.72,
        94, 'Dena ondo.'
    ),
    (
        68,
        '2026-02-15 08:56:00',
        134,
        76,
        61.5,
        1.85,
        73, 'Baraualdian.'
    ),
    (
        70,
        '2026-02-15 10:10:00',
        117,
        89,
        75.8,
        1.70,
        86, 'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2026-02-15 07:02:00',
        140,
        81,
        88.6,
        1.63,
        93, 'Gosariaren ondoren.'
    ),
    (
        72,
        '2026-02-15 08:14:00',
        132,
        78,
        92.6,
        1.69,
        92, 'Baraualdian.'
    ),
    (
        73,
        '2026-02-15 08:20:00',
        115,
        79,
        96.0,
        1.55,
        85, 'Apur bat nekatuta.'
    ),
    (
        74,
        '2026-02-15 08:44:00',
        129,
        89,
        63.8,
        1.67,
        65, 'Baraualdian.'
    ),
    (
        75,
        '2026-02-15 08:49:00',
        141,
        78,
        60.4,
        1.65,
        88, 'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2026-02-15 09:17:00',
        122,
        88,
        65.9,
        1.69,
        72, 'Gaur goizean neurtuta.'
    ),
    (
        78,
        '2026-02-15 10:59:00',
        121,
        75,
        62.0,
        1.61,
        67, 'Apur bat nekatuta.'
    ),
    (
        79,
        '2026-02-15 07:42:00',
        133,
        77,
        66.2,
        1.67,
        69, 'Gosariaren ondoren.'
    ),
    (
        83,
        '2026-02-15 08:29:00',
        119,
        88,
        65.5,
        1.80,
        67, 'Kirola egin ondoren.'
    ),
    (
        84,
        '2026-02-15 08:07:00',
        125,
        77,
        79.3,
        1.67,
        70, 'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2026-02-15 09:18:00',
        125,
        92,
        81.0,
        1.72,
        81, 'Kirola egin ondoren.'
    ),
    (
        86,
        '2026-02-15 08:02:00',
        139,
        86,
        67.3,
        1.57,
        71, 'Kirola egin ondoren.'
    ),
    (
        87,
        '2026-02-15 10:16:00',
        130,
        73,
        73.6,
        1.61,
        82, 'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2026-02-15 10:41:00',
        118,
        78,
        90.3,
        1.81,
        73, 'Gosariaren ondoren.'
    ),
    (
        89,
        '2026-02-15 10:09:00',
        132,
        87,
        91.8,
        1.84,
        93, 'Apur bat nekatuta.'
    ),
    (
        90,
        '2026-02-15 08:51:00',
        122,
        82,
        65.3,
        1.60,
        89, 'Kirola egin ondoren.'
    ),
    (
        91,
        '2026-02-15 08:16:00',
        144,
        85,
        89.2,
        1.58,
        69, 'Apur bat nekatuta.'
    ),
    (
        92,
        '2026-02-15 10:58:00',
        135,
        86,
        59.1,
        1.79,
        78, 'Gaur goizean neurtuta.'
    ),
    (
        93,
        '2026-02-15 08:11:00',
        134,
        82,
        75.7,
        1.81,
        68, 'Ondo sentitzen naiz.'
    ),
    (
        94,
        '2026-02-15 08:08:00',
        123,
        77,
        86.1,
        1.83,
        68, 'Dena ondo.'
    ),
    (
        95,
        '2026-02-15 08:45:00',
        125,
        77,
        90.4,
        1.77,
        68, 'Gosariaren ondoren.'
    ),
    (
        98,
        '2026-02-15 08:51:00',
        130,
        90,
        84.2,
        1.60,
        92, 'Kirola egin ondoren.'
    ),
    (
        99,
        '2026-02-15 07:41:00',
        117,
        85,
        85.0,
        1.71,
        87, 'Gaur goizean neurtuta.'
    ),
    (
        100,
        '2026-02-15 07:39:00',
        123,
        77,
        82.0,
        1.57,
        72, 'Kirola egin ondoren.'
    ),
    (
        51,
        '2026-02-16 10:11:00',
        123,
        91,
        64.8,
        1.76,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        52,
        '2026-02-16 08:26:00',
        121,
        83,
        94.6,
        1.77,
        71, 'Dena ondo.'
    ),
    (
        53,
        '2026-02-16 07:54:00',
        132,
        90,
        74.5,
        1.75,
        82, 'Kirola egin ondoren.'
    ),
    (
        55,
        '2026-02-16 08:51:00',
        143,
        81,
        81.4,
        1.76,
        74, 'Kirola egin ondoren.'
    ),
    (
        56,
        '2026-02-16 08:15:00',
        142,
        91,
        89.6,
        1.61,
        85, 'Baraualdian.'
    ),
    (
        57,
        '2026-02-16 10:12:00',
        122,
        86,
        83.4,
        1.69,
        93, 'Kirola egin ondoren.'
    ),
    (
        58,
        '2026-02-16 10:51:00',
        127,
        83,
        66.0,
        1.68,
        67, 'Apur bat nekatuta.'
    ),
    (
        60,
        '2026-02-16 07:06:00',
        122,
        93,
        77.0,
        1.81,
        83, 'Dena ondo.'
    ),
    (
        61,
        '2026-02-16 07:02:00',
        119,
        78,
        72.8,
        1.83,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        62,
        '2026-02-16 08:18:00',
        135,
        79,
        65.6,
        1.56,
        89, 'Apur bat nekatuta.'
    ),
    (
        63,
        '2026-02-16 10:49:00',
        132,
        87,
        81.5,
        1.80,
        67, 'Apur bat nekatuta.'
    ),
    (
        64,
        '2026-02-16 07:14:00',
        127,
        75,
        94.7,
        1.56,
        78, 'Kirola egin ondoren.'
    ),
    (
        66,
        '2026-02-16 07:51:00',
        128,
        85,
        74.7,
        1.59,
        79, 'Baraualdian.'
    ),
    (
        67,
        '2026-02-16 07:12:00',
        142,
        79,
        72.0,
        1.72,
        80, 'Kirola egin ondoren.'
    ),
    (
        68,
        '2026-02-16 07:34:00',
        130,
        85,
        61.2,
        1.85,
        89, 'Kirola egin ondoren.'
    ),
    (
        69,
        '2026-02-16 08:50:00',
        131,
        81,
        94.5,
        1.66,
        74, 'Gosariaren ondoren.'
    ),
    (
        70,
        '2026-02-16 07:50:00',
        120,
        83,
        75.3,
        1.70,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        71,
        '2026-02-16 09:02:00',
        135,
        80,
        89.7,
        1.63,
        79, 'Baraualdian.'
    ),
    (
        72,
        '2026-02-16 07:38:00',
        136,
        74,
        92.5,
        1.69,
        71, 'Ondo sentitzen naiz.'
    ),
    (
        73,
        '2026-02-16 09:08:00',
        121,
        86,
        96.0,
        1.55,
        86, 'Dena ondo.'
    ),
    (
        74,
        '2026-02-16 10:49:00',
        120,
        90,
        64.2,
        1.67,
        74, 'Dena ondo.'
    ),
    (
        75,
        '2026-02-16 08:03:00',
        130,
        70,
        59.6,
        1.65,
        76, 'Baraualdian.'
    ),
    (
        76,
        '2026-02-16 09:59:00',
        111,
        85,
        66.9,
        1.69,
        74, 'Kirola egin ondoren.'
    ),
    (
        78,
        '2026-02-16 10:53:00',
        124,
        88,
        63.1,
        1.61,
        81, 'Gaur goizean neurtuta.'
    ),
    (
        79,
        '2026-02-16 10:33:00',
        131,
        89,
        67.0,
        1.67,
        86, 'Apur bat nekatuta.'
    ),
    (
        80,
        '2026-02-16 09:28:00',
        130,
        87,
        62.4,
        1.78,
        90, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-02-16 09:34:00',
        132,
        91,
        86.5,
        1.58,
        83, 'Dena ondo.'
    ),
    (
        83,
        '2026-02-16 09:23:00',
        126,
        90,
        65.9,
        1.80,
        66, 'Apur bat nekatuta.'
    ),
    (
        84,
        '2026-02-16 09:34:00',
        133,
        91,
        78.7,
        1.67,
        84, 'Dena ondo.'
    ),
    (
        85,
        '2026-02-16 08:35:00',
        121,
        82,
        80.7,
        1.72,
        73, 'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2026-02-16 10:02:00',
        135,
        75,
        67.5,
        1.57,
        76, 'Apur bat nekatuta.'
    ),
    (
        87,
        '2026-02-16 07:02:00',
        136,
        82,
        74.0,
        1.61,
        70, 'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2026-02-16 10:55:00',
        121,
        72,
        90.3,
        1.81,
        83, 'Gaur goizean neurtuta.'
    ),
    (
        89,
        '2026-02-16 07:45:00',
        126,
        77,
        90.6,
        1.84,
        88, 'Dena ondo.'
    ),
    (
        90,
        '2026-02-16 08:10:00',
        122,
        78,
        65.4,
        1.60,
        77, 'Kirola egin ondoren.'
    ),
    (
        93,
        '2026-02-16 08:09:00',
        128,
        87,
        76.3,
        1.81,
        66, 'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2026-02-16 08:40:00',
        142,
        88,
        86.1,
        1.83,
        75, 'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-02-16 10:40:00',
        124,
        80,
        76.6,
        1.71,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        97,
        '2026-02-16 09:23:00',
        139,
        77,
        86.5,
        1.56,
        78, 'Baraualdian.'
    ),
    (
        98,
        '2026-02-16 10:25:00',
        137,
        78,
        83.9,
        1.60,
        79, 'Gosariaren ondoren.'
    ),
    (
        99,
        '2026-02-16 07:02:00',
        123,
        86,
        86.9,
        1.71,
        74, 'Baraualdian.'
    ),
    (
        100,
        '2026-02-16 10:57:00',
        132,
        78,
        81.9,
        1.57,
        82, 'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2026-02-17 09:05:00',
        132,
        89,
        64.1,
        1.76,
        71, 'Apur bat nekatuta.'
    ),
    (
        52,
        '2026-02-17 09:47:00',
        119,
        94,
        93.0,
        1.77,
        71, 'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2026-02-17 10:57:00',
        118,
        91,
        75.9,
        1.75,
        66, 'Baraualdian.'
    ),
    (
        54,
        '2026-02-17 08:34:00',
        130,
        88,
        87.1,
        1.60,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2026-02-17 08:40:00',
        125,
        71,
        81.8,
        1.76,
        75, 'Dena ondo.'
    ),
    (
        56,
        '2026-02-17 09:43:00',
        128,
        80,
        90.2,
        1.61,
        78, 'Baraualdian.'
    ),
    (
        57,
        '2026-02-17 10:22:00',
        124,
        81,
        82.0,
        1.69,
        73, 'Dena ondo.'
    ),
    (
        59,
        '2026-02-17 09:00:00',
        126,
        85,
        63.4,
        1.73,
        88, 'Ondo sentitzen naiz.'
    ),
    (
        60,
        '2026-02-17 09:17:00',
        122,
        88,
        78.5,
        1.81,
        93, 'Apur bat nekatuta.'
    ),
    (
        63,
        '2026-02-17 07:31:00',
        129,
        90,
        80.6,
        1.80,
        89, 'Apur bat nekatuta.'
    ),
    (
        65,
        '2026-02-17 07:23:00',
        131,
        86,
        90.9,
        1.55,
        91, 'Apur bat nekatuta.'
    ),
    (
        66,
        '2026-02-17 09:34:00',
        136,
        80,
        74.6,
        1.59,
        73, 'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2026-02-17 07:32:00',
        130,
        90,
        71.3,
        1.72,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2026-02-17 09:54:00',
        126,
        87,
        94.1,
        1.66,
        72, 'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2026-02-17 08:39:00',
        133,
        78,
        75.8,
        1.70,
        91, 'Apur bat nekatuta.'
    ),
    (
        71,
        '2026-02-17 10:47:00',
        121,
        73,
        88.9,
        1.63,
        83, 'Apur bat nekatuta.'
    ),
    (
        72,
        '2026-02-17 08:58:00',
        131,
        82,
        91.0,
        1.69,
        70, 'Dena ondo.'
    ),
    (
        73,
        '2026-02-17 10:54:00',
        125,
        74,
        95.1,
        1.55,
        70, 'Gosariaren ondoren.'
    ),
    (
        74,
        '2026-02-17 07:40:00',
        119,
        80,
        64.5,
        1.67,
        72, 'Ondo sentitzen naiz.'
    ),
    (
        76,
        '2026-02-17 07:24:00',
        119,
        82,
        65.1,
        1.69,
        76, 'Ondo sentitzen naiz.'
    ),
    (
        78,
        '2026-02-17 09:55:00',
        127,
        75,
        63.8,
        1.61,
        67, 'Apur bat nekatuta.'
    ),
    (
        79,
        '2026-02-17 07:38:00',
        140,
        84,
        66.8,
        1.67,
        76, 'Baraualdian.'
    ),
    (
        80,
        '2026-02-17 09:09:00',
        121,
        94,
        63.2,
        1.78,
        89, 'Dena ondo.'
    ),
    (
        81,
        '2026-02-17 07:56:00',
        119,
        89,
        86.5,
        1.58,
        86, 'Kirola egin ondoren.'
    ),
    (
        82,
        '2026-02-17 10:53:00',
        129,
        94,
        88.4,
        1.77,
        82, 'Dena ondo.'
    ),
    (
        83,
        '2026-02-17 10:13:00',
        125,
        90,
        65.3,
        1.80,
        92, 'Baraualdian.'
    ),
    (
        84,
        '2026-02-17 07:44:00',
        137,
        80,
        78.7,
        1.67,
        91, 'Baraualdian.'
    ),
    (
        85,
        '2026-02-17 08:03:00',
        130,
        86,
        80.7,
        1.72,
        72, 'Ondo sentitzen naiz.'
    ),
    (
        86,
        '2026-02-17 08:40:00',
        123,
        72,
        67.9,
        1.57,
        90, 'Dena ondo.'
    ),
    (
        87,
        '2026-02-17 07:33:00',
        136,
        80,
        73.1,
        1.61,
        92, 'Apur bat nekatuta.'
    ),
    (
        88,
        '2026-02-17 07:04:00',
        115,
        87,
        90.1,
        1.81,
        69, 'Gosariaren ondoren.'
    ),
    (
        89,
        '2026-02-17 10:45:00',
        138,
        81,
        90.3,
        1.84,
        74, 'Ondo sentitzen naiz.'
    ),
    (
        91,
        '2026-02-17 10:05:00',
        139,
        77,
        90.3,
        1.58,
        85, 'Gosariaren ondoren.'
    ),
    (
        92,
        '2026-02-17 08:51:00',
        135,
        82,
        60.8,
        1.79,
        85, 'Dena ondo.'
    ),
    (
        93,
        '2026-02-17 09:54:00',
        122,
        87,
        75.8,
        1.81,
        82, 'Gaur goizean neurtuta.'
    ),
    (
        94,
        '2026-02-17 09:16:00',
        137,
        90,
        87.4,
        1.83,
        93, 'Gaur goizean neurtuta.'
    ),
    (
        95,
        '2026-02-17 07:26:00',
        138,
        76,
        90.5,
        1.77,
        94, 'Gosariaren ondoren.'
    ),
    (
        96,
        '2026-02-17 10:44:00',
        118,
        75,
        77.2,
        1.71,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        98,
        '2026-02-17 07:24:00',
        137,
        83,
        83.0,
        1.60,
        76, 'Kirola egin ondoren.'
    ),
    (
        100,
        '2026-02-17 09:28:00',
        122,
        78,
        81.8,
        1.57,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        52,
        '2026-02-18 08:33:00',
        122,
        90,
        94.4,
        1.77,
        82, 'Baraualdian.'
    ),
    (
        53,
        '2026-02-18 08:28:00',
        122,
        84,
        75.0,
        1.75,
        70, 'Baraualdian.'
    ),
    (
        54,
        '2026-02-18 10:44:00',
        132,
        77,
        86.1,
        1.60,
        82, 'Ondo sentitzen naiz.'
    ),
    (
        55,
        '2026-02-18 08:23:00',
        130,
        72,
        81.0,
        1.76,
        91, 'Gosariaren ondoren.'
    ),
    (
        56,
        '2026-02-18 07:19:00',
        125,
        92,
        90.9,
        1.61,
        69, 'Kirola egin ondoren.'
    ),
    (
        57,
        '2026-02-18 10:38:00',
        130,
        90,
        82.0,
        1.69,
        77, 'Dena ondo.'
    ),
    (
        58,
        '2026-02-18 08:47:00',
        140,
        79,
        67.5,
        1.68,
        88, 'Ondo sentitzen naiz.'
    ),
    (
        59,
        '2026-02-18 08:06:00',
        115,
        81,
        63.4,
        1.73,
        65, 'Kirola egin ondoren.'
    ),
    (
        60,
        '2026-02-18 09:10:00',
        129,
        87,
        78.2,
        1.81,
        86, 'Dena ondo.'
    ),
    (
        61,
        '2026-02-18 09:07:00',
        121,
        85,
        73.4,
        1.83,
        93, 'Ondo sentitzen naiz.'
    ),
    (
        62,
        '2026-02-18 08:42:00',
        140,
        81,
        66.1,
        1.56,
        84, 'Dena ondo.'
    ),
    (
        64,
        '2026-02-18 07:37:00',
        138,
        85,
        94.4,
        1.56,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        65,
        '2026-02-18 10:22:00',
        130,
        77,
        92.0,
        1.55,
        87, 'Dena ondo.'
    ),
    (
        66,
        '2026-02-18 09:34:00',
        118,
        85,
        74.9,
        1.59,
        66, 'Baraualdian.'
    ),
    (
        67,
        '2026-02-18 07:10:00',
        131,
        84,
        71.4,
        1.72,
        90, 'Baraualdian.'
    ),
    (
        68,
        '2026-02-18 09:45:00',
        121,
        81,
        61.0,
        1.85,
        84, 'Baraualdian.'
    ),
    (
        69,
        '2026-02-18 08:56:00',
        138,
        80,
        95.5,
        1.66,
        75, 'Gosariaren ondoren.'
    ),
    (
        70,
        '2026-02-18 07:56:00',
        131,
        86,
        75.4,
        1.70,
        90, 'Dena ondo.'
    ),
    (
        72,
        '2026-02-18 07:49:00',
        138,
        89,
        92.9,
        1.69,
        84, 'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-02-18 10:11:00',
        116,
        78,
        94.1,
        1.55,
        70, 'Gosariaren ondoren.'
    ),
    (
        74,
        '2026-02-18 09:34:00',
        117,
        83,
        63.3,
        1.67,
        75, 'Apur bat nekatuta.'
    ),
    (
        76,
        '2026-02-18 07:49:00',
        130,
        80,
        66.1,
        1.69,
        82, 'Gosariaren ondoren.'
    ),
    (
        77,
        '2026-02-18 10:26:00',
        122,
        83,
        67.6,
        1.67,
        79, 'Dena ondo.'
    ),
    (
        78,
        '2026-02-18 09:38:00',
        131,
        84,
        63.6,
        1.61,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        79,
        '2026-02-18 09:20:00',
        133,
        84,
        67.2,
        1.67,
        73, 'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2026-02-18 10:39:00',
        129,
        91,
        86.1,
        1.58,
        88, 'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-02-18 07:27:00',
        137,
        89,
        89.3,
        1.77,
        83, 'Dena ondo.'
    ),
    (
        83,
        '2026-02-18 09:40:00',
        130,
        83,
        65.1,
        1.80,
        85, 'Gaur goizean neurtuta.'
    ),
    (
        84,
        '2026-02-18 09:22:00',
        134,
        77,
        78.2,
        1.67,
        87, 'Gosariaren ondoren.'
    ),
    (
        85,
        '2026-02-18 10:06:00',
        132,
        78,
        81.9,
        1.72,
        72, 'Baraualdian.'
    ),
    (
        86,
        '2026-02-18 10:19:00',
        124,
        79,
        68.1,
        1.57,
        72, 'Gosariaren ondoren.'
    ),
    (
        87,
        '2026-02-18 07:59:00',
        124,
        87,
        73.8,
        1.61,
        74, 'Apur bat nekatuta.'
    ),
    (
        88,
        '2026-02-18 08:19:00',
        112,
        80,
        89.9,
        1.81,
        73, 'Ondo sentitzen naiz.'
    ),
    (
        89,
        '2026-02-18 09:25:00',
        124,
        79,
        91.9,
        1.84,
        82, 'Apur bat nekatuta.'
    ),
    (
        90,
        '2026-02-18 07:31:00',
        124,
        84,
        67.0,
        1.60,
        77, 'Gosariaren ondoren.'
    ),
    (
        91,
        '2026-02-18 09:44:00',
        140,
        79,
        89.2,
        1.58,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        92,
        '2026-02-18 09:38:00',
        144,
        94,
        60.7,
        1.79,
        87, 'Dena ondo.'
    ),
    (
        96,
        '2026-02-18 09:35:00',
        124,
        82,
        77.5,
        1.71,
        74, 'Gaur goizean neurtuta.'
    ),
    (
        97,
        '2026-02-18 07:37:00',
        129,
        79,
        87.5,
        1.56,
        89, 'Apur bat nekatuta.'
    ),
    (
        98,
        '2026-02-18 07:09:00',
        121,
        75,
        83.0,
        1.60,
        77, 'Kirola egin ondoren.'
    ),
    (
        99,
        '2026-02-18 08:37:00',
        135,
        88,
        85.7,
        1.71,
        68, 'Kirola egin ondoren.'
    ),
    (
        51,
        '2026-02-19 09:28:00',
        126,
        91,
        63.8,
        1.76,
        75, 'Ondo sentitzen naiz.'
    ),
    (
        52,
        '2026-02-19 09:58:00',
        120,
        91,
        94.1,
        1.77,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2026-02-19 10:56:00',
        119,
        83,
        74.9,
        1.75,
        85, 'Kirola egin ondoren.'
    ),
    (
        54,
        '2026-02-19 09:35:00',
        131,
        75,
        88.0,
        1.60,
        85, 'Gaur goizean neurtuta.'
    ),
    (
        55,
        '2026-02-19 08:08:00',
        130,
        73,
        81.0,
        1.76,
        92, 'Kirola egin ondoren.'
    ),
    (
        58,
        '2026-02-19 08:54:00',
        133,
        77,
        67.3,
        1.68,
        81, 'Ondo sentitzen naiz.'
    ),
    (
        59,
        '2026-02-19 07:00:00',
        127,
        83,
        63.2,
        1.73,
        82, 'Kirola egin ondoren.'
    ),
    (
        60,
        '2026-02-19 09:33:00',
        135,
        80,
        77.8,
        1.81,
        87, 'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-02-19 08:16:00',
        124,
        88,
        72.0,
        1.83,
        80, 'Dena ondo.'
    ),
    (
        62,
        '2026-02-19 10:24:00',
        126,
        86,
        65.9,
        1.56,
        92, 'Kirola egin ondoren.'
    ),
    (
        63,
        '2026-02-19 09:33:00',
        132,
        85,
        80.4,
        1.80,
        93, 'Ondo sentitzen naiz.'
    ),
    (
        65,
        '2026-02-19 08:59:00',
        125,
        90,
        91.4,
        1.55,
        82, 'Baraualdian.'
    ),
    (
        66,
        '2026-02-19 09:40:00',
        117,
        86,
        74.3,
        1.59,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        67,
        '2026-02-19 07:52:00',
        136,
        84,
        72.8,
        1.72,
        85, 'Kirola egin ondoren.'
    ),
    (
        68,
        '2026-02-19 08:22:00',
        140,
        87,
        61.9,
        1.85,
        82, 'Gosariaren ondoren.'
    ),
    (
        69,
        '2026-02-19 07:20:00',
        128,
        86,
        94.8,
        1.66,
        94, 'Gaur goizean neurtuta.'
    ),
    (
        70,
        '2026-02-19 08:18:00',
        130,
        87,
        75.1,
        1.70,
        83, 'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-02-19 09:54:00',
        130,
        72,
        89.0,
        1.63,
        74, 'Ondo sentitzen naiz.'
    ),
    (
        72,
        '2026-02-19 09:57:00',
        142,
        82,
        92.0,
        1.69,
        73, 'Baraualdian.'
    ),
    (
        74,
        '2026-02-19 09:43:00',
        131,
        79,
        64.2,
        1.67,
        68, 'Gosariaren ondoren.'
    ),
    (
        75,
        '2026-02-19 07:34:00',
        141,
        79,
        59.2,
        1.65,
        69, 'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2026-02-19 09:02:00',
        119,
        92,
        65.7,
        1.69,
        74, 'Apur bat nekatuta.'
    ),
    (
        77,
        '2026-02-19 10:19:00',
        141,
        88,
        67.9,
        1.67,
        79, 'Dena ondo.'
    ),
    (
        78,
        '2026-02-19 10:40:00',
        121,
        84,
        62.5,
        1.61,
        79, 'Ondo sentitzen naiz.'
    ),
    (
        79,
        '2026-02-19 09:35:00',
        130,
        76,
        67.2,
        1.67,
        80, 'Baraualdian.'
    ),
    (
        80,
        '2026-02-19 10:30:00',
        137,
        80,
        63.6,
        1.78,
        67, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-02-19 09:02:00',
        125,
        84,
        86.6,
        1.58,
        84, 'Dena ondo.'
    ),
    (
        82,
        '2026-02-19 09:43:00',
        143,
        92,
        89.9,
        1.77,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        83,
        '2026-02-19 09:46:00',
        120,
        91,
        65.9,
        1.80,
        86, 'Apur bat nekatuta.'
    ),
    (
        84,
        '2026-02-19 07:25:00',
        118,
        90,
        78.7,
        1.67,
        67, 'Dena ondo.'
    ),
    (
        85,
        '2026-02-19 08:57:00',
        128,
        83,
        80.3,
        1.72,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        86,
        '2026-02-19 09:05:00',
        137,
        72,
        68.1,
        1.57,
        75, 'Gosariaren ondoren.'
    ),
    (
        87,
        '2026-02-19 08:36:00',
        124,
        83,
        73.4,
        1.61,
        79, 'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2026-02-19 09:40:00',
        121,
        83,
        89.3,
        1.81,
        75, 'Ondo sentitzen naiz.'
    ),
    (
        90,
        '2026-02-19 09:34:00',
        131,
        84,
        66.6,
        1.60,
        66, 'Dena ondo.'
    ),
    (
        92,
        '2026-02-19 09:23:00',
        143,
        86,
        60.3,
        1.79,
        71, 'Kirola egin ondoren.'
    ),
    (
        93,
        '2026-02-19 09:51:00',
        125,
        79,
        75.7,
        1.81,
        92, 'Gosariaren ondoren.'
    ),
    (
        94,
        '2026-02-19 09:06:00',
        124,
        82,
        87.1,
        1.83,
        68, 'Dena ondo.'
    ),
    (
        96,
        '2026-02-19 07:31:00',
        136,
        79,
        76.9,
        1.71,
        70, 'Baraualdian.'
    ),
    (
        97,
        '2026-02-19 09:29:00',
        120,
        85,
        86.7,
        1.56,
        85, 'Baraualdian.'
    ),
    (
        98,
        '2026-02-19 08:19:00',
        130,
        83,
        83.0,
        1.60,
        84, 'Apur bat nekatuta.'
    ),
    (
        100,
        '2026-02-19 08:28:00',
        137,
        76,
        82.7,
        1.57,
        94, 'Baraualdian.'
    ),
    (
        51,
        '2026-02-20 08:34:00',
        129,
        82,
        64.4,
        1.76,
        66, 'Kirola egin ondoren.'
    ),
    (
        52,
        '2026-02-20 10:35:00',
        132,
        80,
        94.2,
        1.77,
        80, 'Ondo sentitzen naiz.'
    ),
    (
        53,
        '2026-02-20 09:16:00',
        123,
        92,
        74.7,
        1.75,
        71, 'Apur bat nekatuta.'
    ),
    (
        54,
        '2026-02-20 10:32:00',
        144,
        89,
        86.8,
        1.60,
        86, 'Kirola egin ondoren.'
    ),
    (
        57,
        '2026-02-20 07:30:00',
        135,
        79,
        83.3,
        1.69,
        91, 'Apur bat nekatuta.'
    ),
    (
        59,
        '2026-02-20 07:53:00',
        117,
        90,
        62.8,
        1.73,
        82, 'Apur bat nekatuta.'
    ),
    (
        61,
        '2026-02-20 08:43:00',
        130,
        83,
        72.1,
        1.83,
        65, 'Apur bat nekatuta.'
    ),
    (
        64,
        '2026-02-20 08:46:00',
        124,
        76,
        95.7,
        1.56,
        76, 'Kirola egin ondoren.'
    ),
    (
        65,
        '2026-02-20 09:42:00',
        137,
        76,
        91.2,
        1.55,
        70, 'Gaur goizean neurtuta.'
    ),
    (
        66,
        '2026-02-20 08:04:00',
        131,
        90,
        74.9,
        1.59,
        68, 'Apur bat nekatuta.'
    ),
    (
        67,
        '2026-02-20 07:48:00',
        136,
        76,
        72.4,
        1.72,
        87, 'Gosariaren ondoren.'
    ),
    (
        68,
        '2026-02-20 09:30:00',
        135,
        85,
        61.9,
        1.85,
        94, 'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2026-02-20 08:50:00',
        130,
        81,
        94.8,
        1.66,
        70, 'Apur bat nekatuta.'
    ),
    (
        70,
        '2026-02-20 08:57:00',
        116,
        81,
        74.4,
        1.70,
        68, 'Gosariaren ondoren.'
    ),
    (
        72,
        '2026-02-20 07:32:00',
        133,
        75,
        92.7,
        1.69,
        74, 'Kirola egin ondoren.'
    ),
    (
        73,
        '2026-02-20 08:15:00',
        126,
        79,
        94.5,
        1.55,
        66, 'Dena ondo.'
    ),
    (
        75,
        '2026-02-20 10:44:00',
        133,
        71,
        60.7,
        1.65,
        85, 'Gaur goizean neurtuta.'
    ),
    (
        76,
        '2026-02-20 10:06:00',
        130,
        90,
        66.1,
        1.69,
        92, 'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2026-02-20 09:01:00',
        132,
        78,
        66.0,
        1.67,
        91, 'Dena ondo.'
    ),
    (
        78,
        '2026-02-20 08:13:00',
        135,
        84,
        62.9,
        1.61,
        68, 'Gosariaren ondoren.'
    ),
    (
        80,
        '2026-02-20 09:34:00',
        139,
        91,
        62.5,
        1.78,
        72, 'Kirola egin ondoren.'
    ),
    (
        81,
        '2026-02-20 10:30:00',
        136,
        85,
        86.5,
        1.58,
        74, 'Dena ondo.'
    ),
    (
        83,
        '2026-02-20 08:49:00',
        118,
        81,
        65.0,
        1.80,
        77, 'Kirola egin ondoren.'
    ),
    (
        84,
        '2026-02-20 07:14:00',
        122,
        78,
        79.5,
        1.67,
        77, 'Gaur goizean neurtuta.'
    ),
    (
        85,
        '2026-02-20 09:53:00',
        127,
        82,
        81.0,
        1.72,
        71, 'Gosariaren ondoren.'
    ),
    (
        86,
        '2026-02-20 10:44:00',
        132,
        81,
        68.0,
        1.57,
        67, 'Ondo sentitzen naiz.'
    ),
    (
        88,
        '2026-02-20 10:40:00',
        111,
        77,
        89.8,
        1.81,
        69, 'Baraualdian.'
    ),
    (
        89,
        '2026-02-20 08:40:00',
        138,
        79,
        91.8,
        1.84,
        69, 'Dena ondo.'
    ),
    (
        90,
        '2026-02-20 08:58:00',
        138,
        79,
        66.1,
        1.60,
        70, 'Gosariaren ondoren.'
    ),
    (
        91,
        '2026-02-20 09:54:00',
        125,
        78,
        90.5,
        1.58,
        73, 'Kirola egin ondoren.'
    ),
    (
        92,
        '2026-02-20 09:48:00',
        144,
        94,
        60.2,
        1.79,
        92, 'Kirola egin ondoren.'
    ),
    (
        93,
        '2026-02-20 10:34:00',
        138,
        91,
        75.8,
        1.81,
        70, 'Apur bat nekatuta.'
    ),
    (
        94,
        '2026-02-20 08:56:00',
        128,
        89,
        86.1,
        1.83,
        65, 'Apur bat nekatuta.'
    ),
    (
        96,
        '2026-02-20 10:57:00',
        120,
        86,
        77.4,
        1.71,
        87, 'Kirola egin ondoren.'
    ),
    (
        98,
        '2026-02-20 09:37:00',
        130,
        84,
        84.8,
        1.60,
        74, 'Gaur goizean neurtuta.'
    ),
    (
        99,
        '2026-02-20 09:48:00',
        134,
        83,
        85.6,
        1.71,
        69, 'Ondo sentitzen naiz.'
    ),
    (
        51,
        '2026-02-21 10:48:00',
        126,
        87,
        64.9,
        1.76,
        93, 'Kirola egin ondoren.'
    ),
    (
        52,
        '2026-02-21 08:31:00',
        137,
        86,
        94.8,
        1.77,
        80, 'Gaur goizean neurtuta.'
    ),
    (
        53,
        '2026-02-21 09:19:00',
        113,
        79,
        75.4,
        1.75,
        87, 'Gosariaren ondoren.'
    ),
    (
        54,
        '2026-02-21 09:55:00',
        137,
        86,
        86.3,
        1.60,
        67, 'Kirola egin ondoren.'
    ),
    (
        56,
        '2026-02-21 10:48:00',
        143,
        94,
        89.3,
        1.61,
        77, 'Dena ondo.'
    ),
    (
        57,
        '2026-02-21 09:02:00',
        117,
        86,
        82.0,
        1.69,
        77, 'Baraualdian.'
    ),
    (
        58,
        '2026-02-21 10:04:00',
        144,
        83,
        68.0,
        1.68,
        84, 'Baraualdian.'
    ),
    (
        59,
        '2026-02-21 10:59:00',
        122,
        84,
        63.2,
        1.73,
        71, 'Baraualdian.'
    ),
    (
        60,
        '2026-02-21 07:43:00',
        129,
        90,
        78.9,
        1.81,
        86, 'Gosariaren ondoren.'
    ),
    (
        61,
        '2026-02-21 09:33:00',
        124,
        79,
        72.2,
        1.83,
        66, 'Ondo sentitzen naiz.'
    ),
    (
        63,
        '2026-02-21 07:36:00',
        125,
        89,
        81.3,
        1.80,
        74, 'Apur bat nekatuta.'
    ),
    (
        64,
        '2026-02-21 10:10:00',
        139,
        77,
        94.7,
        1.56,
        83, 'Kirola egin ondoren.'
    ),
    (
        65,
        '2026-02-21 10:35:00',
        122,
        84,
        91.3,
        1.55,
        66, 'Apur bat nekatuta.'
    ),
    (
        66,
        '2026-02-21 10:02:00',
        131,
        88,
        75.9,
        1.59,
        74, 'Ondo sentitzen naiz.'
    ),
    (
        67,
        '2026-02-21 07:17:00',
        137,
        85,
        71.9,
        1.72,
        89, 'Gaur goizean neurtuta.'
    ),
    (
        68,
        '2026-02-21 09:54:00',
        131,
        83,
        61.2,
        1.85,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        69,
        '2026-02-21 09:53:00',
        127,
        86,
        94.6,
        1.66,
        75, 'Dena ondo.'
    ),
    (
        70,
        '2026-02-21 09:04:00',
        122,
        85,
        74.6,
        1.70,
        87, 'Ondo sentitzen naiz.'
    ),
    (
        71,
        '2026-02-21 10:06:00',
        127,
        82,
        89.1,
        1.63,
        88, 'Gaur goizean neurtuta.'
    ),
    (
        72,
        '2026-02-21 09:35:00',
        140,
        76,
        92.8,
        1.69,
        79, 'Gaur goizean neurtuta.'
    ),
    (
        73,
        '2026-02-21 08:05:00',
        124,
        79,
        94.2,
        1.55,
        67, 'Apur bat nekatuta.'
    ),
    (
        74,
        '2026-02-21 09:00:00',
        117,
        82,
        64.2,
        1.67,
        76, 'Gosariaren ondoren.'
    ),
    (
        75,
        '2026-02-21 10:52:00',
        142,
        83,
        59.9,
        1.65,
        90, 'Gaur goizean neurtuta.'
    ),
    (
        77,
        '2026-02-21 07:11:00',
        138,
        85,
        67.9,
        1.67,
        67, 'Kirola egin ondoren.'
    ),
    (
        78,
        '2026-02-21 09:27:00',
        121,
        75,
        63.7,
        1.61,
        78, 'Dena ondo.'
    ),
    (
        80,
        '2026-02-21 10:26:00',
        136,
        89,
        62.4,
        1.78,
        84, 'Gaur goizean neurtuta.'
    ),
    (
        81,
        '2026-02-21 07:10:00',
        121,
        92,
        86.4,
        1.58,
        75, 'Gaur goizean neurtuta.'
    ),
    (
        82,
        '2026-02-21 08:07:00',
        126,
        93,
        89.6,
        1.77,
        68, 'Gosariaren ondoren.'
    ),
    (
        83,
        '2026-02-21 07:09:00',
        127,
        89,
        65.2,
        1.80,
        72, 'Ondo sentitzen naiz.'
    ),
    (
        84,
        '2026-02-21 09:14:00',
        131,
        77,
        80.0,
        1.67,
        85, 'Dena ondo.'
    ),
    (
        86,
        '2026-02-21 07:14:00',
        124,
        73,
        68.7,
        1.57,
        77, 'Baraualdian.'
    ),
    (
        88,
        '2026-02-21 07:42:00',
        124,
        74,
        89.1,
        1.81,
        76, 'Gosariaren ondoren.'
    ),
    (
        89,
        '2026-02-21 09:29:00',
        133,
        84,
        90.9,
        1.84,
        66, 'Baraualdian.'
    ),
    (
        90,
        '2026-02-21 07:59:00',
        127,
        84,
        66.3,
        1.60,
        85, 'Ondo sentitzen naiz.'
    ),
    (
        91,
        '2026-02-21 07:09:00',
        131,
        80,
        89.2,
        1.58,
        82, 'Dena ondo.'
    ),
    (
        92,
        '2026-02-21 10:01:00',
        131,
        94,
        59.3,
        1.79,
        86, 'Ondo sentitzen naiz.'
    ),
    (
        95,
        '2026-02-21 10:56:00',
        140,
        75,
        91.0,
        1.77,
        90, 'Ondo sentitzen naiz.'
    ),
    (
        96,
        '2026-02-21 10:14:00',
        134,
        85,
        76.5,
        1.71,
        79, 'Kirola egin ondoren.'
    ),
    (
        97,
        '2026-02-21 10:32:00',
        134,
        84,
        86.5,
        1.56,
        79, 'Apur bat nekatuta.'
    ),
    (
        99,
        '2026-02-21 08:45:00',
        124,
        76,
        85.1,
        1.71,
        79, 'Gosariaren ondoren.'
    ),
    (100,'2026-02-21 09:46:00',138,86,81.1,1.57,90, 'Baraualdian.');
-- 1. Tentsio Sistolikoa (Altua > 140, Baxua < 90)


-- 2. Tentsio Diastolikoa (Altua > 90, Baxua < 60)


-- 4. Pisua (Altua > 150, Baxua < 45)


UPDATE erabiltzaileak
SET irudia = CONCAT('img/png/pazientea_', id, '.png')
WHERE id IN (51, 52, 53, 54, 55, 56);
UPDATE erabiltzaileak
SET irudia = CONCAT('img/png/harrera_', id, '.png')
WHERE id = 101;
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
        'Amoxicilina/ClavulÃ¡nico',
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


INSERT INTO errezetak (hitzordu_id, osasun_langile_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo) VALUES
    (NULL, 5, 88, '2025-02-25', '2025-09-28', 'Kolesterol altua', 1),
    (NULL, 50, 83, '2024-11-09', '2025-10-31', 'Bronkitis akutu', 1),
    (NULL, 21, 66, '2024-10-27', '2025-10-08', 'Bronkitis akutu', 1),
    (NULL, 39, 70, '2024-10-03', '2025-05-18', 'Bronkitis akutu', 1),
    (NULL, 49, 81, '2025-01-05', '2025-11-25', 'Hipertentsioa', 1),
    (NULL, 12, 99, '2024-10-12', '2025-07-03', 'Hipertentsioa', 1),
    (NULL, 8, 97, '2024-10-16', '2025-10-07', 'Giharretako mina', 1),
    (NULL, 37, 65, '2024-12-30', '2025-07-02', 'Larruazaleko hantura', 1),
    (NULL, 30, 73, '2024-10-16', '2025-10-03', 'Antsietate egoera', 1),
    (NULL, 14, 100, '2024-10-07', '2025-05-13', 'Infekzio arina', 1),
    (NULL, 10, 71, '2025-01-23', '2025-12-22', 'Urdailerretako arazoa', 1),
    (NULL, 3, 56, '2025-03-20', '2025-11-28', 'Kolesterol altua', 1),
    (NULL, 36, 83, '2025-01-19', '2025-11-09', 'Urdailerretako arazoa', 1),
    (NULL, 30, 70, '2025-01-12', '2025-11-25', 'Diabetes kontrola', 1),
    (NULL, 50, 92, '2025-01-25', '2025-12-01', 'Larruazaleko hantura', 1),
    (NULL, 13, 99, '2025-01-24', '2025-11-20', 'Alergia sasoikoa', 1),
    (NULL, 4, 60, '2024-10-04', '2025-08-21', 'Hipertentsioa', 1),
    (NULL, 34, 72, '2025-01-01', '2025-10-09', 'Urdailerretako arazoa', 1),
    (NULL, 16, 69, '2025-02-10', '2025-10-01', 'Antsietate egoera', 1),
    (NULL, 11, 54, '2024-12-13', '2025-08-09', 'Buruko mina kronikoa', 1),
    (NULL, 28, 77, '2025-03-18', '2025-10-12', 'Antsietate egoera', 1),
    (NULL, 6, 93, '2024-12-20', '2025-09-20', 'Giharretako mina', 1),
    (NULL, 14, 92, '2025-02-05', '2025-11-02', 'Loaren asaldura', 1),
    (NULL, 7, 60, '2025-03-19', '2026-02-22', 'Kolesterol altua', 1),
    (NULL, 50, 63, '2024-12-27', '2025-08-02', 'Larruazaleko hantura', 1),
    (NULL, 12, 60, '2024-12-09', '2025-07-05', 'Alergia sasoikoa', 1),
    (NULL, 19, 71, '2024-12-07', '2025-09-13', 'Bronkitis akutu', 1),
    (NULL, 11, 88, '2025-01-18', '2025-11-23', 'Buruko mina kronikoa', 1),
    (NULL, 26, 73, '2024-10-23', '2025-06-09', 'Hipertentsioa', 1),
    (NULL, 44, 97, '2024-10-11', '2025-04-13', 'Buruko mina kronikoa', 1),
    (NULL, 1, 75, '2024-11-23', '2025-07-05', 'Hipertentsioa', 1),
    (NULL, 20, 72, '2025-01-06', '2025-08-24', 'Alergia sasoikoa', 1),
    (NULL, 23, 89, '2024-11-28', '2025-09-12', 'Infekzio arina', 1),
    (NULL, 8, 78, '2024-12-13', '2025-07-17', 'Alergia sasoikoa', 1),
    (NULL, 32, 59, '2024-12-17', '2025-10-23', 'Larruazaleko hantura', 1),
    (NULL, 46, 92, '2025-03-08', '2025-11-13', 'Hipertentsioa', 1),
    (NULL, 26, 72, '2024-12-29', '2025-06-30', 'Giharretako mina', 1),
    (NULL, 23, 99, '2024-11-21', '2025-10-24', 'Antsietate egoera', 1),
    (NULL, 8, 99, '2024-10-14', '2025-05-28', 'Alergia sasoikoa', 1),
    (NULL, 43, 55, '2024-12-17', '2025-07-20', 'Giharretako mina', 1),
    (NULL, 11, 95, '2025-01-06', '2025-10-29', 'Bronkitis akutu', 1),
    (NULL, 36, 60, '2024-12-30', '2025-09-14', 'Larruazaleko hantura', 1),
    (NULL, 38, 70, '2025-01-01', '2025-08-28', 'Urdailerretako arazoa', 1),
    (NULL, 34, 56, '2024-12-24', '2025-09-02', 'Antsietate egoera', 1),
    (NULL, 29, 58, '2024-10-06', '2025-05-03', 'Infekzio arina', 1),
    (NULL, 18, 95, '2025-03-01', '2025-09-14', 'Hipertentsioa', 1),
    (NULL, 49, 81, '2024-12-08', '2025-10-15', 'Loaren asaldura', 1),
    (NULL, 3, 97, '2025-02-14', '2025-10-09', 'Infekzio arina', 1),
    (NULL, 4, 63, '2025-03-26', '2025-11-26', 'Diabetes kontrola', 1),
    (NULL, 29, 85, '2025-03-08', '2026-03-03', 'Giharretako mina', 1),
    (NULL, 1, 90, '2025-03-04', '2025-10-24', 'Giharretako mina', 1),
    (NULL, 18, 58, '2025-02-15', '2025-08-24', 'Kolesterol altua', 1),
    (NULL, 41, 72, '2025-01-13', '2025-10-31', 'Loaren asaldura', 1),
    (NULL, 21, 73, '2024-10-11', '2025-06-10', 'Diabetes kontrola', 1),
    (NULL, 29, 79, '2025-01-22', '2025-11-05', 'Urdailerretako arazoa', 1),
    (NULL, 25, 92, '2024-10-16', '2025-10-02', 'Loaren asaldura', 1),
    (NULL, 49, 83, '2024-12-12', '2025-07-12', 'Urdailerretako arazoa', 1),
    (NULL, 41, 77, '2025-03-28', '2025-12-09', 'Larruazaleko hantura', 1),
    (NULL, 43, 86, '2024-11-03', '2025-09-01', 'Larruazaleko hantura', 1),
    (NULL, 32, 70, '2025-03-26', '2025-09-29', 'Urdailerretako arazoa', 1),
    (NULL, 4, 73, '2025-02-20', '2025-09-30', 'Infekzio arina', 1),
    (NULL, 18, 56, '2024-11-16', '2025-07-25', 'Kolesterol altua', 1),
    (NULL, 47, 95, '2025-03-24', '2026-02-26', 'Alergia sasoikoa', 1),
    (NULL, 9, 53, '2025-02-20', '2025-11-02', 'Buruko mina kronikoa', 1),
    (NULL, 43, 90, '2025-01-26', '2025-08-29', 'Larruazaleko hantura', 1),
    (NULL, 26, 70, '2024-10-19', '2025-06-16', 'Infekzio arina', 1),
    (NULL, 44, 78, '2024-12-28', '2025-10-10', 'Buruko mina kronikoa', 1),
    (NULL, 12, 52, '2024-12-24', '2025-11-06', 'Buruko mina kronikoa', 1),
    (NULL, 6, 73, '2024-12-02', '2025-10-17', 'Hipertentsioa', 1),
    (NULL, 29, 96, '2024-11-12', '2025-07-29', 'Giharretako mina', 1),
    (NULL, 9, 94, '2025-02-17', '2025-10-19', 'Infekzio arina', 1),
    (NULL, 30, 90, '2024-12-27', '2025-10-02', 'Bronkitis akutu', 1),
    (NULL, 3, 74, '2024-12-12', '2025-08-21', 'Diabetes kontrola', 1),
    (NULL, 44, 54, '2024-11-08', '2025-09-05', 'Giharretako mina', 1),
    (NULL, 28, 92, '2025-01-05', '2025-10-08', 'Loaren asaldura', 1),
    (NULL, 37, 68, '2025-01-10', '2025-11-28', 'Kolesterol altua', 1),
    (NULL, 45, 84, '2025-03-05', '2026-01-18', 'Giharretako mina', 1),
    (NULL, 21, 99, '2025-01-01', '2025-11-10', 'Loaren asaldura', 1),
    (NULL, 24, 73, '2024-11-25', '2025-09-18', 'Urdailerretako arazoa', 1),
    (NULL, 31, 99, '2025-02-17', '2025-11-08', 'Hipertentsioa', 1),
    (NULL, 34, 54, '2025-01-24', '2025-12-25', 'Loaren asaldura', 1),
    (NULL, 4, 85, '2025-03-24', '2026-02-09', 'Buruko mina kronikoa', 1),
    (NULL, 39, 56, '2025-03-21', '2025-10-24', 'Larruazaleko hantura', 1),
    (NULL, 8, 96, '2025-01-03', '2025-11-20', 'Urdailerretako arazoa', 1),
    (NULL, 29, 88, '2025-02-14', '2025-11-05', 'Diabetes kontrola', 1),
    (NULL, 8, 52, '2025-03-30', '2026-02-27', 'Kolesterol altua', 1),
    (NULL, 21, 71, '2025-02-14', '2025-08-28', 'Diabetes kontrola', 1),
    (NULL, 49, 89, '2025-02-26', '2026-01-03', 'Larruazaleko hantura', 1),
    (NULL, 35, 61, '2025-01-01', '2025-10-17', 'Hipertentsioa', 1),
    (NULL, 46, 87, '2025-02-20', '2026-02-18', 'Urdailerretako arazoa', 1),
    (NULL, 40, 99, '2024-12-10', '2025-07-08', 'Antsietate egoera', 1),
    (NULL, 13, 95, '2025-03-05', '2025-11-10', 'Infekzio arina', 1),
    (NULL, 12, 53, '2024-12-31', '2025-08-30', 'Bronkitis akutu', 1),
    (NULL, 27, 56, '2025-03-26', '2025-12-28', 'Urdailerretako arazoa', 1),
    (NULL, 24, 96, '2025-01-09', '2025-11-25', 'Kolesterol altua', 1),
    (NULL, 12, 65, '2025-01-11', '2025-10-12', 'Buruko mina kronikoa', 1),
    (NULL, 37, 81, '2024-10-10', '2025-05-13', 'Loaren asaldura', 1),
    (NULL, 24, 85, '2024-10-06', '2025-04-19', 'Infekzio arina', 1),
    (NULL, 6, 74, '2024-12-26', '2025-12-17', 'Kolesterol altua', 1),
    (NULL, 40, 72, '2025-01-21', '2025-11-13', 'Hipertentsioa', 1),
    (NULL, 48, 72, '2024-11-01', '2025-06-01', 'Bronkitis akutu', 1),
    (NULL, 49, 89, '2024-11-25', '2025-11-07', 'Larruazaleko hantura', 1),
    (NULL, 36, 68, '2024-11-20', '2025-07-25', 'Bronkitis akutu', 1),
    (NULL, 37, 93, '2025-03-27', '2025-10-23', 'Bronkitis akutu', 1),
    (NULL, 17, 77, '2025-02-27', '2025-09-23', 'Diabetes kontrola', 1),
    (NULL, 25, 89, '2024-12-03', '2025-09-10', 'Kolesterol altua', 1),
    (NULL, 31, 64, '2024-12-05', '2025-10-18', 'Giharretako mina', 1),
    (NULL, 29, 82, '2024-12-21', '2025-07-26', 'Buruko mina kronikoa', 1),
    (NULL, 4, 89, '2025-03-04', '2025-09-16', 'Buruko mina kronikoa', 1),
    (NULL, 50, 83, '2024-10-23', '2025-07-27', 'Urdailerretako arazoa', 1),
    (NULL, 15, 60, '2024-11-13', '2025-10-05', 'Bronkitis akutu', 1),
    (NULL, 28, 85, '2024-12-09', '2025-06-17', 'Giharretako mina', 1),
    (NULL, 17, 59, '2025-02-20', '2026-02-19', 'Bronkitis akutu', 1),
    (NULL, 25, 51, '2024-11-23', '2025-08-18', 'Hipertentsioa', 1),
    (NULL, 17, 86, '2025-01-08', '2025-11-01', 'Buruko mina kronikoa', 1),
    (NULL, 39, 69, '2025-01-18', '2025-10-29', 'Giharretako mina', 1),
    (NULL, 48, 88, '2025-01-23', '2025-12-14', 'Giharretako mina', 1),
    (NULL, 15, 76, '2024-12-21', '2025-12-09', 'Kolesterol altua', 1),
    (NULL, 16, 90, '2025-03-01', '2025-12-24', 'Giharretako mina', 1),
    (NULL, 39, 91, '2024-10-09', '2025-05-28', 'Larruazaleko hantura', 1),
    (NULL, 38, 57, '2024-11-14', '2025-08-27', 'Larruazaleko hantura', 1),
    (NULL, 32, 69, '2025-01-29', '2025-11-08', 'Loaren asaldura', 1),
    (NULL, 43, 61, '2024-11-26', '2025-06-27', 'Larruazaleko hantura', 1),
    (NULL, 48, 93, '2025-03-19', '2025-11-22', 'Diabetes kontrola', 1),
    (NULL, 11, 88, '2024-10-15', '2025-08-20', 'Diabetes kontrola', 1),
    (NULL, 9, 63, '2025-04-01', '2025-10-23', 'Infekzio arina', 1),
    (NULL, 25, 66, '2024-11-10', '2025-11-06', 'Larruazaleko hantura', 1),
    (NULL, 5, 56, '2025-02-18', '2025-11-30', 'Buruko mina kronikoa', 1),
    (NULL, 24, 52, '2024-10-06', '2025-08-29', 'Kolesterol altua', 1),
    (NULL, 50, 92, '2024-11-06', '2025-09-20', 'Diabetes kontrola', 1),
    (NULL, 11, 74, '2024-11-01', '2025-05-27', 'Antsietate egoera', 1),
    (NULL, 35, 52, '2024-11-13', '2025-11-05', 'Kolesterol altua', 1),
    (NULL, 25, 72, '2024-10-31', '2025-09-29', 'Buruko mina kronikoa', 1),
    (NULL, 47, 51, '2024-10-04', '2025-08-01', 'Loaren asaldura', 1),
    (NULL, 48, 53, '2025-03-18', '2026-01-19', 'Larruazaleko hantura', 1),
    (NULL, 34, 62, '2025-02-08', '2025-09-15', 'Bronkitis akutu', 1),
    (NULL, 31, 58, '2025-01-19', '2025-09-06', 'Diabetes kontrola', 1),
    (NULL, 33, 81, '2025-02-18', '2025-10-03', 'Giharretako mina', 1),
    (NULL, 16, 69, '2024-10-27', '2025-07-14', 'Kolesterol altua', 1),
    (NULL, 38, 93, '2024-12-20', '2025-11-20', 'Hipertentsioa', 1),
    (NULL, 41, 98, '2024-10-16', '2025-07-20', 'Infekzio arina', 1),
    (NULL, 5, 71, '2024-11-06', '2025-10-17', 'Larruazaleko hantura', 1),
    (NULL, 31, 82, '2024-11-06', '2025-08-13', 'Antsietate egoera', 1),
    (NULL, 17, 85, '2025-03-26', '2025-10-29', 'Buruko mina kronikoa', 1),
    (NULL, 15, 82, '2025-03-18', '2025-10-19', 'Alergia sasoikoa', 1),
    (NULL, 16, 64, '2025-03-24', '2026-02-15', 'Alergia sasoikoa', 1),
    (NULL, 38, 51, '2024-11-01', '2025-06-10', 'Bronkitis akutu', 1),
    (NULL, 9, 66, '2024-10-08', '2025-05-12', 'Bronkitis akutu', 1),
    (NULL, 47, 95, '2024-11-17', '2025-06-06', 'Infekzio arina', 1),
    (NULL, 5, 83, '2024-12-16', '2025-09-05', 'Infekzio arina', 1),
    (NULL, 42, 73, '2024-11-22', '2025-07-11', 'Larruazaleko hantura', 1),
    (NULL, 33, 59, '2025-01-21', '2025-08-28', 'Larruazaleko hantura', 1),
    (NULL, 43, 64, '2025-02-17', '2025-09-01', 'Diabetes kontrola', 1),
    (NULL, 20, 94, '2025-01-26', '2025-07-29', 'Infekzio arina', 1),
    (NULL, 23, 85, '2025-02-10', '2025-11-16', 'Antsietate egoera', 1),
    (NULL, 10, 73, '2024-12-10', '2025-10-18', 'Kolesterol altua', 1),
    (NULL, 12, 74, '2024-11-01', '2025-06-27', 'Buruko mina kronikoa', 1),
    (NULL, 10, 56, '2024-12-11', '2025-06-09', 'Alergia sasoikoa', 1),
    (NULL, 45, 82, '2025-01-30', '2025-12-09', 'Giharretako mina', 1),
    (NULL, 14, 60, '2025-01-21', '2025-12-02', 'Infekzio arina', 1),
    (NULL, 13, 72, '2025-01-21', '2025-11-07', 'Alergia sasoikoa', 1),
    (NULL, 34, 92, '2024-11-30', '2025-08-30', 'Bronkitis akutu', 1),
    (NULL, 49, 69, '2024-12-21', '2025-10-23', 'Antsietate egoera', 1),
    (NULL, 10, 81, '2025-03-15', '2025-10-28', 'Diabetes kontrola', 1),
    (NULL, 28, 63, '2024-10-13', '2025-09-16', 'Alergia sasoikoa', 1),
    (NULL, 39, 88, '2024-11-04', '2025-09-21', 'Alergia sasoikoa', 1),
    (NULL, 47, 62, '2024-11-14', '2025-06-04', 'Urdailerretako arazoa', 1),
    (NULL, 25, 75, '2025-03-02', '2025-09-07', 'Buruko mina kronikoa', 1),
    (NULL, 14, 80, '2024-12-03', '2025-11-08', 'Infekzio arina', 1),
    (NULL, 47, 96, '2025-01-01', '2025-11-02', 'Giharretako mina', 1),
    (NULL, 27, 97, '2025-03-17', '2025-11-25', 'Alergia sasoikoa', 1),
    (NULL, 31, 63, '2024-12-30', '2025-11-05', 'Kolesterol altua', 1),
    (NULL, 13, 92, '2025-03-17', '2026-01-28', 'Loaren asaldura', 1),
    (NULL, 35, 98, '2024-10-06', '2025-06-28', 'Larruazaleko hantura', 1),
    (NULL, 3, 85, '2024-12-14', '2025-11-17', 'Alergia sasoikoa', 1),
    (NULL, 38, 51, '2024-12-25', '2025-10-30', 'Infekzio arina', 1),
    (NULL, 22, 66, '2024-10-28', '2025-10-23', 'Loaren asaldura', 1),
    (NULL, 14, 62, '2024-12-12', '2025-08-27', 'Alergia sasoikoa', 1),
    (NULL, 11, 82, '2025-01-24', '2025-12-21', 'Hipertentsioa', 1),
    (NULL, 5, 80, '2025-04-01', '2025-09-28', 'Bronkitis akutu', 1),
    (NULL, 40, 78, '2024-10-22', '2025-06-02', 'Kolesterol altua', 1),
    (NULL, 6, 95, '2025-02-14', '2026-01-04', 'Kolesterol altua', 1),
    (NULL, 7, 53, '2025-03-07', '2025-09-19', 'Antsietate egoera', 1),
    (NULL, 30, 57, '2025-01-27', '2025-09-16', 'Diabetes kontrola', 1),
    (NULL, 40, 68, '2025-01-27', '2025-08-08', 'Infekzio arina', 1),
    (NULL, 9, 80, '2024-11-11', '2025-07-07', 'Urdailerretako arazoa', 1),
    (NULL, 16, 66, '2024-10-04', '2025-04-09', 'Kolesterol altua', 1),
    (NULL, 42, 54, '2024-12-02', '2025-07-14', 'Kolesterol altua', 1),
    (NULL, 20, 63, '2024-12-06', '2025-07-21', 'Urdailerretako arazoa', 1),
    (NULL, 8, 96, '2025-01-15', '2025-11-17', 'Bronkitis akutu', 1),
    (NULL, 48, 53, '2025-02-08', '2025-11-15', 'Hipertentsioa', 1),
    (NULL, 12, 69, '2024-12-03', '2025-08-29', 'Alergia sasoikoa', 1),
    (NULL, 27, 97, '2024-10-21', '2025-06-15', 'Alergia sasoikoa', 1),
    (NULL, 32, 78, '2025-01-27', '2025-08-12', 'Buruko mina kronikoa', 1),
    (NULL, 23, 79, '2025-02-25', '2025-12-11', 'Diabetes kontrola', 1),
    (NULL, 34, 91, '2024-12-14', '2025-06-22', 'Loaren asaldura', 1),
    (NULL, 22, 74, '2024-11-01', '2025-05-08', 'Hipertentsioa', 1),
    (NULL, 17, 79, '2024-10-20', '2025-07-18', 'Bronkitis akutu', 1),
    (NULL, 29, 94, '2024-12-20', '2025-11-14', 'Alergia sasoikoa', 1),
    (NULL, 44, 82, '2024-11-27', '2025-06-13', 'Hipertentsioa', 1),
    (NULL, 18, 53, '2025-01-29', '2025-12-23', 'Loaren asaldura', 1),
    (NULL, 13, 69, '2024-11-10', '2025-08-23', 'Infekzio arina', 1),
    (NULL, 37, 63, '2025-01-08', '2025-10-17', 'Bronkitis akutu', 1),
    (NULL, 42, 93, '2025-02-11', '2025-11-22', 'Kolesterol altua', 1),
    (NULL, 46, 61, '2025-04-01', '2026-02-09', 'Urdailerretako arazoa', 1),
    (NULL, 6, 86, '2024-12-20', '2025-08-18', 'Bronkitis akutu', 1),
    (NULL, 15, 52, '2025-03-24', '2026-02-13', 'Kolesterol altua', 1),
    (NULL, 40, 57, '2025-01-22', '2025-12-03', 'Urdailerretako arazoa', 1),
    (NULL, 37, 78, '2024-12-01', '2025-11-07', 'Kolesterol altua', 1),
    (NULL, 13, 75, '2025-03-27', '2026-03-01', 'Larruazaleko hantura', 1),
    (NULL, 22, 54, '2024-12-12', '2025-08-17', 'Urdailerretako arazoa', 1),
    (NULL, 27, 98, '2024-10-05', '2025-05-08', 'Buruko mina kronikoa', 1),
    (NULL, 48, 90, '2024-10-09', '2025-05-17', 'Alergia sasoikoa', 1),
    (NULL, 37, 73, '2024-10-04', '2025-07-09', 'Bronkitis akutu', 1),
    (NULL, 13, 83, '2025-01-22', '2025-11-02', 'Kolesterol altua', 1),
    (NULL, 17, 82, '2025-03-29', '2025-12-04', 'Bronkitis akutu', 1),
    (NULL, 1, 89, '2024-10-26', '2025-10-05', 'Hipertentsioa', 1),
    (NULL, 42, 78, '2025-03-26', '2025-11-07', 'Infekzio arina', 1),
    (NULL, 4, 62, '2024-10-07', '2025-08-11', 'Kolesterol altua', 1),
    (NULL, 7, 73, '2024-10-03', '2025-10-01', 'Buruko mina kronikoa', 1),
    (NULL, 43, 72, '2024-12-03', '2025-08-26', 'Hipertentsioa', 1),
    (NULL, 41, 72, '2025-01-18', '2025-08-05', 'Hipertentsioa', 1),
    (NULL, 16, 71, '2025-02-16', '2025-12-18', 'Bronkitis akutu', 1),
    (NULL, 32, 96, '2025-04-01', '2025-10-24', 'Bronkitis akutu', 1),
    (NULL, 29, 55, '2024-11-10', '2025-08-02', 'Giharretako mina', 1),
    (NULL, 34, 84, '2025-03-14', '2025-10-24', 'Larruazaleko hantura', 1),
    (NULL, 44, 63, '2025-01-09', '2025-11-06', 'Urdailerretako arazoa', 1),
    (NULL, 37, 98, '2025-01-03', '2025-08-24', 'Alergia sasoikoa', 1),
    (NULL, 43, 64, '2024-10-09', '2025-08-12', 'Alergia sasoikoa', 1),
    (NULL, 21, 100, '2025-01-12', '2025-11-03', 'Bronkitis akutu', 1),
    (NULL, 17, 68, '2024-11-11', '2025-09-18', 'Infekzio arina', 1),
    (NULL, 18, 68, '2024-10-05', '2025-08-18', 'Kolesterol altua', 1),
    (NULL, 49, 67, '2024-11-16', '2025-11-16', 'Infekzio arina', 1),
    (NULL, 48, 75, '2025-02-19', '2025-08-22', 'Bronkitis akutu', 1),
    (NULL, 3, 57, '2024-12-07', '2025-08-02', 'Bronkitis akutu', 1),
    (NULL, 2, 77, '2024-12-12', '2025-08-01', 'Buruko mina kronikoa', 1),
    (NULL, 27, 52, '2025-03-23', '2026-02-14', 'Loaren asaldura', 1),
    (NULL, 5, 54, '2025-03-19', '2025-09-15', 'Kolesterol altua', 1),
    (NULL, 16, 75, '2024-12-16', '2025-08-02', 'Alergia sasoikoa', 1),
    (NULL, 24, 91, '2025-02-26', '2026-02-11', 'Alergia sasoikoa', 1),
    (NULL, 2, 75, '2025-02-24', '2025-10-25', 'Bronkitis akutu', 1),
    (NULL, 23, 88, '2025-03-14', '2025-12-18', 'Antsietate egoera', 1),
    (NULL, 50, 70, '2024-12-28', '2025-10-12', 'Kolesterol altua', 1),
    (NULL, 34, 62, '2024-12-12', '2025-10-06', 'Larruazaleko hantura', 1),
    (NULL, 19, 67, '2025-03-30', '2025-11-23', 'Alergia sasoikoa', 1),
    (NULL, 50, 90, '2025-02-24', '2026-02-21', 'Loaren asaldura', 1),
    (NULL, 10, 87, '2025-03-26', '2026-01-28', 'Giharretako mina', 1),
    (NULL, 25, 88, '2025-02-07', '2026-01-31', 'Larruazaleko hantura', 1),
    (NULL, 20, 65, '2025-03-16', '2025-10-29', 'Larruazaleko hantura', 1),
    (NULL, 31, 61, '2024-11-16', '2025-08-22', 'Kolesterol altua', 1),
    (NULL, 21, 74, '2024-12-01', '2025-07-04', 'Giharretako mina', 1),
    (NULL, 11, 76, '2025-01-30', '2025-10-23', 'Alergia sasoikoa', 1),
    (NULL, 20, 66, '2025-01-05', '2025-09-25', 'Buruko mina kronikoa', 1),
    (NULL, 42, 74, '2024-10-27', '2025-08-11', 'Giharretako mina', 1),
    (NULL, 47, 63, '2024-12-17', '2025-09-24', 'Hipertentsioa', 1),
    (NULL, 40, 98, '2024-12-09', '2025-07-07', 'Kolesterol altua', 1),
    (NULL, 13, 83, '2025-03-16', '2025-10-15', 'Larruazaleko hantura', 1),
    (NULL, 2, 70, '2024-11-08', '2025-09-19', 'Infekzio arina', 1),
    (NULL, 45, 55, '2025-03-11', '2025-10-05', 'Urdailerretako arazoa', 1),
    (NULL, 23, 64, '2024-12-29', '2025-09-25', 'Kolesterol altua', 1),
    (NULL, 4, 74, '2024-11-16', '2025-07-30', 'Infekzio arina', 1),
    (NULL, 33, 59, '2024-12-26', '2025-11-11', 'Hipertentsioa', 1),
    (NULL, 38, 95, '2024-10-09', '2025-06-06', 'Kolesterol altua', 1),
    (NULL, 20, 81, '2025-03-01', '2025-09-04', 'Bronkitis akutu', 1),
    (NULL, 16, 55, '2025-03-31', '2025-12-02', 'Diabetes kontrola', 1),
    (NULL, 7, 98, '2024-10-14', '2025-10-02', 'Bronkitis akutu', 1),
    (NULL, 44, 54, '2024-12-16', '2025-07-12', 'Urdailerretako arazoa', 1),
    (NULL, 36, 99, '2025-01-20', '2025-10-31', 'Buruko mina kronikoa', 1),
    (NULL, 45, 82, '2024-10-29', '2025-06-28', 'Bronkitis akutu', 1),
    (NULL, 19, 54, '2024-11-06', '2025-07-30', 'Diabetes kontrola', 1),
    (NULL, 40, 58, '2025-01-11', '2025-08-18', 'Giharretako mina', 1),
    (NULL, 5, 88, '2025-01-07', '2025-08-13', 'Hipertentsioa', 1),
    (NULL, 10, 78, '2024-11-13', '2025-09-01', 'Urdailerretako arazoa', 1),
    (NULL, 46, 92, '2025-02-17', '2026-01-24', 'Larruazaleko hantura', 1),
    (NULL, 10, 70, '2024-11-14', '2025-08-12', 'Urdailerretako arazoa', 1),
    (NULL, 7, 76, '2024-11-24', '2025-10-31', 'Kolesterol altua', 1),
    (NULL, 28, 62, '2024-12-01', '2025-11-23', 'Antsietate egoera', 1),
    (NULL, 40, 57, '2025-03-10', '2025-09-07', 'Urdailerretako arazoa', 1),
    (NULL, 35, 62, '2025-03-12', '2025-10-11', 'Infekzio arina', 1),
    (NULL, 2, 69, '2025-02-02', '2025-10-15', 'Diabetes kontrola', 1),
    (NULL, 19, 56, '2025-01-30', '2025-10-31', 'Loaren asaldura', 1),
    (NULL, 34, 57, '2024-10-15', '2025-08-23', 'Bronkitis akutu', 1),
    (NULL, 41, 85, '2024-12-03', '2025-06-02', 'Loaren asaldura', 1),
    (NULL, 22, 51, '2024-12-19', '2025-09-22', 'Infekzio arina', 1),
    (NULL, 28, 96, '2024-12-16', '2025-11-03', 'Bronkitis akutu', 1),
    (NULL, 10, 72, '2024-12-27', '2025-09-28', 'Diabetes kontrola', 1),
    (NULL, 12, 77, '2025-01-28', '2026-01-12', 'Diabetes kontrola', 1),
    (NULL, 21, 99, '2025-02-17', '2025-09-02', 'Loaren asaldura', 1),
    (NULL, 25, 84, '2024-11-26', '2025-06-27', 'Hipertentsioa', 1),
    (NULL, 14, 56, '2024-12-08', '2025-08-29', 'Hipertentsioa', 1),
    (NULL, 8, 69, '2024-10-10', '2025-05-08', 'Diabetes kontrola', 1),
    (NULL, 46, 70, '2024-12-06', '2025-08-31', 'Alergia sasoikoa', 1),
    (NULL, 22, 99, '2025-02-26', '2026-02-17', 'Urdailerretako arazoa', 1),
    (NULL, 36, 91, '2024-12-29', '2025-06-30', 'Alergia sasoikoa', 1),
    (NULL, 20, 95, '2024-11-13', '2025-10-26', 'Infekzio arina', 1),
    (NULL, 37, 52, '2024-11-29', '2025-10-30', 'Bronkitis akutu', 1),
    (NULL, 7, 59, '2024-12-28', '2025-12-11', 'Bronkitis akutu', 1),
    (NULL, 30, 55, '2024-11-26', '2025-11-24', 'Diabetes kontrola', 1),
    (NULL, 33, 68, '2024-10-04', '2025-08-08', 'Infekzio arina', 1),
    (NULL, 24, 52, '2025-03-28', '2025-11-07', 'Buruko mina kronikoa', 1);

INSERT INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna) VALUES
    (1, 50, '10ml', '12 orduan behin'),
    (2, 34, '1g', '8 orduan behin'),
    (3, 72, '1g', '12 orduan behin'),
    (4, 84, '1g', '12 orduan behin'),
    (5, 5, 'koilarakada bat', 'lo egin aurretik'),
    (6, 44, '150mg', 'lo egin aurretik'),
    (7, 49, '20mg', '12 orduan behin'),
    (8, 72, '10ml', 'egunean behin'),
    (9, 82, 'koilarakada bat', '12 orduan behin'),
    (10, 53, '500mg', '12 orduan behin'),
    (11, 36, '10ml', 'gosarian'),
    (12, 19, '1g', '8 orduan behin'),
    (13, 44, '10ml', 'lo egin aurretik'),
    (14, 29, '500mg', 'egunean behin'),
    (15, 52, '150mg', '8 orduan behin'),
    (16, 57, '10ml', 'lo egin aurretik'),
    (17, 24, '10ml', 'gosarian'),
    (18, 73, '150mg', '6 orduan behin'),
    (19, 1, '1g', '8 orduan behin'),
    (20, 32, '10ml', 'egunean behin'),
    (21, 1, 'tablet bat', '12 orduan behin'),
    (22, 33, '500mg', '8 orduan behin'),
    (23, 25, '1g', 'lo egin aurretik'),
    (24, 37, '500mg', '6 orduan behin'),
    (25, 77, 'koilarakada bat', '8 orduan behin'),
    (26, 10, '1g', '8 orduan behin'),
    (27, 4, 'koilarakada bat', '12 orduan behin'),
    (28, 29, 'tablet bat', '6 orduan behin'),
    (29, 40, '20mg', '12 orduan behin'),
    (30, 42, '10ml', 'egunean behin'),
    (31, 18, '500mg', 'gosarian'),
    (32, 5, '1g', '6 orduan behin'),
    (33, 53, 'tablet bat', '6 orduan behin'),
    (34, 64, '20mg', '6 orduan behin'),
    (35, 54, '500mg', 'gosarian'),
    (36, 84, 'tablet bat', 'lo egin aurretik'),
    (37, 38, '500mg', '12 orduan behin'),
    (38, 81, '1g', 'egunean behin'),
    (39, 1, '150mg', '8 orduan behin'),
    (40, 5, '150mg', 'egunean behin'),
    (41, 52, 'koilarakada bat', 'lo egin aurretik'),
    (42, 65, '1g', 'egunean behin'),
    (43, 27, '10ml', '12 orduan behin'),
    (44, 63, '10ml', 'egunean behin'),
    (45, 48, '500mg', '8 orduan behin'),
    (46, 72, 'koilarakada bat', '12 orduan behin'),
    (47, 84, 'koilarakada bat', 'egunean behin'),
    (48, 52, '1g', 'egunean behin'),
    (49, 75, '10ml', 'lo egin aurretik'),
    (50, 58, '20mg', '6 orduan behin'),
    (51, 50, '10ml', '8 orduan behin'),
    (52, 24, 'koilarakada bat', 'lo egin aurretik'),
    (53, 84, '1g', '6 orduan behin'),
    (54, 84, '500mg', '6 orduan behin'),
    (55, 47, '1g', '8 orduan behin'),
    (56, 29, '500mg', '6 orduan behin'),
    (57, 43, '500mg', 'gosarian'),
    (58, 29, '10ml', '6 orduan behin'),
    (59, 26, '1g', 'lo egin aurretik'),
    (60, 67, '20mg', 'egunean behin'),
    (61, 75, 'koilarakada bat', 'egunean behin'),
    (62, 27, '10ml', '12 orduan behin'),
    (63, 10, '1g', '8 orduan behin'),
    (64, 15, '10ml', 'gosarian'),
    (65, 41, 'koilarakada bat', 'lo egin aurretik'),
    (66, 55, '20mg', '12 orduan behin'),
    (67, 1, '150mg', 'egunean behin'),
    (68, 65, '20mg', 'egunean behin'),
    (69, 15, 'koilarakada bat', 'gosarian'),
    (70, 11, 'tablet bat', '12 orduan behin'),
    (71, 54, 'koilarakada bat', 'lo egin aurretik'),
    (72, 76, '150mg', '12 orduan behin'),
    (73, 69, 'tablet bat', 'lo egin aurretik'),
    (74, 81, '1g', '12 orduan behin'),
    (75, 52, '10ml', 'egunean behin'),
    (76, 53, '150mg', 'lo egin aurretik'),
    (77, 24, 'tablet bat', '8 orduan behin'),
    (78, 33, '150mg', '8 orduan behin'),
    (79, 68, '1g', 'lo egin aurretik'),
    (80, 40, '150mg', '8 orduan behin'),
    (81, 66, '500mg', 'lo egin aurretik'),
    (82, 81, '10ml', 'gosarian'),
    (83, 20, 'tablet bat', 'egunean behin'),
    (84, 65, '500mg', '12 orduan behin'),
    (85, 81, '10ml', '6 orduan behin'),
    (86, 26, 'koilarakada bat', '6 orduan behin'),
    (87, 26, '150mg', 'lo egin aurretik'),
    (88, 6, 'koilarakada bat', 'egunean behin'),
    (89, 31, '20mg', '8 orduan behin'),
    (90, 32, 'koilarakada bat', '8 orduan behin'),
    (91, 75, '500mg', '6 orduan behin'),
    (92, 1, '20mg', '12 orduan behin'),
    (93, 84, '500mg', 'gosarian'),
    (94, 14, '150mg', '8 orduan behin'),
    (95, 59, 'tablet bat', 'gosarian'),
    (96, 29, '10ml', '12 orduan behin'),
    (97, 54, 'koilarakada bat', 'gosarian'),
    (98, 6, '1g', '12 orduan behin'),
    (99, 16, '1g', '6 orduan behin'),
    (100, 8, 'tablet bat', 'gosarian'),
    (101, 76, '1g', '12 orduan behin'),
    (102, 3, '150mg', '6 orduan behin'),
    (103, 36, '10ml', '8 orduan behin'),
    (104, 10, '10ml', 'egunean behin'),
    (105, 59, '150mg', 'lo egin aurretik'),
    (106, 77, 'tablet bat', '8 orduan behin'),
    (107, 58, '500mg', '12 orduan behin'),
    (108, 48, 'tablet bat', 'egunean behin'),
    (109, 1, 'koilarakada bat', '8 orduan behin'),
    (110, 34, '500mg', '8 orduan behin'),
    (111, 7, 'tablet bat', '12 orduan behin'),
    (112, 36, '500mg', '12 orduan behin'),
    (113, 79, '150mg', 'lo egin aurretik'),
    (114, 64, 'koilarakada bat', 'gosarian'),
    (115, 47, '150mg', '12 orduan behin'),
    (116, 37, '10ml', 'lo egin aurretik'),
    (117, 81, 'tablet bat', '6 orduan behin'),
    (118, 75, '1g', '12 orduan behin'),
    (119, 21, '1g', 'egunean behin'),
    (120, 32, 'tablet bat', '8 orduan behin'),
    (121, 48, 'koilarakada bat', 'lo egin aurretik'),
    (122, 2, '10ml', 'gosarian'),
    (123, 43, 'koilarakada bat', 'lo egin aurretik'),
    (124, 80, '1g', 'gosarian'),
    (125, 81, '150mg', 'egunean behin'),
    (126, 49, '500mg', 'lo egin aurretik'),
    (127, 5, '10ml', 'lo egin aurretik'),
    (128, 49, 'tablet bat', 'egunean behin'),
    (129, 15, 'tablet bat', 'gosarian'),
    (130, 54, '1g', 'gosarian'),
    (131, 81, '10ml', 'lo egin aurretik'),
    (132, 21, '1g', '8 orduan behin'),
    (133, 42, 'tablet bat', '8 orduan behin'),
    (134, 26, '500mg', 'gosarian'),
    (135, 50, '150mg', '6 orduan behin'),
    (136, 56, '10ml', 'lo egin aurretik'),
    (137, 47, '20mg', 'lo egin aurretik'),
    (138, 72, '20mg', '6 orduan behin'),
    (139, 82, '500mg', '6 orduan behin'),
    (140, 40, '150mg', 'egunean behin'),
    (141, 10, '150mg', 'egunean behin'),
    (142, 23, '20mg', '8 orduan behin'),
    (143, 15, '500mg', '8 orduan behin'),
    (144, 12, '1g', 'egunean behin'),
    (145, 14, '500mg', 'gosarian'),
    (146, 1, 'tablet bat', '12 orduan behin'),
    (147, 6, '20mg', '6 orduan behin'),
    (148, 4, '500mg', '6 orduan behin'),
    (149, 72, '20mg', 'gosarian'),
    (150, 58, '500mg', 'gosarian'),
    (151, 74, '10ml', 'gosarian'),
    (152, 48, 'koilarakada bat', '6 orduan behin'),
    (153, 45, '150mg', '8 orduan behin'),
    (154, 79, '10ml', '12 orduan behin'),
    (155, 49, '1g', '6 orduan behin'),
    (156, 26, '150mg', '6 orduan behin'),
    (157, 51, '1g', '12 orduan behin'),
    (158, 28, '150mg', 'lo egin aurretik'),
    (159, 52, '10ml', 'lo egin aurretik'),
    (160, 84, 'tablet bat', 'egunean behin'),
    (161, 41, '10ml', 'lo egin aurretik'),
    (162, 30, '150mg', '8 orduan behin'),
    (163, 9, 'koilarakada bat', '12 orduan behin'),
    (164, 45, '500mg', '6 orduan behin'),
    (165, 51, 'tablet bat', 'gosarian'),
    (166, 35, '1g', '12 orduan behin'),
    (167, 2, 'koilarakada bat', 'gosarian'),
    (168, 15, '1g', '8 orduan behin'),
    (169, 43, 'koilarakada bat', '8 orduan behin'),
    (170, 37, '500mg', '6 orduan behin'),
    (171, 48, '150mg', 'gosarian'),
    (172, 10, '20mg', '6 orduan behin'),
    (173, 41, '500mg', 'egunean behin'),
    (174, 44, '20mg', '8 orduan behin'),
    (175, 12, '20mg', 'lo egin aurretik'),
    (176, 47, 'tablet bat', '12 orduan behin'),
    (177, 20, '500mg', '12 orduan behin'),
    (178, 70, 'tablet bat', '12 orduan behin'),
    (179, 21, 'tablet bat', '6 orduan behin'),
    (180, 18, '150mg', 'gosarian'),
    (181, 70, '1g', '12 orduan behin'),
    (182, 20, '20mg', '6 orduan behin'),
    (183, 57, 'tablet bat', '8 orduan behin'),
    (184, 38, 'tablet bat', '12 orduan behin'),
    (185, 65, '10ml', '6 orduan behin'),
    (186, 47, '150mg', '6 orduan behin'),
    (187, 73, '1g', 'egunean behin'),
    (188, 43, '150mg', 'gosarian'),
    (189, 81, '20mg', '12 orduan behin'),
    (190, 37, '1g', '6 orduan behin'),
    (191, 31, '1g', '6 orduan behin'),
    (192, 84, '500mg', 'egunean behin'),
    (193, 67, '20mg', 'gosarian'),
    (194, 76, 'koilarakada bat', '6 orduan behin'),
    (195, 43, 'koilarakada bat', 'lo egin aurretik'),
    (196, 76, 'koilarakada bat', 'egunean behin'),
    (197, 43, '10ml', '8 orduan behin'),
    (198, 15, '150mg', 'egunean behin'),
    (199, 53, '1g', 'gosarian'),
    (200, 4, '500mg', '6 orduan behin'),
    (201, 31, '1g', 'egunean behin'),
    (202, 76, '10ml', 'lo egin aurretik'),
    (203, 64, '500mg', 'gosarian'),
    (204, 56, '1g', '8 orduan behin'),
    (205, 71, '1g', 'egunean behin'),
    (206, 74, 'koilarakada bat', 'lo egin aurretik'),
    (207, 45, 'koilarakada bat', 'egunean behin'),
    (208, 26, '20mg', '8 orduan behin'),
    (209, 34, '10ml', 'egunean behin'),
    (210, 64, '10ml', 'egunean behin'),
    (211, 27, '150mg', '8 orduan behin'),
    (212, 56, '150mg', 'gosarian'),
    (213, 29, '150mg', '12 orduan behin'),
    (214, 12, '500mg', '12 orduan behin'),
    (215, 62, '150mg', 'egunean behin'),
    (216, 17, 'tablet bat', '6 orduan behin'),
    (217, 34, 'koilarakada bat', '8 orduan behin'),
    (218, 5, 'koilarakada bat', 'egunean behin'),
    (219, 32, '10ml', 'egunean behin'),
    (220, 69, 'koilarakada bat', 'gosarian'),
    (221, 47, '500mg', '6 orduan behin'),
    (222, 30, '150mg', '12 orduan behin'),
    (223, 47, '150mg', '12 orduan behin'),
    (224, 49, '20mg', 'lo egin aurretik'),
    (225, 70, '10ml', '12 orduan behin'),
    (226, 73, '20mg', '6 orduan behin'),
    (227, 11, '150mg', 'gosarian'),
    (228, 78, '20mg', '12 orduan behin'),
    (229, 76, 'tablet bat', 'egunean behin'),
    (230, 64, '10ml', '12 orduan behin'),
    (231, 52, '500mg', '6 orduan behin'),
    (232, 39, 'koilarakada bat', 'lo egin aurretik'),
    (233, 52, 'tablet bat', 'gosarian'),
    (234, 52, '10ml', '8 orduan behin'),
    (235, 6, '10ml', '12 orduan behin'),
    (236, 78, '1g', 'lo egin aurretik'),
    (237, 38, '20mg', '8 orduan behin'),
    (238, 55, '10ml', 'lo egin aurretik'),
    (239, 14, '10ml', 'lo egin aurretik'),
    (240, 32, '10ml', '12 orduan behin'),
    (241, 60, '10ml', 'egunean behin'),
    (242, 68, 'koilarakada bat', '12 orduan behin'),
    (243, 25, '500mg', '8 orduan behin'),
    (244, 37, '1g', 'egunean behin'),
    (245, 24, '10ml', 'lo egin aurretik'),
    (246, 22, '500mg', 'lo egin aurretik'),
    (247, 28, '150mg', '8 orduan behin'),
    (248, 13, 'koilarakada bat', '6 orduan behin'),
    (249, 51, '150mg', '8 orduan behin'),
    (250, 42, '1g', 'egunean behin'),
    (251, 48, '150mg', '8 orduan behin'),
    (252, 9, '500mg', 'lo egin aurretik'),
    (253, 80, '500mg', '8 orduan behin'),
    (254, 31, '20mg', '6 orduan behin'),
    (255, 41, '500mg', '12 orduan behin'),
    (256, 74, '10ml', 'lo egin aurretik'),
    (257, 79, '500mg', '6 orduan behin'),
    (258, 51, '20mg', '6 orduan behin'),
    (259, 19, '10ml', '12 orduan behin'),
    (260, 41, '10ml', 'egunean behin'),
    (261, 11, '1g', '12 orduan behin'),
    (262, 74, '10ml', '12 orduan behin'),
    (263, 58, 'koilarakada bat', 'gosarian'),
    (264, 11, 'tablet bat', '8 orduan behin'),
    (265, 4, '500mg', 'egunean behin'),
    (266, 83, '10ml', '6 orduan behin'),
    (267, 50, '500mg', 'lo egin aurretik'),
    (268, 12, '20mg', 'egunean behin'),
    (269, 15, '10ml', 'gosarian'),
    (270, 35, '500mg', 'gosarian'),
    (271, 72, 'tablet bat', 'gosarian'),
    (272, 23, '20mg', 'lo egin aurretik'),
    (273, 25, '500mg', 'egunean behin'),
    (274, 78, '20mg', '6 orduan behin'),
    (275, 47, '1g', 'gosarian'),
    (276, 24, '500mg', '6 orduan behin'),
    (277, 31, '20mg', '8 orduan behin'),
    (278, 83, '10ml', '8 orduan behin'),
    (279, 66, 'koilarakada bat', '6 orduan behin'),
    (280, 24, '20mg', '8 orduan behin'),
    (281, 5, '500mg', 'lo egin aurretik'),
    (282, 78, 'koilarakada bat', 'gosarian'),
    (283, 10, 'tablet bat', '12 orduan behin'),
    (284, 20, '10ml', 'lo egin aurretik'),
    (285, 36, '10ml', '12 orduan behin'),
    (286, 21, '150mg', 'lo egin aurretik'),
    (287, 81, '20mg', '6 orduan behin'),
    (288, 44, '20mg', 'gosarian'),
    (289, 41, '500mg', 'gosarian'),
    (290, 81, '1g', '6 orduan behin'),
    (291, 3, '150mg', 'lo egin aurretik'),
    (292, 47, '1g', 'gosarian'),
    (293, 23, 'koilarakada bat', '12 orduan behin'),
    (294, 42, '10ml', '12 orduan behin'),
    (295, 61, '500mg', 'lo egin aurretik'),
    (296, 40, '500mg', 'egunean behin'),
    (297, 6, 'tablet bat', '8 orduan behin'),
    (298, 43, '500mg', 'lo egin aurretik'),
    (299, 36, '1g', 'egunean behin'),
    (300, 8, '20mg', '12 orduan behin'),
    (117, 75, 'tablet bat', 'egunean behin'),
    (227, 51, 'koilarakada bat', 'lo egin aurretik'),
    (138, 77, 'tablet bat', 'egunean behin'),
    (185, 9, '10ml', '12 orduan behin'),
    (29, 16, 'tablet bat', 'gosarian'),
    (116, 70, '500mg', '6 orduan behin'),
    (192, 41, 'tablet bat', '8 orduan behin'),
    (60, 15, 'koilarakada bat', '8 orduan behin'),
    (89, 70, '150mg', 'lo egin aurretik'),
    (205, 8, '150mg', '6 orduan behin'),
    (2, 21, '500mg', '8 orduan behin'),
    (40, 71, '20mg', '12 orduan behin'),
    (137, 81, 'koilarakada bat', 'egunean behin'),
    (118, 53, '10ml', 'lo egin aurretik'),
    (82, 14, '500mg', '6 orduan behin'),
    (159, 4, 'koilarakada bat', 'egunean behin'),
    (21, 13, '20mg', 'lo egin aurretik'),
    (251, 27, 'tablet bat', '12 orduan behin'),
    (70, 37, '10ml', 'lo egin aurretik'),
    (110, 38, '20mg', 'lo egin aurretik'),
    (98, 43, '20mg', '8 orduan behin'),
    (292, 21, '10ml', '8 orduan behin'),
    (192, 74, 'tablet bat', 'lo egin aurretik'),
    (218, 44, '20mg', 'egunean behin'),
    (22, 84, '150mg', '12 orduan behin'),
    (241, 35, '500mg', '12 orduan behin'),
    (51, 73, 'tablet bat', 'lo egin aurretik'),
    (107, 35, '150mg', '12 orduan behin'),
    (145, 17, 'tablet bat', '8 orduan behin'),
    (82, 72, '1g', '8 orduan behin'),
    (90, 70, 'tablet bat', 'lo egin aurretik'),
    (60, 55, '1g', 'egunean behin'),
    (131, 39, '150mg', '6 orduan behin'),
    (202, 12, '20mg', '6 orduan behin'),
    (290, 64, '20mg', '12 orduan behin'),
    (238, 35, 'tablet bat', 'lo egin aurretik'),
    (3, 60, 'koilarakada bat', '12 orduan behin'),
    (232, 58, '150mg', 'egunean behin'),
    (260, 31, 'koilarakada bat', '6 orduan behin'),
    (222, 56, '500mg', '8 orduan behin'),
    (250, 67, '20mg', 'egunean behin'),
    (77, 69, 'tablet bat', 'egunean behin'),
    (146, 55, '500mg', '6 orduan behin'),
    (59, 76, '1g', 'egunean behin'),
    (285, 46, '1g', 'lo egin aurretik'),
    (205, 82, '10ml', '8 orduan behin'),
    (75, 2, 'koilarakada bat', 'lo egin aurretik'),
    (240, 59, 'tablet bat', 'egunean behin'),
    (219, 8, 'tablet bat', 'egunean behin'),
    (213, 83, '500mg', '12 orduan behin'),
    (200, 25, '20mg', '12 orduan behin'),
    (93, 62, '1g', 'gosarian'),
    (197, 28, '1g', 'gosarian'),
    (178, 21, '10ml', '6 orduan behin'),
    (278, 9, 'tablet bat', 'gosarian'),
    (76, 14, 'koilarakada bat', '6 orduan behin'),
    (217, 9, 'tablet bat', 'lo egin aurretik'),
    (173, 55, '1g', '6 orduan behin'),
    (204, 47, '20mg', 'egunean behin'),
    (183, 37, '1g', '12 orduan behin'),
    (115, 16, '150mg', '6 orduan behin'),
    (160, 53, '20mg', 'egunean behin'),
    (184, 1, '150mg', '6 orduan behin'),
    (206, 26, 'tablet bat', '6 orduan behin'),
    (30, 5, 'tablet bat', '12 orduan behin'),
    (259, 36, '10ml', '12 orduan behin'),
    (38, 59, '500mg', '12 orduan behin'),
    (13, 65, 'tablet bat', 'egunean behin'),
    (233, 7, 'tablet bat', 'gosarian'),
    (153, 84, '20mg', 'egunean behin'),
    (74, 55, '500mg', 'lo egin aurretik'),
    (12, 82, '1g', 'lo egin aurretik'),
    (212, 60, '150mg', 'egunean behin'),
    (182, 73, '10ml', '6 orduan behin'),
    (177, 82, '10ml', 'gosarian'),
    (99, 52, '1g', 'gosarian'),
    (77, 11, '150mg', '6 orduan behin'),
    (2, 3, '150mg', 'gosarian'),
    (27, 21, '1g', '12 orduan behin'),
    (20, 72, 'tablet bat', 'gosarian'),
    (71, 82, 'tablet bat', '6 orduan behin'),
    (145, 33, '10ml', '6 orduan behin'),
    (222, 32, 'tablet bat', '6 orduan behin'),
    (124, 74, '150mg', 'egunean behin'),
    (48, 81, 'koilarakada bat', 'gosarian'),
    (189, 50, '10ml', '6 orduan behin'),
    (273, 37, '500mg', 'lo egin aurretik'),
    (45, 43, '500mg', 'egunean behin'),
    (281, 21, '150mg', '6 orduan behin'),
    (169, 46, 'tablet bat', '8 orduan behin'),
    (226, 37, '1g', '8 orduan behin'),
    (43, 1, '1g', 'gosarian'),
    (190, 24, 'tablet bat', 'egunean behin'),
    (218, 7, '20mg', '6 orduan behin'),
    (217, 5, '500mg', '8 orduan behin'),
    (133, 33, '150mg', 'gosarian'),
    (4, 39, '20mg', 'lo egin aurretik'),
    (227, 24, '150mg', 'gosarian'),
    (17, 55, 'koilarakada bat', '8 orduan behin'),
    (120, 41, '1g', '8 orduan behin'),
    (219, 20, '150mg', '12 orduan behin'),
    (155, 54, '10ml', 'egunean behin'),
    (125, 46, '500mg', '8 orduan behin'),
    (180, 5, '150mg', '12 orduan behin'),
    (239, 42, 'tablet bat', '8 orduan behin'),
    (275, 75, '150mg', 'lo egin aurretik'),
    (145, 30, 'koilarakada bat', '12 orduan behin'),
    (181, 5, '500mg', '6 orduan behin'),
    (181, 58, '10ml', '6 orduan behin'),
    (73, 33, '10ml', '12 orduan behin'),
    (255, 7, 'tablet bat', '6 orduan behin'),
    (252, 59, '20mg', 'egunean behin'),
    (39, 50, 'tablet bat', 'lo egin aurretik'),
    (48, 41, '150mg', '6 orduan behin'),
    (42, 34, '10ml', 'gosarian'),
    (67, 41, 'tablet bat', '12 orduan behin'),
    (240, 66, 'koilarakada bat', '6 orduan behin'),
    (81, 14, '150mg', 'lo egin aurretik'),
    (271, 79, '500mg', '8 orduan behin'),
    (269, 1, '1g', 'gosarian'),
    (17, 32, '500mg', '8 orduan behin'),
    (53, 29, '20mg', 'egunean behin'),
    (123, 41, '500mg', '8 orduan behin'),
    (31, 10, '10ml', '6 orduan behin'),
    (235, 57, 'tablet bat', '6 orduan behin'),
    (242, 66, '500mg', 'egunean behin'),
    (273, 73, '150mg', 'egunean behin'),
    (102, 81, 'tablet bat', '6 orduan behin'),
    (243, 21, 'tablet bat', 'gosarian'),
    (287, 11, 'koilarakada bat', 'gosarian'),
    (236, 63, '150mg', 'lo egin aurretik'),
    (246, 16, '1g', 'lo egin aurretik'),
    (49, 48, '500mg', '6 orduan behin'),
    (96, 80, '10ml', 'gosarian'),
    (149, 19, '20mg', '8 orduan behin'),
    (50, 23, '150mg', '12 orduan behin'),
    (205, 2, 'tablet bat', '6 orduan behin'),
    (264, 14, 'koilarakada bat', 'egunean behin'),
    (230, 72, '500mg', '6 orduan behin'),
    (228, 61, '1g', 'gosarian'),
    (73, 44, '1g', 'egunean behin'),
    (222, 44, 'koilarakada bat', '8 orduan behin'),
    (278, 80, '1g', '6 orduan behin'),
    (134, 5, '1g', 'egunean behin'),
    (48, 70, 'koilarakada bat', 'egunean behin'),
    (67, 50, '500mg', 'lo egin aurretik'),
    (285, 71, '10ml', 'lo egin aurretik'),
    (170, 46, '20mg', 'lo egin aurretik'),
    (130, 80, 'tablet bat', '8 orduan behin'),
    (299, 83, 'tablet bat', 'gosarian'),
    (287, 10, '10ml', '6 orduan behin'),
    (102, 43, '10ml', 'lo egin aurretik'),
    (229, 47, 'koilarakada bat', 'lo egin aurretik'),
    (108, 19, '10ml', '12 orduan behin'),
    (220, 21, '500mg', '12 orduan behin'),
    (19, 11, 'tablet bat', '12 orduan behin'),
    (32, 14, '20mg', 'lo egin aurretik'),
    (55, 59, '20mg', '12 orduan behin'),
    (282, 25, 'tablet bat', 'lo egin aurretik'),
    (66, 68, 'tablet bat', 'egunean behin'),
    (172, 25, '1g', '6 orduan behin'),
    (6, 48, 'tablet bat', 'gosarian'),
    (97, 19, 'tablet bat', '6 orduan behin'),
    (174, 21, '1g', 'egunean behin'),
    (176, 31, '20mg', '6 orduan behin'),
    (163, 17, 'koilarakada bat', '6 orduan behin'),
    (108, 72, '1g', '8 orduan behin'),
    (27, 82, '150mg', 'gosarian'),
    (168, 31, 'tablet bat', '12 orduan behin'),
    (118, 48, '1g', 'lo egin aurretik'),
    (7, 53, 'koilarakada bat', '12 orduan behin'),
    (235, 48, '1g', '12 orduan behin'),
    (103, 70, '500mg', '6 orduan behin'),
    (70, 51, '10ml', 'gosarian'),
    (221, 34, 'koilarakada bat', 'egunean behin'),
    (95, 82, 'koilarakada bat', '8 orduan behin'),
    (243, 45, '150mg', '6 orduan behin'),
    (180, 64, 'koilarakada bat', '12 orduan behin'),
    (212, 46, 'koilarakada bat', '12 orduan behin'),
    (115, 36, 'tablet bat', 'gosarian'),
    (92, 48, '1g', '12 orduan behin'),
    (115, 22, '500mg', '8 orduan behin'),
    (40, 6, '150mg', '12 orduan behin'),
    (245, 62, '500mg', '12 orduan behin'),
    (178, 7, 'koilarakada bat', '6 orduan behin'),
    (86, 34, 'tablet bat', '6 orduan behin'),
    (293, 37, '150mg', 'lo egin aurretik'),
    (285, 14, '1g', 'lo egin aurretik'),
    (196, 53, '500mg', 'egunean behin'),
    (149, 71, '500mg', '8 orduan behin'),
    (1, 54, 'koilarakada bat', 'lo egin aurretik'),
    (146, 79, '500mg', '6 orduan behin'),
    (13, 73, '1g', 'lo egin aurretik'),
    (245, 30, '10ml', '8 orduan behin'),
    (101, 7, '500mg', 'egunean behin'),
    (260, 19, '150mg', 'egunean behin'),
    (27, 29, '10ml', '6 orduan behin'),
    (238, 12, '150mg', '8 orduan behin'),
    (91, 19, '150mg', 'gosarian'),
    (232, 74, '150mg', 'egunean behin');

INSERT INTO dokumentuak (jarraipena_id, fitxategi_izena, bidea_zerbitzarian, dokumentu_izena, deskribapena, igotze_data) VALUES
    (2, 'neurketa_2_2296.pdf', '/uploads/docs/paziente_66/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-09-03 02:45:00'),
    (3, 'neurketa_3_6619.pdf', '/uploads/docs/paziente_100/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-09-07 20:23:00'),
    (7, 'neurketa_7_7437.pdf', '/uploads/docs/paziente_87/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-08-10 05:05:00'),
    (23, 'neurketa_23_6152.pdf', '/uploads/docs/paziente_70/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-07-15 02:03:00'),
    (27, 'neurketa_27_3743.jpg', '/uploads/docs/paziente_55/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-02-20 20:48:00'),
    (33, 'neurketa_33_3070.pdf', '/uploads/docs/paziente_87/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-04-21 20:10:00'),
    (34, 'neurketa_34_3720.pdf', '/uploads/docs/paziente_91/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-04-15 09:42:00'),
    (36, 'neurketa_36_7681.jpg', '/uploads/docs/paziente_79/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-01-10 08:37:00'),
    (37, 'neurketa_37_9825.pdf', '/uploads/docs/paziente_87/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-01-07 20:35:00'),
    (41, 'neurketa_41_4097.jpg', '/uploads/docs/paziente_91/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-02-26 13:06:00'),
    (43, 'neurketa_43_4848.pdf', '/uploads/docs/paziente_79/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-12-18 16:51:00'),
    (50, 'neurketa_50_6290.pdf', '/uploads/docs/paziente_82/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-07-05 11:03:00'),
    (51, 'neurketa_51_3590.pdf', '/uploads/docs/paziente_93/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-01-18 21:12:00'),
    (53, 'neurketa_53_5670.png', '/uploads/docs/paziente_79/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-03-20 23:48:00'),
    (55, 'neurketa_55_4975.pdf', '/uploads/docs/paziente_94/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-02-21 05:46:00'),
    (68, 'neurketa_68_8423.jpg', '/uploads/docs/paziente_53/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-10-01 00:41:00'),
    (118, 'neurketa_118_5164.pdf', '/uploads/docs/paziente_88/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2026-01-18 02:11:00'),
    (119, 'neurketa_119_2608.pdf', '/uploads/docs/paziente_99/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-12-04 22:35:00'),
    (123, 'neurketa_123_6334.pdf', '/uploads/docs/paziente_87/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-12-15 12:39:00'),
    (131, 'neurketa_131_6685.pdf', '/uploads/docs/paziente_68/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-09-03 03:10:00'),
    (139, 'neurketa_139_4984.jpg', '/uploads/docs/paziente_53/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-11-28 06:52:00'),
    (147, 'neurketa_147_5448.pdf', '/uploads/docs/paziente_96/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-12-04 06:52:00'),
    (163, 'neurketa_163_1871.pdf', '/uploads/docs/paziente_57/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-09-30 16:27:00'),
    (168, 'neurketa_168_2499.pdf', '/uploads/docs/paziente_63/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-08-16 03:51:00'),
    (177, 'neurketa_177_4397.pdf', '/uploads/docs/paziente_97/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-08-23 11:28:00'),
    (186, 'neurketa_186_8939.png', '/uploads/docs/paziente_62/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-11-28 23:44:00'),
    (188, 'neurketa_188_2671.pdf', '/uploads/docs/paziente_51/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-10-15 18:26:00'),
    (192, 'neurketa_192_7528.jpg', '/uploads/docs/paziente_83/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-05-04 20:58:00'),
    (193, 'neurketa_193_8114.png', '/uploads/docs/paziente_65/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-02-05 13:57:00'),
    (195, 'neurketa_195_7945.jpg', '/uploads/docs/paziente_80/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2026-01-06 11:36:00'),
    (203, 'neurketa_203_4067.png', '/uploads/docs/paziente_78/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-02-23 00:00:00'),
    (206, 'neurketa_206_5174.jpg', '/uploads/docs/paziente_51/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-04-12 05:54:00'),
    (213, 'neurketa_213_2843.pdf', '/uploads/docs/paziente_63/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-11-22 12:48:00'),
    (217, 'neurketa_217_9827.pdf', '/uploads/docs/paziente_64/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-07-27 08:30:00'),
    (218, 'neurketa_218_8884.png', '/uploads/docs/paziente_100/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-01-06 03:56:00'),
    (224, 'neurketa_224_9629.png', '/uploads/docs/paziente_89/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-05-27 16:43:00'),
    (225, 'neurketa_225_5780.pdf', '/uploads/docs/paziente_79/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-05-21 21:11:00'),
    (233, 'neurketa_233_9665.jpg', '/uploads/docs/paziente_85/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-02-02 03:58:00'),
    (237, 'neurketa_237_8733.png', '/uploads/docs/paziente_56/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-05-31 19:51:00'),
    (253, 'neurketa_253_6963.pdf', '/uploads/docs/paziente_53/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-03-23 17:42:00'),
    (268, 'neurketa_268_7130.pdf', '/uploads/docs/paziente_60/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-06-12 18:16:00'),
    (279, 'neurketa_279_6099.pdf', '/uploads/docs/paziente_88/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-11-16 21:44:00'),
    (283, 'neurketa_283_2333.pdf', '/uploads/docs/paziente_66/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-07-14 05:34:00'),
    (288, 'neurketa_288_1408.pdf', '/uploads/docs/paziente_100/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-05-08 13:10:00'),
    (293, 'neurketa_293_7606.pdf', '/uploads/docs/paziente_73/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-07-03 00:30:00'),
    (302, 'neurketa_302_4158.jpg', '/uploads/docs/paziente_76/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-07-16 11:37:00'),
    (332, 'neurketa_332_3515.pdf', '/uploads/docs/paziente_82/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-12-27 21:18:00'),
    (338, 'neurketa_338_9728.jpg', '/uploads/docs/paziente_100/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-03-21 03:31:00'),
    (339, 'neurketa_339_6140.png', '/uploads/docs/paziente_57/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-08-22 18:17:00'),
    (340, 'neurketa_340_7906.png', '/uploads/docs/paziente_60/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-10-24 03:17:00'),
    (341, 'neurketa_341_1022.pdf', '/uploads/docs/paziente_81/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2026-01-20 20:35:00'),
    (344, 'neurketa_344_4984.pdf', '/uploads/docs/paziente_89/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-05-09 02:56:00'),
    (359, 'neurketa_359_1655.pdf', '/uploads/docs/paziente_69/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-01-12 19:45:00'),
    (364, 'neurketa_364_4547.pdf', '/uploads/docs/paziente_82/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-12-05 16:23:00'),
    (369, 'neurketa_369_9554.pdf', '/uploads/docs/paziente_60/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-09-18 13:48:00'),
    (370, 'neurketa_370_9259.pdf', '/uploads/docs/paziente_73/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-09-08 11:49:00'),
    (375, 'neurketa_375_4864.png', '/uploads/docs/paziente_66/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-02-20 03:58:00'),
    (382, 'neurketa_382_2775.pdf', '/uploads/docs/paziente_87/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-06-20 02:22:00'),
    (388, 'neurketa_388_5507.jpg', '/uploads/docs/paziente_72/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-05-08 00:20:00'),
    (415, 'neurketa_415_6149.png', '/uploads/docs/paziente_53/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-07-21 02:02:00'),
    (427, 'neurketa_427_1451.pdf', '/uploads/docs/paziente_77/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-06-24 04:33:00'),
    (442, 'neurketa_442_5138.pdf', '/uploads/docs/paziente_56/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-05-28 23:52:00'),
    (463, 'neurketa_463_5824.pdf', '/uploads/docs/paziente_86/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-06-26 02:33:00'),
    (466, 'neurketa_466_7922.pdf', '/uploads/docs/paziente_83/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-04-22 06:41:00'),
    (467, 'neurketa_467_6416.pdf', '/uploads/docs/paziente_99/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-09-06 12:49:00'),
    (468, 'neurketa_468_3472.pdf', '/uploads/docs/paziente_99/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-04-10 04:36:00'),
    (485, 'neurketa_485_2613.pdf', '/uploads/docs/paziente_72/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-09-11 16:35:00'),
    (493, 'neurketa_493_1211.jpg', '/uploads/docs/paziente_90/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2026-01-09 05:30:00'),
    (502, 'neurketa_502_4677.pdf', '/uploads/docs/paziente_96/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-07-08 02:07:00'),
    (507, 'neurketa_507_7321.png', '/uploads/docs/paziente_80/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-03-03 05:59:00'),
    (508, 'neurketa_508_4573.pdf', '/uploads/docs/paziente_69/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-04-26 03:39:00'),
    (509, 'neurketa_509_8810.jpg', '/uploads/docs/paziente_71/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-07-30 14:29:00'),
    (510, 'neurketa_510_8395.png', '/uploads/docs/paziente_62/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2026-01-05 20:38:00'),
    (528, 'neurketa_528_8822.pdf', '/uploads/docs/paziente_64/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-06-27 18:31:00'),
    (542, 'neurketa_542_4320.pdf', '/uploads/docs/paziente_56/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-07-30 09:02:00'),
    (543, 'neurketa_543_2244.pdf', '/uploads/docs/paziente_76/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-12-05 15:27:00'),
    (545, 'neurketa_545_1016.png', '/uploads/docs/paziente_68/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-01-24 02:13:00'),
    (553, 'neurketa_553_2758.pdf', '/uploads/docs/paziente_93/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-07-13 02:18:00'),
    (573, 'neurketa_573_9161.pdf', '/uploads/docs/paziente_84/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-01-02 15:22:00'),
    (574, 'neurketa_574_5385.png', '/uploads/docs/paziente_93/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-07-03 00:26:00'),
    (585, 'neurketa_585_4546.pdf', '/uploads/docs/paziente_70/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-04-24 00:01:00'),
    (586, 'neurketa_586_1467.jpg', '/uploads/docs/paziente_56/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-05-19 01:06:00'),
    (587, 'neurketa_587_7045.png', '/uploads/docs/paziente_53/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-10-13 15:31:00'),
    (589, 'neurketa_589_5074.jpg', '/uploads/docs/paziente_96/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-12-05 21:46:00'),
    (607, 'neurketa_607_6224.pdf', '/uploads/docs/paziente_70/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-11-20 02:54:00'),
    (611, 'neurketa_611_4735.pdf', '/uploads/docs/paziente_73/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-10-18 12:16:00'),
    (614, 'neurketa_614_2746.pdf', '/uploads/docs/paziente_72/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-01-30 00:09:00'),
    (615, 'neurketa_615_2819.png', '/uploads/docs/paziente_79/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-05-24 03:15:00'),
    (625, 'neurketa_625_6878.pdf', '/uploads/docs/paziente_81/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-09-11 20:22:00'),
    (626, 'neurketa_626_7313.jpg', '/uploads/docs/paziente_100/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-09-29 05:43:00'),
    (637, 'neurketa_637_4078.pdf', '/uploads/docs/paziente_71/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-04-23 17:56:00'),
    (641, 'neurketa_641_1625.jpg', '/uploads/docs/paziente_84/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-12-08 22:47:00'),
    (643, 'neurketa_643_5948.pdf', '/uploads/docs/paziente_84/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-09-29 19:03:00'),
    (645, 'neurketa_645_1231.pdf', '/uploads/docs/paziente_85/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-04-28 23:52:00'),
    (647, 'neurketa_647_6683.pdf', '/uploads/docs/paziente_78/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-12-17 14:02:00'),
    (658, 'neurketa_658_7333.pdf', '/uploads/docs/paziente_70/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-05-20 23:50:00'),
    (665, 'neurketa_665_3434.pdf', '/uploads/docs/paziente_58/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-05-14 19:56:00'),
    (666, 'neurketa_666_7658.pdf', '/uploads/docs/paziente_99/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-05-14 08:27:00'),
    (672, 'neurketa_672_1713.jpg', '/uploads/docs/paziente_70/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-06-14 14:02:00'),
    (685, 'neurketa_685_4729.pdf', '/uploads/docs/paziente_67/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-09-08 22:20:00'),
    (689, 'neurketa_689_1000.png', '/uploads/docs/paziente_55/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-10-01 17:10:00'),
    (691, 'neurketa_691_7223.jpg', '/uploads/docs/paziente_100/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-05-02 00:21:00'),
    (711, 'neurketa_711_9940.pdf', '/uploads/docs/paziente_60/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-02-09 18:30:00'),
    (713, 'neurketa_713_4115.pdf', '/uploads/docs/paziente_71/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-12-15 08:42:00'),
    (719, 'neurketa_719_9032.png', '/uploads/docs/paziente_75/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-09-21 18:42:00'),
    (729, 'neurketa_729_2344.pdf', '/uploads/docs/paziente_67/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-04-11 23:40:00'),
    (742, 'neurketa_742_3749.pdf', '/uploads/docs/paziente_61/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2026-01-02 20:43:00'),
    (743, 'neurketa_743_8129.pdf', '/uploads/docs/paziente_54/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-07-01 04:01:00'),
    (748, 'neurketa_748_6806.pdf', '/uploads/docs/paziente_98/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-03-15 20:50:00'),
    (754, 'neurketa_754_4613.pdf', '/uploads/docs/paziente_68/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-01-14 14:43:00'),
    (759, 'neurketa_759_8457.jpg', '/uploads/docs/paziente_53/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-11-24 05:53:00'),
    (766, 'neurketa_766_2439.pdf', '/uploads/docs/paziente_54/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-05-05 11:18:00'),
    (768, 'neurketa_768_8002.pdf', '/uploads/docs/paziente_70/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-01-07 21:39:00'),
    (769, 'neurketa_769_1460.pdf', '/uploads/docs/paziente_99/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-06-24 17:28:00'),
    (774, 'neurketa_774_7557.jpg', '/uploads/docs/paziente_64/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-01-07 00:04:00'),
    (783, 'neurketa_783_9379.jpg', '/uploads/docs/paziente_98/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-04-23 11:06:00'),
    (791, 'neurketa_791_7658.pdf', '/uploads/docs/paziente_79/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-05-18 02:30:00'),
    (809, 'neurketa_809_5465.pdf', '/uploads/docs/paziente_72/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-04-22 10:01:00'),
    (821, 'neurketa_821_6746.jpg', '/uploads/docs/paziente_91/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-04-08 02:10:00'),
    (822, 'neurketa_822_8006.jpg', '/uploads/docs/paziente_84/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-09-08 05:31:00'),
    (824, 'neurketa_824_4494.jpg', '/uploads/docs/paziente_93/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-03-16 20:56:00'),
    (836, 'neurketa_836_5331.pdf', '/uploads/docs/paziente_83/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2026-01-21 06:19:00'),
    (837, 'neurketa_837_2310.pdf', '/uploads/docs/paziente_70/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-12-19 05:41:00'),
    (845, 'neurketa_845_6680.pdf', '/uploads/docs/paziente_68/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-02-28 12:23:00'),
    (855, 'neurketa_855_6381.pdf', '/uploads/docs/paziente_75/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-12-28 06:46:00'),
    (861, 'neurketa_861_7819.png', '/uploads/docs/paziente_99/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-07-20 05:54:00'),
    (868, 'neurketa_868_8285.jpg', '/uploads/docs/paziente_60/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-12-13 13:12:00'),
    (889, 'neurketa_889_8831.png', '/uploads/docs/paziente_88/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-01-09 16:17:00'),
    (892, 'neurketa_892_8446.pdf', '/uploads/docs/paziente_58/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-05-09 10:54:00'),
    (896, 'neurketa_896_2657.png', '/uploads/docs/paziente_72/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-05-12 07:18:00'),
    (897, 'neurketa_897_5496.jpg', '/uploads/docs/paziente_94/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-08-20 01:20:00'),
    (901, 'neurketa_901_9006.png', '/uploads/docs/paziente_74/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-05-23 09:33:00'),
    (924, 'neurketa_924_8081.png', '/uploads/docs/paziente_82/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-09-08 19:42:00'),
    (937, 'neurketa_937_5902.pdf', '/uploads/docs/paziente_56/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-04-24 23:38:00'),
    (943, 'neurketa_943_2091.jpg', '/uploads/docs/paziente_92/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-04-30 15:34:00'),
    (949, 'neurketa_949_2790.pdf', '/uploads/docs/paziente_86/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-09-19 19:10:00'),
    (950, 'neurketa_950_3877.png', '/uploads/docs/paziente_52/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-10-09 11:55:00'),
    (952, 'neurketa_952_7673.jpg', '/uploads/docs/paziente_99/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-02-21 16:00:00'),
    (953, 'neurketa_953_4106.png', '/uploads/docs/paziente_52/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-02-22 13:30:00'),
    (954, 'neurketa_954_4893.pdf', '/uploads/docs/paziente_99/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-06-29 06:27:00'),
    (955, 'neurketa_955_4465.pdf', '/uploads/docs/paziente_64/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-06-29 05:29:00'),
    (963, 'neurketa_963_6160.pdf', '/uploads/docs/paziente_69/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-01-23 13:03:00'),
    (964, 'neurketa_964_7789.png', '/uploads/docs/paziente_62/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-06-16 21:18:00'),
    (968, 'neurketa_968_4463.png', '/uploads/docs/paziente_78/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-01-14 12:38:00'),
    (989, 'neurketa_989_7181.jpg', '/uploads/docs/paziente_73/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-07-24 13:41:00'),
    (991, 'neurketa_991_4308.pdf', '/uploads/docs/paziente_57/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2026-01-23 04:50:00'),
    (1013, 'neurketa_1013_4966.pdf', '/uploads/docs/paziente_54/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-11-01 19:20:00'),
    (1025, 'neurketa_1025_9865.jpg', '/uploads/docs/paziente_67/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2026-01-31 04:46:00'),
    (1039, 'neurketa_1039_5623.png', '/uploads/docs/paziente_100/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-07-12 23:37:00'),
    (1041, 'neurketa_1041_9768.jpg', '/uploads/docs/paziente_71/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-11-27 16:53:00'),
    (1042, 'neurketa_1042_3382.pdf', '/uploads/docs/paziente_76/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-02-21 14:30:00'),
    (1079, 'neurketa_1079_7411.pdf', '/uploads/docs/paziente_60/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-06-03 21:26:00'),
    (1098, 'neurketa_1098_3634.pdf', '/uploads/docs/paziente_91/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-12-21 01:00:00'),
    (1105, 'neurketa_1105_6058.pdf', '/uploads/docs/paziente_95/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-10-02 02:16:00'),
    (1109, 'neurketa_1109_2024.pdf', '/uploads/docs/paziente_67/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-11-04 16:48:00'),
    (1111, 'neurketa_1111_9948.pdf', '/uploads/docs/paziente_92/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-03-20 13:30:00'),
    (1134, 'neurketa_1134_9985.jpg', '/uploads/docs/paziente_58/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-07-28 09:12:00'),
    (1137, 'neurketa_1137_8137.jpg', '/uploads/docs/paziente_54/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-11-13 19:06:00'),
    (1139, 'neurketa_1139_1532.pdf', '/uploads/docs/paziente_86/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-08-08 19:18:00'),
    (1145, 'neurketa_1145_9206.png', '/uploads/docs/paziente_64/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-02-03 08:24:00'),
    (1151, 'neurketa_1151_8478.pdf', '/uploads/docs/paziente_65/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-11-30 00:01:00'),
    (1162, 'neurketa_1162_9551.jpg', '/uploads/docs/paziente_74/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-05-28 01:29:00'),
    (1174, 'neurketa_1174_5834.jpg', '/uploads/docs/paziente_100/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-07-02 13:12:00'),
    (1184, 'neurketa_1184_6475.jpg', '/uploads/docs/paziente_51/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-01-17 20:01:00'),
    (1185, 'neurketa_1185_4074.pdf', '/uploads/docs/paziente_99/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-03-14 11:20:00'),
    (1186, 'neurketa_1186_6847.jpg', '/uploads/docs/paziente_85/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-03-09 02:37:00'),
    (1210, 'neurketa_1210_5321.pdf', '/uploads/docs/paziente_64/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-12-19 20:09:00'),
    (1211, 'neurketa_1211_8942.pdf', '/uploads/docs/paziente_97/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-10-12 17:19:00'),
    (1213, 'neurketa_1213_3649.png', '/uploads/docs/paziente_71/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-07-07 12:41:00'),
    (1218, 'neurketa_1218_3688.jpg', '/uploads/docs/paziente_75/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-10-30 02:53:00'),
    (1221, 'neurketa_1221_1042.pdf', '/uploads/docs/paziente_85/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-01-10 10:09:00'),
    (1228, 'neurketa_1228_8331.jpg', '/uploads/docs/paziente_78/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-04-14 18:20:00'),
    (1232, 'neurketa_1232_2391.pdf', '/uploads/docs/paziente_85/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-02-18 02:23:00'),
    (1241, 'neurketa_1241_7724.jpg', '/uploads/docs/paziente_53/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-05-02 20:28:00'),
    (1243, 'neurketa_1243_6118.pdf', '/uploads/docs/paziente_93/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-08-01 10:42:00'),
    (1248, 'neurketa_1248_1692.png', '/uploads/docs/paziente_54/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-12-18 04:26:00'),
    (1255, 'neurketa_1255_7342.pdf', '/uploads/docs/paziente_98/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-05-24 23:08:00'),
    (1256, 'neurketa_1256_5627.pdf', '/uploads/docs/paziente_53/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-07-15 18:24:00'),
    (1259, 'neurketa_1259_6460.pdf', '/uploads/docs/paziente_54/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-08-21 07:10:00'),
    (1260, 'neurketa_1260_6250.pdf', '/uploads/docs/paziente_83/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-12-04 16:11:00'),
    (1263, 'neurketa_1263_2479.pdf', '/uploads/docs/paziente_81/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-06-08 16:18:00'),
    (1264, 'neurketa_1264_3982.pdf', '/uploads/docs/paziente_91/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-11-16 09:23:00'),
    (1266, 'neurketa_1266_3558.pdf', '/uploads/docs/paziente_65/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-01-18 02:25:00'),
    (1268, 'neurketa_1268_4712.pdf', '/uploads/docs/paziente_83/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-10-22 23:44:00'),
    (1269, 'neurketa_1269_8758.pdf', '/uploads/docs/paziente_89/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-10-03 20:51:00'),
    (1271, 'neurketa_1271_2928.pdf', '/uploads/docs/paziente_87/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-07-19 02:15:00'),
    (1276, 'neurketa_1276_8851.jpg', '/uploads/docs/paziente_89/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-08-11 20:27:00'),
    (1286, 'neurketa_1286_9718.pdf', '/uploads/docs/paziente_97/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2026-01-14 21:29:00'),
    (1307, 'neurketa_1307_2906.jpg', '/uploads/docs/paziente_90/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-11-09 05:21:00'),
    (1317, 'neurketa_1317_6390.pdf', '/uploads/docs/paziente_58/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2026-01-28 02:52:00'),
    (1319, 'neurketa_1319_3665.pdf', '/uploads/docs/paziente_99/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-10-15 11:55:00'),
    (1324, 'neurketa_1324_9563.pdf', '/uploads/docs/paziente_64/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2026-01-30 01:20:00'),
    (1343, 'neurketa_1343_3097.jpg', '/uploads/docs/paziente_98/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-01-06 19:04:00'),
    (1346, 'neurketa_1346_4087.png', '/uploads/docs/paziente_81/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-09-14 07:22:00'),
    (1363, 'neurketa_1363_8403.pdf', '/uploads/docs/paziente_87/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2026-01-18 14:24:00'),
    (1364, 'neurketa_1364_5568.png', '/uploads/docs/paziente_53/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-09-02 15:16:00'),
    (1368, 'neurketa_1368_5718.pdf', '/uploads/docs/paziente_89/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-05-17 17:42:00'),
    (1371, 'neurketa_1371_5464.pdf', '/uploads/docs/paziente_57/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-02-24 19:06:00'),
    (1381, 'neurketa_1381_2324.jpg', '/uploads/docs/paziente_82/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-02-20 09:31:00'),
    (1393, 'neurketa_1393_8327.pdf', '/uploads/docs/paziente_89/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-11-24 20:56:00'),
    (1394, 'neurketa_1394_3869.pdf', '/uploads/docs/paziente_79/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-10-10 15:01:00'),
    (1414, 'neurketa_1414_7075.jpg', '/uploads/docs/paziente_90/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-04-09 06:50:00'),
    (1417, 'neurketa_1417_2456.png', '/uploads/docs/paziente_72/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-12-28 01:22:00'),
    (1431, 'neurketa_1431_2994.pdf', '/uploads/docs/paziente_78/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2026-01-02 12:49:00'),
    (1432, 'neurketa_1432_7278.png', '/uploads/docs/paziente_75/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-06-30 03:32:00'),
    (1435, 'neurketa_1435_1150.jpg', '/uploads/docs/paziente_83/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-03-17 16:42:00'),
    (1436, 'neurketa_1436_5924.jpg', '/uploads/docs/paziente_78/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-04-26 00:27:00'),
    (1439, 'neurketa_1439_6085.pdf', '/uploads/docs/paziente_77/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-11-21 12:23:00'),
    (1442, 'neurketa_1442_6457.pdf', '/uploads/docs/paziente_56/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-03-22 00:49:00'),
    (1447, 'neurketa_1447_6389.jpg', '/uploads/docs/paziente_62/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-02-28 23:06:00'),
    (1452, 'neurketa_1452_7055.pdf', '/uploads/docs/paziente_56/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-09-02 01:35:00'),
    (1453, 'neurketa_1453_6134.jpg', '/uploads/docs/paziente_89/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2026-01-12 18:46:00'),
    (1455, 'neurketa_1455_7886.pdf', '/uploads/docs/paziente_54/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-12-17 12:43:00'),
    (1456, 'neurketa_1456_2932.pdf', '/uploads/docs/paziente_51/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-08-13 01:09:00'),
    (1475, 'neurketa_1475_1670.pdf', '/uploads/docs/paziente_77/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-05-07 18:56:00'),
    (1480, 'neurketa_1480_2881.pdf', '/uploads/docs/paziente_73/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2026-01-11 20:25:00'),
    (1492, 'neurketa_1492_1657.jpg', '/uploads/docs/paziente_71/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-03-10 23:23:00'),
    (1494, 'neurketa_1494_3773.jpg', '/uploads/docs/paziente_89/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-06-15 17:53:00'),
    (1504, 'neurketa_1504_7459.jpg', '/uploads/docs/paziente_66/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-09-07 10:11:00'),
    (1508, 'neurketa_1508_6158.png', '/uploads/docs/paziente_62/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2026-01-02 16:41:00'),
    (1522, 'neurketa_1522_1468.pdf', '/uploads/docs/paziente_91/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-02-09 17:08:00'),
    (1523, 'neurketa_1523_8567.png', '/uploads/docs/paziente_84/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2026-01-19 11:31:00'),
    (1525, 'neurketa_1525_5410.jpg', '/uploads/docs/paziente_93/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-04-22 03:56:00'),
    (1529, 'neurketa_1529_1769.jpg', '/uploads/docs/paziente_69/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-06-01 04:24:00'),
    (1534, 'neurketa_1534_5513.pdf', '/uploads/docs/paziente_51/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-02-07 12:12:00'),
    (1536, 'neurketa_1536_1063.pdf', '/uploads/docs/paziente_78/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-07-24 23:24:00'),
    (1543, 'neurketa_1543_5423.jpg', '/uploads/docs/paziente_91/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-02-23 00:39:00'),
    (1549, 'neurketa_1549_5413.jpg', '/uploads/docs/paziente_97/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-02-12 10:52:00'),
    (1556, 'neurketa_1556_9135.pdf', '/uploads/docs/paziente_89/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-01-28 17:40:00'),
    (1573, 'neurketa_1573_2485.pdf', '/uploads/docs/paziente_74/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-02-09 13:25:00'),
    (1576, 'neurketa_1576_5828.jpg', '/uploads/docs/paziente_54/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-10-18 18:19:00'),
    (1577, 'neurketa_1577_9134.pdf', '/uploads/docs/paziente_75/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-11-01 15:11:00'),
    (1587, 'neurketa_1587_7380.jpg', '/uploads/docs/paziente_91/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-12-30 03:27:00'),
    (1596, 'neurketa_1596_2287.jpg', '/uploads/docs/paziente_59/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-10-11 08:27:00'),
    (1597, 'neurketa_1597_7980.pdf', '/uploads/docs/paziente_72/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-07-18 08:02:00'),
    (1607, 'neurketa_1607_6958.pdf', '/uploads/docs/paziente_56/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-06-04 17:51:00'),
    (1617, 'neurketa_1617_6851.pdf', '/uploads/docs/paziente_73/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-11-11 19:39:00'),
    (1624, 'neurketa_1624_3535.png', '/uploads/docs/paziente_78/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-10-04 21:07:00'),
    (1626, 'neurketa_1626_5374.png', '/uploads/docs/paziente_75/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-04-04 06:25:00'),
    (1641, 'neurketa_1641_1187.jpg', '/uploads/docs/paziente_62/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-03-12 10:23:00'),
    (1651, 'neurketa_1651_3909.pdf', '/uploads/docs/paziente_94/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-05-03 10:44:00'),
    (1657, 'neurketa_1657_1075.pdf', '/uploads/docs/paziente_74/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-10-20 23:54:00'),
    (1660, 'neurketa_1660_5719.pdf', '/uploads/docs/paziente_87/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-06-15 17:52:00'),
    (1668, 'neurketa_1668_2361.pdf', '/uploads/docs/paziente_72/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-08-22 09:11:00'),
    (1670, 'neurketa_1670_8795.png', '/uploads/docs/paziente_55/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-09-09 01:15:00'),
    (1677, 'neurketa_1677_9097.png', '/uploads/docs/paziente_85/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-03-13 23:46:00'),
    (1683, 'neurketa_1683_8228.png', '/uploads/docs/paziente_63/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-08-28 05:41:00'),
    (1686, 'neurketa_1686_3006.pdf', '/uploads/docs/paziente_58/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-02-15 01:17:00'),
    (1693, 'neurketa_1693_4809.pdf', '/uploads/docs/paziente_73/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2026-01-24 18:54:00'),
    (1697, 'neurketa_1697_1612.pdf', '/uploads/docs/paziente_67/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-12-21 00:47:00'),
    (1698, 'neurketa_1698_9654.pdf', '/uploads/docs/paziente_59/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2026-01-05 12:06:00'),
    (1709, 'neurketa_1709_9269.pdf', '/uploads/docs/paziente_68/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-01-28 12:46:00'),
    (1713, 'neurketa_1713_5049.jpg', '/uploads/docs/paziente_52/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-09-06 06:23:00'),
    (1722, 'neurketa_1722_9497.pdf', '/uploads/docs/paziente_66/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-06-09 18:35:00'),
    (1725, 'neurketa_1725_3831.pdf', '/uploads/docs/paziente_72/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-06-11 17:50:00'),
    (1733, 'neurketa_1733_8074.pdf', '/uploads/docs/paziente_51/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-08-31 21:36:00'),
    (1743, 'neurketa_1743_5275.png', '/uploads/docs/paziente_81/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-03-17 13:43:00'),
    (1745, 'neurketa_1745_7456.png', '/uploads/docs/paziente_77/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2026-01-16 09:44:00'),
    (1762, 'neurketa_1762_5248.png', '/uploads/docs/paziente_75/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-04-18 05:15:00'),
    (1766, 'neurketa_1766_8668.pdf', '/uploads/docs/paziente_54/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-11-30 02:34:00'),
    (1775, 'neurketa_1775_2688.jpg', '/uploads/docs/paziente_79/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-10-07 14:35:00'),
    (1776, 'neurketa_1776_5028.pdf', '/uploads/docs/paziente_56/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-10-31 02:43:00'),
    (1787, 'neurketa_1787_8377.pdf', '/uploads/docs/paziente_89/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-01-07 02:47:00'),
    (1795, 'neurketa_1795_8079.pdf', '/uploads/docs/paziente_90/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-02-24 08:29:00'),
    (1806, 'neurketa_1806_3126.pdf', '/uploads/docs/paziente_65/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-06-16 16:24:00'),
    (1821, 'neurketa_1821_2504.jpg', '/uploads/docs/paziente_51/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2026-01-18 00:53:00'),
    (1845, 'neurketa_1845_6963.png', '/uploads/docs/paziente_78/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-02-22 05:26:00'),
    (1850, 'neurketa_1850_6256.jpg', '/uploads/docs/paziente_61/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-12-10 05:00:00'),
    (1872, 'neurketa_1872_8351.jpg', '/uploads/docs/paziente_64/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-03-20 11:47:00'),
    (1886, 'neurketa_1886_6359.pdf', '/uploads/docs/paziente_57/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-05-06 18:54:00'),
    (1900, 'neurketa_1900_9004.jpg', '/uploads/docs/paziente_96/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-11-25 14:41:00'),
    (1913, 'neurketa_1913_1938.png', '/uploads/docs/paziente_70/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-03-18 22:37:00'),
    (1918, 'neurketa_1918_6180.pdf', '/uploads/docs/paziente_81/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-05-02 02:32:00'),
    (1939, 'neurketa_1939_6317.pdf', '/uploads/docs/paziente_93/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-04-24 20:52:00'),
    (1951, 'neurketa_1951_3073.pdf', '/uploads/docs/paziente_55/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-01-27 23:45:00'),
    (1956, 'neurketa_1956_1754.png', '/uploads/docs/paziente_79/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-12-12 02:52:00'),
    (1958, 'neurketa_1958_8007.jpg', '/uploads/docs/paziente_85/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-08-16 17:00:00'),
    (1971, 'neurketa_1971_4898.pdf', '/uploads/docs/paziente_57/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-10-07 00:00:00'),
    (1975, 'neurketa_1975_6358.pdf', '/uploads/docs/paziente_59/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-10-28 19:22:00'),
    (1976, 'neurketa_1976_4549.pdf', '/uploads/docs/paziente_80/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-08-14 11:16:00'),
    (1983, 'neurketa_1983_8787.pdf', '/uploads/docs/paziente_60/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-04-15 05:30:00'),
    (1985, 'neurketa_1985_6909.pdf', '/uploads/docs/paziente_71/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2026-01-23 17:57:00'),
    (1987, 'neurketa_1987_5372.pdf', '/uploads/docs/paziente_89/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-07-09 00:25:00'),
    (1993, 'neurketa_1993_6817.pdf', '/uploads/docs/paziente_62/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-12-05 17:09:00'),
    (1994, 'neurketa_1994_7538.png', '/uploads/docs/paziente_59/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-12-06 02:36:00'),
    (1996, 'neurketa_1996_8334.pdf', '/uploads/docs/paziente_98/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2026-02-03 17:37:00'),
    (1999, 'neurketa_1999_5309.pdf', '/uploads/docs/paziente_95/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-11-28 05:00:00'),
    (2002, 'neurketa_2002_9053.pdf', '/uploads/docs/paziente_63/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-08-08 01:55:00'),
    (2007, 'neurketa_2007_7430.pdf', '/uploads/docs/paziente_76/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-03-09 22:31:00'),
    (2009, 'neurketa_2009_4936.pdf', '/uploads/docs/paziente_85/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-06-03 07:09:00'),
    (2020, 'neurketa_2020_6692.pdf', '/uploads/docs/paziente_58/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-10-14 22:45:00'),
    (2021, 'neurketa_2021_3399.pdf', '/uploads/docs/paziente_73/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-05-16 11:18:00'),
    (2034, 'neurketa_2034_7097.pdf', '/uploads/docs/paziente_70/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-09-06 01:36:00'),
    (2035, 'neurketa_2035_6980.pdf', '/uploads/docs/paziente_66/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-05-08 00:16:00'),
    (2048, 'neurketa_2048_2837.jpg', '/uploads/docs/paziente_59/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-08-12 11:17:00'),
    (2054, 'neurketa_2054_7651.pdf', '/uploads/docs/paziente_51/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-05-31 15:57:00'),
    (2078, 'neurketa_2078_5589.png', '/uploads/docs/paziente_54/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-03-20 15:13:00'),
    (2084, 'neurketa_2084_6394.jpg', '/uploads/docs/paziente_70/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-10-27 11:03:00'),
    (2091, 'neurketa_2091_9006.pdf', '/uploads/docs/paziente_85/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-11-15 23:50:00'),
    (2092, 'neurketa_2092_5040.jpg', '/uploads/docs/paziente_52/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-08-14 07:13:00'),
    (2098, 'neurketa_2098_8328.pdf', '/uploads/docs/paziente_82/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-04-24 16:42:00'),
    (2101, 'neurketa_2101_7412.pdf', '/uploads/docs/paziente_63/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-09-26 18:52:00'),
    (2106, 'neurketa_2106_8331.jpg', '/uploads/docs/paziente_61/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2026-01-07 15:03:00'),
    (2118, 'neurketa_2118_2021.pdf', '/uploads/docs/paziente_58/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-12-09 05:57:00'),
    (2122, 'neurketa_2122_8207.pdf', '/uploads/docs/paziente_91/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-06-24 16:12:00'),
    (2125, 'neurketa_2125_8642.pdf', '/uploads/docs/paziente_75/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-06-04 11:16:00'),
    (2140, 'neurketa_2140_5878.pdf', '/uploads/docs/paziente_54/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-11-12 14:18:00'),
    (2146, 'neurketa_2146_1228.jpg', '/uploads/docs/paziente_81/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2026-01-14 04:51:00'),
    (2150, 'neurketa_2150_8487.pdf', '/uploads/docs/paziente_63/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-11-18 07:23:00'),
    (2157, 'neurketa_2157_7557.jpg', '/uploads/docs/paziente_62/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-06-04 19:04:00'),
    (2161, 'neurketa_2161_1096.pdf', '/uploads/docs/paziente_52/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-04-16 13:41:00'),
    (2171, 'neurketa_2171_3359.pdf', '/uploads/docs/paziente_67/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-06-09 21:05:00'),
    (2173, 'neurketa_2173_8524.png', '/uploads/docs/paziente_77/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-05-23 21:26:00'),
    (2176, 'neurketa_2176_6186.pdf', '/uploads/docs/paziente_94/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-10-19 12:31:00'),
    (2178, 'neurketa_2178_5006.pdf', '/uploads/docs/paziente_93/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-12-29 06:45:00'),
    (2184, 'neurketa_2184_3163.pdf', '/uploads/docs/paziente_74/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-12-29 19:51:00'),
    (2185, 'neurketa_2185_5963.png', '/uploads/docs/paziente_98/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-03-19 03:05:00'),
    (2186, 'neurketa_2186_9948.pdf', '/uploads/docs/paziente_59/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-07-02 17:12:00'),
    (2212, 'neurketa_2212_5522.jpg', '/uploads/docs/paziente_78/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-01-29 15:20:00'),
    (2225, 'neurketa_2225_9146.pdf', '/uploads/docs/paziente_62/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-02-24 05:20:00'),
    (2233, 'neurketa_2233_3737.pdf', '/uploads/docs/paziente_97/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-09-05 14:30:00'),
    (2249, 'neurketa_2249_9779.jpg', '/uploads/docs/paziente_98/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-07-17 16:53:00'),
    (2250, 'neurketa_2250_7717.pdf', '/uploads/docs/paziente_72/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-08-09 22:59:00'),
    (2270, 'neurketa_2270_4634.jpg', '/uploads/docs/paziente_89/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2026-01-30 06:23:00'),
    (2281, 'neurketa_2281_1614.pdf', '/uploads/docs/paziente_68/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-12-22 14:29:00'),
    (2287, 'neurketa_2287_1012.pdf', '/uploads/docs/paziente_93/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-02-01 12:23:00'),
    (2291, 'neurketa_2291_3472.png', '/uploads/docs/paziente_69/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-02-01 18:37:00'),
    (2297, 'neurketa_2297_8234.pdf', '/uploads/docs/paziente_78/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-05-01 19:31:00'),
    (2303, 'neurketa_2303_5764.png', '/uploads/docs/paziente_94/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-03-08 17:41:00'),
    (2308, 'neurketa_2308_5547.pdf', '/uploads/docs/paziente_77/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-06-25 00:25:00'),
    (2312, 'neurketa_2312_9630.jpg', '/uploads/docs/paziente_75/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-05-01 06:37:00'),
    (2315, 'neurketa_2315_7665.png', '/uploads/docs/paziente_97/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-01-14 15:32:00'),
    (2325, 'neurketa_2325_6852.pdf', '/uploads/docs/paziente_79/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-06-28 11:54:00'),
    (2327, 'neurketa_2327_2359.pdf', '/uploads/docs/paziente_70/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-08-02 11:11:00'),
    (2337, 'neurketa_2337_6035.pdf', '/uploads/docs/paziente_63/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-04-01 13:32:00'),
    (2339, 'neurketa_2339_4379.jpg', '/uploads/docs/paziente_93/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-04-16 05:18:00'),
    (2341, 'neurketa_2341_1515.pdf', '/uploads/docs/paziente_79/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-04-01 13:21:00'),
    (2342, 'neurketa_2342_7032.pdf', '/uploads/docs/paziente_54/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-02-06 19:26:00'),
    (2345, 'neurketa_2345_9659.pdf', '/uploads/docs/paziente_84/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2026-01-07 03:27:00'),
    (2365, 'neurketa_2365_2392.pdf', '/uploads/docs/paziente_83/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-03-03 19:28:00'),
    (2369, 'neurketa_2369_1361.pdf', '/uploads/docs/paziente_51/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2026-01-07 19:14:00'),
    (2371, 'neurketa_2371_5157.pdf', '/uploads/docs/paziente_53/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-03-16 16:26:00'),
    (2377, 'neurketa_2377_7664.png', '/uploads/docs/paziente_61/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-10-27 23:14:00'),
    (2386, 'neurketa_2386_3213.pdf', '/uploads/docs/paziente_92/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-11-09 12:41:00'),
    (2388, 'neurketa_2388_6238.pdf', '/uploads/docs/paziente_54/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-11-15 13:46:00'),
    (2401, 'neurketa_2401_4644.jpg', '/uploads/docs/paziente_81/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-05-26 23:46:00'),
    (2408, 'neurketa_2408_5782.pdf', '/uploads/docs/paziente_55/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-04-08 22:17:00'),
    (2420, 'neurketa_2420_7035.png', '/uploads/docs/paziente_75/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-03-28 04:02:00'),
    (2426, 'neurketa_2426_6096.pdf', '/uploads/docs/paziente_71/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2026-01-26 13:24:00'),
    (2438, 'neurketa_2438_6345.png', '/uploads/docs/paziente_85/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-01-05 10:22:00'),
    (2448, 'neurketa_2448_2977.pdf', '/uploads/docs/paziente_52/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-09-13 21:02:00'),
    (2449, 'neurketa_2449_7469.png', '/uploads/docs/paziente_52/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-05-19 06:50:00'),
    (2469, 'neurketa_2469_5072.pdf', '/uploads/docs/paziente_63/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-11-03 01:26:00'),
    (2471, 'neurketa_2471_5877.png', '/uploads/docs/paziente_61/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-12-02 17:15:00'),
    (2472, 'neurketa_2472_9181.png', '/uploads/docs/paziente_77/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-11-16 12:58:00'),
    (2473, 'neurketa_2473_9837.pdf', '/uploads/docs/paziente_70/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-10-04 12:20:00'),
    (2475, 'neurketa_2475_1047.pdf', '/uploads/docs/paziente_51/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-09-16 19:59:00'),
    (2478, 'neurketa_2478_4854.pdf', '/uploads/docs/paziente_53/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-11-05 04:37:00'),
    (2483, 'neurketa_2483_1453.png', '/uploads/docs/paziente_88/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-08-20 22:29:00'),
    (2487, 'neurketa_2487_7812.pdf', '/uploads/docs/paziente_74/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-05-04 09:05:00'),
    (2498, 'neurketa_2498_8877.pdf', '/uploads/docs/paziente_99/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-09-15 04:56:00'),
    (2507, 'neurketa_2507_5139.pdf', '/uploads/docs/paziente_58/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-07-31 11:17:00'),
    (2509, 'neurketa_2509_9211.pdf', '/uploads/docs/paziente_100/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-11-27 04:16:00'),
    (2513, 'neurketa_2513_1545.pdf', '/uploads/docs/paziente_89/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-03-03 14:11:00'),
    (2515, 'neurketa_2515_1554.pdf', '/uploads/docs/paziente_83/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-06-08 08:40:00'),
    (2516, 'neurketa_2516_6241.pdf', '/uploads/docs/paziente_76/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-11-28 00:59:00'),
    (2548, 'neurketa_2548_8334.pdf', '/uploads/docs/paziente_61/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-10-29 03:44:00'),
    (2550, 'neurketa_2550_3619.pdf', '/uploads/docs/paziente_90/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-05-05 00:25:00'),
    (2553, 'neurketa_2553_6784.pdf', '/uploads/docs/paziente_55/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-04-25 19:18:00'),
    (2563, 'neurketa_2563_9642.pdf', '/uploads/docs/paziente_92/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2026-01-02 08:58:00'),
    (2590, 'neurketa_2590_8311.jpg', '/uploads/docs/paziente_82/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-11-29 01:14:00'),
    (2593, 'neurketa_2593_8074.pdf', '/uploads/docs/paziente_94/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-06-04 22:07:00'),
    (2600, 'neurketa_2600_8178.pdf', '/uploads/docs/paziente_80/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-11-21 18:21:00'),
    (2604, 'neurketa_2604_6095.jpg', '/uploads/docs/paziente_81/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-05-16 21:51:00'),
    (2622, 'neurketa_2622_7034.jpg', '/uploads/docs/paziente_76/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-02-14 16:46:00'),
    (2628, 'neurketa_2628_4462.pdf', '/uploads/docs/paziente_63/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-08-21 21:38:00'),
    (2637, 'neurketa_2637_1979.pdf', '/uploads/docs/paziente_93/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-08-10 16:58:00'),
    (2639, 'neurketa_2639_9226.pdf', '/uploads/docs/paziente_68/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-12-06 10:35:00'),
    (2648, 'neurketa_2648_4488.pdf', '/uploads/docs/paziente_61/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-06-27 13:40:00'),
    (2650, 'neurketa_2650_8896.pdf', '/uploads/docs/paziente_61/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-11-21 15:08:00'),
    (2655, 'neurketa_2655_3035.pdf', '/uploads/docs/paziente_69/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-01-25 23:49:00'),
    (2657, 'neurketa_2657_9474.pdf', '/uploads/docs/paziente_85/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-09-16 15:04:00'),
    (2658, 'neurketa_2658_6712.pdf', '/uploads/docs/paziente_62/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-08-21 09:23:00'),
    (2659, 'neurketa_2659_5167.pdf', '/uploads/docs/paziente_68/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-09-19 14:14:00'),
    (2668, 'neurketa_2668_1517.png', '/uploads/docs/paziente_54/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2026-01-29 06:01:00'),
    (2673, 'neurketa_2673_7060.pdf', '/uploads/docs/paziente_75/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-06-01 06:24:00'),
    (2698, 'neurketa_2698_8494.pdf', '/uploads/docs/paziente_62/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-05-20 06:49:00'),
    (2714, 'neurketa_2714_6758.pdf', '/uploads/docs/paziente_69/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-12-29 02:34:00'),
    (2722, 'neurketa_2722_4145.pdf', '/uploads/docs/paziente_58/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-03-08 22:55:00'),
    (2724, 'neurketa_2724_9086.pdf', '/uploads/docs/paziente_88/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-09-16 08:54:00'),
    (2736, 'neurketa_2736_4679.pdf', '/uploads/docs/paziente_74/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-11-25 07:01:00'),
    (2737, 'neurketa_2737_8067.pdf', '/uploads/docs/paziente_94/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-07-09 23:48:00'),
    (2739, 'neurketa_2739_6891.jpg', '/uploads/docs/paziente_94/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-07-09 07:42:00'),
    (2740, 'neurketa_2740_9440.jpg', '/uploads/docs/paziente_68/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-01-14 08:48:00'),
    (2756, 'neurketa_2756_4037.jpg', '/uploads/docs/paziente_55/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-08-07 02:00:00'),
    (2768, 'neurketa_2768_6412.jpg', '/uploads/docs/paziente_78/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-08-08 04:03:00'),
    (2774, 'neurketa_2774_3695.pdf', '/uploads/docs/paziente_51/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-02-26 10:16:00'),
    (2776, 'neurketa_2776_6310.pdf', '/uploads/docs/paziente_82/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-07-27 03:19:00'),
    (2795, 'neurketa_2795_8511.jpg', '/uploads/docs/paziente_61/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-04-01 19:48:00'),
    (2801, 'neurketa_2801_3941.png', '/uploads/docs/paziente_76/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-03-09 22:58:00'),
    (2814, 'neurketa_2814_1042.pdf', '/uploads/docs/paziente_91/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-11-01 01:38:00'),
    (2834, 'neurketa_2834_2405.jpg', '/uploads/docs/paziente_66/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-11-05 14:13:00'),
    (2842, 'neurketa_2842_6876.jpg', '/uploads/docs/paziente_84/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-08-14 22:00:00'),
    (2845, 'neurketa_2845_8717.pdf', '/uploads/docs/paziente_86/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-02-26 21:03:00'),
    (2849, 'neurketa_2849_5303.png', '/uploads/docs/paziente_67/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-08-27 01:15:00'),
    (2892, 'neurketa_2892_8403.pdf', '/uploads/docs/paziente_79/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-02-17 03:33:00'),
    (2896, 'neurketa_2896_9038.png', '/uploads/docs/paziente_52/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2026-01-22 23:39:00'),
    (2898, 'neurketa_2898_2010.pdf', '/uploads/docs/paziente_96/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-10-30 20:25:00'),
    (2901, 'neurketa_2901_2402.pdf', '/uploads/docs/paziente_72/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-10-22 15:48:00'),
    (2906, 'neurketa_2906_1444.pdf', '/uploads/docs/paziente_76/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-12-16 02:42:00'),
    (2919, 'neurketa_2919_2768.jpg', '/uploads/docs/paziente_58/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-03-26 04:44:00'),
    (2925, 'neurketa_2925_9800.pdf', '/uploads/docs/paziente_79/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-06-11 17:53:00'),
    (2928, 'neurketa_2928_2011.pdf', '/uploads/docs/paziente_51/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-02-25 16:52:00'),
    (2944, 'neurketa_2944_6822.png', '/uploads/docs/paziente_82/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-06-07 00:44:00'),
    (2946, 'neurketa_2946_6458.pdf', '/uploads/docs/paziente_63/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-11-02 17:24:00'),
    (2972, 'neurketa_2972_1738.png', '/uploads/docs/paziente_59/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-09-25 22:30:00'),
    (2974, 'neurketa_2974_1470.pdf', '/uploads/docs/paziente_69/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-02-09 02:45:00'),
    (2976, 'neurketa_2976_7376.pdf', '/uploads/docs/paziente_79/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-11-10 20:48:00'),
    (2985, 'neurketa_2985_8771.pdf', '/uploads/docs/paziente_70/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-04-24 05:44:00'),
    (2996, 'neurketa_2996_8995.pdf', '/uploads/docs/paziente_59/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-12-11 02:06:00'),
    (3005, 'neurketa_3005_4951.jpg', '/uploads/docs/paziente_88/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-08-01 02:42:00'),
    (3008, 'neurketa_3008_5687.pdf', '/uploads/docs/paziente_93/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-03-20 13:33:00'),
    (3010, 'neurketa_3010_1555.png', '/uploads/docs/paziente_76/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-04-02 21:56:00'),
    (3016, 'neurketa_3016_8370.pdf', '/uploads/docs/paziente_57/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-01-13 15:25:00'),
    (3035, 'neurketa_3035_6688.jpg', '/uploads/docs/paziente_72/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-07-10 06:30:00'),
    (3054, 'neurketa_3054_4852.jpg', '/uploads/docs/paziente_78/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-01-08 01:37:00'),
    (3058, 'neurketa_3058_1079.pdf', '/uploads/docs/paziente_57/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-11-26 21:28:00'),
    (3059, 'neurketa_3059_9052.pdf', '/uploads/docs/paziente_100/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-10-09 12:25:00'),
    (3060, 'neurketa_3060_5626.jpg', '/uploads/docs/paziente_91/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-08-18 14:44:00'),
    (3065, 'neurketa_3065_8603.png', '/uploads/docs/paziente_92/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-12-02 18:10:00'),
    (3084, 'neurketa_3084_6073.pdf', '/uploads/docs/paziente_91/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-12-19 06:42:00'),
    (3096, 'neurketa_3096_4008.jpg', '/uploads/docs/paziente_96/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-10-06 11:53:00'),
    (3097, 'neurketa_3097_1643.png', '/uploads/docs/paziente_58/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-07-07 06:30:00'),
    (3103, 'neurketa_3103_9491.pdf', '/uploads/docs/paziente_68/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-01-03 21:38:00'),
    (3112, 'neurketa_3112_2290.pdf', '/uploads/docs/paziente_97/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-11-26 17:55:00'),
    (3119, 'neurketa_3119_6430.jpg', '/uploads/docs/paziente_89/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-12-27 08:11:00'),
    (3132, 'neurketa_3132_3296.pdf', '/uploads/docs/paziente_73/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-06-17 11:20:00'),
    (3135, 'neurketa_3135_1400.pdf', '/uploads/docs/paziente_91/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-07-10 10:03:00'),
    (3138, 'neurketa_3138_6240.pdf', '/uploads/docs/paziente_64/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-02-21 06:24:00'),
    (3140, 'neurketa_3140_4147.pdf', '/uploads/docs/paziente_60/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-12-26 16:53:00'),
    (3164, 'neurketa_3164_6224.png', '/uploads/docs/paziente_73/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2026-01-11 08:17:00'),
    (3169, 'neurketa_3169_8548.png', '/uploads/docs/paziente_88/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-03-02 09:01:00'),
    (3170, 'neurketa_3170_3349.pdf', '/uploads/docs/paziente_51/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-10-01 15:33:00'),
    (3173, 'neurketa_3173_4270.pdf', '/uploads/docs/paziente_73/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2026-01-28 18:38:00'),
    (3174, 'neurketa_3174_7316.jpg', '/uploads/docs/paziente_88/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-02-26 08:35:00'),
    (3176, 'neurketa_3176_7176.pdf', '/uploads/docs/paziente_97/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-09-20 09:13:00'),
    (3183, 'neurketa_3183_1171.pdf', '/uploads/docs/paziente_59/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-09-14 19:37:00'),
    (3186, 'neurketa_3186_4713.png', '/uploads/docs/paziente_72/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-02-25 10:57:00'),
    (3197, 'neurketa_3197_7258.jpg', '/uploads/docs/paziente_73/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-10-17 05:39:00'),
    (3208, 'neurketa_3208_7893.pdf', '/uploads/docs/paziente_96/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-02-17 15:50:00'),
    (3229, 'neurketa_3229_7875.pdf', '/uploads/docs/paziente_73/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-03-19 05:31:00'),
    (3230, 'neurketa_3230_1369.jpg', '/uploads/docs/paziente_69/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-08-31 01:48:00'),
    (3235, 'neurketa_3235_8054.jpg', '/uploads/docs/paziente_53/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-12-06 07:14:00'),
    (3240, 'neurketa_3240_5867.png', '/uploads/docs/paziente_93/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-01-23 21:27:00'),
    (3241, 'neurketa_3241_3773.pdf', '/uploads/docs/paziente_78/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-09-03 15:39:00'),
    (3243, 'neurketa_3243_2349.png', '/uploads/docs/paziente_68/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-04-08 13:27:00'),
    (3247, 'neurketa_3247_4178.pdf', '/uploads/docs/paziente_88/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-02-16 15:07:00'),
    (3250, 'neurketa_3250_8833.jpg', '/uploads/docs/paziente_97/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-07-25 20:19:00'),
    (3252, 'neurketa_3252_8883.pdf', '/uploads/docs/paziente_70/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-07-04 14:10:00'),
    (3261, 'neurketa_3261_2127.pdf', '/uploads/docs/paziente_54/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-01-23 03:46:00'),
    (3283, 'neurketa_3283_2227.pdf', '/uploads/docs/paziente_92/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-01-14 06:39:00'),
    (3312, 'neurketa_3312_3257.png', '/uploads/docs/paziente_86/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-08-05 14:52:00'),
    (3323, 'neurketa_3323_8795.pdf', '/uploads/docs/paziente_72/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-06-20 00:38:00'),
    (3337, 'neurketa_3337_5080.pdf', '/uploads/docs/paziente_67/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-05-02 11:51:00'),
    (3354, 'neurketa_3354_4198.pdf', '/uploads/docs/paziente_54/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2026-02-04 17:33:00'),
    (3355, 'neurketa_3355_1184.jpg', '/uploads/docs/paziente_59/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-02-24 14:47:00'),
    (3365, 'neurketa_3365_3355.pdf', '/uploads/docs/paziente_68/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-04-18 04:13:00'),
    (3366, 'neurketa_3366_3342.pdf', '/uploads/docs/paziente_63/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-03-08 05:57:00'),
    (3368, 'neurketa_3368_6898.pdf', '/uploads/docs/paziente_89/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-01-15 22:01:00'),
    (3376, 'neurketa_3376_1959.jpg', '/uploads/docs/paziente_85/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-03-24 07:37:00'),
    (3380, 'neurketa_3380_4356.png', '/uploads/docs/paziente_86/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-06-18 14:57:00'),
    (3389, 'neurketa_3389_9478.pdf', '/uploads/docs/paziente_55/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-10-15 17:30:00'),
    (3390, 'neurketa_3390_8579.pdf', '/uploads/docs/paziente_97/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-02-24 20:52:00'),
    (3395, 'neurketa_3395_1228.jpg', '/uploads/docs/paziente_86/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-03-17 17:37:00'),
    (3397, 'neurketa_3397_5818.pdf', '/uploads/docs/paziente_86/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-01-18 01:09:00'),
    (3398, 'neurketa_3398_2569.jpg', '/uploads/docs/paziente_54/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2025-09-24 05:20:00'),
    (3401, 'neurketa_3401_3806.pdf', '/uploads/docs/paziente_57/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-06-07 20:45:00'),
    (3412, 'neurketa_3412_3813.pdf', '/uploads/docs/paziente_70/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-11-28 21:04:00'),
    (3419, 'neurketa_3419_7650.png', '/uploads/docs/paziente_55/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-12-01 10:18:00'),
    (3429, 'neurketa_3429_3909.png', '/uploads/docs/paziente_100/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-08-26 15:54:00'),
    (3435, 'neurketa_3435_7776.pdf', '/uploads/docs/paziente_81/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-04-06 03:30:00'),
    (3441, 'neurketa_3441_2256.pdf', '/uploads/docs/paziente_85/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-09-10 05:54:00'),
    (3453, 'neurketa_3453_5267.pdf', '/uploads/docs/paziente_69/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-10-03 23:29:00'),
    (3454, 'neurketa_3454_1353.pdf', '/uploads/docs/paziente_86/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-03-29 19:44:00'),
    (3472, 'neurketa_3472_7236.pdf', '/uploads/docs/paziente_83/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-11-29 23:12:00'),
    (3479, 'neurketa_3479_6238.pdf', '/uploads/docs/paziente_80/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-03-24 06:34:00'),
    (3487, 'neurketa_3487_9168.pdf', '/uploads/docs/paziente_89/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-06-04 02:33:00'),
    (3493, 'neurketa_3493_4418.png', '/uploads/docs/paziente_52/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-04-05 22:46:00'),
    (3500, 'neurketa_3500_2870.pdf', '/uploads/docs/paziente_58/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-05-18 10:03:00'),
    (3521, 'neurketa_3521_5489.pdf', '/uploads/docs/paziente_95/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-12-20 12:21:00'),
    (3542, 'neurketa_3542_4377.png', '/uploads/docs/paziente_73/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-06-09 08:05:00'),
    (3558, 'neurketa_3558_7464.jpg', '/uploads/docs/paziente_100/', 'Ekografia', 'Sabelaldeko ekografiaren irudia.', '2026-01-09 09:12:00'),
    (3563, 'neurketa_3563_4850.pdf', '/uploads/docs/paziente_56/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-06-19 03:23:00'),
    (3564, 'neurketa_3564_7074.pdf', '/uploads/docs/paziente_61/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-07-18 01:47:00'),
    (3566, 'neurketa_3566_6649.pdf', '/uploads/docs/paziente_77/', 'Odol Analisia', 'Pazientearen azken odol analisiaren emaitza zehatzak.', '2025-06-28 10:58:00'),
    (3585, 'neurketa_3585_7575.pdf', '/uploads/docs/paziente_78/', 'Elektrokardiograma', 'Bihotz-erritmoaren grafikoa.', '2025-02-12 09:17:00'),
    (3588, 'neurketa_3588_7602.png', '/uploads/docs/paziente_91/', 'Erradiografia', 'Toraxeko erradiografia digitala.', '2025-06-18 11:00:00'),
    (3593, 'neurketa_3593_4591.pdf', '/uploads/docs/paziente_96/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-06-20 20:17:00'),
    (3604, 'neurketa_3604_4083.pdf', '/uploads/docs/paziente_63/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-04-28 05:36:00'),
    (3605, 'neurketa_3605_5484.pdf', '/uploads/docs/paziente_77/', 'Txosten Medikoa', 'Kontsultaren osteko txosten zehatza.', '2025-08-26 06:29:00');
    
    SET FOREIGN_KEY_CHECKS = 1;

