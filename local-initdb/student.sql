REM @/etc/entrypoint-initdb.d/student.sql

CONNECT system/oracle

set echo off
cl scr

REM Tabelle loeschen


DROP TABLE t_pruefen;
DROP TABLE t_fach;
DROP TABLE t_dozent;
DROP TABLE t_student;

REM Tabelle erstellen

CREATE TABLE t_student
(
   sid       number			CONSTRAINT student_id PRIMARY KEY,
   name  	varchar2(20),
   semester number
);

CREATE TABLE t_dozent
(
   did       number			CONSTRAINT dozent_id PRIMARY KEY,
   name 	varchar2(20),
   age		 number
);

CREATE TABLE t_fach
(
   sid      number,	
   did      number,
   fach		varchar2(20),
   CONSTRAINT pk_tfach PRIMARY KEY (sid, did, fach),
   CONSTRAINT fk_tfach FOREIGN KEY 	(sid,did)				
   					   REFERENCES t_pruefen(sid,did)		
);

CREATE TABLE t_pruefen
(
   sid       number			CONSTRAINT fk_pr_student_id 
                            REFERENCES t_student(sid), 
   did       number			CONSTRAINT fk_pr_dozent_id 
   							REFERENCES t_dozent(did),
   CONSTRAINT pk_tpruefen	PRIMARY KEY (sid, did)	
   );

DESCRIBE	t_pruefen;
DESCRIBE	t_fach;
DESCRIBE	t_dozent;
DESCRIBE	t_student;



/*



DESCRIBE t_person

REM Tabelle ändern: Spalte hinzufügen

ALTER TABLE t_person
  ADD adresse number;

DESCRIBE t_person

REM Tabelle ändern: Spalte ändern

ALTER TABLE t_person
  MODIFY adresse varchar2(30);

DESCRIBE t_person

REM Tabelle ändern: Spalte löschen

ALTER TABLE t_person
  DROP COLUMN adresse;

DESCRIBE t_person


set echo on
cl scr

DROP TABLE t_adresse;
DROP TABLE t_person;


CREATE TABLE t_person
(
   id           number       CONSTRAINT pk_person_id PRIMARY KEY,
   vorname      varchar2(20),
   nachname     varchar2(25) CONSTRAINT nn_person_nachname NOT NULL
                             CONSTRAINT uni_person_nachname UNIQUE,
   kinderanzahl number(2)    CONSTRAINT chk_person_kinderanzahl
                                CHECK(kinderanzahl >= 0),
   CONSTRAINT uni_person_vornachname UNIQUE(vorname, nachname)
);

DESCRIBE t_person


CREATE TABLE t_adresse
(
   id           number       CONSTRAINT pk_adresse_id PRIMARY KEY,
   name         varchar2(20),
   pid          number,
   CONSTRAINT fk_adresse_pid FOREIGN KEY        (pid)
                             REFERENCES t_person(id) 
);
CREATE TABLE t_adresse
(
   id           number       CONSTRAINT pk_adresse_id PRIMARY KEY,
   name         varchar2(20),
   pid          number       CONSTRAINT fk_adresse_pid
                             REFERENCES t_person(id) 
);


DESCRIBE t_adresse



REM @c:\daten\tabelle.sql
*/