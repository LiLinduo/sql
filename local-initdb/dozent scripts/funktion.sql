REM @c:\daten\funktion.sql

cl scr


REM Funktionen für Texte

SELECT nachname, upper(nachname), lower(nachname)
  FROM t_person;

SELECT length(nachname)
  FROM t_person;

SELECT  nachname
  FROM  t_person
  WHERE length(nachname) = 6;

SELECT  nachname, vorname
  FROM  t_person
  WHERE length(nachname) = 6
  ORDER BY length(vorname);


REM Funktionen für Zahlen

SELECT round(3.14159, 2), round(3.14159, -2)
  FROM dual;


REM Funktionen für Datum/Uhrzeit

SELECT sysdate
  FROM dual;

SELECT to_char(sysdate, 'DD.MM.YYYY  HH24:MI:SS')
  FROM dual;


REM Gruppenfunktion/ Aggregatfunktion/
REM Multiple Row Funktion

SELECT kinderanzahl
  FROM t_person;

SELECT min(kinderanzahl), max(kinderanzahl),
       sum(kinderanzahl), avg(kinderanzahl)
  FROM t_person;

SELECT count(*), count(nachname)
  FROM t_person;

SELECT count(*), count(name), count(pid)
  FROM t_adresse;


SELECT count(kinderanzahl)
  FROM t_person;

SELECT count(kinderanzahl)
  FROM t_person
  GROUP BY ();


cl scr

REM weitere Funktionen

SELECT * FROM t_adresse;


REM In welchen Orten (name) wohnen keine Person?

SELECT name
  FROM t_adresse
  WHERE pid = NULL;


SELECT name
  FROM t_adresse
  WHERE pid IS NULL;


REM In welchen Orten (name) wohnen Person?

SELECT name
  FROM t_adresse
  WHERE pid IS NOT NULL;


SELECT * FROM t_adresse;

SELECT count(pid)
  FROM t_adresse;

SELECT name, pid, nvl(pid,-1)
  FROM t_adresse;

SELECT count(pid), count(nvl(pid,-1))
  FROM t_adresse;


REM Gib alle Orte (name) aus,
REM die mit dem Buchstaben 'B' beginnen.

REM SQL: %	DOS: *
REM SQL: _	DOS: ?

SELECT name
  FROM t_adresse
  WHERE name LIKE 'B%';

SELECT name
  FROM t_adresse
  WHERE name >= 'B'
    AND  name <= 'C';

SELECT name
  FROM t_adresse
  WHERE name BETWEEN 'B' AND  'C';

REM bei nvl() müssen beide Paramter
REM vom selben Datentyp sein

SELECT nvl(name, 5), nvl(pid,-1), nvl(pid,'unbekannt')
  FROM t_adresse;






