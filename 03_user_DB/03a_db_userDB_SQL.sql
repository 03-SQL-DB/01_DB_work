/* USER DB Vers. 2 */

/* DB */
DROP DATABASE IF EXISTS boo;
CREATE DATABASE IF NOT EXISTS boo;

/* Table users */
DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(20) NOT NULL UNIQUE,
    userPwd VARCHAR(40) NOT NULL,
    familyName VARCHAR(20) NOT NULL,
    firstName VARCHAR(20) NOT NULL
);

/* Struktur */
DESCRIBE boo.users;

/* Daten */
-- Nachteil: PWDs liegen offen!
INSERT INTO 
    boo.users(firstName,familyName,userName,userPwd) 
VALUES 
    ("Max","Mütze","max","1234"),
    ("Maxine","Mütze","maxine","#7xD0"),
    ("Max","Mützerich","maxl","user1234")    
;

/* Inhalte : Ergebnistabelle */
SELECT * FROM boo.users;



