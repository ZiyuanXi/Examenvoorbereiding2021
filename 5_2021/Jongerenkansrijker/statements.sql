CREATE DATABASE OverzichtJongeren;
USE OverzichtJongeren;
CREATE TABLE Activiteit(
    acitiviteitcode VARCHAR(3) NOT NULL PRIMARY KEY,
    acitiviteit VARCHAR(40)
);
CREATE TABLE Instituut(
    Instituutscode VARCHAR(5) NOT NULL PRIMARY KEY,
    instittut VARCHAR(40),
    Instituuttelefoon VARCHAR(11)
);
CREATE TABLE Jongere (
    jongerecode VARCHAR(5) NOT NULL PRIMARY KEY,
    roepnaam VARCHAR(20) NOT NULL,
    tussenvoegsel VARCHAR(7),
    achternaam VARCHAR(25),
    inschrijfdatum DATE
);
CREATE TABLE Jongereactiviteit(
    jongerecode VARCHAR(5) REFERENCES Jongere(jongerecode),
    acitiecode VARCHAR(3) REFERENCES Activiteit(acitiviteitcode),
    startdatum DATE,
    afgerond TINYINT(1)
);

CREATE TABLE Jongereinstituut (
    jongerecode VARCHAR(5) REFERENCES Jongere(jongerecode),
    Instituutscode VARCHAR(5) REFERENCES Instituut(Instituutscode),
    startdatum DATE 
);