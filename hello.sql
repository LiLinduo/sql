
REM START /Desktop/hello.sql
REM @/Desktop/hello.sql 

SET ECHO ON
CL SCR

REM profi start with delete tables
DROP TABLE t_person;


REM tabelle erstellen

CREATE TABLE t_person
(
	id 			number,
	vorname		varchar2(20),
	nachname	varchar(20)
);

DESCRIBE t_person

ALTER TABLE t_person
	ADD address number;

ALTER TABLE t_person
	MODIFY address varchar2(30);

ALTER TABLE t_person
	DROP COLUMN address;
			