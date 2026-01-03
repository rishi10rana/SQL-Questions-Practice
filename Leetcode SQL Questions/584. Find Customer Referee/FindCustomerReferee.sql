# Write your MySQL query statement below

# simple find customer records which are not referred by referee 2 or is not referred by anyone
/*
SELECT name
FROM Customer
WHERE referee_id != 2
OR referee_id IS NULL;
*/

# another syntax for !=
SELECT name
FROM Customer
WHERE referee_id <> 2
OR referee_id IS NULL;