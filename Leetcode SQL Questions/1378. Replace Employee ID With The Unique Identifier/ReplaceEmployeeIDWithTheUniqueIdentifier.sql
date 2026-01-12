# Write your MySQL query statement below

## simple left join question show all employees from left table and their unique id if exist in right table 
SELECT EU.unique_id, E.name
FROM Employees E
LEFT JOIN 
EmployeeUNI EU 
ON  E.id = EU.id;