REM @C:\Daten\prufen.sql

connect system/oracle
cl scr 
SET echo on
DROP TABLE t_fach;
DROP TABLE t_pruefen;
DROP TABLE t_dozent;
DROP TABLE t_student;


CREATE TABLE t_student
(
sid		number		CONSTRAINT pk_student_prufen PRIMARY KEY,
name		varchar2(20),
semester	varchar2(20)
);

CREATE TABLE t_dozent
(
did		number		CONSTRAINT pk_dozent_did PRIMARY KEY,
dname		varchar2(20),
dalter		number (3)
);

CREATE TABLE t_pruefen
(
did		number CONSTRAINT fk_pruefen
			REFERENCES t_dozent(did),
sid		number	CONSTRAINT fk_pruefen2
			REFERENCES t_student(sid),
CONSTRAINT pk_pruefen_didsid PRIMARY KEY (did, sid)
);

CREATE TABLE t_fach
(
fach 		varchar2(20),	
sid		number,
did		number,
CONSTRAINT pk_tfach PRIMARY KEY (sid,did,fach),
CONSTRAINT fk_tfach FOREIGN KEY         (sid,did) 
                    REFERENCES t_pruefen(sid,did)
);









