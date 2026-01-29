-- Task 3

-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read task3.sql
-- 3. Exit SQLite: .exit


-- write your sql code here

SELECT * from countries;
SELECT COUNT(Country) FROM countries;
SELECT Continent,COUNT(Country) from countries GROUP BY Continent;
SELECT Continent,SUM(Population) from countries GROUP BY Continent;
SELECT Continent,AVG(GDPPerCapita) from countries group by Continent;
SELECT Continent,COUNT(Country) from countries group by Continent HAVING COUNT(Country)>5;
SELECT Continent,SUM(Population) from countries group by Continent having SUM(Population)>1000000000;