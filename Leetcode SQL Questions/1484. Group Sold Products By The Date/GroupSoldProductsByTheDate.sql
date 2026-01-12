# Write your MySQL query statement below

## first group the products by the sell_date
## also display the the no of distinct products  sold on each_date using COUNT()
## also diplay the names of all products sold on each sell_date separated by ,
## use a new fucntion called group_concat() that will concata all strings from a col for a particular group 

## also apply order sorting as needed

SELECT sell_date, COUNT(DISTINCT product) AS 'num_sold', 
GROUP_CONCAT(DISTINCT product ORDER BY product) AS 'products'
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;