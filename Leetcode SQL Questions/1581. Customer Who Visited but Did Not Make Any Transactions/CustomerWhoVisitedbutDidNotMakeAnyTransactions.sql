# Write your MySQL query statement below

## find the customrs who visited but didnt make any transaction as their transaction id = NULL
## find this using left join

## group by the result table using customers then find the count the no of time each customers visited 
## but not done an transaction

SELECT customer_id, COUNT(v.visit_id) AS 'count_no_trans'
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;