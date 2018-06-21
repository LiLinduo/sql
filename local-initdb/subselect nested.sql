DROP TABLE t_person;
CREATE TABLE t_person
(
	id 			number 		CONSTRAINT pk_person_id PRIMARY KEY,
	vorname		varchar2(20),
	nachname	varchar(25) CONSTRAINT nn_person_nachname NOT NULL
							CONSTRAINT uni_person_nachname UNIQUE,
	kinderanzahl number(2)	CONSTRAINT chk_person_kinderanzahl CHECK(kinderanzahl >= 0),					
	CONSTRAINT uni_person_vornachname UNIQUE (vorname,nachname)						
);

INSERT 
	INTO 	t_person 	
	VALUES				(1, 'peter','krause',6);
INSERT 
	INTO 	t_person 	
	VALUES				(2, 'Ina','krausbart',6);
INSERT 
	INTO 	t_person 	
	VALUES				(3, 'Ralf','Berlin',2);
INSERT 
	INTO 	t_person 	
	VALUES				(4, 'Ilse','Wilde',0);

REM gib aus personen mit der 2. hoechste Kinderanzahl
 
SELECT vorname, nachname
	FROM t_person
    WHERE kinderanzahl = (SELECT MAX(kinderanzahl)
	                      FROM t_person 
	                      WHERE kinderanzahl < (SELECT MAX(kinderanzahl)
	                                           FROM t_person ));		
	