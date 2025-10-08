#Day 7 to Day 12: Advanced Queries and Clauses:

*WITH Clause: Understanding the concept of with clause and using it to give the sub-query block a name.

*FETCH Clause: It will fetch the filtered data based upon certain conditions like fetching only the top 3 rows.

*Arithmetic Operators: Using arithmetic operators to filter the data conveniently and precisely.

*Wildcard Operators: To intelligently select the exact data like names starting or ending with T.

*UPDATE Statement:  Updating certain data entries based upon the condition provided.

*ALTER Table: Adding, dropping, or modifying the table based on the given condition.

*LIKE Clause: It will follow the pattern given on the condition for search.

*BETWEEN and IN operator:  It will select the data range between or in the given condition.

*CASE Statement: It will check for the conditionals and will query the data as per the respective case.

*EXISTS: It will form the nested query to filter out the data which exists in another query.


#SQL WITH Clause:

*The SQL WITH clause is used to define temporary tables or result sets within a query.

*It defines a temporary relation (temporaryTable), which contains values selected from some_table.

*The subsequent SELECT query uses this temporary table in the main query to perform a join or filter data based on specific conditions.


#Examples of SQL WITH Clause:

Example 1: Finding Employees with Above-Average Salary:

create table employees_table(
emp_id int primary key,
Name varchar(50),
salary int 
);

select * from employees_table;

insert into employees_table (emp_id,name,salary) values (1001,'praveen',20000);

select * from employees_table;

insert into employees_table (emp_id,name,salary)
values   
(1002,'smith',30000),
(1003,'bill',40000),
(1004,'mith',50000),
(1005,'sumith',10000);

WITH temporaryTable (averageValue) AS (
    SELECT AVG(Salary)
    FROM Employees_table
)
      SELECT Emp_ID,Name, Salary 
        FROM Employees_table, temporaryTable 
        WHERE Employees_table.Salary > temporaryTable.averageValue;

select * from temporarytable;

Explanation:

*Temporary Table (CTE): We calculate the average salary using the WITH clause and store it in a temporary table called averageSalary.
*Main Query: The main query then compares each employee salary against the calculated average and returns the employees whose salaries are above the average.

#Example 2: Finding Airlines with High Pilot Salaries:

create table totalsalary(
employee_id int,
airline varchar(50),
name varchar(50),
salary int
);

select * from totalsalary;

insert into totalsalary (employee_id,airline,name,salary) values
(10001,'airbus 380','kim',20000),
(10002,'boeing','laura',30000),
(10003,'airbus 380','will',40000),
(10004,'boeing','waren',50000),
(10005,'airbus','kim',60000);

select * from totalsalary;

ALTER TABLE Customer
RENAME TO Clients;
 
EXEC sp_rename 'totalsalary','pilot';

select * from pilot;

query:

WITH totalSalary(Airline, total) AS (
    SELECT Airline, SUM(Salary)
    FROM pilot
    GROUP BY Airline
),
    airlineAverage (avgSalary) AS (
    SELECT avg(Salary)
    FROM pilot
)
    SELECT Airline
    FROM totalSalary, airlineAverage
    WHERE totalSalary.total > airlineAverage.avgSalary;

 
#SQL | With Ties Clause
*This post is a continuation of SQL Offset-Fetch Clause Now, we understand that how to use the Fetch Clause in Oracle Database, 
along with the Specified Offset and we also understand that Fetch clause is the newly added clause in the Oracle Database 12c or it is the new feature added in the Oracle database 12c.

Query:
SELECT * from employee
order by salary desc 
fetch first 3 rows only;

create table employee(
id int,
name varchar(20),
salary int
);

select * from employee;

drop table employee;

insert into employee(id,name,salary) 
values(1,'rakesh',20000),
(2,'madesh',30000),
(3,'anura',40000),
(4,'lakshana',5000),
(5,'yukesh',60000);

SELECT TOP 3*
FROM Employee;

SELECT *
FROM Employee
ORDER BY ID
OFFSET 0 ROWS
FETCH NEXT 5 ROWS ONLY;

 OFFSET 0 ROWS → start from the first row

FETCH NEXT 5 ROWS ONLY → return 5 rows

 





*







































