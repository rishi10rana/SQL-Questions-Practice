# Write your MySQL query statement below

# simply find all employees who got bonus or not got bonus using left join
# then filter the records to get only records where the employee got bonus less than 1000 or no bonus (null)
SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId 
WHERE b.bonus < 1000 OR b.bonus IS NULL;