# Write your MySQL query statement below

# Group the emails so all the same emails are placed togther
# count the id with same email as we done group by email
# if in any group the email occurs > 1
# means it is repeated (duplicate)

/*
SELECT email as 'Email'
FROM Person
GROUP BY email
HAVING count(id) > 1;
*/

SELECT email
FROM Person
GROUP BY email
HAVING count(DISTINCT id) > 1;