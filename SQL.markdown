---
layout: lesson
title:  ""
date:   2018-05-28 17:14:47 +0100
categories: lesson
---



1.Generation - 50 's / magnetbaender /stapelverarbeitung
2.Gen 60's Festplatten / direct acccess
3.Gen 70's hierarchic data model - network model
4.Gen 80's relational DB model
5.Gen object oriented DB model 

Data modeling
in software engineering is the process of creating a data model for an information system by applying certain formal techniques.

database design
The first task of a database designer is to produce a conceptual data model that reflects 
the structure of the information to be held in the database. A common approach to this is to 
develop an entity-relationship model, often with the aid of drawing tools. Another popular approach 
is the Unified Modeling Language. A successful data model will accurately reflect the possible state 
of the external world being modeled: for example, if people can have more than one phone number, 
it will allow this information to be captured. Designing a good conceptual data model requires a 
good understanding of the application domain

https://jason.pureconcepts.net/2015/10/install-apache-php-mysql-mac-os-x-el-capitan/

from customer auftrag to realisierung
{
concept
1- grobstruktur
2- feinstruktur - begriffe klaeren - relevante objekten - welche eigenschaften werden die 
relevante objekte beschrieben.  -werte bereich. gefuehrte null wird zb bei postleitzahlen verloren. 
muss dann als string gespeichert werden.
standartwert fuer die eigenschaft. kann ich immer einen wert angeben
relationships and limit between the fields . abhaengichkeit zwischen beziehungen
einschraenkung. typische operationen. datenvolumen (pictures zb) und gleichzeitiger zugriff. 
aufgaben geichzeitig zu verarbeiten (zb Windows is more for 1 user oriented .  
linux ist von vornerein mehr multitasking) .gesetzliche vorschriften ex datenbank bei dem artzt etc.
3- er-modell - An entity–relationship model (ER model for short) describes interrelated things of interest 
in a specific domain of knowledge. A basic ER model is composed of entity types 
(which classify the things of interest) and specifies relationships that can exist between 
instances of those entity types.
4 -relation modell
5- normalisierung (reduce data redundancy and improve data integrity.)

physischer Entwurf
-Datenbanksystem
-SQL
}

project ist zu ende wenn es bezahlt ist.


Uniqueness and keys
make sure a field is unique

dBase (also stylized dBASE) was one of the first database management systems for microcomputers, and the most successful in its day.[2] The dBase system includes the core database engine, a query system, a forms engine, and a programming language that ties all of these components together. dBase's underlying file format, the .dbf file, is widely used in applications needing a simple format to store structured data.
dBase was originally published by Ashton-Tate for microcomputer operating system CP/M in 1980, and later ported to Apple II and IBM PC computers running DOS. On the PC platform, in particular, dBase became one of the best-selling software titles for a number of years.

A blockchain,[1][2][3] originally block chain,[4][5] is a continuously growing list of records, called blocks, which are linked and secured using cryptography.[1][6] Each block typically contains a cryptographic hash of the previous block,[6] a timestamp, and transaction data.[7] By design, a blockchain is resistant to modification of the data. It is "an open, distributed ledger that can record transactions between two parties efficiently and in a verifiable and permanent way"

primary key and ..

entity relationship modell
(ER model for short) describes interrelated things of interest in a specific domain of knowledge. 
A basic ER model is composed of entity types (which classify the things of interest) and specifies relationships 
that can exist between instances of those entity types. 
In software engineering, an ER model is commonly formed to represent things that a business needs 
to remember in order to perform business processes. Consequently, the ER model becomes an abstract data model, 
that defines a data or information structure which can be implemented in a database, typically a relational database.

1976 Peter Chen
- Chen Notation
- crows foot - Kraehenfuss - min max notation
notations - chen notation

An ER model is typically implemented as a database. 
In a simple relational database implementation, each row of a table represents one instance of an entity type, 
and each field in a table represents an attribute type. In a relational database a relationship between entities 
is implemented by storing the primary key of one entity as a pointer or "foreign key" in the table of another entity

- Programs: Visio
- Oracle designer

entity eine bestimmte auspraegung eines relevanten objektes
jedes entity wird durch Attribute naeher beschrieben (eigenschaften)
entity typ - entity mit denselben attributen werden zusammengefasst

ellipse ist attribute
square ist entity

werte - koennen bestimmt 
literal sein ex text zahl datum binaer etc

unbestimmt NULL

Keywords in capital

Null (or NULL) is a special marker used in Structured Query Language to indicate that a 
data value does not exist in the database. Introduced by the creator of the relational database model, 
E. F. Codd, SQL Null serves to fulfil the requirement that all true relational database management systems (RDBMS) 
support a representation of "missing information and inapplicable information". 
Codd also introduced the use of the lowercase Greek omega (ω) symbol to represent Null in database theory. 
In SQL, NULL is a reserved word used to identify this marker.

attributes
atomarer wert - nicht mehr teilbar stammen aus domaenen
einfache attribute : enthalten nur atomare werte
zusammen gesetzte attribute 
mehrwertige attribute - enthaelt eine Menge derselben domaene

attribut optionalitaet
 = muss - darf keiner NULL wert besitzen ex pflichtfeld
 = kann -- kann NULL wert besitzen	
 
 schluessel =>  primaer or  fremd schluessel.
 
schluessel
 
	eindeutiger bezeichner ( unique Identifier)
 	einem oder mehrer attributen aus derselben Entitaet
 	verwendung eindeutiger identifizierung - enthaehlt duplikatsfreie werte
 	kein NULL
 	sollte minimal sein, die geringste anzahl an attributrn so dass schluessel noch 	gegeben ist
 	jedes entity kann mehrere schluessel besitzen	 	

Person (     name , fingerabdruck , steuer_id , personenkennzahl , )

fingerabdruck , steuer_id , personenkennzahl sind schluessl 
name ist nicht ein schluessel

primaer schl als verbindung 

kuenstliche schluessel
	besteht aus einem attribut
	enth nur ganze zahlen
	wird als primary key verwendet wenn der key zu komplex ist ode kein key gebildet werden kann.

partieller schluessel wird nur im zusammenhgang mit stark schwach entity benutzt

stark entity typ -  besitzt einen Primaerschluessel
schwacher entity typ besitzt einen partiellen schluessel

primaer heisst ausgezeichneter schl.
1 entity max 1 primary key

second keys are the others

______________________

relationships  (romboides)
beziehung mit einer semantischen Bedeutung
=> always between entities
between entities i can have more than one relationship
every relationship has a name.. 

rel can have own attributes.

ex entity student and dozent - attributes unterrichten und pruefen. 
ex attr von der beziehung pruefen ist pruefungsdatum 

grad der Beziehung : unaer binar ternaer quadaer


Limitations - einschraenkungen
Wie oft nimmt ein vertreter der entitaet an der beziehung teil

teilnahme anzahl [ beteiligungsverhaeltnis, kardinalverhaeltnis]
                        gar nicht , 			einmal    1
                        gar nicht 0, 			mehrmals	N
                        einmal 1 , 				einmal
                        einmal , 			 	mehrmals
					(min max)	

Binary 1:1 Beziehung					
					
(name)	- [AUTHOR]1 - < schreiben > 1[ BUCH] - (title)

