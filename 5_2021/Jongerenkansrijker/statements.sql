CREATE DATABASE OverzichtJongeren;

USE OverzichtJongeren;

CREATE TABLE Medewerker(
    id VARCHAR(255),
    udername VARCHAR(255),
    passwod VARCHAR(255)
);

CREATE TABLE Activiteit(
    acitiviteit VARCHAR(255),
    acitiviteitcode INT(3) NOT NULL PRIMARY KEY
    
);

CREATE TABLE Instituut(
    instittut VARCHAR(255),
    Instituuttelefoon VARCHAR(255),
    Instituutscode INT(5) NOT NULL PRIMARY KEY
);

CREATE TABLE Jongere (
    roepnaam VARCHAR(255) NOT NULL,
    tussenvoegsel VARCHAR(255),
    achternaam VARCHAR(255),
    inschrijfdatum DATE,
    jongerecode INT(5) NOT NULL PRIMARY KEY
);

CREATE TABLE Jongereactiviteit(
    startdatum DATE,
    afgerond TINYINT(1),
    jongerecode INT(5),
    acitiecode INT(3),
    PRIMARY KEY (jongerecode, acitiecode)
);

CREATE TABLE Jongereinstituut (
    startdatum DATE ,
    jongerecode INT(5),
    Instituutscode INT(5),
    PRIMARY KEY (jongerecode, Instituutscode)
);