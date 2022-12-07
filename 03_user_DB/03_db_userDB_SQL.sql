/* USER DB Vers. 1 */

/* DB */
DROP DATABASE IF EXISTS boo;
CREATE DATABASE IF NOT EXISTS boo;

/* Table users */
DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(20) NOT NULL UNIQUE,
    familyName VARCHAR(20) NOT NULL,
    firstName VARCHAR(20) NOT NULL
);

/* Struktur */
DESCRIBE boo.users;

/* Daten */
INSERT INTO boo.users(firstName,familyName,userName) VALUES ("Max","Mütze","max");
INSERT INTO boo.users(firstName,familyName,userName) VALUES ("Maxine","Mütze","maxine");
INSERT INTO boo.users(firstName,familyName,userName) VALUES ("Max","Mützerich","maxl");

/* Inhalte : Ergebnistabelle */
SELECT * FROM boo.users;