jeder autor schreibt hoechstens ein buch			

jedes Buch wird geschrieben von hoechstens einem Author 	


Binary 1:N Beziehung

(name)	- [AUTHOR]1 - < schreiben > N[ BUCH] - (title)

jeder autor schreibt mehrere bücher			

jedes Buch wird geschrieben von hoechstens einem Author 	



Binary N:1 Beziehung
similar to above


Binary N:M Beziehung
(name)	- [AUTHOR]N - < schreiben > N[ BUCH] - (title)
jeder autor schreibt mehrere bücher			
jedes Buch wird geschrieben von hoechstens einem Author 	


Attribut optionalitaet

assoziative beziehung  -- symbol romboide <^> binary

IS A - beziehung -  triangle

Unaer ist ein sondrfall einer binaere beziehung - ex verheiratet/mensch

unary relationschip need to give a role
es
	_______________
	|				|			
[mensch ]			
	|



Beteiligungsverhaeltnis   ===== participation constraint/ cardinality constraint
Partielle beteiligung - jeder vertreter kann an der beziehung teilnehmen
totale beteiligung	-	muss  (wird dick strich gezeichnet  )

			-------elternordner --------
(_oid_) -		|1							|
		  | Ordner |					< hat >
(name) --		|n							|	
			|______kinderordner ------------|	    // kinder muessen elternordner haben
													// the connection is thicker.
													
													
													
													
													
								Grenzen des ER modell
								
-abhaengigkeit (bestimmte)- zeitliche abh. kann ich nicht darstellen
-zugriff rechte - rechte - wer darf abfragen 
- operationen ex netto preis - brutto preis - brutto preis is automatisch berechnet 													

ER modell is statisch. nur fuer struktur. 



### relationship model		

relationship schema

Das ist eine Tabelle / relation 

Ai are attibutes / Di are domains werte bereich datentyp / Wi are the values

Relations schema R(A1:D1, A2:D2, An:Dn)   R ist Tabellenname

| A1 | A2 | A3 | .. |
----------------
| W1 | W2 | W3 | .. | 			//   Zeile / Tupel 											
													
Datenbankschema : besteht aus einer Vielzahl von Relationschemen
Relational dTbNK : SETZT SICH 	Datenbankschema und deren verknuepfungen zusammen	

In the context of relational databases, a tuple is one record (one row).											
																							
Constraint verhindert die eingabe ungueltiger werte		
1- primary key - keine NULL werte - keine Dupes - eindeutiger Index
2-Not NULL constraint : verhinder die Eingabe des NULL wertes -- Notation is NN written small after the column name  
3-Unique constraint . verhindert die Eingabe von Dupe notation _._._

The following constraints are commonly used in SQL:

NOT NULL - Ensures that a column cannot have a NULL value
UNIQUE - Ensures that all values in a column are different
PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
FOREIGN KEY - Uniquely identifies a row/record in another table
CHECK - Ensures that all values in a column satisfies a specific condition
DEFAULT - Sets a default value for a column when no value is specified
INDEX - Used to create and retrieve data from the database very quickly


oberbegriff fuer .. primaerschluessel fremdschluessel 
									
Surrogate key	?								
						
Foreign key bezieht sich auf den Primary key einer Relation (Tabelle)
PK and FK besitzen die gleiche anzahl an attributen
besitzen die gleichen Datentyp(-familie)
kann NULL enthalten
Kann Duplikate 
notation - - - 
# referenzielle integrität
verhindert die Eingabe von Werten die nicht in primaerschluessel vorkommen oder 
der Wert ist NULL (darf nNULL sein)

Data integrity is the maintenance of, and the assurance of the accuracy and consistency of, 
data over its entire life-cycle,[1] and is a critical aspect to the design, 
implementation and usage of any system which stores, processes, or retrieves data.	




---------------------------
SQL with Terminal on mac
start with downloading VM 
then Vagrant
go in the vagrant dir and do 

			vagrant up
			vagrant ssh	
					
Logging out and in
If you type exit (or Ctrl-D) at the shell prompt inside the VM, you will be logged out, 
and put back into your host computer's shell. To log back in, make sure you're in the same 
directory and type vagrant ssh again.

If you reboot your computer, you will need to run vagrant up to restart the VM.					
																			
																			
																			________

key 
primary key
partial key - rechnungs rechnungs position ex - rechnung id and rechnung

weak and strong entity																			
					
foreign key - not a key - verweist auf einen primary key - 


referential integrity													
						
						
Referential integrity is a property of data stating references within it are valid. 
In the context of relational databases, it requires every value of one attribute of a 
relation to exist as a value of another attribute in a different relation.
						
mehrwertige attributes.. attributes with one value ex animals and foods.
fuchs eat A and B , cat eat ABC.. if I need another attribute I need to change the structure of the table. and this is not so good. also single attributes even when only NULL is in then I still need memory 

Person 
_id_ | name | _ _oid _ _ /// | _oid_ (primary key second table)| placename | city
__________________________________________________________________________________

(foreign key first table)

what i put in oid has to be already in the second table otherwise error. NULL ok
if I change the oid system check if value already in first table under foreign oid
is.. if I change a value in F oid it is ok only if the value is not already 
primary oid doesnt need to be in order.

cardinality and beteiligungsverh.
1:N every book is written by max one writer
every writer writes many book is not 1:N

[autor]1 -- <write> == N[book]

ex tim . C++ // right or wrong? FIRST datensatz always right ;)
________________________________________________________________

constraints
zu vermeiden dass ungueltige Daten eingetragen werden.
4 typen 

______________________________________________________________________
__________________________________________________________________________
transformationsregeln

ER modell zu transformieren.

|BUS| starke entity typ 
Bus ()    //tabellennamen kommt spaeter
						
(sitzplatzanzahl)-- |BUS| = (_bid_)  //jetzt mit attribut
					  |
					 ((sitzplatznummer)) 		
Bus ( sitzplatzanzahl)

Bus(_bid_,sitzplatzanzahl)// with primary key , which standard comes first
													
Bus(_bid_,sitzplatzanzahl )		//with mehrwertiges attr.											
													
													
Rules
mehrwertiges							 Attribut
- eigene relation
	sitzplatznummer(--bid--,sitzplatznummer)  //--bid is foreign key/both primary
					__________________________   both primary
	aufbau - das mehrwertiges attribut selber als einfaches attribut
	-primary K des Besitzers wird FK (FK laesst dupe zu)
	ex Bus id 1 - sitzpatz 20 sitzplatznummer 1a 1b 1c
		foreign id 1 in 
		sitzplatznummer () 1 => 1a 
						   1 => 1b
						   1 => 1c
	- primary key of the mehrwertiges attribute wird ueber beide bestandteile gebaut
	
	
|fahrer|

Fahrer (_fid_, name)	
transform order . 
first entity , then the mehrwertige attr von entity . then relationships

<> associative relationship (koennen eigene attribute haben)
- eigene relation
- PK der beteiligten entitaeten werden zu FK
- PK wird ueber diese FK gebildet unter beachtung der strukturellen einschraenkung
- Die FK duerfe kardinalwerte besitzen. NULL wert verboten NN!

