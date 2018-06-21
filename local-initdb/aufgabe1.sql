REM @/etc/entrypoint-initdb.d/aufgabe1.sql


set echo off
cl scr

DROP TABLE t_unterrichten;
DROP TABLE t_dozent1;
DROP TABLE t_student1;

REM Tabelle erstellen

CREATE TABLE t_student1
(
   id       number CONSTRAINT pk_student_id PRIMARY KEY,
   name  varchar2(20),
   semester number
);
CREATE TABLE t_dozent1
(
   did       number CONSTRAINT pk_dozenten_id PRIMARY KEY,
   name  varchar2(20),
   gehalt number
);

CREATE TABLE t_unterrichten
(
	id number,
	did number,
   CONSTRAINT pk_tunterrichten PRIMARY KEY (id,did),
   CONSTRAINT fk_tstuunterrichten FOREIGN KEY (did)
   			REFERENCES t_dozent1(did),
   CONSTRAINT fk_tdozunterrichten FOREIGN KEY (id)
   			REFERENCES t_student1(id)
);

/*
DESCRIBE t_student1
DESCRIBE t_dozent1
DESCRIBE t_unterrichten
*/

INSERT 
	INTO 	t_student1 	
	VALUES				(1, 'James',3);


INSERT 
	INTO 	t_dozent1 	
	VALUES				(1, 'Ina',1000);

INSERT 
	INTO 	t_unterrichten 	
	VALUES				(1,1);

COMMIT;

SET LINESIZE 120

SELECT *
	FROM t_student1 ;

SELECT *
	FROM t_dozent1 ;
	
SELECT *
	FROM t_unterrichten ;
	
SELECT *
	FROM t_student1 s JOIN t_unterrichten u ON (s.id = u.id)
					  JOIN t_dozent1 d ON (d.did = u.did);	

ACCEPT sname PROMPT "Bitte den Namen eingeben: "
ACCEPT semester PROMPT "Bitte das Semester eingeben: "
ACCEPT dname PROMPT "Bitte den Namen des Dozent eingeben: "
ACCEPT gehalt PROMPT "Bitte das Gehalt eingeben: "

INSERT 
	INTO 	t_student1 	
	VALUES				(2, '&sname',&semester);

INSERT 
	INTO 	t_dozent1 	
	VALUES				(2, '&dname',&gehalt);
