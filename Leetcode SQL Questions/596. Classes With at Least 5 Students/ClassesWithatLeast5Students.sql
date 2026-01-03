# Write your MySQL query statement below

# simple the group the table using classes and find the records only
# where the no of student are atleast 5
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;