<fahren> -- (wann)
	fahren(--bid--NN,---fid---NN, wann)   //verschiedene fremdschluessel versch ebenen
	
B => F on a 1:1 cardinality I have one Bus and one Fahrer. from one Fahrer I get the Bus
F=> B same thing
primary key I can choose, both B and F in this case are unique. 
bei primary key I can take out the NN
fahren(-bid-,---fid---NN, wann)  Bid is now PK
						
						   					
Case cardinality 1:N
B=>F if I tell you the Bus can I tell immediately  which driver? >>> no						   											
F => B given the Bus can I tell you the driver straight away ? YES
In this case F is the primary key
								
Case cardinality N:1
B=>F if I tell you the Bus can I tell immediately  which driver? >>> YES						   											
F => B given the Bus can I tell you the driver straight away ? NO
In this case B is the primary key					
				
Case cardinality N:M
B=>F if I tell you the Bus can I tell immediately  which driver? >>> no						   											
F => B given the Bus can I tell you the driver straight away ? no
In this case both are the primary key													
										

Alternative transformation rules
1:N and 1:1
Beziehung darf keine attribute besitzen

rule not own relationship													
	1:1
der PK der eine Seite wird Fremdschluesselk der anderen Seite
FK ist dann Unique
Bus (__bid__,anzahl, -.-fid -.-)           fid
fahrer (__fid__,name )					   ---	
oder ungekehrt - 						   -.-.-								
													
	1:N
	Bus (__bid__,anzahl) bid primary
	Fahrer(__fid__,name , --bid--)			
	
	
## Identifizierte beziehung - Raum wird von gebaude eindeutig identifiziert
		
		ex of the identifizierende beziehung gehoeren
		
(_gid_)= |Gebaude| - (standort)
			|1	
		   << gehoeren >>				// STRONG AND WEAK ENTITY 
			|N
(_raum_nr_) - raum - (sitzplaetze)						

raum_nr			partial key because will have duplicates.
				to know how many seats in 2.1 room need to know the building as well
				
Gebaude (_gid_,standort)
Raum (_raum_nr_, --FK-- , sitzplatz)		FK ist the PK of the strong entity (gid)
		______________							Primary is then raumnr and gid	
	
weak entity needs always an owner so no need for a thick line	


exercise
				|airline| - (name)
				   |
(_flugzeit_) == |flug| 	--- (von)						
					   		--- (nach)
		|N				|1							|N
   (PNR)- <buchen>   <warteliste>-(position)   <mitfliegen> - (sitzplatz)
		|M				|N							|M
(_pid_) == |passagier| 					-- (name)
						-((sprache))	
						
						
Oracle express commercial 

# week2
__________________________________
identifiziertr beziehung (wird aber nicht in ihk exam vorkommen )
partiell key schwache entity typ. brauche identifiziertr beziehung. (wird selten eingesetzt.)
mit einem kuenstlichen key wandeln wir in einem starken identity typ um
										   
1:n
2 entity one relationship. 
3 tabelle/relation or 2 tabelle/relation with alternate transformation (1:n and 1:1)

										   
										   
AUFTRAG
	|
	Grobstruktur
	|
	Feinstruktur
	|
	ER modell
	|
	Relationenmodell
	|
	Normalisierung
	|
	Konzept Entwurf ( 60% projekt kosten) Begrifflichkeit definieren..
	
SQL
-> Tabellen
-> Datenmanipulation
-> lesen von daten
-> transaktionen

physischer entwurf
	
	
Normalisierung
Ist ein analytisches Verfahren zur reduktion von Daten
Ziele: 
		-Vermeidung von Redundanzen
		-Vermeidung von anomalien beim Einfuegen aendern und loeschen.
		-Verringern der Notwendigkeit, Relationen umzustrukturieren.	
		
Beispiel		
Bestellung										   
_bestellnr_ | anzahl | artikelkode | artikelname | kundenanschrift 
_______________________________________________________________
1			| 3		  | 1085 		| Bier		  | fred Feuerstein, Felsegrund 1 Steinhausen
2			| 8 	  | 13011		| Sekt		  | James Bond , Untergrung 007. London
3			| 4		  | 8118 		| Saft		  | Fred Feuerstein, Felsegrund 1 Steinhausen
4			| 4		  | 0815		| Obst 		  | Fred Feuerstein, Felsegrund 1 Steinhausen
 			| 									  | Donald Duck, speicher 1, Entenhausen
Too much storage space for the same data ex address..	
another problem. if the address of Fred wrong ist, then I have to change it everywhere
when storno, the address will be deleted from te record as well			 			
then, I cannot extrapolate the data in the address field, ex how many orders in a certain city etc.

In case donald calls	
hier ich kann keine Kundenadresse ohne bestellung, in dem Fall dass Donald nur ein Katalog moechte,
ich kann nich einfach seine adresse aufnehmen

1-2-3te normalForm (4te und 5te gibt auch aber ersparnis ist minimal, order of MBytes vs TeraBytes)

ex
Lieferung
⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
_rechnungsNr_ | _rechnungspos_ 	| rechnungsDatum 	| KundenNr 	| anzahl 	|  Verkaufsgegenstand 	|
⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯		
1			  |	1				|	1.1.11			| 1			|	3		| 	B001 bier
1			  |	2				|	1.1.11			| 1			|	2		|	S 58 saft
1			  |	3				|	1.1.11			| 1			|	1		|	W 11 wein
2		  	  | 1				|	2.2.12			| 4			|	4		|	B001 bier
2			  | 2				|	2.2.12			| 4			|	1		|	S 58 saft


Nullte normalform. unserer ausgangspunkt - 4B /4B / 7B/4B / 4B /30 B total 53 B per row
265 Byte

⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯

https://en.wikipedia.org/wiki/Database_normalization#Normal_forms
First normal form (1NF) is a property of a relation in a relational database. 
A relation is in first normal form if and only if the domain of each attribute contains only atomic (indivisible) values, 
and the value of each attribute contains only a single value from that domain.[1] 
The first definition of the term, in a 1971 conference paper by Edgar Codd, defined a relation to be in first normal form 
when none of its domains have any sets as elements.[2]

1 NormalForm . Alle attribute atomaer sind. nicht mehr teilbar. 
ex as above. Verkaufsgegenstand laesst sich teilen in artikel und Verkaufsgegenstand 

lieferung
⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
_rechnungsNr_ | _rechnungspos_ 	| rechnungsDatum 	| KundenNr 	| anzahl 	| artikel 	| Verkaufsgegenstand 	|
⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯		
1			  |	1				|	1.1.11			| 1			|	3		| 	B001	|	 bier
1			  |	2				|	1.1.11			| 1			|	2		|	S 58	|	 saft
1			  |	3				|	1.1.11			| 1			|	1		|	W 11	|	 wein
2		  	  | 1				|	2.2.12			| 4			|	4		|	B001	|	 bier
2			  | 2				|	2.2.12			| 4			|	1		|	S 58	|	 saft


I save one space in the last column total 260 Byte now
2 Normal Form
A relation that is in first normal form (1NF) must meet additional criteria if it is to qualify 
for second normal form. Specifically: a relation is in 2NF if it is in 1NF and no non-prime attribute is dependent 
on any proper subset of any candidate key of the relation. A non-prime attribute of a relation is an attribute 
that is not a part of any candidate key of the relation.
- wenn sie sich im 1.Normalform fefindet
- jedes Nichtschluesselattribut ist voll funktional von PK abhaengig. 
	here sind rechDatum , KdenNr , anzahl, artikelcode , artikelname

