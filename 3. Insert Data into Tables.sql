USE catalog_clasa_10b;

-- Inserting data into table 1: lista_elevi

INSERT INTO lista_elevi (
	nr_in_catalog, nume, prenume, nr_matricol, cod_clasa
	)
VALUES 
	(1, 'Andrei', 'Petruta-Maria', 99205, '10B2023'),
    (2, 'Borlea', 'Petronela', 59828, '10B2023'),
    (3, 'Croitoru', 'Andrei-Robert', 33893, '10B2023'),
    (4, 'Cucu', 'Andrei-Cosmin', 68401, '10B2023'),
    (5, 'Ene', 'Andrei-Cristian', 65597, '10B2023'),
	(6, 'Filipescu', 'Raluca-Miruna', 65597, '10B2023'),
    (7, 'Gaina', 'Ciprian-Ionut', 99951, '10B2023'),
    (8, 'Georgescu', 'Lucian-Mihai', 91542, '10B2023'),
    (9, 'Ghencea', 'Florin-Alin', 10353, '10B2023'),
    (10, 'Gheorghita', 'Nicusor-Petrus', 34909, '10B2023'),
	(11, 'Lala', 'Mihai-Alexandru', 97997, '10B2023'),
    (12, 'Mateescu', 'Alexandrea-Nicoleta', 33916, '10B2023'),
	(13, 'Margarit', 'Maria', 10330, '10B2023'),
	(14, 'Mihalcea', 'Adelin Georgian', 30326, '10B2023'),
	(15, 'Nitu', 'Aurelian-Virgil', 97776, '10B2023'),
	(16, 'Neculai', 'Leonard', 12751, '10B2023'),
	(17, 'Petre', 'Ana-Maria', 17589, '10B2023'),
	(18, 'Sarbescu', 'Elena-Alexia', 16408, '10B2023'),
	(19, 'Sterian', 'Lacramioara-Georgiana', 76681, '10B2023'),
	(20, 'Stoica', 'Elena-Denisa', 62733, '10B2023'),
	(21, 'Serbanoiu', 'Eduard', 69536, '10B2023'),
	(22, 'Tvetanschi', 'Costi-Cristian', 55009, '10B2023'),
	(23, 'Tardea', 'Mihai', 16183, '10B2023'),
	(24, 'Tudor', 'Andrei-Valentin', 50958, '10B2023'),
	(25, 'Tudose', 'Alexandru', 95198, '10B2023'),
	(26, 'Vadanoiu', 'Florin-Eduard', 49579, '10B2023'),
	(27, 'Ionica', 'Stefan-Catalin', 65142, '10B2023');
	
go

-- Inserting data into table 2: detalii_elevi

INSERT INTO detalii_elevi (
	nr_matricol, nationalitate, judet, strada, nr_strada
	)
VALUES 
	(99205, 'romana', 'Cluj', 'Aleea Albastrelelor', '55'),
	(59828, 'romana', 'Cluj', 'Drumul Popesti', '12'),
	(33893, 'romana', 'Cluj', 'Calea Floresti', '1'),
	(68401, 'romana', 'Cluj', 'Piata Stefan cel Mare', '7'),
	(65597, 'romana', 'Cluj', 'Strada Bicaz', '76'),
	(99951, 'romana', 'Cluj', 'Strada Siretului', '103'),
	(91542, 'romana', 'Cluj', 'Strada Otetului', '22'),
	(10353, 'romana', 'Cluj', 'Bulevardul 21 Decembrie 1989', '17'),
	(34909, 'romana', 'Cluj', 'Strada Horea', '5'),
	(97997, 'romana', 'Cluj', 'Strada Dianei', '84'),
	(33916, 'romana', 'Cluj', 'Strada Jiului', '66'),
	(10330, 'romana', 'Cluj', 'Strada Viilor', '50'),
	(30326, 'romana', 'Cluj', 'Strada Perlei', '100'),
	(97776, 'maghiara', 'Harghita', 'Strada Iasomiei', '2'),
	(12751, 'romana', 'Cluj', 'Strada Mihai Eminescu', '4'),
	(17589, 'romana', 'Cluj', 'Strada Romanitei', '33'),
	(16408, 'romana', 'Cluj', 'Strada Alexandru Donici', '84'),
	(76681, 'romana', 'Cluj', 'Strada Aramei', '79'),
	(62733, 'romana', 'Cluj', 'Strada Chinteni', '93'),
	(69536, 'ucraineana', 'Cernauti', 'Strada Fagului', '64'),
	(96371, 'romana', 'Cluj', 'Strada Garii', '45'),
	(55009, 'romana', 'Cluj', 'Strada Izei', '40'),
	(16183, 'romana', 'Cluj', 'Strada Margaului', '1'),
	(50958, 'romana', 'Cluj', 'Strada Sitarilor', '11'),
	(95198, 'romana', 'Cluj', 'Strada Zorilor', '6'),
	(49579, 'maghiara', 'Zalau', 'Strada Octavian Goga', '10'),
	(65142, 'romana', 'Cluj', 'Strada Melodiei', '36');

