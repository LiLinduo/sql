REM @/etc/entrypoint-initdb.d/remake2.sql

CONNECT system/oracle

set echo off
cl scr

REM Tabelle loeschen

DROP TABLE t_film;

REM Tabelle erstellen

CREATE TABLE t_film
(
   film_id       	number 	CONSTRAINT pk_film_id PRIMARY KEY,
   original			number 	CONSTRAINT fk_remake_original 
                            REFERENCES t_film(film_id)
);

DESCRIBE t_film


