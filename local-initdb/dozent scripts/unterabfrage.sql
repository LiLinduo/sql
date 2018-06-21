REM @C:\daten\unterabfrage.sql

cl scr

SELECT * FROM t_person;

REM Gib alle Personen (vorname und nachname) aus,
REM die mehr Kinder als 'Ralf Berlin' haben.

REM Gib alle Personen (vorname und nachname) aus,

SELECT vorname, nachname
  FROM t_person;

REM Kinderanzahl als 'Ralf Berlin'

SELECT kinderanzahl
  FROM t_person
  WHERE vorname = 'Ralf'
    AND nachname = 'Berlin';

REM die mehr Kinder haben.

SELECT  vorname, nachname
  FROM  t_person
  WHERE kinderanzahl > ( SELECT kinderanzahl
                           FROM t_person
                           WHERE vorname = 'Ralf'
                             AND nachname = 'Berlin'
                        )
;

cl scr

REM Gib alle Personen (vorname und nachname) aus,
REM die die höchste Kinderanzahl haben.

REM 1. Lösung
REM mit max()

REM Gib alle Personen (vorname und nachname) aus,

SELECT vorname, nachname
  FROM t_person;

REM die höchte Kinderanzahl

SELECT max(kinderanzahl)
  FROM t_person;

REM die die höchste Kinderanzahl haben.

SELECT vorname, nachname
  FROM t_person
  WHERE kinderanzahl = ( SELECT max(kinderanzahl)
                          FROM t_person
                       )
;

SELECT vorname, nachname
  FROM t_person
  WHERE kinderanzahl = ( SELECT max(nvl(kinderanzahl, -1))
                          FROM t_person
                       )
;

REM 2. Lösung
REM ohne max()

REM Gib alle Personen (vorname und nachname) aus,

SELECT vorname, nachname
  FROM t_person;

REM alle Kinderanzahlen

SELECT kinderanzahl
  FROM t_person;

REM die die höchste Kinderanzahl haben.

SELECT vorname, nachname
  FROM t_person
  WHERE kinderanzahl >=ALL ( SELECT kinderanzahl
                               FROM t_person
                           )
;

SELECT vorname, nachname
  FROM t_person
  WHERE kinderanzahl >=ALL ( SELECT nvl(kinderanzahl, -1)
                               FROM t_person
                           )
;

cl scr

REM Gib alle Personen (vorname und nachname) aus,
REM die weniger Kinder als die höchste Kinderanzahl haben.

REM 1. Lösung
REM mit max()

SELECT vorname, nachname
  FROM t_person
  WHERE kinderanzahl < ( SELECT max(kinderanzahl)
                          FROM t_person
                       )
;

REM 2. Lösung
REM ohne max()

SELECT vorname, nachname
  FROM t_person
  WHERE kinderanzahl <ANY ( SELECT kinderanzahl
                               FROM t_person
                          )
;

cl scr

REM Gib alle Personen (vorname und nachname) aus,
REM die die höchste Kinderanzahl und
REM die die niedrigste Kinderanzahl haben.

SELECT vorname, nachname
  FROM t_person
  WHERE kinderanzahl = ( SELECT max(kinderanzahl)
                          FROM t_person
                       )
;

SELECT vorname, nachname
  FROM t_person
  WHERE kinderanzahl = ( SELECT min(kinderanzahl)
                          FROM t_person
                       )
;


SELECT vorname, nachname
  FROM t_person
  WHERE kinderanzahl = ( SELECT max(kinderanzahl)
                          FROM t_person
                       )
     OR kinderanzahl = ( SELECT min(kinderanzahl)
                          FROM t_person
                       )
;


SELECT vorname, nachname
  FROM t_person
  WHERE kinderanzahl =ANY ( SELECT max(kinderanzahl)
                              FROM t_person
                                UNION
                            SELECT min(kinderanzahl)
                              FROM t_person
                          )
;


SELECT vorname, nachname
  FROM t_person
  WHERE kinderanzahl IN ( SELECT max(kinderanzahl)
                              FROM t_person
                                UNION
                            SELECT min(kinderanzahl)
                              FROM t_person
                          )
;

cl scr

REM Gib alle Personen (vorname und nachname) aus,
REM die die zweithöchste Kinderanzahl haben.

REM höchste Anzahl

SELECT vorname, nachname
  FROM t_person
  WHERE kinderanzahl = ( SELECT max(kinderanzahl)
                          FROM t_person
                       )
;


SELECT vorname, nachname
  FROM t_person
  WHERE kinderanzahl = ( SELECT max(kinderanzahl)
                          FROM  t_person
                          WHERE kinderanzahl < ( SELECT max(kinderanzahl)
                                                   FROM t_person
                                               )
                       )
;


REM Gib die id, name und pid aus,
REM deren id größer oder gleich als
REM der Durchnschnittswert, gebildet über die id,
REM der jeweiligen "name"-Gruppe sind.

UPDATE t_adresse
  SET id = 14
  WHERE id = 4;

UPDATE t_adresse
  SET id = 15
  WHERE id = 5;


REM Gib die id, name und pid aus,

SELECT id, name, pid
  FROM t_adresse;

REM der Durchnschnittswert, gebildet über die id,
REM der jeweiligen "name"-Gruppe

SELECT avg(id)
  FROM t_adresse
  GROUP BY name;

REM deren id größer oder gleich als
REM der Durchnschnittswert

REM Fehler in der Logik

SELECT id, name, pid
  FROM t_adresse
  WHERE id >=ANY (SELECT avg(id)
                    FROM t_adresse
                    GROUP BY name
                  )
;

SELECT id, name, pid
  FROM t_adresse aa
  WHERE id >=ANY (SELECT avg(id)
                    FROM t_adresse ai
                    WHERE ai.name = aa.name
                    GROUP BY name
                 )
;

SELECT id, name, pid
  FROM t_adresse aa
  WHERE id >=ANY (SELECT avg(id)
                    FROM t_adresse ai
                    WHERE ai.name = aa.name
                 )
;

SELECT id, name, pid
  FROM t_adresse aa
  WHERE id >= (SELECT avg(id)
                 FROM t_adresse ai
                 WHERE ai.name = aa.name
                 )
;


ROLLBACK;

cl scr

REM Gib alle Person (vorname und nachname) aus,
REM deren Adresse bekannt sind.

SELECT * FROM t_person;

SELECT * FROM t_adresse;


SELECT vorname, nachname
  FROM t_person p
  WHERE EXISTS ( SELECT  pid
                   FROM  t_adresse
                   WHERE pid = p.id
                )
;

SELECT vorname, nachname
  FROM t_person p
  WHERE EXISTS ( SELECT  'Idioten'
                   FROM  t_adresse
                   WHERE pid = p.id
               )
;

REM Gib alle Person (vorname und nachname) aus,
REM deren Adresse nicht bekannt sind.

SELECT vorname, nachname
  FROM t_person p
  WHERE NOT EXISTS ( SELECT  'Idioten'
                       FROM  t_adresse
                       WHERE pid = p.id
                   )
;