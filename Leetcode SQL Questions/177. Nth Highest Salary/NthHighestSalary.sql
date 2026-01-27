#2nd highest
/*
SELECT MAX(salary) 
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee)
*/

#3rd highest
/*
SELECT MAX(salary) 
FROM Employee
WHERE salary < (
  SELECT MAX(salary) 
  FROM Employee 
  WHERE salary < (SELECT MAX(salary) FROM Employee));
*/

#2nd highest salary using not in
/*
SELECT MAX(salary)
FROM Employee
WHERE salary NOT IN(SELECT MAX(salary) FROM Employee);
*/

# using limit and offset
/*
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  SET N = N - 1;
  RETURN (
      # Write your MySQL query statement below.
      SELECT DISTINCT IFNULL(salary, null)
      FROM Employee
      ORDER BY salary DESC
      LIMIT N, 1
  );
END
*/

# using cte and dense_rank()
/*
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
    WITH cte AS
    (SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) as 'rank'
    FROM Employee)
    SELECT DISTINCT IFNULL(salary, null) FROM cte WHERE cte.rank = N
  );
END
*/

# using self join tables
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
    SELECT DISTINCT IFNULL(salary,null)
    FROM Employee e1
    WHERE N-1 = (SELECT COUNT(DISTINCT salary)
    FROM Employee e2 
    WHERE e2.salary > e1.salary)
  );
END