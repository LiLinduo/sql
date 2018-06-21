REM @c:\daten\dml.sql

set echo on
cl scr


DROP TABLE t_mensch;

CREATE TABLE t_mensch
(
  id       number,
  vorname  varchar2(20),
  nachname varchar2(20)
);

INSERT
  INTO t_mensch (id, vorname, nachname)
  VALUES        (1,  'James', 'Bond');

INSERT
  INTO t_mensch (vorname, id, nachname)
  VALUES        ('Donald', 2, 'Duck');

INSERT
  INTO t_mensch (id, nachname)
  VALUES        (3, 'Duck');

INSERT
  INTO t_mensch (id, nachname, vorname)
  VALUES        (4, 'Pan',     NULL);

INSERT
  INTO t_mensch (id, vorname, nachname)
  VALUES        (5, 'Peter',  'Pan');

INSERT
  INTO t_mensch 
  VALUES        (6, 'Daisy',  'Duck');

INSERT
  INTO t_mensch 
  VALUES        (-8, 'Helmut',  'Kohl');

INSERT
  INTO t_mensch 
  VALUES        ('Angelika', 9, 'Merkel');


SELECT * FROM t_mensch;


UPDATE t_mensch
  SET nachname = 'Meier';

SELECT * FROM t_mensch;


UPDATE t_mensch
  SET nachname = 'Lehmann',
      vorname  = 'Oskar';

UPDATE t_mensch
  SET nachname = 'Lehmann',
      vorname  = NULL;

UPDATE t_mensch
  SET nachname = 'Kaufmann'
  WHERE id = 6;

SELECT * FROM t_mensch;


UPDATE t_mensch
  SET nachname = 'Kaufmann'
  WHERE id = 45;

SELECT * FROM t_mensch;


DELETE FROM t_mensch
  WHERE id = 1;

SELECT * FROM t_mensch;






COMMIT;





