USE GOsasun_DB;

-- Errezeta #1
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-11', '2024-06-28', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');

-- Errezeta #2
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-26', '2025-02-17', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');

-- Errezeta #3
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-05', '2023-02-03', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');

-- Errezeta #4
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-13', '2023-09-23', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');

-- Errezeta #5
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-11-09', '2024-11-24', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');

-- Errezeta #6
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-18', '2023-03-30', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');

-- Errezeta #7
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-23', '2024-10-17', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');

-- Errezeta #8
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-24', '2024-07-29', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');

-- Errezeta #9
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-11', '2025-02-13', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');

-- Errezeta #10
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-09', '2024-06-10', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');

-- Errezeta #11
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-01-12', '2024-03-19', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');

-- Errezeta #12
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-01', '2023-04-07', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');

-- Errezeta #13
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-13', '2023-08-22', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');

-- Errezeta #14
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-11-27', '2025-01-05', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');

-- Errezeta #15
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-01', '2023-12-22', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');

-- Errezeta #16
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-18', '2023-05-28', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #17
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-03', '2023-07-31', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');

-- Errezeta #18
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-12', '2024-07-29', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');

-- Errezeta #19
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-13', '2024-09-09', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');

-- Errezeta #20
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-20', '2024-05-10', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');

-- Errezeta #21
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-04-22', '2023-07-10', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');

-- Errezeta #22
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-04', '2024-04-01', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');

-- Errezeta #23
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-17', '2024-08-10', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');

-- Errezeta #24
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-11-08', '2025-01-28', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');

-- Errezeta #25
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-20', '2024-04-16', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');

-- Errezeta #26
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-05-10', '2023-07-21', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');

-- Errezeta #27
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-15', '2024-10-07', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');

-- Errezeta #28
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-19', '2023-05-24', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');

-- Errezeta #29
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-08-27', '2023-09-27', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');

-- Errezeta #30
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-19', '2024-10-13', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');

-- Errezeta #31
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-21', '2024-10-10', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');

-- Errezeta #32
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-12', '2023-03-07', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');

-- Errezeta #33
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-13', '2024-01-11', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');

-- Errezeta #34
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-18', '2024-11-28', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');

-- Errezeta #35
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-11-18', '2025-01-17', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');

-- Errezeta #36
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-14', '2023-10-02', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');

-- Errezeta #37
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-21', '2024-02-03', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');

-- Errezeta #38
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-21', '2024-04-20', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');

-- Errezeta #39
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-20', '2024-05-09', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');

-- Errezeta #40
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-29', '2024-07-04', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');

-- Errezeta #41
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-28', '2025-02-27', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');

-- Errezeta #42
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-05', '2024-06-22', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');

-- Errezeta #43
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-23', '2023-04-26', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');

-- Errezeta #44
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-06-26', '2023-07-21', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');

-- Errezeta #45
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-16', '2023-11-29', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');

-- Errezeta #46
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-02', '2025-02-17', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');

-- Errezeta #47
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-31', '2023-04-29', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');

-- Errezeta #48
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-17', '2025-02-26', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');

-- Errezeta #49
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-10', '2024-09-08', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');

-- Errezeta #50
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-28', '2025-02-03', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');

-- Errezeta #51
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-23', '2024-01-15', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');

-- Errezeta #52
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-26', '2023-10-09', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');

-- Errezeta #53
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-07', '2024-12-25', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');

-- Errezeta #54
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-05-21', '2023-07-27', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #55
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-26', '2024-10-09', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');

-- Errezeta #56
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-17', '2023-05-24', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');

-- Errezeta #57
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-07', '2024-08-25', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');

-- Errezeta #58
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-12', '2024-01-20', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');

-- Errezeta #59
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-06-03', '2023-07-08', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');

-- Errezeta #60
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-15', '2024-01-02', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');

-- Errezeta #61
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-03', '2024-07-20', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

-- Errezeta #62
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-04-06', '2024-06-21', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

-- Errezeta #63
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-02', '2024-07-29', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');

-- Errezeta #64
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-06-24', '2023-08-14', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');

