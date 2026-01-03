# Write your MySQL query statement below


# simply left join both table and find the customers who ordered nothing as their order id will be null
# Logic - 1
/*
SELECT c.name AS 'Customers'
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.id IS NULL;
*/

# first find the id's of customers who ordered something using inner join
# then find the name of the customers whose id's not in given id's of people who ordered something
/*
# Logic - 2
*/
SELECT name as 'Customers' FROM Customers
WHERE id NOT IN
(SELECT c.id
FROM Customers c
INNER JOIN Orders o
ON c.id = o.customerId);