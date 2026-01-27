# Write your MySQL query statement below

# and compare dates using cross join
# used datediff(end_date, start_date) to find dates with diff 1
SELECT w1.id
FROM Weather w1, Weather w2
WHERE DATEDIFF(w1.recordDate , w2.recordDate) = 1 AND w1.temperature > w2.temperature;  