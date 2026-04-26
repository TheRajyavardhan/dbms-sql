/*
Consider two points P₁(a, b) and P₂(c, d) on a 2D plane.

a is the minimum value of Northern Latitude (LAT_N) in the STATION table.
b is the minimum value of Western Longitude (LONG_W) in the STATION table.
c is the maximum value of Northern Latitude (LAT_N) in the STATION table.
d is the maximum value of Western Longitude (LONG_W) in the STATION table.

Task:
Write a query to find the Manhattan Distance between points P₁ and P₂, and round the result to 4 decimal places.
*/

SELECT ROUND(
    SQRT(
        (MAX(LAT_N) - MIN(LAT_N)) * (MAX(LAT_N) - MIN(LAT_N)) +
        (MAX(LONG_W) - MIN(LONG_W)) * (MAX(LONG_W) - MIN(LONG_W))
    ), 4
)
FROM STATION;

/*
Consider two points P₁(a, c) and P₂(b, d) on a 2D plane, where:

(a, b) are the respective minimum and maximum values of Northern Latitude (LAT_N) in the STATION table.
(c, d) are the respective minimum and maximum values of Western Longitude (LONG_W) in the STATION table.

Task:
Write a query to calculate the Euclidean Distance between points P₁ and P₂, and format the result to display 4 decimal places.
*/


SELECT ROUND(
    SQRT(
        POWER(MAX(LAT_N) - MIN(LAT_N), 2) +
        POWER(MAX(LONG_W) - MIN(LONG_W), 2)
    ),
4)
FROM STATION;

/*
A median is defined as the number separating the higher half of a data set from the lower half.

Task:
Write a query to find the median of the Northern Latitudes (LAT_N) from the STATION table, and round the result to 4 decimal places.
*/

SELECT ROUND(
    PERCENTILE_CONT(0.5) 
    WITHIN GROUP (ORDER BY LAT_N),
4)
FROM STATION;