Put simply, a relation is in 2NF if it is in 1NF and every non-prime attribute of the relation is 
dependent on the whole of every candidate key.

simply. every attribute must be resolved calling the primary key, rechnungsnr, for instance 
in this case I can get the date and Kundenr with _rechnungsnr_ but not the anzahl..

I make 2 tables
Lieferung 41Byte - rechnungsNr is now fremd schluessel und beide primary
⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
-rechnungsNr- | _rechnungspos_ 	|anzahl 	| artikel 	| Verkaufsgegenstand 	|
⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯		
1			  |	1				|	3		| 	B001	|	 bier
1			  |	2				|	2		|	S 58	|	 saft
1			  |	3				|	1		|	W 11	|	 wein
2		  	  | 1				|	4		|	B001	|	 bier
2			  | 2				|	1		|	S 58	|	 saft

Rechnung

_rechnungsNr_ is primary key. I first need to insert data in this table before I change the other 
I  save 3 rows
⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
_rechnungsNr_ |  rechnungsDatum | KundenNr 	
⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯		
1			  |	1.1.11			| 1			|	
2		  	  | 2.2.12			| 4			|	

30 Byte saved. If I change the date in rechnungsDatum I need to change it only once.
If I delete an order I still keep my KdNr...

Die dritte Normalform
Third normal form (3NF) is a normal form that is used in normalizing a database design to 
reduce the duplication of data and ensure referential integrity by ensuring that (1) the entity 
is in second normal form, and (2) all the attributes in a table are determined only by the 
candidate keys of that relation and not by any non-prime attributes. 3NF was designed to improve 
database processing while minimizing storage costs. 3NF data modeling was ideal for online transaction 
processing (OLTP) applications with heavy order entry type of needs.[1]

Die dritte Normalform ist genau dann erreicht, wenn sich das Relationenschema in der 2NF befindet, 
und kein Nichtschlüsselattribut (hellgraue Zellen in der Tabelle) von einem Schlüsselkandidaten 
transitiv abhängt.

- Sie sich in 2. NF befindet und - (ich kann eindeutig von primaer auf das attribut schliessen)
- Jedes Nichtschluesselattribut nicht transitiv vom PK abhaengt

Transitivität - (PK -> B) und (PK - C) => (PK->C) 
					True		true		True
					true		False		False 	hier the first is a given due to being in 2NF 
					
I need to check that every not key attribute doesnt behave as key.
for ex here above. Taken the 	rechnungsDatum I cannot get the KundenNr
from the anzahl I cannot take the artikel ... but! artikel code! and 	Verkaufsgegenstand!
I make a new table. 68 Byte saved

The artikel in Lieferung is now a foreign key and it will be a new primary key in Artikel table as below
artikel 
_artikel_	| artikelname 	
 B001		|	Bier
 S58		|	saft
 W11		|	Wein
 
 ------------
 Sometimes is good to have redundancies however. here below the bruttoprice 
 can be calculated however to avoid calculating it it is quicker to have a separate 
 ex | artikelcode | artikelname	| nettoprice | mwst | bruttopreis		

______________________________________________________________________________
			
## ORACLE XE installation on Windows					

On Windows. download the express database.
install in C://
go to Dienste look for the listener file and the service XE
In the Programlist go to SQL command line
type
connect system/oracle
 exit



install it on docker 
https://rockash93.wordpress.com/2016/09/19/using-oracle-database-express-11g-on-macos-via-docker/

________________________________________________________

# ORACLE XE COMMANDS

running the command line
exit
login : CONNECT usrname/pswd@xe
ex 		CONNECT system/oracle
or 		CONNECT system

DISCONNECT 
every time I connect the system does a DISCONNECT  first and then a new CONNECT
Max one connection

HELP DISCONNECT 

DISC[ONNECT]  this is the Backs-Naur notation 
[] 0 or 1 den Inhalt verwenden
{} 0,1, or N times  
| OR
_ Default value 
::= begrifferklaerung


https://duckduckgo.com/?q=backus+naur+form&bext=msl&atb=v118-2&ia=web

wir open Editor . (window S)
save as .sql all files, 

wir speichern a file ex 
REM ... remark
REM script launch @C:\daten\hallo.sql   
REM start can be abbreviated with STA or @

REM cl scr is the abbr for clear screen
 
 cl scr
 
REM ECHO ON set it to verbose I see all commands on the screen
SET ECHO ON

PROMPT Hello world

PAUSE

or PAUSE ENTER druecken

_________________________________



_____________++++++++++++++++++++++++++++++++++_____________________

SQL 
- standardisiert
- Not case sensitive
- formatfrei
- leerzeilen nicht erlaubt
- jede SQL anweisung wird mit semicolon beendet

SQL Bereich		 				| Beschreibung 					|  Schluesselwort
Datendefinitionssprache			| datenbankobject				|	
	(DDL)						| erstellen						|	CREATE	
Data definition language		| aendern						|	ALTER
								| loeschen						|	DROP	
______________________________________________________________________
Datenaufbausprache  DQL			| Datenlesen					| 	SELECT
data query language
________________________________________________________________________

Datenmanipulationssprache 		| Daten einfuegen, 				| INSERT
DML	Data manipulation language	| aendern 						| UPDATE	
								| loeschen 						| DELETE 
________________________________________________________________________________
Datencontrollsprache DCL		| Recht erteilen				| GRANT
Data control language 			| entziehen						| REVOKE
______________________________________________________________________
transaktionskontrollsprache		| transaction festschreiben		| COMMIT
TCL transaction control language| zurueckrollen					| ROLLBACK




Data definition language 
A data definition language or data description language is a syntax similar to a computer 
programming language for defining data structures, especially database schemas.

CRUD (Insert, update, delete, create) 

Transaction Control Language(TCL) commands are used to manage transactions in the database. 
Transaktion
Ist die kleinste logische einheit einer interaktion mit der datenbank
A Transaction is a single unit of many logical operations/work

ACID - Prinzip
 Atomar/Atomicity : Jede Transaction ist atomar. alles oder nix
 The atomicity property identifies that the transaction is atomic. 
 An atomic transaction is either fully completed, or is not begun at all. 
 Any updates that a transaction might affect on a system are completed in their entirety. 
 If for any reason an error occurs and the transaction is unable to complete all of its steps, 
 the then system is returned to the state it was in before the transaction was started. 
 An example of an atomic transaction is an account transfer transaction. 
 The money is removed from account A then placed into account B. 
 If the system fails after removing the money from account A, then the transaction processing system 
 will put the money back into account A, thus returning the system to its original state. 
 This is known as a rollback, as we said at the beginning of this chapter..
 
 Consistency  - Jede Transaktion ueberfuehrt die datenbank von einem konsistenten zustand 
 	in den naechsten konsistenten zustand
 	A transaction enforces consistency in the system state by ensuring that at the end of 
 	any transaction the system is in a valid state. If the transaction completes successfully, 
 	then all changes to the system will have been properly made, and the system will be 
 	in a valid state. If any error occurs in a transaction, then any changes already made 
 	will be automatically rolled back.
 