-- Errezeta #65
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-02-28', '2023-04-06', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');

-- Errezeta #66
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-01-19', '2024-03-12', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');

-- Errezeta #67
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-05-05', '2023-07-19', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');

-- Errezeta #68
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-20', '2025-02-02', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');

-- Errezeta #69
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-01-30', '2024-04-23', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');

-- Errezeta #70
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-14', '2023-11-11', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');

-- Errezeta #71
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-17', '2023-09-12', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');

-- Errezeta #72
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-06-11', '2023-09-04', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');

-- Errezeta #73
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-12', '2023-11-04', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');

-- Errezeta #74
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-01', '2023-04-14', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');

-- Errezeta #75
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-01', '2023-09-23', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');

-- Errezeta #76
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-22', '2025-02-19', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #77
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-11', '2024-08-25', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #78
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-23', '2024-12-10', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');

-- Errezeta #79
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-16', '2024-11-23', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');

-- Errezeta #80
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-23', '2024-07-29', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');

-- Errezeta #81
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-24', '2023-03-03', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #82
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-02', '2024-11-19', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');

-- Errezeta #83
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-19', '2024-09-04', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');

-- Errezeta #84
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-15', '2024-04-06', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');

-- Errezeta #85
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-17', '2023-08-25', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');

-- Errezeta #86
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-02', '2024-03-29', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #87
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-15', '2024-11-05', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #88
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-30', '2024-11-18', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');

-- Errezeta #89
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-04-29', '2023-05-31', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');

-- Errezeta #90
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-29', '2023-04-26', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');

-- Errezeta #91
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-20', '2023-11-22', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');

-- Errezeta #92
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-05', '2024-02-07', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');

-- Errezeta #93
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-07', '2023-01-28', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');

-- Errezeta #94
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-05-20', '2023-06-06', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');

-- Errezeta #95
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-11-26', '2025-01-10', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');

-- Errezeta #96
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-04-22', '2023-06-09', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');

-- Errezeta #97
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-05-31', '2023-07-21', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');

-- Errezeta #98
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-21', '2024-01-10', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');

-- Errezeta #99
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-04-12', '2023-06-03', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');

-- Errezeta #100
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-04-17', '2024-05-10', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');

-- Errezeta #101
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-27', '2023-04-07', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #102
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-19', '2024-10-05', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

-- Errezeta #103
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-03', '2023-08-06', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');

-- Errezeta #104
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-06-13', '2023-08-08', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #105
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-10', '2024-11-20', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');

-- Errezeta #106
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-04', '2024-11-17', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');

-- Errezeta #107
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-01-24', '2024-03-05', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

-- Errezeta #108
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-22', '2023-12-12', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');

-- Errezeta #109
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-10', '2024-05-09', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');

-- Errezeta #110
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-15', '2024-04-05', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');

-- Errezeta #111
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-31', '2024-01-15', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');

-- Errezeta #112
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-20', '2024-11-09', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');

-- Errezeta #113
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-19', '2024-04-19', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');

-- Errezeta #114
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-07', '2023-10-13', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');

-- Errezeta #115
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-25', '2023-12-04', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');

-- Errezeta #116
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-22', '2023-11-13', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

-- Errezeta #117
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-07', '2024-07-11', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #118
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-04-25', '2024-07-09', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');

-- Errezeta #119
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-11', '2023-08-21', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');

-- Errezeta #120
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-30', '2024-01-19', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');

-- Errezeta #121
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-02', '2024-05-02', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');

-- Errezeta #122
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-22', '2024-04-05', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');

-- Errezeta #123
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-05-13', '2023-06-17', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');

-- Errezeta #124
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-22', '2023-11-28', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');

-- Errezeta #125
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-24', '2023-03-13', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #126
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-29', '2023-03-24', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');

-- Errezeta #127
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-16', '2024-09-19', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #128
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-04-10', '2024-07-05', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');

-- Errezeta #129
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-27', '2024-10-23', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');

-- Errezeta #130
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-25', '2024-12-01', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');

-- Errezeta #131
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-19', '2025-01-07', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');

-- Errezeta #132
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-07', '2024-08-10', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

