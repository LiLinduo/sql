DROP TABLE t_adresse;
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




CREATE TABLE t_adresse 
(
	id 			number 		CONSTRAINT pk_adresse_id PRIMARY KEY,
	name		varchar2(20),
	pid			number	CONSTRAINT fk_adresse_pid
						REFERENCES t_person(id)							
);


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
UPDATE t_adresse
	SET id=14
	where id =4;
	
UPDATE t_adresse
	SET id=15
	where id =5;
		       
SELECT id,name,pid 
    FROM t_adresse
    ;
    
SELECT AVG(id) 
    FROM t_adresse
    GROUP BY name;
    
SELECT id,name,pid 
    FROM t_adresse aa
    WHERE id >=ANY (SELECT AVG(id)     
                FROM t_adresse ai
                WHERE ai.name = aa.name
                GROUP BY name)    
    ;


	