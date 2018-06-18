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
The first task of a database designer is to produce a conceptual data model that reflects the structure of the information to be held in the database. A common approach to this is to develop an entity-relationship model, often with the aid of drawing tools. Another popular approach is the Unified Modeling Language. A successful data model will accurately reflect the possible state of the external world being modeled: for example, if people can have more than one phone number, it will allow this information to be captured. Designing a good conceptual data model requires a good understanding of the application domain

https://jason.pureconcepts.net/2015/10/install-apache-php-mysql-mac-os-x-el-capitan/

from customer auftrag to realisierung
{
concept
1- grobstruktur
2- feinstruktur - begriffe klaeren - relevante objekten - welche eigenschaften werden die relevante objekte beschrieben.  -werte bereich. gefuehrte null wird zb bei postleitzahlen verloren. muss dann als string gespeichert werden.
standartwert fuer die eigenschaft. kann ich immer einen wert angeben
relationships and limit between the fields . abhaengichkeit zwischen beziehungen
einschraenkung. typische operationen. datenvolumen (pictures zb) und gleichzeitiger zugriff. aufgaben geichzeitig zu verarbeiten (zb Windows is more for 1 user oriented .  linux ist von vornerein mehr multitasking) .gesetzliche vorschriften ex datenbank bei dem artzt etc.
3- er-modell - An entity–relationship model (ER model for short) describes interrelated things of interest in a specific domain of knowledge. A basic ER model is composed of entity types (which classify the things of interest) and specifies relationships that can exist between instances of those entity types.
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
(ER model for short) describes interrelated things of interest in a specific domain of knowledge. A basic ER model is composed of entity types (which classify the things of interest) and specifies relationships that can exist between instances of those entity types.In software engineering, an ER model is commonly formed to represent things that a business needs to remember in order to perform business processes. Consequently, the ER model becomes an abstract data model, that defines a data or information structure which can be implemented in a database, typically a relational database.

1976 Peter Chen
- Chen Notation
- crows foot - Kraehenfuss - min max notation
notations - chen notation

An ER model is typically implemented as a database. In a simple relational database implementation, each row of a table represents one instance of an entity type, and each field in a table represents an attribute type. In a relational database a relationship between entities is implemented by storing the primary key of one entity as a pointer or "foreign key" in the table of another entity

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

Null (or NULL) is a special marker used in Structured Query Language to indicate that a data value does not exist in the database. Introduced by the creator of the relational database model, E. F. Codd, SQL Null serves to fulfil the requirement that all true relational database management systems (RDBMS) support a representation of "missing information and inapplicable information". Codd also introduced the use of the lowercase Greek omega (ω) symbol to represent Null in database theory. In SQL, NULL is a reserved word used to identify this marker.

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



Beteiligungsverhaeltnis
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



## relationship model		

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
									
Surrogate key									
						
Foreign key bezieht sich auf den Primary key einer Relation (Tabelle)
PK and FK besitzen die gleiche anzahl an attributen
besitzen die gleichen Datentyp(-familie)
kann NULL enthalten
Kann Duplikate 
notation - - - 
# referenzielle integrität
verhindert die Eingabe von Werten die nicht in primaerschluessel vorkommen oder 
der Wert ist NULL (darf nNULL sein)

Data integrity is the maintenance of, and the assurance of the accuracy and consistency of, data over its entire life-cycle,[1] and is a critical aspect to the design, implementation and usage of any system which stores, processes, or retrieves data.	




---------------------------
SQL with Terminal on mac
start with downloading VM 
then Vagrant
go in the vagrant dir and do 

			vagrant up
			vagrant ssh	
					
Logging out and in
If you type exit (or Ctrl-D) at the shell prompt inside the VM, you will be logged out, and put back into your host computer's shell. To log back in, make sure you're in the same directory and type vagrant ssh again.

If you reboot your computer, you will need to run vagrant up to restart the VM.					
																			
																			
																			________

key 
primary key
partial key - rechnungs rechnungs position ex - rechnung id and rechnung

weak and strong entity																			
					
foreign key - not a key - verweist auf einen primary key - 


referential integrity													
						
						Referential integrity is a property of data stating references within it are valid. In the context of relational databases, it requires every value of one attribute of a relation to exist as a value of another attribute in a different relation.
						
mehrwertige attributes.. attributes with one value ex animals and foods.
fuchs eat A and B , cat eat ABC.. if I need another attribute I need to change the structure of the table. and this is not so good. also single attributes even when only NULL is in ten still need memory 

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

tim . C++ // right or wrong? FIRST datensatz always right ;)

________________________________________________________________

constraints
zu vermeiden dass ungueltige Daten eingetragen werden.
4 typen 

________
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
	sitzplatznummer(--bid--,sitzplatznummer)  //--bid is foreign key
	
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
	
	
										
	
	