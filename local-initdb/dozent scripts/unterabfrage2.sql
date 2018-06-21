SELECT * FROM t_adresse;

INSERT INTO t_adresse (id, name,   pid)
  VALUES              (45, 'Bonn', 3);


INSERT INTO t_adresse ( id,                                 name,   pid)
  VALUES              ( (SELECT max(id) + 1 FROM t_adresse), 'Bern', 3);


INSERT INTO t_adresse ( id,       name,   pid)
                SELECT  id + 100, name, pid
                   FROM t_adresse;

CREATE TABLE t_adresse_kopie
          AS   SELECT  id, name, pid
                   FROM t_adresse
                   WHERE 1 != 1;

