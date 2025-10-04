3.SELECT Clause: Retrieve or fetch data from a database.

#SQL SELECT Query:
*SQL SELECT is used to retrieve data from one or more tables, either all records or specific results based on conditions.
*It returns output in a tabular format of rows and columns.

*Extracts data from tables.
*Targets specific or all columns (*).
*Supports filtering, sorting, grouping, and joins.
*Results are stored in a result set.

#Syntax:

SELECT column1,column2.... FROM table_name;

#Examples of SELECT Statement:
*Let us start by creating a sample table that we will use for our examples.
*We will also insert some sample data to make the demonstration more practical.

Query:

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age INT,
    Phone VARCHAR(50) 
);

select * from customer;

INSERT INTO Customer (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES   (1, 'Liam', 'Smith', 'USA', 23, '0987654321'),
                (2, 'Sophia', 'Miller', 'USA', 21, '1234567890'),
                (3, 'Akira', 'Tanaka', 'Japan', 24, '0987654321'),
                (4, 'Carlos', 'Hernandez', 'USA', 21, '1234567890'),
                (5, 'Isabella', 'Rossi', 'Italy', 22, '0987654321');

select * from customer;

#Example 1: Select Specific Columns:

*In this example, we will demonstrate how to retrieve specific columns from the Customer table.
*Here we will fetch only CustomerName and LastName for each record.

Query:

SELECT CustomerName, LastName 
FROM Customer;

#Example 2: Select All Columns:

*In this example, we will fetch all the fields from table Customer:

Query:

 SELECT * FROM Customer;
 
 #Example 3: SELECT Statement with WHERE Clause:
 
*Suppose we want to see table values with specific conditions then WHERE Clause is used with select statement. 
*In this example, filter customers who are 21 years old.

Query:

SELECT CustomerName 
FROM Customer 
where Age = '21'; 

#Example 4: SELECT with GROUP BY Clause:

*In this example, we will use SELECT statement with GROUP BY Clause to group rows and perform aggregation. 
*Here, we will count the number of customers from each country.

Query:

SELECT Country, COUNT(*) AS customer_count
FROM Customer
GROUP BY Country;

select * from Customer;

select age, count(*) as customer_age
from Customer 
group by age;

#Example 5: SELECT with DISTINCT Clause:
*In this example, we will use DISTINCT keyword to return only unique values from a column.
*Here, we will fetch unique countries from the Customer table.

Query:

SELECT DISTINCT *
FROM Customer;

insert into customer (CustomerID,customername,lastname,country,age,phone)
values(7,'liam','smith','usa',23,'0987654321')

select * from customer;

select distinct * from customer;


#Example 6: SELECT Statement with HAVING Clause:

*The HAVING clause is used to filter results after applying GROUP BY.
*In this example, we will find countries that have 2 or more customers in the Customer table.

Query:

SELECT Country, COUNT(*) AS customer_count
FROM Customer
GROUP BY Country
HAVING COUNT(*) >= 2;

#Example 7: SELECT Statement with ORDER BY clause:

*In this example, we will use SELECT Statement with ORDER BY clause. Here, Sort results by Age in descending order.

Query:

SELECT * FROM Customer ORDER BY Age DESC;  

select * from customer order by age asc;

select * from customer order by country desc;

select * from customer order by country asc;

#4.SQL - WHERE Clause:

*In SQL, the WHERE clause is used to filter rows based on specific conditions. 
*Whether you are retrieving, updating, or deleting data, WHERE ensures that only relevant records are affected. 
*Without it, your query applies to every row in the table! The WHERE clause helps you:

*Filter rows that meet certain conditions
*Target specific data using logical, comparison and pattern-based operators
*Control SELECT, UPDATE, DELETE or even INSERT statements

Syntax:

SELECT column1, column2
FROM table_name
WHERE column_name operator value;

#Examples of WHERE Clause in SQL:

Query:

CREATE TABLE Emp1 (
  EmpID INT PRIMARY KEY,
  Name VARCHAR(50),
  Country VARCHAR(50),
  Age INT,
  Mob VARCHAR(15)
);

select * from emp1;

INSERT INTO Emp1 VALUES
(1, 'Shubham',  'India', 23, '738479734'),
(2, 'Aman',     'Australia', 21, '436789555'),
(3, 'Naveen',   'Sri Lanka', 24, '34873847'),
(4, 'Aditya',   'Austria', 21, '328440934'),
(5, 'Nishant',  'Spain', 22, '73248679');

select * from emp1;

#Example 1: Where Clause with Logical Operators:

*To fetch records of  Employee with age equal to 24. 

Query:

SELECT * FROM Emp1 WHERE Age=24;

select name from emp1 where age=24;

select country from emp1 where age=24;

select mob from emp1 where age=24;

#Example 2: WHERE with Comparison Operators:

*To fetch the EmpID, Name and Country of Employees with Age greater than 21. 

Query:

SELECT EmpID, Name, Country FROM Emp1 WHERE Age > 21;

select * from emp1 where age>21;

select * from emp1 where age>=22;

#Example 3: Where Clause with BETWEEN Operator:

*The BETWEEN operator is used to filter records within a specified range, and it includes both the start and end values. 
*In this example, we want to find employees whose age is between 22 and 24, including both 22 and 24.

Query:

SELECT * FROM Emp1 
WHERE Age BETWEEN 22 AND 24;

select * from emp1 where age between 21 and 23;

#Example 4: Where Clause with LIKE Operator:

*It is used to fetch filtered data by searching for a particular pattern in the where clause. 
*In this example we want to find records of Employees where Name starts with the letter. 
*The '%'(wildcard) signifies the later characters here which can be of any length and value. 

Query:

SELECT * FROM Emp1 WHERE Name LIKE 'S%'; 

select * from emp1 where name like 'a%';

select * from emp1 where name like '%a';

SELECT * FROM Emp1 WHERE Name LIKE '%S';

select * from emp1;

#To fetch records of Employees where Name contains the pattern 'M':

Query:

SELECT * FROM Emp1 WHERE Name LIKE '%M%';

#Example 5: Where Clause with IN Operator:

*It is used to fetch the filtered data same as fetched by '=' operator just the difference is that here we can specify multiple values for which we can get the result set. 
*Here we want to find the Names of Employees where Age is 21 or 23.

Query:

SELECT Name FROM Emp1 WHERE Age IN (21,23);

SELECT * FROM Emp1 WHERE Age IN (21,23);

#List of Operators that Can be Used with WHERE Clause:
----------------------------------------------------------------------------------------------
Operator	                              Description
>	                                      Greater Than
>=	                                      Greater than or Equal to
<	                                      Less Than
<=	                                      Less than or Equal to
=	                                      Equal to
<>	                                      Not Equal to
BETWEEN	                                  In an inclusive Range
LIKE	                                  Search for a pattern
IN	                                      To specify multiple possible values for a column

-----------------------------------------------------------------------------------------------
























































