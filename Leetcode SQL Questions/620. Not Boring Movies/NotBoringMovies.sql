# Write your MySQL query statement below

# simple aplly conditions that are asked
/*
SELECT *
FROM Cinema
WHERE id%2=1 AND description NOT LIKE 'boring'
ORDER BY rating DESC; 
*/

# <> means not equal
SELECT *
FROM Cinema
WHERE id%2=1 AND description <>'boring'
ORDER BY rating DESC; 