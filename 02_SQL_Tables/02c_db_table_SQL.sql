/* ------  Strukturen UNIQUE ----- */

/* 	 
	Tabelle mit id als PRIMARY KEY --> KEINE Duplikate moeglich
    AUTO_INCREMENT ++
    DEFAULT-Werte eintragen
*/

/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
#USE boo;  -- boo.xxx

/* Tabelle anlegen, falls noch nicht vorhanden */
CREATE TABLE IF NOT EXISTS boo.test
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL DEFAULT "TBA",
    age INT(3) NOT NULL DEFAULT 0
);

DESCRIBE boo.test;

/* ----- Daten ------- */
INSERT INTO boo.test(name,age) VALUES ("Grizabella",29);
INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");
INSERT INTO boo.test VALUES ();

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM boo.test;


/* ----- Daten ------- */
INSERT INTO boo.test(age,name) VALUES (31,"Alonzo");
INSERT INTO boo.test(age,name) VALUES (30,"Alonzo");

SELECT * FROM boo.test;