-- Errezeta #133
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-12', '2024-12-19', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');

-- Errezeta #134
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-11-16', '2025-01-08', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #135
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-25', '2024-08-22', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');

-- Errezeta #136
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-23', '2024-10-08', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');

-- Errezeta #137
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-02-27', '2023-03-24', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');

-- Errezeta #138
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-01', '2024-07-06', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');

-- Errezeta #139
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-04-20', '2023-05-25', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #140
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-15', '2023-05-21', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');

-- Errezeta #141
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-04', '2023-11-11', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');

-- Errezeta #142
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-14', '2023-09-15', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');

-- Errezeta #143
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-08', '2024-02-23', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');

-- Errezeta #144
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-25', '2024-06-06', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');

-- Errezeta #145
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-04', '2024-06-28', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');

-- Errezeta #146
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-07', '2025-01-24', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

-- Errezeta #147
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-16', '2024-01-15', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');

-- Errezeta #148
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-26', '2024-03-16', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');

-- Errezeta #149
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-20', '2025-01-11', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');

-- Errezeta #150
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-28', '2024-09-08', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');

-- Errezeta #151
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-19', '2025-02-27', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');

-- Errezeta #152
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-05-10', '2023-07-01', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');

-- Errezeta #153
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-06', '2023-11-10', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');

-- Errezeta #154
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-04', '2024-02-06', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');

-- Errezeta #155
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-08', '2023-04-10', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');

-- Errezeta #156
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-16', '2024-12-04', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');

-- Errezeta #157
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-08', '2025-01-17', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #158
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-20', '2024-05-09', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');

-- Errezeta #159
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-12', '2023-11-14', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');

-- Errezeta #160
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-07', '2024-06-15', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');

-- Errezeta #161
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-04-20', '2023-06-27', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');

-- Errezeta #162
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-20', '2024-01-06', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');

-- Errezeta #163
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-08-07', '2023-08-31', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');

-- Errezeta #164
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-17', '2024-01-25', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');

-- Errezeta #165
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-18', '2024-09-07', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');

-- Errezeta #166
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-24', '2023-08-21', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');

-- Errezeta #167
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-05', '2023-04-01', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');

-- Errezeta #168
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-29', '2024-11-26', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');

-- Errezeta #169
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-27', '2024-05-26', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');

-- Errezeta #170
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-02', '2023-03-23', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');

-- Errezeta #171
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-16', '2024-11-25', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');

-- Errezeta #172
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-17', '2024-06-11', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

-- Errezeta #173
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-17', '2024-11-14', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');

-- Errezeta #174
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-05', '2024-11-08', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');

-- Errezeta #175
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-18', '2024-10-19', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');

-- Errezeta #176
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-05', '2025-01-14', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');

-- Errezeta #177
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-25', '2024-01-10', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');

-- Errezeta #178
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-08-05', '2023-10-26', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');

-- Errezeta #179
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-06-16', '2023-08-18', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #180
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-26', '2024-10-16', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #181
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-11-30', '2025-01-05', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');

-- Errezeta #182
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-02-18', '2023-04-19', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');

-- Errezeta #183
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-11-26', '2025-01-25', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');

-- Errezeta #184
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-29', '2024-02-04', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');

-- Errezeta #185
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-07', '2024-01-04', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');

-- Errezeta #186
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-10', '2023-12-05', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');

-- Errezeta #187
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-06', '2024-04-12', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');

-- Errezeta #188
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-06-30', '2023-08-09', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');

-- Errezeta #189
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-12', '2024-08-14', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');

-- Errezeta #190
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-14', '2023-05-19', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');

-- Errezeta #191
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-03', '2024-08-10', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');

-- Errezeta #192
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-08', '2024-12-02', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #193
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-31', '2024-09-28', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');

-- Errezeta #194
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-23', '2024-10-08', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');

-- Errezeta #195
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-05', '2024-07-10', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #196
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-09', '2024-08-24', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');

-- Errezeta #197
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-05', '2024-01-03', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');

-- Errezeta #198
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-19', '2024-10-26', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');

-- Errezeta #199
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-11-28', '2025-01-24', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #200
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-02-08', '2023-03-09', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');

