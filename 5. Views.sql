USE Catalog_Clasa_10B;

-- View 1: Vechime Invatamant

CREATE VIEW Vechime_Invatamant AS
SELECT nume, prenume, DATEDIFF(year, data_inscriere_invatamant, GETDATE()) AS 'vechime (ani)'
FROM profesori

SELECT * FROM Vechime_Invatamant
ORDER BY 'vechime (ani)'

-- View 2: Note Elevi

CREATE VIEW Note_Elevi AS
SELECT DISTINCT le.nume, le.prenume, ninf.medie AS Informatica, nist.medie AS Istorie
FROM lista_elevi le
JOIN note_informatica ninf
ON ninf.nr_matricol = le.nr_matricol
JOIN note_istorie nist
ON nist.nr_matricol = ninf.nr_matricol

SELECT * FROM Note_Elevi

-- View 3: Situatie Scolara

CREATE VIEW Situatie_Scolara AS
SELECT DISTINCT le.nume, le.prenume, ninf.situatie AS Informatica, nist.situatie AS Istorie
FROM lista_elevi le
JOIN note_informatica ninf
ON ninf.nr_matricol = le.nr_matricol
JOIN note_istorie nist
ON nist.nr_matricol = ninf.nr_matricol

SELECT * FROM Situatie_Scolara

-- View 4: Medie Generala

CREATE VIEW Medie_Generala AS
SELECT DISTINCT le.nume, le.prenume, ((ninf.medie+ nist.medie)/2) AS 'Medie Generala'
FROM lista_elevi le
JOIN note_informatica ninf
ON ninf.nr_matricol = le.nr_matricol
JOIN note_istorie nist
ON nist.nr_matricol = ninf.nr_matricol

-- Premianti:

SELECT TOP 6 * FROM Medie_Generala