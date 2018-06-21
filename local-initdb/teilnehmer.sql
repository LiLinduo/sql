

DROP TABLE t_hobbies;
DROP TABLE t_teilnehmer;


CREATE TABLE t_teilnehmer
(
   tid       number CONSTRAINT pk_teilnehmer_id PRIMARY KEY,
   vorname  varchar2(20),
   nachname  varchar2(20)
);

CREATE TABLE t_hobbies
(
   tid       number,
   hobby  varchar2(20),
   CONSTRAINT pk_hobbies PRIMARY KEY (tid,hobby),
   CONSTRAINT fk_tid_hobby FOREIGN KEY (tid)
   			REFERENCES t_teilnehmer(tid)
);

INSERT 
	INTO 	t_teilnehmer 	
	VALUES				(1, 'James','Gordon');


INSERT 
	INTO 	t_hobbies 	
	VALUES				(1, 'Fussball');
	
INSERT 
	INTO 	t_hobbies 	
	VALUES				(1, 'guitar');
	
	

COMMIT;

INSERT 
	INTO 	t_teilnehmer 	
	VALUES				(2, 'Pascal','Jones');


INSERT 
	INTO 	t_hobbies 	
	VALUES				(2, 'teetrinken');

INSERT 
	INTO 	t_hobbies 	
	VALUES				(2, 'guitar');


COMMIT;




SELECT *
	FROM t_teilnehmer ;

SELECT *
	FROM t_hobbies ;
	

SELECT vorname,nachname,hobby							
	FROM t_teilnehmer s JOIN t_hobbies u ON (s.tid = u.tid)						
	GROUP BY hobby,vorname,nachname;



























/*
ACCEPT s_tid PROMPT "Bitte die ID eingeben: "
ACCEPT s_name PROMPT "Bitte den Namen eingeben: "
ACCEPT s_nachname PROMPT "Bitte den Nachnamen eingeben: "
ACCEPT s_hobby PROMPT "Bitte das Hobby eingeben: "

INSERT 
	INTO 	t_teilnehmer 	
	VALUES				(&s_tid, '&s_name',&s_nachname);

INSERT 
	INTO 	t_hobbies 	
	VALUES				(&s_did,&s_hobby);

*/