-- Errezeta #201
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-01', '2024-02-08', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');

-- Errezeta #202
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-26', '2023-06-09', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');

-- Errezeta #203
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-06-21', '2023-09-12', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');

-- Errezeta #204
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-08-10', '2023-09-24', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');

-- Errezeta #205
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-23', '2023-12-11', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');

-- Errezeta #206
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-03', '2023-12-29', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');

-- Errezeta #207
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-05', '2024-09-30', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');

-- Errezeta #208
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-04-12', '2023-05-09', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');

-- Errezeta #209
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-20', '2024-10-18', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');

-- Errezeta #210
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-01-24', '2024-02-08', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');

-- Errezeta #211
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-21', '2024-09-08', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');

-- Errezeta #212
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-31', '2024-01-22', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');

-- Errezeta #213
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-06', '2024-01-22', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');

-- Errezeta #214
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-10', '2024-08-13', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');

-- Errezeta #215
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-06-19', '2023-08-31', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');

-- Errezeta #216
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-17', '2025-01-16', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');

-- Errezeta #217
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-17', '2023-09-08', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #218
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-31', '2024-09-30', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');

-- Errezeta #219
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-13', '2023-03-20', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');

-- Errezeta #220
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-15', '2023-11-14', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');

-- Errezeta #221
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-06-08', '2023-07-29', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');

-- Errezeta #222
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-26', '2023-11-05', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');

-- Errezeta #223
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-08-25', '2023-09-10', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');

-- Errezeta #224
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-26', '2024-11-14', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');

-- Errezeta #225
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-29', '2025-01-23', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');

-- Errezeta #226
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-08-12', '2023-09-11', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');

-- Errezeta #227
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-17', '2024-01-16', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');

-- Errezeta #228
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-21', '2023-02-07', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');

-- Errezeta #229
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-04-29', '2024-05-19', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #230
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-06-22', '2023-07-24', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');

-- Errezeta #231
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-23', '2024-10-22', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #232
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-20', '2024-01-28', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');

-- Errezeta #233
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-04-05', '2024-06-17', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');

-- Errezeta #234
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-09', '2023-12-18', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');

-- Errezeta #235
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-21', '2024-07-19', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');

-- Errezeta #236
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-01', '2023-09-27', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');

-- Errezeta #237
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-28', '2023-03-27', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');

-- Errezeta #238
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-26', '2024-05-23', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');

-- Errezeta #239
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-11', '2024-05-31', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');

-- Errezeta #240
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-05', '2024-03-26', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');

-- Errezeta #241
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-11', '2023-11-11', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');

-- Errezeta #242
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-04-05', '2024-05-11', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');

-- Errezeta #243
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-01-28', '2024-04-11', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');

-- Errezeta #244
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-01', '2023-04-10', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');

-- Errezeta #245
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-13', '2023-12-08', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');

-- Errezeta #246
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-14', '2024-01-21', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #247
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-05-06', '2023-06-08', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');

-- Errezeta #248
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-15', '2024-08-03', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');

-- Errezeta #249
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-04-29', '2023-06-20', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');

-- Errezeta #250
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-11-22', '2024-12-19', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');

-- Errezeta #251
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-01-22', '2024-03-21', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');

-- Errezeta #252
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-01-24', '2024-03-02', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');

-- Errezeta #253
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-06-18', '2023-09-10', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');

-- Errezeta #254
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-22', '2024-06-17', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');

-- Errezeta #255
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-31', '2023-10-22', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

-- Errezeta #256
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-24', '2024-02-05', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');

-- Errezeta #257
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-07', '2023-07-28', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #258
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-17', '2024-05-11', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');

-- Errezeta #259
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-10', '2025-01-02', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');

-- Errezeta #260
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-08', '2025-02-07', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');

-- Errezeta #261
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-22', '2024-12-06', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');

-- Errezeta #262
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-17', '2024-01-01', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');

-- Errezeta #263
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-19', '2024-02-18', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

-- Errezeta #264
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-04-16', '2023-05-05', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');

