USE catalog_clasa_10b;

-- Dropping existing tables:

DROP TABLE IF EXISTS lista_elevi
DROP TABLE IF EXISTS detalii_elevi
DROP TABLE IF EXISTS profesori
DROP TABLE IF EXISTS note_informatica
DROP TABLE IF EXISTS note_istorie

go

-- Creating table 1: lista_elevi

CREATE TABLE lista_elevi
    (
        nr_in_catalog INT,
        nume          VARCHAR(128),
        prenume       VARCHAR(128),
        nr_matricol   INT         NOT NULL,
        cod_clasa     VARCHAR(7),
        PRIMARY KEY (nr_matricol)
    );

go

-- Creating table 2: detalii_elevi

CREATE TABLE detalii_elevi
    (
        nr_matricol   INT NOT NULL,
        nationalitate VARCHAR(16),
        judet         VARCHAR(16),
        strada        VARCHAR(128),
        nr_strada     INT,
        PRIMARY KEY (nr_matricol),
    );

go

-- Creating table 3: profesori

CREATE TABLE profesori
    (
        cod_profesor              VARCHAR(3) NOT NULL,
        nume                      VARCHAR(128),
        prenume                   VARCHAR(128),
        materia_predata           VARCHAR(32),
        data_inscriere_invatamant DATE,
        diriginte                 BIT,
        PRIMARY KEY (cod_profesor)
    );

go

-- Creating table 4: note_informatica

CREATE TABLE note_informatica
    (
        nr_matricol INT NOT NULL,
        nota1       DECIMAL (4,2) NOT NULL,
        nota2       DECIMAL (4,2) NOT NULL,
        nota3       DECIMAL (4,2),
        teza        DECIMAL (4,2) NOT NULL,
		medie		DECIMAL (4,2) NULL,
		situatie	varchar (16) NULL
            PRIMARY KEY (nr_matricol)
    );

go

-- Creating table 5: note_istorie

CREATE TABLE note_istorie
    (
        nr_matricol INT NOT NULL,
        nota1       DECIMAL (4,2) NOT NULL,
        nota2       DECIMAL (4,2) NOT NULL,
        nota3       DECIMAL (4,2),
		medie		DECIMAL (4,2) NULL,
		situatie	varchar (16) NULL
        PRIMARY KEY (nr_matricol)
    );

go