Isolation - jede trans. fuehrt die Aktion als waere sie alleine auf der DB
 When a transaction runs in isolation, it appears to be the only action that 
 the system is carrying out at one time. 
 If there are two transactions that are both performing the same function and are 
 running at the same time, transaction isolation will ensure that each transaction thinks 
 it has exclusive use of the system.
 
Durability - dauerhaftigkeit - erfolgreich beenden der operation bedeutet dauerhaft speichern der aenderungen
 A transaction is durable in that once it has been successfully completed, all of the 
 changes it made to the system are permanent. There are safeguards that will prevent the 
 loss of information, even in the case of system failure. By logging the steps that the 
 transaction performs, the state of the system can be recreated even if the hardware itself 
 has failed. The concept of durability allows the developer to know that a completed 
 transaction is a permanent part of the system, regardless of what happens to the system 
 later on.
 
about transactions
 
 DML	Data manipulation language
beginn mit der ersten DML anweisung  INSERT UPDATE DELETE. 
gemeinsamkeit insert and delete : beziehen sich auf eine Tabelle complette datensatz									////

Ende > mit COMMIT oder ROLLBACK /// or when I EXIT or DISCONNECT (CONNECT)
	or system crash. DDL Anweisung.
	syntax COMMIT [WORK];
	ROLLBACK [WORK];  // work is optional . Rollback goes back to the last COMMIT
	ex  COMMIT | INSERT | UPDATE | ROLLBACK 
			↑							|
			———————————————————————————↵    ... rollback hier goes back to the first COMMIT
	ex COMMIT | INSERT | CREATE |UPDATE |ROLLBACK 
							↑				|		hier would just go back to the last DML 
							———————————————↵



DDL transaction  -- begin absetzen der ersten DDL anweisung (CREATE ALTER DROP)

	ende	wird automatish COMMIT ed	
DQL			| Datenlesen					| 	SELECT zaehlt nicht zu transactionen	
 
- TABELLEN
grundlegende Speichereinheit zum speichern von Daten
always different names. wir verwalten nur strukturen, keine datensaetze.
syntax
CREATE TABLE tabellenname
( column-name data-type [DEFAULT wert]
  {,column-name data-type }  //I can have this again N times	
); 
CREATE USER laurence
( column-name data-type
  {,column-name data-type }  //I can have this again N times	
); 

Data type - they change depending the  database system used 
text : varchar2(N)
	ex	varchar2(10) // in parentheses the max - in ORAcle max is 4000 zeichen
	char (N)
	ex char (10) // difference is text will always 10 character long
	ex char      // without parenthses char is 1 character
zahl : number 
	number(N) ganze zahlen // 38 is max digit
	number(P,S) fliesskommazahlen	 // 4,2 meaning [-99.99,99.99]
int or integer 32 bit with minus or plus sign
date : date / date and time
Lob's large object : clob //character large object max 4Gb
					 blob //binary large object		4Gb
database 2 EXAbyte max by Oracle
boolean not a data type

example script

CREATE TABLE t_person
(
	id 			number,
	vorname		varchar2(20),
	nachname	varchar(20)
);

delete is 
syntax 
DROP TABLE tabellenname;
DROP USER tabellenname;

aendern ist 
ALTER USER username //but this is like changing the strukture and usually not a good idea
ADD // add a column
MODIFY // modify column
DROP // delete column
;


// a table column cannot be deleted if I dont have the privileges, if there is an open ransaction
// and it it is the last column in the table.
// also eventually it would not work if I want to change the data type of existing columns

Tabellen
Constraints
Column-Constraint::=[CONSTRAINT constraintName] constraintType
TABLE-Constraint::=[CONSTRAINT constraintName] constraintType (column list)

[CONSTRAINT constraintName] can be entered or not. 
ex every constraint get a name from the system . ex starting SYS_C and numbers.. 

CREATE TABLE tabellenname
( column-name data-type {Column-Constraint},
  {TABLE-Constraint} 
); 

Constraints types
NOT NULL
(column yes on tables cannot be applied)
here in the example below > CONSTRAINT nn_person_nachname is optional
nn_person_nachname is the name given by me to avoid having generic names chosen by the system
UNIQUE
PRIMARY KEY

CREATE TABLE t_person
(
	id 			number 		CONSTRAINT pk_person_id PRIMARY KEY,
	vorname		varchar2(20),
	nachname	varchar(25) CONSTRAINT nn_person_nachname NOT NULL
							CONSTRAINT uni_person_nachname UNIQUE,
	kinderanzahl number(2)	CONSTRAINT chk_person_kinderanzahl CHECK(kinderanzahl >= 0),					
	CONSTRAINT uni_person_vornachname UNIQUE (vorname,nachname)						
);

CONSTRAINT uni_person_vornachname UNIQUE (vorname,nachname)	 is a table constraint
it doesnt matter if one column already has a constraint
CHECK(kinderanzahl >= 0)






ALTER TABLE t_person
	ADD address number;

ALTER TABLE t_person
	MODIFY address varchar2(30);

ALTER TABLE t_person
	DROP COLUMN address;
			

CREATE TABLE t_adresse; 
(
	id 			number 		CONSTRAINT pk_adresse_id PRIMARY KEY,
	name		varchar2(20),
	pid			number,					
	CONSTRAINT fk_adresse_pid FOREIGN KEY (pid)
							  REFERENCES t_person(id)							
);

arbeitsweise 
alle Tabelle loeschen und dann erstellen

Tabelle erstellen
1.tabellen ohne FK
2.tabellen mit FK

Tabellen loeschen
1-Tabellen mit FK 
2.Tabellen ohne FK

// spalten ebene constraint ohne comma after number and no foreign key
CREATE TABLE t_adresse 
(
	id 			number 		CONSTRAINT pk_adresse_id PRIMARY KEY,
	name		varchar2(20),
	pid			number	CONSTRAINT fk_adresse_pid
						REFERENCES t_person(id)							
);

## RECAP

What is a 
mehrwertiges Attribut
primary key
partial key - 
foreign key - ein Verweis. gleiche Anzahl von Attribute.  Duplikat erlaubt
	NULL erlaubt. eine Entity kann mehrere fremdschl besitzen 	

https://en.wikipedia.org/wiki/Entity–relationship_model

what is a check constraint .  
what is a transaktion

____________

Datenmanipulationssprache

Gemeinsamkeit von INSERT UPDATE DELETE
immer pro tabelle
Gemeinsamkeit von INSERT DELETE , was fuer update nicht unbdingt gelten muss
=> beziehen sich immer auf komplette datensaetze.

Datensatz einfuegen
syntax : INSERT 
			INTO tabellenname [(spaltenname{,spaltenname})]
			VALUES 				(wert {,wert})
			;

always get the new data at the bottom attached. no other possibility
data always not sorted			
NULL can be inserted as value or left out - need '' for strings

ex

INSERT 
	INTO 	t_mensch 	(id,vorname, nachname)
	VALUES				(1, 'James','Bond');
			

Modify data
Syntax: UPDATE tabellenname 
		SET spaltenname = wert
			{,spaltenname = wert}
		[WHERE bedingung]	
		;



