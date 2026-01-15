# Write your MySQL query statement below

# simple left join to find the transation detail of each user mapped with their name and account
# group the transactions by person name 
# and find sum of all transactions of that person if greater then 10000 then only consider the person name

SELECT name, sum(amount) AS 'balance'
FROM Users u
LEFT JOIN
Transactions t
ON u.account = t.account
GROUP BY u.name
HAVING sum(amount) > 10000;