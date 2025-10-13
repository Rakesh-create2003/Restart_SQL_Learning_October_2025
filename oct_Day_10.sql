#SQL | BETWEEN & IN Operator:

*In SQL, the BETWEEN and IN operators are widely used for filtering data based on specific criteria. 
*The BETWEEN operator helps filter results within a specified range of values, such as numbers, dates, or text, while the IN operator filters results based on a specific list of values. 
*Both operators simplify data retrieval, enhancing the efficiency of SQL queries.

#SQL Between Operator:
*The SQL BETWEEN operator is used to test whether a value falls within a given range of values (inclusive). The values can be text, date, or numbers.
*It can be used in a SELECT, INSERT, UPDATE or DELETE statement. 
*The SQL BETWEEN Condition will return the records where the expression is within the range of value1 and value2.

Syntax:

SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

Key Features:

*Inclusive of both boundary values (value1 and value2).
*Simplifies queries when working with continuous ranges.

#Creating a Sample Table:

*Let’s create a sample table named Emp to demonstrate the use of the BETWEEN and IN operators.
*The Emp table contains employee data, including details such as name, country, age, and salary.
*These columns will be used to demonstrate filtering using the BETWEEN and IN operators.

Query:

CREATE TABLE Emp(
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Country VARCHAR(50),
    Age int,
  Salary int
);

INSERT INTO Emp (EmpID, Name,Country, Age, Salary)
VALUES (1, 'Shubham',  'India','23','30000'),
       (2, 'Aman ',  'Australia','21','45000'),
       (3, 'Naveen', 'Sri lanka','24','40000'),
       (4, 'Aditya',  'Austria','21','35000'),
       (5, 'Nishant', 'Spain','22','25000');

Select * from Emp; 

#Example 1: Using BETWEEN with Numeric Values:

*List all the Employees Names who is having salary between 30000 and 45000.
* This query filters employees whose salary falls within the range of 30000 to 45000, inclusive. 
*The BETWEEN operator simplifies filtering compared to writing multiple conditions with AND

Query:

SELECT Name
FROM Emp
WHERE Salary
BETWEEN 30000 AND 45000;

select * from emp  where salary 
between 30000 and 45000;

select * from emp;

select * from emp where age between 21 and 23;

#Example 2: Using BETWEEN with Date Values:
*Find all the Employees an Age Between 22 to 24.
*This query retrieves employees whose age is between 22 and 24, including the boundary values.
*The BETWEEN operator efficiently filters the range without requiring complex conditions.

Query:

SELECT Name
FROM Emp
where Age
BETWEEN '22' AND '24';


SELECT *
FROM Emp
where Age
BETWEEN '22' AND '24';

#Example 3: Using the NOT Operator with BETWEEN :

*Find all the Employee names whose salary is not in the range of 30000 and 45000. 
*The NOT BETWEEN clause excludes employees whose salary falls within the specified range, returning only those outside the range.

Query:

SELECT Name
FROM Emp 
WHERE Salary
NOT BETWEEN 30000 AND 45000;


SELECT *
FROM Emp 
WHERE Salary
NOT BETWEEN 30000 AND 45000;


#SQL IN Operator:

*IN operator allows us to easily test if the expression matches any value in the list of values. 
*It is used to remove the need for multiple OR conditions in SELECT, INSERT, UPDATE, or DELETE.
*We can also use NOT IN to exclude the rows in our list. We should note that any kind of duplicate entry will be retained. 

Syntax

SELECT column_name(s)
FROM table_name
WHERE column_name IN (list_of_values);

Key Features:

Ideal for filtering non-sequential values.
Handles duplicates in the list of values.

#Example 1: Using IN Operator:
*Find the Fname, and Lname of the Employees who have a Salary equal to 30000, 40000, or 25000.
*The query retrieves employees whose salary matches any of the specified values in the list. 
*This approach is more concise and efficient compared to using multiple OR conditions

 Query:

SELECT Name
FROM Emp
WHERE Salary IN (30000, 40000, 25000);

select * from emp where salary in (30000,40000); 

#Example 2: Using the NOT Operator with IN:
*
*Find the Fname and Lname of all the Employees who has a Salary not equal to 25000 or 30000.
*This query excludes employees with salaries of 25000 and 30000. The NOT IN clause ensures that all other employees are included in the result set.

Query:

SELECT Name
FROM Emp
WHERE Salary NOT IN (25000, 30000);

SELECT *
FROM Emp
WHERE Salary NOT IN (25000, 30000);

--------------------------------------------------------------------------------------------------------------------------------------------------

#SQL CASE Statement:

*The CASE statement in SQL is a versatile conditional expression that enables us to incorporate conditional logic directly within our queries. 
*It allows you to return specific results based on certain conditions, enabling dynamic query outputs. 
*Whether you need to create new columns, modify existing ones, or customize the output of your queries, the CASE statement can handle it all.

#CASE Statement in SQL:
*The CASE statement in SQL is a conditional expression that allows you to perform conditional logic within a query.
*It is commonly used to create new columns based on conditional logic, provide custom values, or control query outputs based on certain conditions.
*If no condition is true then the ELSE part will be executed. If there is no ELSE part then it returns NULL.

Syntax:

*To use CASE Statement in SQL, use the following syntax:

CASE case_value
WHEN condition THEN result1
WHEN condition THEN result2
...
Else result
END CASE;


