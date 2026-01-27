-- Task 2

-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read task2.sql
-- 3. Exit SQLite: .exit


-- write your sql code here
 SELECT Country FROM countries ORDER BY LiteracyPercent DESC LIMIT 10;
 SELECT Country FROM countries WHERE Country LIKE 'C%' ORDER BY GDPPerCapita DESC LIMIT 3;
 SELECT Country FROM countries WHERE InfantMortalityPer1000>50  ORDER BY LiteracyPercent ASC
 LIMIT 1;
 SELECT Country FROM countries WHERE GDPPerCapita>10000 ORDER BY PhonesPer1000 DESC LIMIT 5;
Country 
SELECT Country FROM countries WHERE InfantMortalityPer1000>50  ORDER BY LiteracyPercent ASC
 LIMIT 1;
 SELECT Country FROM countries ORDER BY Country DESC LIMIT 10;