-- Errezeta #265
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-06', '2024-12-30', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #266
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-05', '2024-05-10', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');

-- Errezeta #267
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-04-17', '2024-06-03', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');

-- Errezeta #268
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-04-18', '2023-06-05', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');

-- Errezeta #269
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-11', '2024-03-08', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');

-- Errezeta #270
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-15', '2024-01-24', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');

-- Errezeta #271
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-11-08', '2025-01-22', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');

-- Errezeta #272
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-04', '2024-08-17', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');

-- Errezeta #273
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-26', '2024-11-20', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');

-- Errezeta #274
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-31', '2024-10-01', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #275
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-01-21', '2024-03-16', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');

-- Errezeta #276
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-24', '2024-12-01', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');

-- Errezeta #277
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-11-22', '2025-01-02', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #278
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-13', '2024-11-19', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');

-- Errezeta #279
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-12', '2023-02-14', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #280
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-05-11', '2023-07-13', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

-- Errezeta #281
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-18', '2024-01-12', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');

-- Errezeta #282
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-03', '2024-05-26', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');

-- Errezeta #283
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-02-07', '2023-03-09', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');

-- Errezeta #284
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-01-09', '2024-02-15', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #285
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-18', '2024-09-10', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');

-- Errezeta #286
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-11-16', '2025-01-23', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');

-- Errezeta #287
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-04-08', '2023-06-05', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');

-- Errezeta #288
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-06', '2023-10-05', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');

-- Errezeta #289
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-08-01', '2023-08-31', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');

-- Errezeta #290
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-08-31', '2023-10-11', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');

-- Errezeta #291
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-06', '2023-02-25', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');

-- Errezeta #292
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-08', '2024-07-21', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');

-- Errezeta #293
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-02-25', '2023-03-26', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');

-- Errezeta #294
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-06-28', '2023-09-26', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');

-- Errezeta #295
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-01-01', '2024-02-07', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');

-- Errezeta #296
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-05-28', '2023-06-27', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');

-- Errezeta #297
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-05-26', '2023-08-20', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');

-- Errezeta #298
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-04', '2025-02-26', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');

-- Errezeta #299
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-22', '2023-12-24', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

-- Errezeta #300
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-02-15', '2023-03-11', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');

-- Errezeta #301
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-01-05', '2024-03-07', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');

-- Errezeta #302
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-17', '2023-04-23', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');

-- Errezeta #303
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-01', '2023-12-09', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');

-- Errezeta #304
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-11-08', '2024-12-31', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');

-- Errezeta #305
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-08', '2024-10-01', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');

-- Errezeta #306
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-15', '2023-12-06', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');

-- Errezeta #307
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-27', '2024-11-16', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');

-- Errezeta #308
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-08-31', '2023-10-24', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');

-- Errezeta #309
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-04-23', '2023-05-25', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');

-- Errezeta #310
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-01-22', '2024-02-26', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');

-- Errezeta #311
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-16', '2024-04-24', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');

-- Errezeta #312
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-20', '2024-11-25', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');

-- Errezeta #313
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-05-26', '2023-08-04', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

-- Errezeta #314
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-02-20', '2023-03-27', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');

-- Errezeta #315
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-20', '2023-08-12', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');

-- Errezeta #316
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-19', '2024-04-10', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');

-- Errezeta #317
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-10', '2025-01-27', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');

-- Errezeta #318
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-23', '2024-05-30', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');

-- Errezeta #319
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-17', '2024-05-20', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');

-- Errezeta #320
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-05-04', '2023-06-26', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');

-- Errezeta #321
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-23', '2024-01-10', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');

-- Errezeta #322
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-27', '2024-07-21', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');

-- Errezeta #323
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-05', '2024-11-14', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');

-- Errezeta #324
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-04-16', '2024-06-15', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');

-- Errezeta #325
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-22', '2023-09-23', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #326
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-01-31', '2024-02-20', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');

-- Errezeta #327
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-12', '2024-08-01', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');

-- Errezeta #328
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-29', '2025-02-04', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');

-- Errezeta #329
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-21', '2024-08-20', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');

-- Errezeta #330
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-25', '2023-05-03', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');