Delete
Syntax
DELETE 
	FROM tabellenname
	[WHERE bedingung]
	;





primary key. what we use for , rules
serve to identificate the data in the entity, eindeutig
unique, not null, minimal
gemeinsamkeit insert and delete
what is a transaction
wozu brauchst du COMMIT and ROLLBACK (to end a DML transaction)

________________________________________________

was macht SELECT - wirklich nur lesen.

Daten lesen : syntax
SELECT
	FROM
	;

here FROM wird 1st executed , dann select
	
SELECT table_name
	FROM user_tables;

DESCRIBE user_tables;

____________________

ex two diffrent tables 

FROM table1 [INNER] JOIN table2    // SQL standart schreibweise
FROM table1, table2

man erzeugt dabei ein cross join. will meistens nicht haben aber es ist gut zum testen

JOIN bedingung wird in der Praxis gebraucht.

SELECT *
	FROM t_person INNER JOIN t_adresse
	ON (t_person.id = t_adresse.pid);	

or with alias

SELECT *
	FROM t_person p INNER JOIN t_adresse a
	ON (p.id = a.pid);	

or 

SELECT *
	FROM t_person, t_adresse
	WHERE t_person.id = t_adresse.pid;

trick
SET LINESIZE 120

the software does compare still 16 times! 
Primary and foreign key can also build an Index.

and again
SELECT *
	FROM t_person INNER JOIN t_adresse
	ON (t_person.id <> t_adresse.pid)	;			
					
SELECT *
	FROM t_person INNER JOIN t_adresse
	ON (p.nachname = a.name)	;	
	
example of unary 

SELECT *
	FROM t_film r JOIN t_FILM o
	ON (r.film_id = o.original);
	
	
FROM table1 [OUTER]    JOIN table2
ON (join bedingung) 							
	
IHK aufgabe
ex .. frmdschuessel mit NULL - fk erlauben das- ersetzen pid 4 mit NULL

aufgabe gib jeder person soweit bekannt auch ihre adresse aus

this will be done with LEFT JOIN (outer is optional)
SELECT *
	FROM t_person LEFT OUTER JOIN t_adresse
	ON (t_person.id = t_adresse.pid);	
		
OR
					
SELECT *
	FROM t_adresse RIGHT OUTER JOIN t_person
	ON (t_person.id = t_adresse.pid);	
	
FROM table1 JOIN table2 ON (tab1.column = tab2.column)					
			JOIN table3 ON (tab1.column = tab3.column)							
			JOIN table4 ON (tab1.column = tab4.column)					

VIEW . Ich kann nicht die Daten aber die Darstellung speichern.

Gemeinsame Ausgabe von 2 Tabellen.. untereinander!
check the VENN diagrams
A∩B Intersection of two sets schnittmenge
A△B Symmetric difference of two sets
A∪B Union of two sets vereinigung
Relative complement of A (left) in B (right) difference - minus
A∩B=B∖A

duplicate werden automatisch unterdruckt and data sortiert in 
UNION
SELECT nachname FROM t_person
   	     UNION
    SELECT name FROM t_adresse;

UNION ALL duplicate included and not sorted
SELECT nachname FROM t_person
	UNION ALL
SELECT name FROM t_adresse;  

SELECT nachname, id FROM t_person
	UNION ALL
SELECT name, pid FROM t_adresse;

INTERSECT

SELECT id FROM t_person
	INTERSECT
SELECT id FROM t_adresse;

Frage
gibt es nachnamen die einen ortsnamen entsprechen?

SELECT nachname FROM t_person
	INTERSECT
SELECT name FROM t_adresse;

die keinen entsprechen?
SELECT nachname FROM t_person
	minus
SELECT name FROM t_adresse;

more about join
https://www.techonthenet.com/oracle/joins.php


Ein Schlüssel dient in einer relationalen Datenbank dazu, die Tupel (Datensätze) einer 
Relation (Tabelle) eindeutig zu identifizieren, sie zu nummern. 
Ein Schlüssel ist dann eine Gruppe von Spalten, die so ausgewählt wird, 
dass jede Tabellenzeile über den Werten dieser Spaltengruppe eine einmalige 
Wertekombination hat.

Schlüssel
Eindeutigkeit
Definiertheit (Null-Werte)
Minimalität

CREATE ALTER DROP contain always a COMMIT so it is saved in tha database 

Mehrwertiges attribut
_name_ -- |student| - ((abschluesse))
pascal					MSA, FA
nicolai					REAL FA2 FA2

transforms
student (_name_)
abschluss(_ _name_ _,abschluesse)	// fremdschl name und primaer mit abschlusse
			__________________      // ohne primary def, duplicat und null koennen auftreten 
										aber zusammen nicht

8.2 SELECT Klausel

SELECT [] *|spaltenliste							// * is here all the columns AND in the sequence used in create table
FROM datensatzmenge								// spaltenliste ::= spaltenname{,spaltenname}
;

about the "*", this also can happen and is valid
INSERT 
	INTO table (*)
	VALUES (...);	

with select I have to list all columns, no shortcuts. Or I make a VIEW
CREATE VIEW viewname

ex these are same but the only way to have a different order is below
SELECT *
	FROM t_mensch;
	
SELECT id,nachname,vorname
	FROM t_mensch;		
	
SELECT id, id * id , id + 10 , 2+3 // everything valid

SELECT 'DANIEL' 
FROM t_mensch ;   //creates a table with name DANIE and outputs n times DANIEL

+ works only with number - for text use the verkettungsoperator ||
SELECT 'HERR'||' '||nachname 
FROM t_mensch ; 

SELECT 'HERR'||' '||nachname AS anrede
FROM t_mensch ; 

spaltenliste ::= spaltenname|ausdruck [[AS] spaltenlistname-given-by-me] 
				{,spaltenname |ausdruck [[AS] spaltenlistname-given-by-me] }
				
REM gibt es den Nachnamen Lehmann , if so gibt den aus				
REM DISCTINCT keyword is duplicat frei bezogen auf die angegebenen spalten

SELECT DISTINCT nachname,id  
	FROM t_mensch;
	
SELECT DISCTINCT HERR'||' '||nachname AS anrede
	FROM t_mensch ; 
	
WHERE klausel - es ist eine Zeile Beschraenkung
so we have select which is the column beschraenkung
from table beschraenkung and this where is the row beschraenkung

bedingung ::= teilbedingung {[AND|OR|NOT] teilbedingung} // kann True false or null wert haben

ex

SELECT * FROM t_person;
SELECT * FROM t_adresse;

REM wer wohnt in Berlin?
REM Ausgabe pid

SELECT pid
	FROM t_adresse
	WHERE name = 'BERLIN';

REM wer wohnt in Berlin?
REM Ausgabe Vorname und Nachname

	SELECT vorname, nachname
	FROM t_adresse a JOIN t_person p
	ON (a.pid = p.id)
	WHERE name = 'BERLIN';

// this one is faster!! becasuse need not look for the column name in all tables
// but got it already given

	SELECT p.vorname, p.nachname
	FROM t_adresse a JOIN t_person p
	ON (a.pid = p.id)
	WHERE a.name = 'BERLIN';
	
	
