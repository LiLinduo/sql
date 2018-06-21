REM CONNECT system/oracle
REM START /etc/entrypoint-initdb.d/tabelle.sql


SET ECHO ON
CL SCR

REM  start with delete tables

DROP TABLE t_adresse;
DROP TABLE t_person;


REM tabelle erstellen

CREATE TABLE t_person
(
	id 			number 		CONSTRAINT pk_person_id PRIMARY KEY,
	vorname		varchar2(20),
	nachname	varchar(25) CONSTRAINT nn_person_nachname NOT NULL
							CONSTRAINT uni_person_nachname UNIQUE,
	kinderanzahl number(2)	CONSTRAINT chk_person_kinderanzahl CHECK(kinderanzahl >= 0),					
	CONSTRAINT uni_person_vornachname UNIQUE (vorname,nachname)						
);

DESCRIBE t_person

/*

CREATE TABLE t_adresse 
(
	id 			number 		CONSTRAINT pk_adresse_id PRIMARY KEY,
	name		varchar2(20),
	pid			number,					
	CONSTRAINT fk_adresse_pid FOREIGN KEY (pid)
							  REFERENCES t_person(id)							
);
*/

CREATE TABLE t_adresse 
(
	id 			number 		CONSTRAINT pk_adresse_id PRIMARY KEY,
	name		varchar2(20),
	pid			number	CONSTRAINT fk_adresse_pid
						REFERENCES t_person(id)							
);

DESCRIBE t_adresse
