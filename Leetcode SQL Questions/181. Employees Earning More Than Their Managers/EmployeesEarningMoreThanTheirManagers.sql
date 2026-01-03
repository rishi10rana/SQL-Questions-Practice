# Write your MySQL query statement below

# as we are joining to same table together we need them to have different alias name
# can use both inner join and left join

# when a int > null it gives UNKNOWN

# Way - 1
/*
SELECT e1.name as 'Employee'
FROM employee e1
LEFT JOIN employee e2
ON e1.managerId = e2.id
WHERE e1.salary > e2.salary;
*/

# Way - 2

SELECT e1.name as 'Employee'
FROM employee e1
INNER JOIN employee e2
ON e1.managerId = e2.id
WHERE e1.salary > e2.salary;