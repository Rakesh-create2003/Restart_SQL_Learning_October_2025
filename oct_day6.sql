#AND and OR operator: Selecting data based on AND or operator:


#SQL AND and OR Operators:

*The SQL AND and OR operators are used to filter data based on multiple conditions.
*These logical operators allow users to retrieve precise results from a database by combining various conditions in SELECT, INSERT, UPDATE, and DELETE statements.

#SQL AND Operator:

*The AND operator allows you to filter data based on multiple conditions, all of which must be true for the record to be included in the result set.

Syntax:

The syntax to use the AND operator in SQL is:
 
SELECT * FROM table_name WHERE condition1 AND condition2 AND ...conditionN;

Example 1: SQL AND Operator:

*If suppose we want to fetch all the records from the Student table where Age is 19 and ADDRESS is Delhi.

Query:

SELECT * FROM Student 
WHERE Age = 19 AND city = 'Delhi';

select * from student;

select * from student where age=20 and city='chennai';

#SQL OR Operator:
*The OR Operator in SQL displays the records where any one condition is true, i.e. either condition1 or condition2 is True.

Syntax:

*The syntax to use the OR operator in SQL is:

SELECT * FROM table_name WHERE condition1 OR condition2 OR... conditionN;

#Example 2: SQL OR Operator:

*To fetch all the records from the Student table where NAME is Ram or NAME is SUJIT. 

Query:

SELECT * FROM Student 
WHERE NAME = 'ravi kumar' OR NAME = 'arun kumar';

select * from student;

#Combining AND and OR Operators in SQL:

*Combining AND and OR Operators in SQL allows the creation of complex conditions in queries. This helps in filtering data on multiple conditions. 

Syntax:

Syntax to use AND and OR operator in one statement in SQL is:

SELECT * FROM table_name 
WHERE condition1 AND (condition2 OR condition3);

Query:

SELECT * FROM Student WHERE Age = 20 AND (NAME = 'ravi kumar' OR NAME = 'arun kumar');


#Drop and Truncate: It will drop or truncate the collection as per the condition:

#DROP and TRUNCATE in SQL:
*The DROP and TRUNCATE commands in SQL are used to remove data from a table, but they work differently. 
*This difference is crucial for effective database management, especially with large datasets.

#SQL DROP Command:
*The SQL DROP command is used to permanently remove an object from a database, such as a table, database, index or view.
*When a table is dropped, both its data and structure are permanently removed, and the action cannot be undone without a backup.

Syntax:
DROP object object_name ;

#Examples of Using the DROP Command:
*To understand how the DROP command works in SQL, let us explore some practical examples demonstrating its various applications.

1. DROP Table:
*To delete an entire table including its data and structure.

Syntax:

DROP TABLE table_name;

drop table employee;

2. DROP database:
*To delete an entire database and all of its associated tables.

Syntax:

DROP DATABASE database_name;

exec sp_databases;

drop database employee_db;

exec sp_databases;

#SQL TRUNCATE Command:
*The TRUNCATE command is a Data Definition Language (DDL) action that removes all rows from a table but preserves the structure of the table for future use.

Syntax:

TRUNCATE TABLE  table_name;

truncate table emp1;

select * from emp1;

exec sp_tables;

#NOT Operator: It will select the data which is not based on the given condition:

#SQL NOT Operator:

*The SQL NOT Operator is a logical operator used to negate or reverse the result of a condition in SQL queries.
*It is commonly used with the WHERE clause to filter records that do not meet a specified condition, helping you exclude certain values from your results.


#What is the SQL NOT Operator?
*The SQL NOT operator is used to reverse the boolean result of a condition in SQL. 
*It helps in retrieving records that do not match a specific condition.
*It is mostly used to specify what should not be included in the results table.

Syntax:

SELECT column1, colomn2, … 
FROM table_name WHERE NOT condition; 

#Examples of SQL NOT Operator:

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50),
    PostalCode VARCHAR(10),
    Country VARCHAR(50)
);

select * from customers;

INSERT INTO Customers (CustomerID, CustomerName, City, PostalCode, Country)
VALUES
    (1, 'John Wick', 'New York', '1248', 'USA'),
    (2, 'Around the Horn', 'London', 'WA1 1DP', 'UK'),
    (3, 'Rohan', 'New Delhi', '100084', 'India');

select * from customers;

#Example 1: Using SQL NOT to Exclude a Specific Value:
#The following SQL statement selects all fields from Customers table where the country is not UK.

Query:

SELECT * 
FROM Customers
WHERE NOT Country = 'UK';

select * from customers where not country ='india';

select * from customers where not country ='usa';

select * from customers where not city ='london';

Example 2: Using SQL NOT with IN Operator
#The NOT operator can also be used with the IN condition to exclude multiple values from the result set.

Query:

SELECT * 
FROM Customers
WHERE NOT Country in ('USA', 'UK');

#Example 3: Using SQL NOT with LIKE Operator:

*We can also combine NOT with the LIKE operator to exclude records that match a certain pattern.

Query:

SELECT * 
FROM Customers
WHERE NOT CustomerName LIKE 'R%';

SELECT * 
FROM Customers
WHERE NOT CustomerName LIKE 'a%';

SELECT * 
FROM Customers
WHERE NOT CustomerName LIKE '%j%';

#Example 4: Using SQL NOT with NULL Values:

*To exclude records where a column has a NULL value, combine NOT with the IS NULL condition.

Query:

SELECT * 
FROM Customers
WHERE NOT PostalCode IS NULL;

#Example 5: Using NOT with AND Operator:
*We can combine NOT with the AND operator to create more complex conditions. 
*This query retrieves customers who are not from the USA and are also not from the UK.

Query:

SELECT * 
FROM Customers
WHERE NOT Country = 'USA' AND NOT Country = 'UK';



























































