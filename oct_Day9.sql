#Wildcard Operators: To intelligently select the exact data like names starting or ending with T.


#SQL Wildcard Characters:

*SQL wildcard characters are powerful tools that enable advanced pattern matching in string data.

*They are especially useful when working with the LIKE and NOT LIKE operators, allowing for efficient searches based on partial matches or specific patterns.


Syntax:

SELECT column1,column2 FROM table_name 
WHERE column LIKE wildcard_operator;

Key Terms:

column1,column2: fields in the table
table_name: name of the table
column: name of the field used for filtering data

#Types of SQL Wildcard Characters:
*There are several wildcard characters in SQL, each serving a different purpose in pattern matching. 
*Let’s break down the most common wildcard characters and their usage:

Wildcard Character	                                    Description

%	                                                    Represents zero or more characters.

_	                                                    Represents exactly one character.

[ ]	                                                    Represents a range of characters, used to match any single character within the range.

[ ] with ^ or !                                        	Matches any character that is NOT in the specified range.


1. Using the % Wildcard:

*The % wildcard is used to substitute for zero or more characters.
*It’s very flexible and is commonly used for matching partial strings.

#Example 1: Records Starting with a Specific Letter:

*To fetch records where the CustomerName starts with the letter 'A'.
*This query will return all records where the CustomerName starts with the letter A, regardless of what comes after it.

Query:

SELECT * 
FROM Customer;
WHERE CustomerName LIKE 'A%';

#Example 2: Records Ending with a Specific Letter:

*To fetch records from the Customer table with NAME ending with the letter 'A'. This query retrieves all customers whose name ends with A, regardless of what comes before it.

Query:

SELECT * 
FROM Customer 
WHERE CustomerName LIKE '%A';

#Example 3: Records Containing a Specific Letter at Any Position:
*To fetch records from the Customer table with NAME with the letter 'A' at any position. 
*This query will return records where A appears anywhere within the name, whether at the beginning, middle, or end.

Query

SELECT * FROM Customer WHERE CustomerName LIKE '%A%';


#Example 4: Fetching Records with 'ra' in Country Field and Removing Duplicates:

*To fetch records from the Customer table where the Country contains the substring 'ra' at any position, and ensure the result set does not contain duplicate data


Query:

SELECT DISTINCT * FROM Customer WHERE Country LIKE '%ta%';

select * from customer;

 
2. Using the _ Wildcard:

*The _ wildcard is used to substitute for exactly one character.
*This is useful when we know part of the string but need to match one specific unknown character.

#Example 1: Records with a Specific Prefix and Any Three Letters:

*To fetch records where the CustomerName starts with 'Nav' and is followed by any three characters.
*This query will retrieve all records where the name starts with Nav and has exactly three more characters after it (e.g., Naveen).

Query:

SELECT * FROM Customer WHERE CustomerName LIKE 'sop___';

#Example 2: Records with a Specific Length:

*To fetch records from the Customer table with Country containing a total of 7 characters. 
*The query will return all records where the Country field has exactly seven characters.

Query:

SELECT * FROM Customer WHERE country LIKE '___';

3. Using the [ ] Wildcard:

*The [ ] wildcard allows us to specify a set or range of characters that we want to match.
*It is especially useful when we need to search for specific characters within a defined range or group.

#Example 1: Matching One Character from a Set:

*To fetch records from the Customer table with LastName containing letters a, 'b', or 'c'. 
*This query will return records where the last name starts with A, B, or C.

Query

select * from customer ;

SELECT * FROM Customer  WHERE LastName  LIKE '%[y-z]%';

SELECT * FROM Customer  WHERE LastName  not LIKE '%[y-z]%';

# Combining Both % and _ Wildcard:

*We can also combine % and _ wildcards to perform more complex searches. 
*The % wildcard represents any sequence of characters, while the _ wildcard represents exactly one character. 
*By combining both, we can create intricate patterns that match a wide range of string data with greater precision, allowing us to filter data based on multiple criteria.

#Example: Matching Specific Digits in a Phone Number:

*To fetch records where the Phone number starts with '8' in the first position, has any two characters in the second and third positions, and then has '5' in the fourth position.

Query

SELECT * FROM customer WHERE PHONE LIKE '0________1%';

--------------------------------------------------------------------------------------------------------------------------------------------------------

#UPDATE Statement:  Updating certain data entries based upon the condition provided.

#SQL UPDATE Statement:

