2.Creating Tables and adding data: From this concept, you will learn how to create tables inside the database and insert data into them.

SQL CREATE TABLE:

*Defines a new table in the database.
*Specifies columns, their data types, and sizes.
*Applies constraints such as NOT NULL, PRIMARY KEY, and CHECK.
*Ensures accuracy, consistency, and organized data storage.

Syntax:

CREATE table table_name
(
Column1 datatype (size),
column2 datatype (size),
.
.
columnN datatype(size)
);


Key Terms:

*table_name: The name you assign to the new table.
*column1, column2, ... : The names of the columns in the table.
*datatype(size): Defines the data type and size of each column.

Query:
CREATE TABLE Student(
    StudentID INT PRIMARY KEY,
    Name NVARCHAR(50),
    Age INT,
    City NVARCHAR(50)
);

INSERT INTO Students (StudentID, Name, Age, City)
VALUES 
(1, 'Ravi Kumar', 20, 'Chennai'),
(2, 'Lakshmi Priya', 22, 'Bangalore'),
(3, 'Arun Kumar', 21, 'Hyderabad'),
(4, 'Priya Sharma', 19, 'Delhi'),
(5, 'Karthik Raj', 23, 'Mumbai'),
(6, 'Divya Rani', 20, 'Kolkata'),
(7, 'Suresh Kumar', 24, 'Chennai'),
(8, 'Meena Devi', 22, 'Pune'),
(9, 'Anil Kumar', 21, 'Coimbatore'),
(10, 'Sneha Gupta', 20, 'Jaipur');


select * from student;

Create Table from Existing Table:

*We can also create a new table based on the structure (and optionally the data) of an existing table. 
*The CREATE TABLE AS SELECT command allows us to duplicate an entire table or select specific columns to form a new one.
*The following query creates a new table called SubTable that contains CustomerID and CustomerName from the existing Customer table.

Syntax:

SELECT column1, column2, ...
INTO NewTable
FROM ExistingTable
WHERE condition;

Example 1: Copy entire table

*Suppose we already have a table Students with data.
*We want to make a copy called StudentsBackup.

Query:
SELECT *
INTO StudentsBackup
FROM Student;

check:
select * from studentsbackup;

Example 2: Copy only selected columns:

Query:

SELECT StudentID, Name
INTO StudentsNames
FROM Students;

select  * from students;

Example 3: Copy with condition:

SELECT *
INTO Students_cse
FROM Students
WHERE department = 'Cse';

select* from students_cse;

Example 4: Create empty table with same structure (no data):

Query:

SELECT *
INTO EmptyStudents
FROM Students
WHERE 1 = 0;

select * from emptystudents;











