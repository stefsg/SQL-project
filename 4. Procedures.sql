USE Catalog_Clasa_10B;

-- [1] Dropping existing procedures:

DROP PROCEDURE IncheiereM_Informatica;
DROP PROCEDURE Situatie_Informatica;
DROP PROCEDURE IncheiereM_Istorie;
DROP PROCEDURE Situatie_Istorie;

-- [2] Creating Procedure IncheiereM_Informatica:

CREATE PROCEDURE IncheiereM_Informatica
AS
UPDATE note_informatica
SET medie = (3*((nota1+nota2+nota3)/3)+teza)/4
WHERE nr_matricol IN (SELECT nr_matricol FROM note_informatica)

go

-- STEP 1: 

EXEC IncheiereM_Informatica

-- STEP 2:

SELECT *
FROM note_informatica

-- [3] Creating Procedure Situatie_Informatica:

CREATE PROCEDURE Situatie_Informatica
AS
UPDATE note_informatica
SET situatie = CASE WHEN ROUND(medie, 0) < 5 THEN 'corigent' ELSE 'absolvent' END
WHERE nr_matricol IN (SELECT nr_matricol FROM note_informatica)

go

-- STEP 1:

EXEC Situatie_Informatica

-- STEP 2:

SELECT *
FROM note_informatica

-- [4] Creating Procedure IncheiereM_Istorie:

CREATE PROCEDURE IncheiereM_Istorie
AS
UPDATE note_istorie
SET medie = (nota1+nota2+nota3)/3
WHERE nr_matricol IN (SELECT nr_matricol FROM note_istorie)

go

-- STEP 1:

EXEC IncheiereM_Istorie

-- STEP 2:

SELECT *
FROM note_istorie

-- [5] Creating Procedure IncheiereM_Istorie:

CREATE PROCEDURE Situatie_Istorie
AS
UPDATE note_istorie
SET situatie = CASE WHEN ROUND(medie, 0) < 5 THEN 'corigent' ELSE 'absolvent' END
WHERE nr_matricol IN (SELECT nr_matricol FROM note_istorie)

go

-- STEP 1:
EXEC Situatie_Istorie

-- STEP 2:

SELECT *
FROM note_istorie

