-- [1] Dropping existing database:

DROP DATABASE catalog_clasa_10b;
go

-- [2] Creating new database:

CREATE DATABASE catalog_clasa_10b;
go

-- [3] Switching the owner of the database to 'sysadmin':

ALTER AUTHORIZATION
    ON DATABASE::catalog_clasa_10b
    TO sa;
go