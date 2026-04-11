/* Day 01 - Revising the Select Query

## Platform
HackerRank

##SOLUTION */ 

--Q1: Query all columns for all American cities in the CITY table with populations larger than 100000.--
SELECT * FROM CITY 
WHERE COUNTRYCODE = 'USA' 
AND POPULATION > 100000;


--Q2: Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.--
SELECT NAME FROM CITY 
WHERE COUNTRYCODE = 'USA' 
AND POPULATION > 120000;


--Q3: Query all columns (attributes) for every row in the CITY table.--
SELECT * FROM CITY;


--Q4: Query all columns for a city in CITY with the ID 1661.--
SELECT * FROM CITY WHERE ID = 1661;

--Q5: Find city from STATION with even id number. Don't have duplicate entry
SELECT CITY FROM STATION WHERE MOD(ID,2) = 0;
