REM @/etc/entrypoint-initdb.d/mengen.sql

REM CONNECT system/oracle


SELECT * FROM t_person;
SELECT * FROM t_adresse;

SELECT id FROM t_adresse
	UNION ALL
SELECT id FROM t_person;

SELECT id FROM t_person
	UNION ALL
SELECT id FROM t_adresse;

SELECT nachname FROM t_person
	UNION
SELECT name FROM t_adresse;

SELECT nachname FROM t_person
	UNION ALL
SELECT name FROM t_adresse;

SELECT nachname, id FROM t_person
	UNION ALL
SELECT name, pid FROM t_adresse;

SELECT id FROM t_person
	INTERSECT
SELECT id FROM t_adresse;

SELECT nachname FROM t_person
	minus
SELECT name FROM t_adresse;