REM @c:\daten\mengen.sql

set echo on
cl scr

SELECT * FROM t_person;

SELECT * FROM t_adresse;


REM UNION

SELECT id FROM t_person
  UNION
SELECT id FROM t_adresse;

SELECT id FROM t_person
  UNION ALL
SELECT id FROM t_adresse;


SELECT nachname FROM t_person
  UNION
SELECT name FROM t_adresse;

SELECT nachname FROM t_person
  UNION ALL
SELECT name FROM t_adresse;


SELECT nachname, id  FROM t_person
  UNION
SELECT name,     pid FROM t_adresse;


REM INTERSECT
cl scr

SELECT * FROM t_person;

SELECT * FROM t_adresse;

SELECT id FROM t_person
  INTERSECT
SELECT id FROM t_adresse;

REM Gibt es Nachnamen,
REM die einem Ortsnamen entsprechen?

SELECT nachname FROM t_person
  INTERSECT
SELECT name FROM t_adresse;


REM Gib alle Nachnamen aus,
REM die keinen Ortsnamen entsprechen!

SELECT nachname FROM t_person
  MINUS
SELECT name FROM t_adresse;





