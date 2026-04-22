/*
You are given a table, Functions, containing two columns: X and Y.
Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.
Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1.
*/

SELECT f1.X,f1.Y FROM 
Functions as f1 JOIN
Functions as f2 
ON f1.X = f2.Y AND f1.Y = f2.X
GROUP BY f1.X, f2.Y
HAVING COUNT(*) > 1 OR f1.X < f1.Y
ORDER BY f1.X;

/*
Query a count of the number of cities in CITY having a Population larger than100000.
*/

SELECT COUNT(ID) FROM CITY
WHERE POPULATION > 100000;

/*
Query the total population of all cities in CITY where District is Californi.*/

SELECT SUM(POPULATION) FROM CITY
WHERE DISTRICT = 'California';

/*
Query the average population of all cities in CITY where District is California.
*/

SELECT AVG FROM CITY 
WHERE DISTRICT = 'California';

/*
Query the average population for all cities in CITY, rounded down to the nearest integer.
*/

SELECT ROUND(AVG(POPULATION),0) FROM CITY
;