#Demo SQL Database:

CREATE TABLE Custome(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age int,
  Phone int
);
-- Insert some sample data into the Customers table

INSERT INTO Custome (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES (1, 'Shubham', 'Thakur', 'India','23',1122334455),
       (2, 'Aman ', 'Chopra', 'Australia','21',0099887766),
       (3, 'Naveen', 'Tulasi', 'Sri lanka','24',1029384756),
       (4, 'Aditya', 'Arpan', 'Austria','21',0987654321),
       (5, 'Nishant. Salchichas S.A.', 'Jain', 'Spain','22',1234567890),
       (6,'rakesh','Ramesh','india','22',6369899575)
       ;

select * from custome;

Example 1: Simple CASE Expression
In this example, we use CASE statement

Query:

SELECT CustomerName, Age,
CASE
    WHEN Country = 'India' THEN 'Indian'
    ELSE 'Foreign'
END AS Nationality
FROM Custome;

SELECT lastname,
CASE
    WHEN Country = 'India' THEN 'Indian'
    ELSE 'Foreign'
END AS Nationality
FROM Custome;

#Example 2: SQL CASE When Multiple Conditions:

*We can add multiple conditions in the CASE statement by using multiple WHEN clauses.

Query:

SELECT CustomerName, Age,
CASE
    WHEN Age> 22 THEN 'The Age is greater than 22'
    WHEN Age = 21 THEN 'The Age is 21'
    when age >21 then 'The age is greater than 21'
    ELSE 'The Age is over 30'
END AS QuantityText
FROM Custome;

#Example 3: CASE Statement With ORDER BY Clause:

*Lets take the Customer Table which contains CustomerID, CustomerName, LastName, Country, Age, and Phone. 
*We can check the data of the Customer table by using the ORDER BY clause with the CASE statement.

Query:

SELECT CustomerName, Country
FROM Custome
ORDER BY
CASE
	when age=22 then 'equal to 22'
	else 'greater than 22'
END

select * from custome;

INSERT INTO Custome (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES (6,'rakesh','Ramesh','india','22',6369899);

-------------------------------------------------------------------------------------------------------------------------------------------------------

#EXISTS: It will form the nested query to filter out the data which exists in another query:

#SQL | EXISTS:

#The SQL EXISTS condition is used to test whether a correlated subquery returns any results. 
#If the subquery returns at least one row, the EXISTS condition evaluates to TRUE; otherwise, it evaluates to FALSE.
#The EXISTS operator can be used in various SQL statements like SELECT, UPDATE, INSERT, and DELETE to filter data based on whether certain conditions are met.


#What is SQL EXISTS?:
*The EXISTS condition is primarily used to check the existence of rows returned by a subquery. 
*It’s commonly used in scenarios where you need to check if a record exists in a related table, and you want to perform an action based on that result.

Syntax:

SELECT column_name(s)
FROM table_name
WHERE EXISTS (
    SELECT column_name(s)
    FROM subquery_table
    WHERE condition
);
EXISTS: The boolean operator that checks if a subquery returns rows.
Subquery: A nested SELECT query that returns data for evaluation.
Condition: The condition applied to the subquery.


select * from customers;

select * from customer;

drop table customers;

create table customers(
customer_id int ,
Fname varchar(50),
Lname varchar(50),
website varchar(50)
);

select * from customers;

insert into customers (customer_id,fname,lname,website)
values (402,'chauhan','anuj','def.com'),
(403,'kumar','anuj','def.com'),
(404,'gupta','sudham','ghi.com'),
(405,'walecha','divya','jkl.com'),
(406,'jain','sandeep','mno.com'),
(407,'mehta','Rajiv','pqr.com'),
(408,'mehra','anand','stu.com');


select * from customers;



insert into customers (customer_id,fname,lname,website)
values (401,'singh','dolly','abc.com');


create table orders(
order_id int,
c_id int,
order_date datetime  
);

select * from orders;


insert into orders (order_id,c_id,order_date)
values(1,407,2015-09-10),
(2,408,2015-04-05),
(3,409,2016-02-11);


select * from orders;

#Example 1 : Using EXISTS with SELECT:

*To fetch the first and last name of the customers who placed atleast one order.

Query:

SELECT fname, lname 
FROM Customers 
WHERE EXISTS (SELECT * 
              FROM Orders 
              WHERE Customers.customer_id = Orders.c_id);

select * from customers;

#Example 2 : Using NOT with EXISTS:

*Fetch last and first name of the customers who has not placed any order.

SELECT lname, fname
FROM Customers
WHERE NOT EXISTS (SELECT * 
                  FROM Orders 
                  WHERE Customers.customer_id = Orders.c_id);


#Example 3 : Using EXISTS condition with DELETE statement:

*Delete the record of all the customer from Order Table whose last name is 'Mehra'.

DELETE 
FROM Orders
WHERE EXISTS (SELECT *
              FROM customers
              WHERE Customers.customer_id = Orders.c_id
              AND Customers.lname = 'Mehra');

#Example 4 : Using EXISTS condition with UPDATE statement:

*Update the lname as 'Kumari' of customer in Customer Table whose customer_id is 401.

UPDATE Customers
SET lname = 'Kumari'
WHERE EXISTS (SELECT *
              FROM Customers
              WHERE customer_id = 401);

SELECT * FROM Customers;




































































