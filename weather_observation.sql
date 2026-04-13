/* Q. Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table. */
SELECT COUNT(CITY)-COUNT(DISTINCT(CITY)) FROM STATION ;

/* Q. Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically. */

( SELECT CITY, LENGTH(CITY) AS CITY_LEN
FROM STATION 
ORDER BY CITY_LEN ASC, CITY ASC LIMIT 1 ) 
UNION 
( SELECT CITY, LENGTH(CITY) AS CITY_LEN
FROM STATION 
ORDER BY CITY_LEN DESC, CITY ASC LIMIT 1 ) 
;

/*Q. Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
*/

SELECT DISTINCT CITY FROM STATION 
WHERE CITY REGEXP '[AEIOUaeiou]$';

/*
Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
*/

SELECT DISTINCT CITY FROM STATION 
WHERE CITY NOT REGEXP '[aeiou]';
