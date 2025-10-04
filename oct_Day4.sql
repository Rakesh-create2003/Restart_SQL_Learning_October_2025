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

