-- Errezeta #331
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-17', '2024-03-04', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');

-- Errezeta #332
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-09', '2025-02-20', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');

-- Errezeta #333
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-16', '2024-05-20', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');

-- Errezeta #334
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-11', '2024-07-03', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');

-- Errezeta #335
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-08-28', '2023-10-23', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #336
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-01', '2023-08-07', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

-- Errezeta #337
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-06-14', '2023-06-29', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');

-- Errezeta #338
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-01-15', '2024-03-08', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');

-- Errezeta #339
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-04-08', '2024-05-13', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');

-- Errezeta #340
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-23', '2023-04-09', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');

-- Errezeta #341
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-16', '2023-11-17', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');

-- Errezeta #342
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-05', '2023-04-01', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');

-- Errezeta #343
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-28', '2023-03-13', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');

-- Errezeta #344
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-19', '2023-12-16', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');

-- Errezeta #345
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-17', '2023-11-08', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');

-- Errezeta #346
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-08-14', '2023-10-26', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');

-- Errezeta #347
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-08', '2024-03-24', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');

-- Errezeta #348
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-24', '2023-02-15', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');

-- Errezeta #349
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-04', '2023-11-12', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');

-- Errezeta #350
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-04-26', '2023-06-13', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');

-- Errezeta #351
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-29', '2024-11-06', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');

-- Errezeta #352
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-30', '2024-11-17', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');

-- Errezeta #353
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-24', '2024-03-23', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');

-- Errezeta #354
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-01-31', '2024-03-29', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');

-- Errezeta #355
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-29', '2024-01-17', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

-- Errezeta #356
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-12', '2024-12-17', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');

-- Errezeta #357
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-19', '2023-10-05', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');

-- Errezeta #358
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-04-01', '2023-06-06', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');

-- Errezeta #359
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-30', '2024-08-15', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');

-- Errezeta #360
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-02-23', '2023-05-08', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');

-- Errezeta #361
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-02', '2023-02-27', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');

-- Errezeta #362
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-05-06', '2023-07-25', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');

-- Errezeta #363
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-07', '2024-07-21', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');

-- Errezeta #364
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-06-12', '2023-07-31', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');

-- Errezeta #365
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-17', '2023-11-05', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');

-- Errezeta #366
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-02-28', '2023-03-21', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');

-- Errezeta #367
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-23', '2023-09-14', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');

-- Errezeta #368
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-19', '2023-12-13', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');

-- Errezeta #369
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-07', '2023-02-06', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');

-- Errezeta #370
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-18', '2024-06-05', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');

-- Errezeta #371
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-02-19', '2023-04-14', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');

-- Errezeta #372
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-02', '2024-09-03', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');

-- Errezeta #373
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-03', '2024-09-01', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');

-- Errezeta #374
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-14', '2024-11-17', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');

-- Errezeta #375
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-26', '2024-03-20', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');

-- Errezeta #376
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-28', '2024-04-12', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');

-- Errezeta #377
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-01', '2023-08-31', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');

-- Errezeta #378
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-05-31', '2023-07-19', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');

-- Errezeta #379
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-08-19', '2023-11-02', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');

-- Errezeta #380
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-27', '2024-10-07', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');

-- Errezeta #381
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-07', '2024-07-08', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #382
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-29', '2023-03-03', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

-- Errezeta #383
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-20', '2023-04-16', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');

-- Errezeta #384
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-06', '2024-11-22', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');

-- Errezeta #385
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-03', '2023-11-11', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');

-- Errezeta #386
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-18', '2024-05-09', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');

-- Errezeta #387
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-12', '2024-07-30', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');

-- Errezeta #388
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-07', '2023-03-23', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #389
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-05', '2023-03-27', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');

-- Errezeta #390
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-25', '2024-07-01', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');

-- Errezeta #391
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-08', '2023-03-09', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');

-- Errezeta #392
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-04-23', '2024-06-01', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');

-- Errezeta #393
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-31', '2024-06-27', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #394
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-01-13', '2024-03-27', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');

-- Errezeta #395
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-30', '2023-08-14', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #396
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-11', '2024-12-27', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');

