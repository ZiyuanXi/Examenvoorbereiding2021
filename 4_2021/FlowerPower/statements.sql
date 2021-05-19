CREATE DATABASE flowerPower;
CREATE TABLE Klant (
    Klantcode INT NOT NULL PRIMARY KEY,
    Voorletters VARCHAR(255),
    Tussenvoegsels VARCHAR(255),
    Achternaam VARCHAR(255) NOT NULL,
    Adres VARCHAR(255),
    Postcode VARCHAR(255),
    Woonplaats VARCHAR(255),
    Geboortedatum DATE,
    Gebruikersnaam VARCHAR(255),
    Wachtwoord VARCHAR(255)
);
CREATE TABLE Artikel (
    Artikelcode INT NOT NULL PRIMARY KEY,
    Artikel VARCHAR(255),
    Prijs DECIMAL(65,2)
);
CREATE TABLE Winkel (
    Winkelcode INT NOT NULL PRIMARY KEY,
    Winkelnaam VARCHAR(255) NOT NULL,
    Winkeladres VARCHAR(255),
    Winkelpostcode VARCHAR(255),
    Vestigingsplaats VARCHAR(255),
    Telefoonnummer VARCHAR(20),
    Gebruikersnaam VARCHAR(255),
    Wachtwoord VARCHAR(255)
);
CREATE TABLE Medewerker (
    Medewerkerscode INT NOT NULL PRIMARY KEY,
    Voorletters VARCHAR(255),
    Voorvoegsels VARCHAR(255),
    Achternaam VARCHAR(255) NOT NULL,
    Gebruikersnaam VARCHAR(255),
    Wachtwoord VARCHAR(255)
);
CREATE TABLE Factuur (
    Factuurnummer INT NOT NULL PRIMARY KEY,
    Factuurdatum DATE,
    Klantcode INT REFERENCES Klant(Klantcode)
);
CREATE TABLE Factuurregel (
    Factuurnummer INT REFERENCES Factuur(Factuurnummer),
    Artikelcode INT REFERENCES Artikel(Artikelcode),
    Aantal INT(65),
    Prijs DECIMAL(65,2)
);
CREATE TABLE Bestelling (
    Artikelcode INT REFERENCES Artikel(Artikelcode),
    Winkeltcode INT REFERENCES Winkel(Winkelcode),
    Aantal INT(65),
    Klantcode INT REFERENCES Klant(Klantcode),
    Medewerkerscode INT REFERENCES Medewerker(Medewerkerscode)
);