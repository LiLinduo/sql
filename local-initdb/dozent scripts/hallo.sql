REM Skriptdatei ausf�hren
REM @C:\daten\hallo.sql

SET ECHO ON
cl scr

SET ECHO OFF
REM Hallo
SET ECHO ON

CONNECT system/oracle

REM PAUSE ENTER dr�cken

PROMPT Hallo Welt

cl scr
REM alle Umgebungsvariablen anzeigen 
SHOW ALL

REM Umgebungsvariable setzen
REM Zeilenbreite
SET LINESIZE 120

REM Seitenh�he
SET PAGESIZE 15


REM Mitprotokollieren einschalten
SPOOL c:\daten\mitschreiben.txt

SHOW ALL

REM Mitprotokollieren ausschalten
SPOOL OFF

cl scr

REM Austauschvariablen
REM Ziel: Interaktive Eingabe von Werten

REM alle Austauschvariablen ausgeben
DEFINE

REM eine Austauschvariable ausgeben
DEFINE _USER

REM Austauschvariable mit Wert festlegen
DEFINE zahl = 4

DEFINE zahl

DEFINE zahl = 5

DEFINE zahl

REM Austauschvariable l�schen
UNDEFINE zahl

DEFINE zahl


REM Austauschvariable mit Wert festlegen,
REM wobei der Benutzer zur Laufzeit den Wert eingibt
ACCEPT zahl PROMPT "Bitte einen Wert f�r Zahl eingeben: "

DEFINE zahl

REM mit Austauschvariablen arbeiten

PROMPT Es wurde die Zahl &zahl eingegeben.


PROMPT Es wurde der Buchstabe &buchstabe eingegeben.


UNDEFINE zahl

PROMPT &zahl &zahl &&zahl

PROMPT &zahl &zahl &&zahl













