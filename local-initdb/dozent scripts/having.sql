REM @c:\daten\having.sql

cl scr

SELECT kinderanzahl
  FROM t_person;

SELECT kinderanzahl
  FROM t_person
  GROUP BY kinderanzahl
  HAVING count(kinderanzahl) > 1;

SELECT kinderanzahl
  FROM t_person
  GROUP BY kinderanzahl
  HAVING count(kinderanzahl) >= 1
  ORDER BY kinderanzahl DESC;



SELECT kinderanzahl
  FROM t_person
  GROUP BY kinderanzahl
  HAVING vorname = 'Tom';

SELECT kinderanzahl
  FROM t_person
  GROUP BY kinderanzahl
  HAVING count(vorname) = length('Tom');



