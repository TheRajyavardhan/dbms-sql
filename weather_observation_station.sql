/*
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
*/

SELECT DISTINCT CITY FROM STATION
WHERE CITY NOT REGEXP '^[aeiou].*[aeiou]$';

/*
Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
*/

SELECT DISTINCT CITY FROM STATION
WHERE CITY NOT REGEXP '^[aeiou]'
AND CITY NOT REGEXP '[aeiou]$';

/*
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than 2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id. 
*/

SELECT name FROM Employee
WHERE salary > 2000 and months < 10
ORDER BY employee_id ASC;

/*
You are given three tables: Students, Friends and Packages. Students contains two columns: ID and Name. Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend). Packages contains two columns: ID and Salary (offered salary in $ thousands per month).Write a query to output the names of those students whose best friends got offered a higher salary than them. Names must be ordered by the salary amount offered to the best friends. It is guaranteed that no two students got same salary offer. 
*/

SELECT
s.Name
FROM Students s
JOIN Friends f ON s.ID = f.ID
JOIN Packages p1 ON f.ID = p1.ID
JOIN Packages P2 ON f.Friend_ID = p2.ID
WHERE p2.Salary > p1.Salary
ORDER BY p2.Salary;





