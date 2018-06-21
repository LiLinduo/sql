REM @c:\daten\remake.sql

cl scr

DROP TABLE t_remake;
DROP TABLE t_film;

REM Tabelle erstellen

CREATE TABLE t_film
(
   film_id       number CONSTRAINT pk_film_film_id PRIMARY KEY
);


CREATE TABLE t_remake
(
   original	number CONSTRAINT nn_remarke_original NOT NULL
                       CONSTRAINT fk_remarke_original
                             REFERENCES t_film(film_id),
   remarke      number CONSTRAINT pk_remarke_remarke PRIMARY KEY
                       CONSTRAINT fk_remarke_remarke
                             REFERENCES t_film(film_id)
);


DROP TABLE t_remake;
DROP TABLE t_film;

CREATE TABLE t_film
(
   film_id      number CONSTRAINT pk_film_film_id PRIMARY KEY,
   original	number CONSTRAINT fk_remarke_original
                             REFERENCES t_film(film_id)
);









