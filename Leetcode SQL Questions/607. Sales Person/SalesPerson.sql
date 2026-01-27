# Write your MySQL query statement below

# will get all salesperson assoviated with company red
WITH cte AS
(SELECT sales_id
FROM Orders o
LEFT JOIN Company c
ON o.com_id = c.com_id
WHERE c.name LIKE 'RED')

# find the remaining persons not associated with red
SELECT name FROM SalesPerson
WHERE sales_id NOT IN (SELECT DISTINCT sales_id FROM cte);
