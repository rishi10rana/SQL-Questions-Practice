# Write your MySQL query statement below

# CTE - improves storage, speed and query logic redability

# first find all the nums which occurs only once
WITH cte AS
(SELECT num 
FROM MyNumbers
GROUP BY num
HAVING COUNT(num) = 1)

# then return the max num from the nums which occurs only once
# if no such num found return null
SELECT
CASE
    WHEN COUNT(*) > 0 THEN MAX(num)
    ELSE NULL
END AS 'num'
FROM CTE