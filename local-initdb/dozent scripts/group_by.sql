REM @c:\daten\group_by.sql

cl scr

SELECT kinderanzahl
  FROM t_person;

SELECT count(kinderanzahl)
  FROM t_person;

SELECT count(kinderanzahl)
  FROM t_person
  GROUP BY ();

SELECT count(kinderanzahl)
  FROM t_person
  GROUP BY kinderanzahl;

REM Fehler: Gruppenfunktionen sind in der 
REM WHERE-Klausel verboten!!!

SELECT count(kinderanzahl)
  FROM t_person
  WHERE count(kinderanzahl) = 2
  GROUP BY kinderanzahl;


REM ==============

SELECT kinderanzahl, count(kinderanzahl)
  FROM t_person
  GROUP BY kinderanzahl;


SELECT kinderanzahl, vorname
  FROM t_person
  GROUP BY kinderanzahl;


SELECT count(kinderanzahl), vorname
  FROM t_person;

SELECT count(kinderanzahl), vorname
  FROM t_person
  GROUP BY ();

SELECT kinderanzahl, 'Peter'
  FROM t_person
  GROUP BY kinderanzahl;







