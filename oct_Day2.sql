--#The Complete roadmap to learn SQL in 30 days is as follows:
--
--#Day 1 to Day 6: Basic SQL Concepts
--
--1.Creating Database: This concept will make you learn how to create your own database.
--
--2.Creating Tables and adding data: From this concept, you will learn how to create tables inside the database and insert data into them.
--
--3.SELECT Clause: Retrieve or fetch data from a database.
--
--4.FROM Clause: From which table in the database do you have to select data?
--
--5.WHERE Clause: It forms the condition based on which data have to be queried.
--
--6.DELETE Statement: For deletion tasks.
--
--7.INSERT INTO: For insertion tasks.
--
--8.AND and OR operator: Selecting data based on AND or operator.
--
--9.Drop and Truncate: It will drop or truncate the collection as per the condition.
--
--10.NOT Operator: It will select the data which is not based on the given condition.

----------------------------------------------------------------------------------------------------------------------------------------------------------
--1.Creating Database: This concept will make you learn how to create your own database.

--SQL CREATE DATABASE and CREATE TABLE:

i)Creating Database:
To create a new database in SQL, we use CREATE DATABASE command followed by the database name.
Database names cannot contain spaces; if needed, an underscore (_) can be used instead.

Syntax:

CREATE DATABASE database_name;

Query:

CREATE DATABASE GeeksForGeeks;

ii)Verifying Database Creation in mssql server database Two methods:

Query:
EXEC sp_databases;
       or
select name from sys.databases;

iii)Switching to a Database (USE Command):
Once your database is created, we can switch to that database to begin adding tables, inserting data and performing queries. 
To switch to your new database, use the USE command.

Syntax:

USE database_name;

Query:

USE GeeksForGeeks;

iv)Deleting a Database:
If you ever want to delete a database, use:
Query:

Drop database database_name;

DROP DATABASE GeeksForGeeks;

This permanently deletes the database.


v)Creating Tables:
A table is the core structure of a database where data is stored in rows and columns. While creating a table, you must define:

*Column names
*Data types (e.g., INT, VARCHAR, DATE)
*Constraints (e.g., PRIMARY KEY, NOT NULL, UNIQUE, DEFAULT, FOREIGN KEY)

Syntax:

CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    ...
);

#Example: Creating a Student Table
*Here, we are creating a table named Student to store student details like ID, name, subject, year and marks.

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Subject VARCHAR(50),
    Year INT,
    Marks INT
);

select * from student;

 i)Verifying Table Creation
 
SELECT name 
FROM sys.tables;
--     or
EXEC sp_tables;

ii)Deleting a Table:

syntax:

DROP TABLE Student;
     
     

 
 
 
























