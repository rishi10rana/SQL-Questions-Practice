# Write your MySQL query statement below

# for a triangle to be valid Triangle Enquality Law should hold true
# a+b>c, b+c>a, a+c>b all should be true
# simple use the CASE to check conditions and store result of acse in a new column 'triangle'

SELECT x, y, z,
CASE
    WHEN x + y > z AND
    y + z > x AND
    x + z > y THEN 'Yes'
    ELSE 'No'
END AS triangle
FROM Triangle;