-- Errezeta #397
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-13', '2024-08-08', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');

-- Errezeta #398
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-04', '2023-11-07', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');

-- Errezeta #399
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-02', '2024-10-29', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');

-- Errezeta #400
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-05-07', '2023-05-29', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');

-- Errezeta #401
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-04-12', '2023-07-07', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');

-- Errezeta #402
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-02-03', '2023-03-07', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');

-- Errezeta #403
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-08-24', '2023-09-16', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');

-- Errezeta #404
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-26', '2024-09-15', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');

-- Errezeta #405
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-18', '2024-11-11', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');

-- Errezeta #406
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-22', '2024-05-23', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');

-- Errezeta #407
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-06-07', '2023-08-03', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');

-- Errezeta #408
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-09', '2025-01-03', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');

-- Errezeta #409
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-21', '2024-06-19', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');

-- Errezeta #410
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-12', '2024-06-21', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');

-- Errezeta #411
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-13', '2023-03-11', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '8 orduro');

-- Errezeta #412
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-17', '2024-05-03', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');

-- Errezeta #413
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-06-17', '2023-07-09', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

-- Errezeta #414
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-06-04', '2023-08-16', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');

-- Errezeta #415
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-18', '2024-01-31', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');

-- Errezeta #416
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-14', '2024-11-21', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');

-- Errezeta #417
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-28', '2024-05-04', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');

-- Errezeta #418
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-10', '2024-10-25', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');

-- Errezeta #419
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-07', '2023-05-31', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');

-- Errezeta #420
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-02-20', '2023-04-30', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');

-- Errezeta #421
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-01', '2024-07-21', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');

-- Errezeta #422
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-02', '2023-08-19', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');

-- Errezeta #423
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-28', '2024-01-03', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');

-- Errezeta #424
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-06', '2023-12-24', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');

-- Errezeta #425
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-04-05', '2024-06-03', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');

-- Errezeta #426
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-21', '2023-06-08', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');

-- Errezeta #427
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-12-01', '2024-01-04', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');

-- Errezeta #428
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-17', '2023-04-26', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');

-- Errezeta #429
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-14', '2023-12-29', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

-- Errezeta #430
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-02-23', '2023-05-08', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');

-- Errezeta #431
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-28', '2024-06-01', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');

-- Errezeta #432
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-04-25', '2023-05-27', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');

-- Errezeta #433
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-11', '2023-09-27', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');

-- Errezeta #434
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-10', '2023-01-31', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');

-- Errezeta #435
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-08-11', '2023-10-22', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');

-- Errezeta #436
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-04-07', '2024-05-12', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');

-- Errezeta #437
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-09', '2023-07-29', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

-- Errezeta #438
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-22', '2025-01-12', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');

-- Errezeta #439
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-11', '2024-05-24', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');

-- Errezeta #440
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-05-18', '2023-06-09', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');

-- Errezeta #441
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-06', '2024-08-25', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');

-- Errezeta #442
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-27', '2025-01-23', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');

-- Errezeta #443
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-05', '2025-02-22', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');

-- Errezeta #444
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-16', '2024-10-19', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');

-- Errezeta #445
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-05', '2023-10-02', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');

-- Errezeta #446
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-08-06', '2023-10-01', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');

-- Errezeta #447
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-12', '2024-11-09', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');

-- Errezeta #448
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-28', '2024-01-13', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Egunean behin');

-- Errezeta #449
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-06-01', '2023-06-22', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #450
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-01-31', '2024-03-08', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');

-- Errezeta #451
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-04-24', '2023-07-07', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');

-- Errezeta #452
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-30', '2024-07-18', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');

-- Errezeta #453
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-11', '2023-04-02', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '8 orduro');

-- Errezeta #454
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-05-06', '2023-05-28', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');

-- Errezeta #455
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-28', '2024-07-03', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');

-- Errezeta #456
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-04-21', '2023-05-16', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');

-- Errezeta #457
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-12', '2024-08-19', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Otorduetan');

-- Errezeta #458
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-01-29', '2024-03-12', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');

-- Errezeta #459
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-21', '2024-01-01', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');

