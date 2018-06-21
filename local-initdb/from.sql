REM CONNECT system/oracle
REM START /etc/entrypoint-initdb.d/from.sql

START /etc/entrypoint-initdb.d/tabelle.sql

SET ECHO ON
CL SCR

REM
	
REM DESCRIBE user_tables;	

DESC t_person;
DESC t_adresse;
INSERT 
	INTO 	t_person 	
	VALUES				(1, 'peter','krause',6);


INSERT 
	INTO 	t_adresse 	
	VALUES				(4, 'Berlin',1);

COMMIT;


INSERT 
	INTO 	t_person 	
	VALUES				(2, 'Ina','krausbart',6);

INSERT 
	INTO 	t_adresse 	
	VALUES				(5, 'Berlin',2);

COMMIT;

INSERT 
	INTO 	t_person 	
	VALUES				(3, 'Ralf','Berlin',2);

INSERT 
	INTO 	t_adresse 	
	VALUES				(7, 'Potsdam',3);

COMMIT;
INSERT 
	INTO 	t_person 	
	VALUES				(4, 'Ilse','Wilde',0);

INSERT 
	INTO 	t_adresse 	
	VALUES				(13, 'Bernau',NULL);

COMMIT;

SET LINESIZE 120

SELECT *
	FROM t_person LEFT OUTER JOIN t_adresse
	ON (t_person.id = t_adresse.pid);	
					
					



					
/*
SELECT *
	FROM t_person, t_adresse;	
*/







/*
SELECT table_name
	FROM user_tables;

DESCRIBE user_tables;
*/	