the order is 1 FROM, 2 WHERE , 3 SELECT
ex : this will not work because select is read at last one
	SELECT p.vorname, p.nachname AS namen
	FROM t_adresse a JOIN t_person p
	ON (a.pid = p.id)
	WHERE namen = 'BERLIN';

REM wohnt KRAUSE in BERLIN?
REM Antwort :Ja
REM schreibe die SELECT anweisung

	SELECT p.vorname, p.nachname
	FROM t_adresse a JOIN t_person p
	ON (a.pid = p.id)
	WHERE a.name = 'BERLIN' 
	AND p.nachname = 'Krause';

REM gib mir alle personen vor-nachname aus die in Berlin und die in Potsdam wohnen
	
	SELECT p.vorname, p.nachname
	FROM t_adresse a JOIN t_person p
	ON (a.pid = p.id)
	WHERE a.name = 'BERLIN' 
	OR a.name = 'Potsdam';
 
 set pagesize 0 // wird alles ausgegeben ohne breaks
 
 Boolean operations with NULL
AND, OR, NOT return NULL if any operand is NULL.

If A is NULL, then:	
not A		NULL	If A is unknown, its inverse is also unknown.
A or false	NULL	“A or false” always has the same value as A – which is unknown.
A or true	true	“A or true” is always true – A's value doesn't matter.
A or A		NULL	“A or A” always equals A – which is NULL.
A and false	false	“A and false” is always false – A's value doesn't matter.
A and true	NULL	“A and true” always has the same value as A – which is unknown.
A and A		NULL	“A and A” always equals A – which is NULL.

AND has a higher priority. these two are the same

WHERE a.name = 'Berlin' OR a.name = 'Potsdam' AND nachname ='Krausbart'
WHERE a.name = 'Berlin' OR (a.name = 'Potsdam' AND nachname ='Krausbart')

order () , NOT, AND, OR

ORDER BY - Klausel
syntax (only SELECT and FROM sind pflicht, DESC default)
SELECT column
	FROM datensatzmenge
	WHERE bedingung
	ORDER BY sortierspalten;
	
	sortierspalten::= spaltenname|spaltenalias [ASC|DESC]
					  {,spaltenname|spaltenalias [ASC|DESC]}	
 SELECT vorname, nachname
	FROM t_adresse
	ORDER BY vorname DESC;					  
					  
SELECT vorname, nachname
	FROM t_adresse
	ORDER BY vorname;					  
					  				  
SELECT vorname, nachname
	FROM t_adresse
	ORDER BY vorname || nachname;
	
SELECT vorname, nachname, [kinderanzahl]   // kinderanzahl muss nicht aber kann da auch selected werden
	FROM t_adresse
	ORDER BY kinderanzahl;
	
NULL wert ist immer den groessten wert. if sorted DESC it will be the biggest value and will start with NULL if any.
Sortierung ist prospalte

SELECT name,pid
FROM t_adresse
ORDER BY name, pid DESC	 // this will order by name with default ASC, only if name is dupe will again be sorted with pid desc
	
	
8.4 Funktionen	
funktionsname(parameter {,parameter})	
					|
				Rueckgabewert
				
–––----–––––––—————						
	
ex 
SELECT nachname, upper(nachname)   // to uppercaps .. lower() to lowercase
	FROM t_person;	
	
SELECT nachname, length(nachname)  // length of string
	FROM t_person;	
	
SELECT nachname
	FROM t_person
	WHERE length(nachname)=6
	ORDER BY length(vorname);	
	
SELECT round(3.14159,2), round(3.14159,-2)	// round mathematically 2 digits after comma
	FROM dual;  //dummy tabelle for computation and testing

functionen fuer Datum Uhrzeit
SELECT sysdate 			// no parentheses but it is a function specially for Oracle
	FROM dual;	
	
SELECT to_char(sysdate,'DD.MM.YYYY HH24:MI:SS')  //time
	FROM dual;	


GRUPPEN FUNKTION / AGGREGAT FUNKTION / MULTIPLE ROW FUNKTION/ SINGLE ROW FUNKTION

GRUPPEN FUNKTION // ab GROUP BY zu benutzen ex not in WHERE
MIN()
MAX()
SUM()
AVG()
COUNT()
and others like standard abweichung variance etc

SELECT kinderanzahl
	FROM t_person;
	
SELECT min(kinderanzahl),max(kinderanzahl),sum(kinderanzahl),avg(kinderanzahl)
	FROM t_person;	
// result here ist zB 4 tables with  0, 6, 17, 3.5	
// mit worten wird alphabetisch geordnet und kleiner groesser.. a..z 

SELECT count(*), count(nachname) // beide richtig gleiche output
	FROM t_person 
	
	
SELECT count(*), count(name), count(pid) // output here is difference, NULL wird ignoriert
	FROM t_adresse 
	
SELECT count(kinderanzahl)
	FROM t_person
	GROUP BY()					// by group functions is inplicit
	;	
	
8.5 Datensaetze gruppieren
syntax
	
SELECT ...											// 4th
	FROM ...										// 1st	
	WHERE ...										// 2nd
	GROUP BY.... group criteria						// third
	ORDER BY ...									// 4th
		;	

gruppenkriterium ::= () | spaltenname {,spaltenname}	

SELECT kinderanzahl
	FROM t_person; 						// output 6,6,2,1
	
SELECT count(kinderanzahl)
 	FROM t_person; 						// output 4

SELECT count(kinderanzahl)
 	FROM t_person 	
 	GROUP BY ();						// output 4 
 	
SELECT count(kinderanzahl)
 	FROM t_person 	
 	GROUP BY kinderanzahl;				// 2,1,1 (6 occurs two times)
 	
in the WHERE is gruppen funktion verboten weil GROUP BY ist der 4. step
erst wird from, dann where .. dann kommt GROUP by..
this means after key words FROM WHERE no group functions allowed!

8.5 Datensaetze gruppieren  	

SELECT vorname, nachname, max(alter_)
	FROM t_person
	GROUP BY nachname;
	
t_person vorname | nachname | alter_
			Ina		Krause		18	
			Bernd	Waldmann	14
			Gerd	Krause		20
			
was passiert here - fehler - warum?
FROM wird executed
dann GROUP BY.. nachname. system takes Krause. exist already? no dann eintragen mit vorname Ina
dann Waldmann .. same, Waldmann wird eingetragen. aber wenn nochmal Krause kommt
dann system kann nicht unter vorname Gerd eintragen, daher Fehler.

Entweder 	
SELECT vorname, nachname, max(alter_)
	FROM t_person
	GROUP BY nachname,vorname;		
	
oder ohne vorname
	
SELECT nachname, max(alter_)
	FROM t_person
	GROUP BY nachname;	
	
REGEL : Wird die GROUP BY klausel verwendet, so darf in der SELECT(HAVING) klausel nur Spalten 
	verwendet werden:
	1. die durch den Gruppenausdruck referenziert wird oder
	2. die zusammen mit einer Gruppenfunktion auftreten 

system check it first. it is semantic, doesnt matter which values are in the tables	

das ist ok
SELECT kinderanzahl,'Peter'
	FROM t_person
 	GROUP BY kinderanzahl;
 	
