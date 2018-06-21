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


SELECT vorname, nachname
	FROM t_person
    WHERE kinderanzahl > (SELECT kinderanzahl
	                     FROM t_person
	                     WHERE vorname = 'Ralf'
	                     AND nachname = 'Berlin')
	                     ;
SELECT kinderanzahl
    FROM t_person
    GROUP BY kinderanzahl
;
SELECT max(kinderanzahl)
	FROM t_person
	;

SELECT vorname, nachname
	FROM t_person
    WHERE kinderanzahl = (SELECT max(kinderanzahl)
	                      FROM t_person)
	                     ;

/*
REM same as above but output the names of people which number of kids is not highest	
	
SELECT vorname, nachname
	FROM t_person
    WHERE kinderanzahl < (SELECT max(kinderanzahl)
	                      FROM t_person)
	                     ;	
REM same without max with ANY!
	SELECT vorname, nachname
	FROM t_person
    WHERE kinderanzahl <ANY (SELECT max(kinderanzahl)
	                      	FROM t_person)
	                     ;	   

	SELECT vorname, nachname
	FROM t_person
    WHERE kinderanzahl = (SELECT max(kinderanzahl)
	                      FROM t_person) 
	     OR kinderanzahl = (SELECT MIN(kinderanzahl)
	                      FROM t_person)                 
	                     ;

	SELECT vorname, nachname
	FROM t_person
    WHERE kinderanzahl <=ALL (SELECT kinderanzahl
	                      	FROM t_person)
         OR kinderanzahl >=ALL (SELECT nvl(kinderanzahl,-1)
	                      FROM t_person)
	                     ;  

SELECT vorname, nachname
	FROM t_person
    WHERE kinderanzahl =ANY (SELECT MAX(kinderanzahl)
	                      FROM t_person 
	                      UNION
	                      SELECT MIN(kinderanzahl)
	                      FROM t_person)                 
	                     ;	

SELECT vorname, nachname
	FROM t_person
    WHERE kinderanzahl IN (SELECT MAX(kinderanzahl)
	                      FROM t_person 
	                      UNION
	                      SELECT MIN(kinderanzahl)
	                      FROM t_person)                 
	                     ;	

*/	                     	                     
	                     
	