-- Errezeta #460
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-02-24', '2023-04-10', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');

-- Errezeta #461
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-11-19', '2024-12-18', 'Aztarna bularrean', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');

-- Errezeta #462
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-04', '2024-03-29', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');

-- Errezeta #463
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-24', '2024-02-06', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #464
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-11-26', '2025-02-15', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');

-- Errezeta #465
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-11-02', '2024-12-25', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');

-- Errezeta #466
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-09-10', '2024-10-12', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');

-- Errezeta #467
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-22', '2024-04-25', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');

-- Errezeta #468
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-25', '2025-01-08', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');

-- Errezeta #469
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-26', '2024-07-17', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');

-- Errezeta #470
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-21', '2023-11-15', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');

-- Errezeta #471
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-12', '2025-01-06', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');

-- Errezeta #472
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-05', '2023-11-02', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #473
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-07-26', '2023-09-21', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Otorduetan');

-- Errezeta #474
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-05', '2023-05-30', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');

-- Errezeta #475
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-02-19', '2023-05-04', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Behar denean');

-- Errezeta #476
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-09', '2024-11-07', 'Dermatitisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '12 orduro');

-- Errezeta #477
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-03-16', '2023-06-12', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');

-- Errezeta #478
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-02-17', '2024-04-12', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');

-- Errezeta #479
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-08-14', '2023-09-11', 'Migraña', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');

-- Errezeta #480
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-06-29', '2024-08-28', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Behar denean');

-- Errezeta #481
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-12-01', '2025-02-17', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');

-- Errezeta #482
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-05-05', '2024-06-18', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Behar denean');

-- Errezeta #483
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-20', '2024-10-06', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '12 orduro');

-- Errezeta #484
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-10-13', '2023-11-28', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', '12 orduro');

-- Errezeta #485
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-27', '2024-11-02', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');

-- Errezeta #486
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-08-20', '2024-09-19', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');

-- Errezeta #487
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-11-12', '2024-12-07', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');

-- Errezeta #488
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-01-26', '2023-03-07', 'Alergia sasoi', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', '12 orduro');

-- Errezeta #489
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-16', '2024-01-06', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Egunean behin');

-- Errezeta #490
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-28', '2023-11-24', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Egunean behin');

-- Errezeta #491
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-09-23', '2023-11-10', 'Eztarriko infekzioa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');

-- Errezeta #492
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-11-21', '2025-01-05', 'Antsietate arina', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Oheratu aurretik');

-- Errezeta #493
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-18', '2024-09-26', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Tanpa bat zulo bakoitzean', 'Otorduetan');

-- Errezeta #494
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-04-16', '2024-06-03', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Behar denean');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '1 pilula', 'Oheratu aurretik');

-- Errezeta #495
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-05-20', '2023-06-15', 'Gastroenteritisa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '12 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');

-- Errezeta #496
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-07-25', '2024-09-19', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Otorduetan');

-- Errezeta #497
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-10-04', '2024-10-31', 'Katarroa', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Sobre 1', '8 orduro');

-- Errezeta #498
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-08', '2024-01-04', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', '12 orduro');

-- Errezeta #499
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2023-11-06', '2023-12-28', 'Gripe arrunta', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Oheratu aurretik');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', '8 orduro');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', 'Behar denean');

-- Errezeta #500
INSERT INTO errezetak (mediku_id, paziente_id, igorpen_data, iraungitze_data, diagnostiko_laburra, aktibo)
VALUES ((SELECT id FROM medikuak ORDER BY RAND() LIMIT 1), (SELECT id FROM pazienteak ORDER BY RAND() LIMIT 1), '2024-03-01', '2024-05-23', 'Lumbalgia', 1);
SET @azken_errezeta = LAST_INSERT_ID();
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), 'Oboide 1', 'Otorduetan');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '2 pilula', 'Egunean behin');
INSERT IGNORE INTO errezeta_botikak (errezeta_id, botika_id, dosia, maiztasuna)
VALUES (@azken_errezeta, (SELECT id FROM botikak ORDER BY RAND() LIMIT 1), '5 ml', '8 orduro');