8.6
Syntax
SELECT ...								//5th
	FROM ...							//1st
	WHERE...							//2nd
	GROUP BY ...	 					//3rd
	HAVING  Bedingung					//4th
	ORDER BY ..			;				//6th
	

SELECT kinderanzahl
	FROM t_person
	GROUP BY kinderanzahl	
	HAVING vorname = 'Tom'; this is a fehler beacuse vorname is in the group by NOT referenced

SELECT kinderanzahl								
	FROM t_person								// table is  6,6,2,0
	GROUP BY kinderanzahl						// result is 2,1,1
	HAVING count(vorname) = length(Tom); 		// means where the same vorname occurs three times at least 

Weitere funktionen

SELECT * FROM t_adresse

REM in welchen Orten wohnen keine Personen
SELECT name
	FROM t_adresse
	WHERE pid = NULL; 				// NULL = NULL will nicht funktionieren weil => NULL

REM in welchen Orten (name) wohnen Personen
SELECT name
	FROM t_adresse
	WHERE pid is NULL; 					// if NULL then vergleich operator has to be 'is'! 
	
	
run repeats the last command 
/ does the same	

SELECT * FROM t_adresse ;

SELECT count(pid) 
	FROM t_adresse ;  //it is ok if there is NULL in the column, it will be ignored
	
SELECT name,pid,nvl(pid-1)  		//nvl is a function caled null value. if the value is NULL then replaced with -1
FROM t_adresse ;					//bei nvl muessen beide Parameter vom selben datentyp sein.

SELECT count(pid),count(nvl(pid-1)) 
FROM t_adresse ;

SELECT name
	FROM t_adresse
	WHERE name LIKE 'B%';  						// B% is B* in LINUX command
												// B_ is B? inLINUX command , one character
												
	WHERE name >= 'B' AND name <= 'C';			// both the same .. B is kleiner als Berlin.
	WHERE name BETWEEN 'B' AND 'C';				// Potsdam ist groesser als C...
		
SELECT nvl(name,5), nvl(pid,-1),nvl(pid,'unbekannt')
	FROM t_adresse;
	
8.6
1-tabellen erstellen
2-frage dich selber mit dem hobbies ein
3-trage von einem Nachbarn den Namen und die Hobbys ein
			(vorname)
				|	
_tid_ —————— | 	TN	 |  ——————————((hobby))												
				|
			(nachname)									

tn(_tid_ , vorname, nachname)
hobby(-tid-,hobby)
		______

		
WHERE and HAVING

1 - FROM select a few tables with JOIN
2 - WHERE I select a few rows which interest me
3 - GROUP BY of the rows selected in WHERE I group the one that I selected in 2
	we dont have single rows anymore , we havegroups of data, rows
4 - HAVING . I got the grouped rows and the condition in HAVING will apply to them
5 - dann SELECT - select a column
6 - ORDER BY

SELECT vorname, DISTINCT name   ///FELHLER distinct can only once written and has to be after select
	FROM tabelle; 

SELECT DISTINCT vorname, name   /// distinct can only once written and has to be after select
	FROM tabelle; 

Grouped data cannot be maniputated again by INSERT UPDATE DELETE (always row related )
Or I save the result in VIEW and I do an UPDATE on view

 DML	Data manipulation language
beginn mit der ersten DML anweisung  INSERT UPDATE DELETE. 
gemeinsamkeit insert and delete : beziehen sich auf eine Tabelle complette datensatz									////


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
8.7 unterabfrage
SUBSELECT	

SELECT ....
	FROM ....       
	WHERE spalte operator ( SELECT spalte		//this is the subselect
					FROM ...	
					WHERE 	...)
	;				

Eine unterabfrage wird genau einmal, entweder
a fuer die gesamte Hauptanfrage oder,
b fuer jede Zeile der Hauptabfrabe (correlated/korrelierend) ausgefuehrt
 					
	nested SELECT operators // only the main query get semicolon. the second SELECT has to have parenthese				
	
	//////////////////////// uebung //// 

REM Gib alle Personen (vornamen und nachnamen) aus, die meht Kinder als RALF MUELLER haben	


SELECT vorname, nachname
	FROM t_person;
	
REM Kinderanzahl als Ralf Berlin
SELECT kinderanzahl
	FROM t_person
	WHERE vorname = 'Ralf'
	AND nachname = 'Berlin';	
	
SELECT vorname, nachname
	FROM t_person
    WHERE kinderanzahl > (SELECT kinderanzahl
	                     FROM t_person
	                     WHERE vorname = 'Ralf'
	                     AND nachname = 'Berlin')
	                     ;	
REM Gib alle Personen (vornamen und nachnamen) aus, die die meisten Kinder haben

SELECT vorname, nachname
	FROM t_person
    WHERE kinderanzahl = (SELECT max(kinderanzahl)
	                      FROM t_person)
	                     ;

REM without MAX ? with multiple row operators!

SELECT vorname, nachname
	FROM t_person
    WHERE kinderanzahl >=ALL (SELECT kinderanzahl
	                      FROM t_person)
	                     ;

avoid NULL
SELECT vorname, nachname
	FROM t_person
    WHERE kinderanzahl >=ALL (SELECT nvl(kinderanzahl,-1)
	                      FROM t_person)
	                     ;

	Gruppen funktionen ignorieren NULL so max(kinderanzahl)..
	
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
	                     
REM give out all people with the highest kinder number and lowest

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

REM this is with the multiple row operator IN !

SELECT vorname, nachname
	FROM t_person
    WHERE kinderanzahl IN (SELECT MAX(kinderanzahl)
	                      FROM t_person 
	                      UNION
	                      SELECT MIN(kinderanzahl)
	                      FROM t_person)                 
	                     ;		                     
	                     
	                     
REM gib aus personen mit der 2. hoechste Kinderanzahl
SELECT vorname, nachname
	FROM t_person
    WHERE kinderanzahl = (SELECT MAX(kinderanzahl)
	                      FROM t_person 
	                      WHERE kinderanzahl < (SELECT MAX(kinderanzahl)
	                                           FROM t_person )  )           
	                     ;		                     
	                     

REM gib die id name und pid aus
REM deren id groesser oder gleich als
REM der Durschnittwert, bebildet ueber die id
REM der jeweiligen "name" gruppe sind

SELECT id,name,pid 
    FROM t_adresse aa
    WHERE id >= (SELECT AVG(id)     
                FROM t_adresse ai
                WHERE ai.name = aa.name
                GROUP BY name);       

ROLLBACK;		                     

REM gib alle personen aus deren adresse bekannt sind

SELECT vorname, nachname
    FROM t_person p
    WHERE EXISTS (SELECT pid  /// SELECT PID actually same what it says because I only want to know if the data exists!
           FROM t_adresse
           WHERE pid = p.id
           )
           ;
      
 REM not exist !
    FROM t_person p
    WHERE NOT EXISTS (SELECT pid  /// SELECT PID actually same what it says because I only want to know if the data exists!
           FROM t_adresse
           WHERE pid = p.id
           )
           ;          
    
    
  ex of incrementing automatically 
  INSERT INTOt_adresse (id,									name, 	pid)  
  	VALUES 			   ((SELECT max(id)+1 FROM t_adresse), BERN, 3)