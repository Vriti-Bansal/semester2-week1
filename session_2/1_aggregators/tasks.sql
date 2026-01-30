-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit

SELECT Continent,SUM(Population) from countries group by Continent; 
SELECT Continent,Country,MAX(Population) from countries group by Continent;
SELECT Continent,Country,MIN(AreaSqMi) from countries group by Continent;
SELECT Continent,COUNT(Country) from countries group by Continent;
SELECT Continent from countries group by Continent order by AVG(GDPPerCapita) DESC;
SELECT Country,Population from countries group by Population order by MAX(Population) DESC LIMIT 5;
SELECT Country,Deathrate from countries group by Deathrate order by MIN(Deathrate) ASC LIMIT 5;
SELECT Continent,AVG(LiteracyPercent) from countries group by Continent order by AVG(LiteracyPercent) ASC;
SELECT Continent,SUM(Population) from countries group by Continent order by SUM(Population) Desc LIMIT 3;
SELECT Continent,AVG(Population) from countries having Population>10000000;
SELECT Continent,AVg(GDPPerCapita) from countries having LiteracyPercent>80;