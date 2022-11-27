## With LIMIT Clause

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE M INT;
SET M=N-1;
  RETURN (
      # Write your MySQL query statement below.
      SELECT DISTINCT(salary) FROM Employee  ORDER BY salary DESC LIMIT M, 1
  );
END

## Without LIMIT Clause

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      SELECT DISTINCT(salary) from Employee E1 WHERE N-1 = (SELECT COUNT(DISTINCT(SALARY)) FROM Employee E2 WHERE E2.salary > E1.salary)
  );
END
