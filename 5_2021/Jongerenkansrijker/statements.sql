CREATE DATABASE OverzichtJongeren;

USE OverzichtJongeren;

CREATE TABLE Medewerker(
    id VARCHAR(255) NOT NULL AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE Activiteit(
    acitiviteitcode INT NOT NULL AUTO_INCREMENT,
    acitiviteit VARCHAR(255),
    PRIMARY KEY (acitiviteitcode)
);

CREATE TABLE Instituut(
    instituutscode INT NOT NULL AUTO_INCREMENT, 
    instittut VARCHAR(255),
    instituuttelefoon VARCHAR(255),
    PRIMARY KEY (instituutscode)
);

CREATE TABLE Jongere (
    jongerecode INT NOT NULL AUTO_INCREMENT,
    roepnaam VARCHAR(255) NOT NULL,
    tussenvoegsel VARCHAR(255),
    achternaam VARCHAR(255),
    inschrijfdatum DATE,
    PRIMARY KEY (jongerecode)
);

CREATE TABLE Jongereactiviteit(
    jongerecode INT,
    acitiecode INT,
    startdatum DATE,
    afgerond TINYINT(1),
    PRIMARY KEY (jongerecode, acitiecode)
);

CREATE TABLE Jongereinstituut (
    startdatum DATE ,
    jongerecode INT,
    Instituutscode INT,
    PRIMARY KEY (jongerecode, Instituutscode)
);