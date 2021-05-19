DROP DATABASE inserts;
CREATE DATABASE inserts;
USE inserts;

CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,,
    PRIMARY KEY(id)
);

CREATE TABLE klant(
    id INT NOT NULL AUTO_INCREMENT,
    naam VARCHAR(255) NOT NULL,
    telefoon VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    moneyz INT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE gerecht(
    id INT NOT NULL AUTO_INCREMENT,
    naam VARCHAR(255) NOT NULL,
    prijs VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);


CREATE DATABASE project_equipment;



USE project_equipment;



CREATE TABLE tblCategories(

    category_id INT NOT NULL AUTO_INCREMENT,

    category_name VARCHAR(255) NOT NULL,

    category_description VARCHAR(255) NOT NULL,

    category_type VARCHAR(255) NOT NULL,

    PRIMARY KEY(category_id)

);



CREATE TABLE tblStatus(

    status_id INT NOT NULL AUTO_INCREMENT,

    status_name VARCHAR(255) NOT NULL,

    status_notes VARCHAR(255),

    PRIMARY KEY(status_id)

);



CREATE TABLE tblEquipment(

    equipment_id INT NOT NULL AUTO_INCREMENT,

    equipment_name VARCHAR(255) NOT NULL,

    equipment_description VARCHAR(255),

    equipment_status_id INT NOT NULL,

    status_id INT,

    PRIMARY KEY(equipment_id),

    FOREIGN KEY(status_id) REFERENCES tblStatus(status_id)

);



CREATE TABLE tblEquip_cat(

    equip_cat_id INT NOT NULL AUTO_INCREMENT,

    category_id INT NOT NULL,

    equipment_id INT NOT NULL,

    PRIMARY KEY(equip_cat_id),

    FOREIGN KEY(category_id) REFERENCES tblCategories(category_id),

    FOREIGN KEY(equipment_id) REFERENCES tblEquipment(equipment_id)

);