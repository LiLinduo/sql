REM @c:\daten\where.sql

set echo on
cl scr

SELECT * FROM t_person;

SELECT * FROM t_adresse;

REM Wer wohnt in 'Berlin'?
REM Ausgabe: nur PID

SELECT  pid
  FROM  t_adresse
  WHERE name = 'Berlin'
;

REM Wer wohnt in 'Berlin'?
REM Ausgabe: Vorname und Nachname

SELECT  vorname, nachname
  FROM  t_adresse a JOIN t_person p
        ON (a.pid = p.id)
  WHERE name = 'Berlin'
;

SELECT  p.vorname, p.nachname
  FROM  t_adresse a JOIN t_person p
        ON (a.pid = p.id)
  WHERE a.name = 'Berlin'
;


REM Achtung Fehler !!!

SELECT  p.vorname, p.nachname AS namen
  FROM  t_adresse a JOIN t_person p
        ON (a.pid = p.id)
  WHERE namen = 'Berlin'
;


REM Wohnt 'Krause' in 'Berlin'?
REM Antwort: Ja
REM Schreibe die SELECT-Anweisung dazu!

SELECT  p.vorname, p.nachname
  FROM  t_adresse a JOIN t_person p
        ON (a.pid = p.id)
  WHERE a.name = 'Berlin'
    AND p.nachname = 'Krause'
;

REM Gib mir alle Personen (vorname und nachname) aus,
REM die in Berlin und die in Potsdam wohnen.

SELECT  p.vorname, p.nachname
  FROM  t_adresse a JOIN t_person p
        ON (a.pid = p.id)
  WHERE a.name = 'Berlin'
    AND a.name = 'Potsdam'
;


SELECT  p.vorname, p.nachname
  FROM  t_adresse a JOIN t_person p
        ON (a.pid = p.id)
  WHERE a.name = 'Berlin'
    OR  a.name = 'Potsdam'
;


REM Achtung: Operatoren-Rangfolge
REM 1. Rang: ()
REM 2. Rand: NOT
REM 3. Rang: AND
REM 4. Rang: OR

SELECT  p.vorname, p.nachname
  FROM  t_adresse a JOIN t_person p
        ON (a.pid = p.id)
  WHERE a.name = 'Berlin'
    OR  a.name = 'Potsdam'
    AND nachname = 'Krausbart';

SELECT  p.vorname, p.nachname
  FROM  t_adresse a JOIN t_person p
        ON (a.pid = p.id)
  WHERE (a.name = 'Berlin'
    OR  a.name = 'Potsdam')
    AND nachname = 'Krausbart';

SELECT  p.vorname, p.nachname
  FROM  t_adresse a JOIN t_person p
        ON (a.pid = p.id)
  WHERE a.name = 'Berlin'
    OR  (a.name = 'Potsdam'
    AND nachname = 'Krausbart');



