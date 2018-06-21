REM @/etc/entrypoint-initdb.d/dml.sql

CONNECT system/oracle

set echo off
cl scr

REM Tabelle loeschen
DROP TABLE t_mensch;

REM Tabelle erstellen

CREATE TABLE t_mensch
(
   id		       	number,
   vorname			varchar2(20),
   nachname			varchar2(20)
   );

INSERT 
	INTO 	t_mensch 	(id,vorname, nachname)
	VALUES				(1, 'James','Bond');
			
INSERT 
	INTO 	t_mensch 	(vorname,id, nachname)
	VALUES				('Donald',2,'Duck');			

INSERT 
	INTO 	t_mensch 	(id, nachname)
	VALUES				(3,'Duck');	

INSERT 
	INTO 	t_mensch 	(id, nachname, vorname)
	VALUES				(4,'Dilbert',NULL);	

INSERT 
	INTO 	t_mensch 	
	VALUES				(5,'Dilbert','Dilbert');

UPDATE 		t_mensch
	SET 	nachname = 'Mayer',
			vorname = 'Oscar';	

UPDATE 		t_mensch
	SET 	nachname = NULL,
			vorname = NULL,
			id = NULL
			WHERE id = 1;	
			
UPDATE 		t_mensch
	SET 	nachname = 'Dilbert'
			WHERE id=4;				

UPDATE 		t_mensch
	SET 	nachname = 'Dilbert'
			WHERE id=45;
			
SELECT * FROM t_mensch;

DELETE 
	FROM t_mensch
	WHERE id = 1;


SELECT * FROM t_mensch;

DELETE 
	FROM t_mensch;
	

SELECT * FROM t_mensch;

COMMIT;


