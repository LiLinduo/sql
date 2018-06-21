CONNECT system/oracle

SET ECHO ON
CL SCR

REM profi start with delete tables
DROP TABLE t_person;


REM tabelle erstellen

CREATE TABLE t_person (
	id 			number,
	vorname		varchar2(20),
	nachname	varchar(25) CONSTRAINT nn_person_nachname NOT NULL
							CONSTRAINT uni_person_nachname UNIQUE
);

DESCRIBE t_person

ALTER TABLE t_person
	ADD address number;

ALTER TABLE t_person
	MODIFY address varchar2(30);

ALTER TABLE t_person
	DROP COLUMN address;
			