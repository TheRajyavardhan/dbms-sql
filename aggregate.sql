/*
Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.
Write a query calculating the amount of error (i.e.:actual - miscalculated average monthly salaries), and round it up to the next integer.
*/

SELECT 
    CEIL(AVG(Salary) - AVG(REPLACE(Salary, '0', ''))) AS Error_Amount
FROM EMPLOYEES;

/*
We define an employee's total earnings to be their monthly salary*months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as 2 space-separated integers.
*/

SELECT (salary*months) AS Earnings, COUNT(*)
FROM Employee
GROUP BY Earnings
ORDER BY Earnings DESC
LIMIT 1
;

/*
Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of 2 decimal places.
The sum of all values in LONG_W rounded to a scale of 2 decimal places.
*/

SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2) 
FROM STATION ;

/*
Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to  decimal places.
*/

SELECT TRUNCATE(SUM(LAT_N),4) FROM STATION 
WHERE (LAT_N > 38.7880) AND (LAT_N < 137.2345);

/*
Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to  decimal places.
*/

SELECT ROUND(LONG_W,4) FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
LIMIT 1;
