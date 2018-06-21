REM @c:\daten\start.sql



PROMPT "LESEN";
PROMPT ".";
PROMPT "1. Studenten";
PROMPT "2. Dozenten";
PROMPT "3. Studenten - Dozenten";
PROMPT "9. EXIT";
PROMPT ".";

ACCEPT choice PROMPT "Eingabe:"

@c:\daten\&choice..sql

REM the two dots have a meaning..