-- Inserting data into table 3: profesori

INSERT INTO profesori (
	cod_profesor, nume, prenume, materia_predata, data_inscriere_invatamant, diriginte
	)
VALUES 
	('FUL', 'Ardeleanu', 'Vlad', 'romana', '2015-05-24', '1'),
	('n5u', 'Mihalcea', 'Gabriel', 'matematica', '2000-12-04', '0'),
	('UMm', 'Stoica', 'Andrei', 'engleza', '2001-01-28', '1'),
	('GLi', 'Oancea', 'Ionut', 'franceza', '2006-02-05', '0'),
	('O0f', 'Stan', 'Iulia', 'germana', '2011-09-11', '0'),
	('xiJ', 'Dumitru', 'Nicoleta', 'fizica', '2020-11-01', '1'),
	('6AQ', 'Burlacu', 'Gabriela', 'informatica', '2009-09-11', '1'),
	('5vV', 'Stilpeanu', 'Denis', 'TIC', '2001-01-15', '0'),
	('kjg', 'Neagu', 'Olimpia', 'chimie', '1998-01-15', '0'),
	('TO6', 'Stoica', 'Andrei', 'biologie', '2005-08-18', '0'),
	('Uwc', 'Toader', 'Andreea', 'geografie', '2020-11-30', '1'),
	('tCb', 'Corcodel', 'Robert', 'istorie', '2005-05-05', '0'),
	('mUh', 'Gheorghe', 'Alexandru', 'psihologie', '2006-09-11', '1'),
	('08T', 'Lete', 'Andrei', 'ed. antreprenoriala', '2017-02-17', '0'),
	('AVo', 'Sufaru', 'Iustin', 'sport', '2007-06-30', '1'),
	('yuf', 'Filipescu', 'Stefan', 'religie', '2017-07-03', '0'),
	('Su9', 'Budis', 'Eduard', 'desen', '2001-04-03', '1'),
	('Vxm', 'Cristoloveanu', 'Diana', 'muzica', '2016-12-20', '1');

go

-- Inserting data into table 4: note_informatica

INSERT INTO note_informatica (
	nr_matricol, nota1, nota2, nota3, teza
	)
VALUES 
	(99205, 10, 10, 7, 9),
	(59828, 5, 4, 6, 5),
	(33893, 6, 9, 10, 4),
	(68401, 7, 7, 7, 7),
	(65597, 3, 3, 8, 5),
	(99951, 10, 10, 10, 10),
	(91542, 5, 5, 10, 6),
	(10353, 9, 8, 7, 6),
	(34909, 8, 8, 1, 7),
	(97997, 10, 7, 10, 10),
	(33916, 5, 5, 5, 5),
	(10330, 3, 3, 2, 4),
	(30326, 5, 6, 9, 4),
	(97776, 6, 6, 5, 8),
	(12751, 8, 10, 10, 9),
	(17589, 6, 7, 9, 5),
	(16408, 5, 4, 3, 7),
	(76681, 4, 4, 10, 5),
	(62733, 7, 6, 7, 7),
	(69536, 5, 5, 8, 6),
	(96371, 8, 8, 8, 8),
	(55009, 10, 10, 10, 9),
	(16183, 10, 10, 10, 10),
	(50958, 7, 5, 9, 6),
	(95198, 5, 7, 9, 4),
	(49579, 3, 10, 9, 5),
	(65142, 7, 8, 9, 7);

go

-- Inserting data into table 5: note_istorie

INSERT INTO note_istorie (
	nr_matricol, nota1, nota2, nota3
	)
VALUES 
	(99205, 10, 7, 9),
	(59828, 4, 6, 5),
	(33893, 9, 10, 4),
	(68401, 7, 7, 7),
	(65597, 3, 8, 5),
	(99951, 10, 10, 10),
	(91542, 5, 10, 6),
	(10353, 8, 7, 6),
	(34909, 8, 1, 7),
	(97997, 7, 10, 10),
	(33916, 5, 5, 5),
	(10330, 3, 2, 4),
	(30326, 6, 9, 4),
	(97776, 6, 5, 8),
	(12751, 10, 10, 9),
	(17589, 7, 9, 5),
	(16408, 4, 3, 7),
	(76681, 4, 10, 5),
	(62733, 6, 7, 7),
	(69536, 5, 8, 6),
	(96371, 8, 8, 8),
	(55009, 10, 10, 9),
	(16183, 10, 10, 10),
	(50958, 5, 9, 6),
	(95198, 7, 9, 4),
	(49579, 10, 9, 5),
	(65142, 8, 9, 7);

go