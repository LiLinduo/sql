REM @c:\daten\uebung2.sql

set echo off
cl scr

DROP TABLE t_unterrichten;
DROP TABLE t_dozent;
DROP TABLE t_student;

CREATE TABLE t_student
(
	id number CONSTRAINT pk_id PRIMARY KEY,
	name varchar2 (20),
	semester number
);


CREATE TABLE t_dozent
(
	did number 	CONSTRAINT pk_did PRIMARY KEY,
	name varchar2(20),
	gehalt number
);


CREATE TABLE t_unterrichten
(
	id number, 
	did number,
	CONSTRAINT pk_id_did PRIMARY KEY (id,did),
	CONSTRAINT fk_id FOREIGN KEY (id)
	REFERENCES t_student (id),	
	CONSTRAINT fk_did FOREIGN KEY (did)
	REFERENCES t_dozent (did)			   
	);



INSERT
	INTO t_student (id, name, semester)
	VALUES		  (1, 'JAMES', 3);
	
INSERT
	INTO t_dozent (name, gehalt, did)
	VALUES		  ('Ina', 1000, 1);

INSERT
	INTO t_unterrichten (id, did)
	VALUES		    (1,  1);

COMMIT;
	
SELECT *
 FROM t_student;

SELECT *
 FROM t_unterrichten; 

SELECT *
 FROM t_dozent; 

SELECT *
 FROM (t_student s JOIN t_unterrichten u ON (s.id = u.id))
                   JOIN t_dozent d ON (d.did = u.did);

SELECT s.name, d.name
 FROM (t_student s JOIN t_unterrichten u ON (s.id = u.id))
                   JOIN t_dozent d ON (d.did = u.did);



cl scr
set echo off

REM Eingabe der Werte

SELECT id FROM t_student;

ACCEPT id PROMPT "Bitte die größte ID um eins erhöht angeben: "


ACCEPT sname PROMPT "Bitte den Namen des Studenten eingeben: "

ACCEPT semester PROMPT "Bitte das Semester eingeben: "

ACCEPT dname PROMPT "Bitte den Namen des Dozenten eingeben: "

ACCEPT gehalt PROMPT "Bitte das Gehalt eingeben: "


REM Speichern der Werte

INSERT
	INTO t_student (id, name, semester)
	VALUES		(&id, '&sname', &semester);
	
INSERT
	INTO t_dozent (name, gehalt, did)
	VALUES		  ('&dname', &gehalt, 2);

INSERT
	INTO t_unterrichten (id, did)
	VALUES		    (2,  2);


SELECT s.name, d.name
 FROM (t_student s JOIN t_unterrichten u ON (s.id = u.id))
                   JOIN t_dozent d ON (d.did = u.did);

COMMIT;


