# Write your MySQL query statement below

# Logic 1:
# simple group the orders based on the customer_no then count 
# then sort the data based on the count(of orders by each customer) in desc
# then display the top record only as that is the customer which gives most orders 
/*
SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(order_number) DESC
LIMIT 1;
*/

# Logic : 2 Best Approach
# we will use CTE (Comman Table EXpression) to store a virtual table(result set) and then can reuse it
WITH cte AS 
(SELECT customer_number, COUNT(order_number) AS 'total_order'
FROM Orders
GROUP BY customer_number)

# find the max no of orders placed using cte table
# then use that result to find the employees whose total_order = max(total_order)

SELECT customer_number
FROM cte
WHERE total_order = 
(SELECT MAX(total_order)
FROM cte);