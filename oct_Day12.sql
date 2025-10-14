#GROUP BY: This statement will group all your queried data with the column given in the condition.:


#SQL GROUP BY:

*GROUP BY statement groups rows that have the same values in one or more columns.
*It is commonly used to create summaries, such as total sales by region or number of users by age group.

#Its main features include:

*Used with the SELECT statement.

*Groups rows after filtering with WHERE.

*Can be combined with aggregate functions like SUM(), COUNT(), AVG(), etc.

*Filter grouped results using the HAVING clause.

*Comes after WHERE but before HAVING and ORDER BY.


Syntax:

SELECT column1, aggregate_function(column2)
FROM table_name
WHERE condition
GROUP BY column1, column2;

Parameters:

*aggregate_function: function used for aggregation, e.g., SUM(), AVG(), COUNT().

*table_name: name of the table from which data is selected.

*condition: Optional condition to filter rows before grouping (used with WHERE).

*column1, column2: Columns on which the grouping is applied.


CREATE TABLE studen (
  name VARCHAR(50),
  year INT,
  subject VARCHAR(50) );

select * from studen;

INSERT INTO studen (name, year, subject) VALUES
('Avery', 1, 'Mathematics'),
('Elijah', 2, 'English'),
('Harper', 3, 'Science'),
('James', 1, 'Mathematics'),
('Charlotte', 2, 'English'),
('Benjamin', 3, 'Science');

#Example 1: Group By Single Column:

Query:

SELECT subject, COUNT(*) AS Student_Count
FROM Studen
GROUP BY subject;

#Example 2: Group By Multiple Columns:

Query:

SELECT subject, year, COUNT(*)
FROM Studen
GROUP BY subject, year;

select subject, count(*)
from studen
group by subject;


#HAVING Clause in GROUP BY Clause:

*HAVING clause is used to filter results after grouping, especially when working with aggregate functions like SUM(), COUNT() or AVG().
Unlike WHERE, it applies conditions on grouped data.

SELECT * FROM emp;


drop table emp;

CREATE TABLE emp (
  emp_no INT PRIMARY KEY,
  name VARCHAR(50),
  sal DECIMAL(10,2),
  age INT );

INSERT INTO emp (emp_no, name, sal, age) VALUES
(1, 'Liam', 50000.00, 25),
(2, 'Emma', 60000.50, 30),
(3, 'Noah', 75000.75, 35),
(4, 'Olivia', 45000.25, 28),
(5, 'Ethan', 80000.00, 32),
(6, 'Sophia', 65000.00, 27),
(7, 'Mason', 55000.50, 29),
(8, 'Isabella', 72000.75, 31),
(9, 'Logan', 48000.25, 26),
(10, 'Mia', 83000.00, 33);

SELECT * FROM emp;

#Example 1: Filter by Total Salary:

SELECT NAME, SUM(sal) FROM Emp
GROUP BY name
HAVING SUM(sal)>50000; 


#Example 2: Filter by Average Salary:

SELECT age, AVG(sal) AS Average_Salary
FROM emp
GROUP BY age
HAVING AVG(sal) < 60000;

SELECT age, AVG(sal) AS Average_Salary
FROM emp
GROUP BY age
HAVING AVG(sal) > 60000;


---------------------------------------------------------------------------------------------------------------------------------------------------------------
















































