*The UPDATE statement in SQL is used to modify existing records in a table without deleting them. 
*It allows updating one or multiple columns, with or without conditions, to keep data accurate and consistent.

*Change specific column values in selected rows

*Apply targeted updates using WHERE

*Update single or multiple columns at once

*More efficient than deleting and re-inserting rows

*Maintains data integrity by modifying in place

#Syntax:

UPDATE table_name 
SET column1 = value1, column2 = value2,... 
WHERE condition;

Parameters:

*table_name: Name of the table you want to update.

*SET: The column(s) you want to update and their new values.

*WHERE: Filters the specific rows you want to update.

#Examples of SQL UPDATE Statement:

CREATE TABLE Custom (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age INT,
    Phone VARCHAR(15)
);

select * FROM custom;


-- Insert sample data
INSERT INTO Custom (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES 
(1, 'Shubham', 'Thakur', 'India', 23, '9415536635'),
(2, 'Aman', 'Chopra', 'Australia', 21, '9812345678'),
(3, 'Naveen', 'Tulasi', 'Sri Lanka', 24, '9123456789'),
(4, 'Aditya', 'Arpan', 'Austria', 21, '9876543210'),
(5, 'Nishant', 'Jain', 'Spain', 22, '7012345678');

#Example 1: Update Single Column Using UPDATE Statement:
We have a Customer table and we want to Update the CustomerName where the Age is 22.

Query:

UPDATE Custom 
SET CustomerName  = 'Nitin' 
WHERE Age = 24;

select * from custom;

update custom set country = 'usa' where  age= 21;

update custom set customername='rock' where country='sri lanka';

select * from custom;

#Example 2: Updating Multiple Columns using UPDATE Statement:

*We need to update both the CustomerName and Country for a specific CustomerID.

Query:
UPDATE Custom
SET CustomerName = 'Satyam', 
Country = 'pakistan' 
WHERE CustomerID = 1;

select * from custom;

update custom set customername='madesh',lastname='MR',country='cheyyar',age=17,phone='6369899575' where customerid=4;

select * from custom;


#Example 3: Omitting WHERE Clause in UPDATE Statement:
*If we accidentally omit the WHERE clause, all the rows in the table will be updated, which is a common mistake.
*Let’s update the CustomerName for every record in the table:

Query:

UPDATE Custom
SET CustomerName = 'Shubham';

select * from custom;

 update custom set country='india';
 
 update custom set lastname='sri',age=20;
 
 -------------------------------------------------------------------------------------------------------------------------------------------------
 
 #ALTER Table: Adding, dropping, or modifying the table based on the given condition.:

#SQL ALTER TABLE:

 *SQL ALTER TABLE statement modify the structure of an existing table in a database.
 *Whether adding new columns, modifying existing ones, deleting columns or renaming them. 
 *ALTER TABLE statement enables you to make changes without losing data stored in the table.

Syntax:
ALTER TABLE table_name [ADD | DROP | MODIFY] column_name datatype;

Parameters:

*table_name: name of the table you want to modify.
*ADD: used to add a new column.
*DROP: used to remove an existing column.
*MODIFY: used to change datatype or definition of an existing column.

#Common Use Cases for SQL ALTER TABLE:

1. ADD

*The ADD clause is used to add a new column to an existing table. You must specify the name of the new column and its data type.

Syntax:

ALTER TABLE table_name
ADD column_name datatype;

Example:

ALTER TABLE Students
ADD Email varchar(255);

select * from students;

Here, we are adding a column named Email to Student table.

2. MODIFY:

*The MODIFY (or ALTER COLUMN in some databases like SQL Server) clause is used to modify the definition of an existing column, such as changing its data type or size.


Syntax:

ALTER TABLE table_name
MODIFY COLUMN column_name datatype;

Example:

ALTER TABLE Students
ALTER  COLUMN name VARCHAR(20);


select * from students;

Here, we are modifying the column named name datatype that is VARCHAR(20).

alter table students alter column department varchar(200);

3. DROP:

*The DROP clause allows you to remove a column from a table. Be cautious when using this command as it will permanently remove the column and its data.

Query:

ALTER TABLE table_name
DROP COLUMN column_name;

Example:

ALTER TABLE Students
DROP COLUMN email;

select * from students;

Here, we are removing a column named email from Student table

4. RENAME COLUMN:

*We can rename an existing column using RENAME COLUMN clause. This allows you to change the name of a column while preserving its data type and content.

Query:

ALTER TABLE table_name
RENAME COLUMN old_name TO new_name;

Example:

select  * from customer;

--#EXEC sp_rename 'employee.emp_name', 'name', 'COLUMN';

exec sp_rename 'students.name','student_name', 'column';

select * from students; 
 
This renames the column CustomerName to FirstName in the Customer table.

5. RENAME TO:

*We can rename an entire table using the RENAME TO clause. This changes the name of the table while preserving its structure and data.

Query:

ALTER TABLE table_name
RENAME TO new_table_name;

Example:
 

exec sp_rename 'students','students_new';

select * from students_new;
*This renames the table from students to students_new.
-------------------------------------------------------------------------------------------------------------------------------------------------------

#LIKE Clause: It will follow the pattern given on the condition for search:

#SQL LIKE Operator:

#What is the SQL LIKE Operator?

*SQL LIKE operator is used with the WHERE clause to search for a specified pattern in a column. 
*LIKE operator finds and returns the rows that fit in the given pattern.

*LIKE operator is case-insensitive by default in most database systems. 
*This means that if you search for "apple" using the LIKE operator, it will return results that include "Apple", "APPLE", "aPpLe", and so on.

Syntax:

SELECT column1, column2, ...

FROM table_name

WHERE column_name LIKE pattern;

*column_name: The column to be searched.
*pattern: The pattern to search for, which can include wildcard characters.

For example:

SELECT * FROM products WHERE student_name LIKE BINARY 'apple%'

select * from customers;

exec sp_tables;

select * from employee;

#Wildcard Characters with the SQL LIKE Operator:

*Wildcards are used with the LIKE operator to search for specific patterns in strings. 
*Wildcard characters substitute one or more characters in the string. There are four wildcard characters in SQL:

*  % (Percent): Represents zero or more characters.
*  _ (Underscore): Represents a single character.
*  [] (Square Brackets): Represents any single character within brackets.
*  - (Hyphen): Specify a range of characters inside brackets.

Examples of Wildcards:

Pattern	                                                Meaning

'a%'	                                            Match strings that start with 'a'
'%a'	                                            Match strings with end with 'a'
'a%t'	                                            Match strings that contain the start with 'a' and end with 't'.
'%wow%'	                                            Match strings that contain the substring 'wow' in them at any position.
'_wow%'	                                            Match strings that contain the substring 'wow' in them at the second position.
'_a%'	                                            Match strings that contain 'a' at the second position.
'a_ _%'	                                            Match strings that start with a and contain at least 2 more characters.


Examples of SQL LIKE Operator:

--Supplier Table

CREATE TABLE Supplier (
    SupplierID CHAR(2) PRIMARY KEY,
    Name VARCHAR(50),
    Address VARCHAR(100)
);

select * from supplier;

INSERT INTO Supplier (SupplierID, Name, Address)
VALUES
    ('S1', 'Paragon Suppliers', '21-3, Okhla, Delhi'),
    ('S2', 'Mango Nation', '21, Faridabad, Haryana'),
    ('S3', 'Canadian Biz', '6/7, Okhla Phase II, Delhi'),
    ('S4', 'Caravan Traders', '2-A, Pitampura, Delhi'),
    ('S5', 'Harish and Sons', 'Gurgaon, NCR'),
    ('S6', 'Om Suppliers', '2/1, Faridabad, Haryana');


#Example 1 : Match Names Starting with 'Ca':

SELECT SupplierID, Name, Address
FROM Supplier
WHERE Name LIKE 'Ca%';

select * from supplier where name like 'ca%';

#Example 2: Match Addresses Containing 'Okhla':

*Retrieve entire table, where address contains OKHLA.

SELECT *
FROM Supplier
WHERE Address LIKE '%Okhla%';

#Example 3: Match Names Where 'ango' Appears in the Second Position:

*Retrieve SupplierID, Name and Address of supplier whose name contains "ango" in second substring.

SELECT SupplierID, Name, Address
FROM Supplier
WHERE Name LIKE '_ango%';

#Example 4: Using LIKE with AND for Complex Conditions:

*Retrieve suppliers from Delhi with names starting with "C":

SELECT SupplierID, Name, Address
FROM Supplier
WHERE Address LIKE '%Delhi%' AND Name LIKE 'C%';

#Example 5: Using NOT LIKE for Exclusion:

*To retrieve all suppliers whose name does not contain "Mango"

SELECT SupplierID, Name, Address
FROM Supplier
WHERE Name NOT  LIKE '%Mango%';














































































