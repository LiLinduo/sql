REM @c:\daten\order_by.sql

set echo on
cl scr

SELECT vorname, nachname
  FROM t_person;

SELECT vorname, nachname
  FROM t_person
  ORDER BY nachname;

SELECT vorname, nachname
  FROM t_person
  ORDER BY nachname DESC;

SELECT vorname || nachname
  FROM t_person
  ORDER BY vorname || nachname;

SELECT vorname || nachname
  FROM t_person
  ORDER BY nachname || vorname;

SELECT vorname, nachname
  FROM t_person
  ORDER BY kinderanzahl;

SELECT vorname, nachname, kinderanzahl
  FROM t_person
  ORDER BY kinderanzahl;


SELECT vorname, nachname
  FROM t_person
  ORDER BY vorname, nachname DESC;

SELECT name, pid
  FROM t_adresse
  ORDER BY name, pid DESC;


SELECT name, pid
  FROM t_adresse
  ORDER BY  pid DESC;


INSERT INTO t_adresse
  VALUES (23, 'berlin', NULL);

SELECT name, pid
  FROM t_adresse
  ORDER BY name, pid DESC;






