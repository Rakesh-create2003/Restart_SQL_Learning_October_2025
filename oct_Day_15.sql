#Aliases: It will give an alias to the table which we can refer to later:

SQL | Aliases:

*In SQL, aliases are temporary names given to columns or tables to make queries easier to read and write. 

*They don’t change the actual names in the database and exist only for the duration of that query.

#There are two types of aliases in SQL:

*Column Aliases: Temporary names for columns in the result set.

*Table Aliases: Temporary names for tables used within a query.

#Example of SQL Aliases:

CREATE TABLE Customers_objects (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age INT,
    Phone VARCHAR(15)
);

SELECT * from customers_objects;

-- Inserting sample data into the Customer table
INSERT INTO Customers_objects (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES 
(1, 'Shubham', 'Thakur', 'India', 23, '9876543210'),
(2, 'Aman', 'Chopra', 'Australia', 21, '9876543211'),
(3, 'Naveen', 'Tulasi', 'Sri Lanka', 24, '9876543212'),
(4, 'Aditya', 'Arpan', 'Austria', 21, '9876543213'),
(5, 'Nishant', 'Jain', 'Spain', 22, '9876543214');

select * from customers_objects;

1. Column Aliases:

*A column alias is used to rename a column just for the output of a query. They are useful when:

*Displaying aggregate data

*Making results more readable

*Performing calculations

Syntax:

SELECT column_name AS alias_name
FROM table_name;

#Example 1: Column Alias for Renaming a Column:

*To fetch the CustomerID and rename it as id in the result set

SELECT CustomerID AS id
FROM Customers_objects;

select country as country_list from customers_objects;


2. Table Aliases:

*A table alias is used when you want to give a table a temporary name for the duration of a query.

*Table aliases are especially helpful in JOIN operations to simplify queries, particularly when the same table is referenced multiple times (like in self-joins).

#Example 2: Table Alias for Joining Tables:

*We want to join the Customer table with itself to find customers who have the same country and are aged 21. 
*We will use table aliases for each instance of the Customer table.

Query:

SELECT c1.CustomerName, c1.Country
FROM Customers_objects AS c1, Customer AS c2
WHERE c1.Age = c2.Age AND c1.Country = c2.Country;

--not understanding


#Combining Column and Table Aliases:

*We want to fetch customers who are aged 21 or older and rename the columns for better clarity.
*We will use both table and column aliases.

Query:

SELECT CustomerName AS Name, Country AS Location
FROM Customers_objects
WHERE Age >= 21;


 






