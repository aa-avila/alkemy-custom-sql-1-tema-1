--- 01-12-2021 11:45:11
--- SQLite
CREATE TABLE curso (
  code INTEGER PRIMARY KEY not NULL,
  name VARCHAR(40) NOT NULL,
  description VARCHAR(160),
  turno VARCHAR(20) NOT NULL
);

--- 01-12-2021 11:45:28
--- SQLite
ALTER TABLE curso ADD cupo INTEGER;

--- 01-12-2021 11:45:43
--- SQLite
INSERT INTO curso (code, name, description, turno, cupo)
VALUES (101,'Algoritmos','Algoritmos y Estructuras de Datos','Mañana', 35);

--- 01-12-2021 11:45:54
--- SQLite
INSERT INTO curso (code, name, description, turno, cupo)
VALUES (102,'Matemática Discreta','','Tarde', 30);

--- 01-12-2021 11:46:15
--- SQLite
/***** ERROR ******
NOT NULL constraint failed: curso.name
 ----- 
INSERT INTO curso (code, description, turno, cupo)
VALUES (103,'','Tarde', 30);
*****/

--- 01-12-2021 11:46:30
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: curso.code
 ----- 
INSERT INTO curso (code, name, description, turno, cupo)
VALUES (101,'Ciencias Sociales','','Mañana', 35);
*****/

--- 01-12-2021 11:46:39
--- SQLite
UPDATE curso SET cupo = 25;

--- 01-12-2021 11:46:49
--- SQLite
DELETE FROM curso WHERE name = 'Algoritmos';

