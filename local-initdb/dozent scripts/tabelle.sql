REM @c:\daten\tabelle.sql

CONNECT system/oracle

/*
set echo off
cl scr

REM Tabelle löschen

DROP TABLE t_person;


REM Tabelle erstellen

CREATE TABLE t_person
(
   id       number,
   vorname  varchar2(20),
   nachname varchar2(25)
);

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

*/


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

/*
CREATE TABLE t_adresse
(
   id           number       CONSTRAINT pk_adresse_id PRIMARY KEY,
   name         varchar2(20),
   pid          number,
   CONSTRAINT fk_adresse_pid FOREIGN KEY        (pid)
                             REFERENCES t_person(id) 
);
*/

CREATE TABLE t_adresse
(
   id           number       CONSTRAINT pk_adresse_id PRIMARY KEY,
   name         varchar2(20),
   pid          number       CONSTRAINT fk_adresse_pid
                             REFERENCES t_person(id) 
);


DESCRIBE t_adresse



REM @c:\daten\tabelle.sql
