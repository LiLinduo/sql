REM @c:\daten\from.sql

set echo on
cl scr

SELECT *
  FROM t_person;

SELECT *
  FROM t_mensch;

SELECT *
  FROM t_adresse;


REM Welche Tabellen gehören mir?

SELECT table_name
  FROM user_tables;

DESCRIBE user_tables

@c:\daten\tabelle.sql

REM Daten lesen

SELECT *
  FROM t_person;

SELECT *
  FROM t_adresse;

REM Datensätze einfügen

INSERT
  INTO t_person
  VALUES (1, 'Peter', 'Krause', 6);

INSERT
  INTO t_adresse
  VALUES (4, 'Berlin', 1);

COMMIT;


INSERT
  INTO t_person
  VALUES (2, 'Ina', 'Krausbart', 6);

INSERT
  INTO t_adresse
  VALUES (5, 'Berlin', 2);

COMMIT;

INSERT
  INTO t_person
  VALUES (3, 'Ralf', 'Berlin', 2);

INSERT
  INTO t_adresse
  VALUES (7, 'Potsdam', 3);

COMMIT;

INSERT
  INTO t_person
  VALUES (4, 'Ilse', 'Wilse', 0);

INSERT
  INTO t_adresse
  VALUES (13, 'Bernau', 4);

COMMIT;


SELECT *
  FROM t_person;

SELECT *
  FROM t_adresse;


REM CROSS-Join

SELECT *
  FROM t_person CROSS JOIN t_adresse;

SELECT *
  FROM t_person , t_adresse;

SET LINESIZE 120

REM INNER-Join

SELECT *
  FROM t_person INNER JOIN t_adresse
       ON (t_person.id = t_adresse.pid)
;

SELECT *
  FROM t_person p INNER JOIN t_adresse a
       ON (p.id = a.pid)
;

SELECT *
  FROM t_person , t_adresse
  WHERE t_person.id = t_adresse.pid
;

SELECT *
  FROM t_person p, t_adresse a
  WHERE p.id = a.pid
;


SELECT *
  FROM t_person p INNER JOIN t_adresse a
       ON (p.id <> a.pid)
;

SELECT *
  FROM t_person p INNER JOIN t_adresse a
       ON (p.nachname = a.name)
;

SELECT *
  FROM t_film r JOIN t_film o
       ON (r.film_id = o.original);


REM OUTER-JOIN

REM Datenänderung!

UPDATE  t_adresse
  SET   pid = NULL
  WHERE id = 13;

SELECT * FROM t_adresse;

SELECT *
  FROM t_person p INNER JOIN t_adresse a
       ON (p.id = a.pid)
;

REM Gib jede Person (alle Personen!)
REM und soweit bekannt
REM auch ihre Adresse aus!

SELECT *
  FROM t_person p LEFT OUTER JOIN t_adresse a
       ON (p.id = a.pid)
;

SELECT *
  FROM t_adresse a RIGHT OUTER JOIN t_person p
       ON (p.id = a.pid)
;


SELECT *
  FROM t_person p RIGHT OUTER JOIN t_adresse a
       ON (p.id = a.pid)
;

REM @c:\daten\from.sql
















