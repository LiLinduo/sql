REM @c:\daten\select.sql

set echo on
cl scr

SELECT *
  FROM t_mensch;

SELECT id, vorname, nachname
  FROM t_mensch;

SELECT id, nachname, vorname
  FROM t_mensch;

SELECT id
  FROM t_mensch;

SELECT id, id * id, id + 10, 3 + 4
  FROM t_mensch;


SELECT 'Daniel'
  FROM t_mensch;


REM Verkettungsoperator ||

SELECT 'Herr ' || nachname
  FROM t_mensch;

SELECT 'Herr' || ' ' || nachname
  FROM t_mensch;

SELECT 'Herr' || ' ' || nachname AS anrede
  FROM t_mensch;

REM Gibt es den Nachnamen 'Lehmann'?
REM Wenn ja, gib 'Lehmann' nur einmal aus.

SELECT nachname
  FROM t_mensch;

REM DISTINCT
REM duplikatfreie Ergenismenge bezogen
REM auf die angegebenen Spalten

SELECT DISTINCT nachname
  FROM t_mensch;


SELECT DISTINCT nachname, id
  FROM t_mensch;


SELECT DISTINCT 'Herr' || ' ' || nachname AS anrede
  FROM t_mensch;




