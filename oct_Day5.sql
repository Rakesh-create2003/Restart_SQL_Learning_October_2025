5.DELETE Statement: For deletion tasks:

#SQL DELETE Statement:

*The SQL DELETE statement is used to remove specific rows from a table while keeping the table structure intact. 
*It is different from DROP, which deletes the entire table.

*Removes rows based on conditions.
*Retains table schema, constraints, and indexes.
*Can delete a single row or all rows.
*Useful for cleaning or managing datasets.

#Syntax: 
DELETE FROM table_name
WHERE some_condition;

#Parameter Explanation:

*Some_condition: A condition used to filter the rows you want to delete.
*table_name: The name of the table from which you want to delete the rows.

#Examples of SQL DELETE Statement:

CREATE TABLE MR_Employees (
   id INT PRIMARY KEY,
   name VARCHAR (20) ,
   email VARCHAR (25),
   department VARCHAR(20)
);

select * from mr_employees;

INSERT INTO mr_Employees (id, name, email, department) VALUES 
(1, 'Jessie', 'jessie23@gmail.com', 'Development'),
(2, 'Praveen', 'praveen_dagger@yahoo.com', 'HR'),
(3, 'Bisa', 'dragonBall@gmail.com', 'Sales'),
(4, 'Rithvik', 'msvv@hotmail.com', 'IT'),
(5, 'Suraj', 'srjsunny@gmail.com', 'Quality Assurance'),
(6, 'Om', 'OmShukla@yahoo.com', 'IT'),
(7, 'Naruto', 'uzumaki@konoha.com', 'Development');

select * from mr_employees;

#Example 1: Deleting Single Record:

*We can use the DELETE statement with a condition to delete a specific row from a table.
*The WHERE clause ensures only the intended record is removed. 
*We can delete the records named Rithvik by using the below query:

Query:

DELETE FROM mr_Employees 
WHERE NAME = 'Rithvik';  

select * from mr_employees;

delete from mr_employees
where id=3;


select * from mr_employees;


delete from mr_employees 
where email='jessie23@gmail.com';

select * from mr_employees;

delete from mr_employees where department='it';

select * from mr_employees;

#Example 2: Deleting Multiple Records:

--*To delete multiple records, you can specify a condition that matches several rows. 

--*Let's delete the rows from the table  GFG_Employees where the department is Development.This will delete 2 rows (the first row and the seventh row).

Query:

DELETE FROM mr_Employees 
WHERE department = 'Development';

select * from mr_employees;

#Example 3: Delete All Records from a Table:

*If we need to delete all records from the table, we can omit the WHERE clause, or alternatively use the DELETE statement with an asterisk (*) to denote all rows.

#Query:

DELETE FROM mr_Employees;

#Example 4:
#Rolling Back DELETE Operations:

*Since the DELETE statement is a DML operation, it can be rolled back when executed in a statement.
*If you accidentally delete records or need to repeat the process, you can use the ROLLBACK command.

Query:

START TRANSACTION;
DELETE FROM mr_Employees WHERE department = 'Development';

select * from mr_employees;

-- If needed, you can rollback the deletion

ROLLBACK;
Explanation: The ROLLBACK command will undo the changes made by the DELETE statement, effectively restoring the records that were deleted during the transaction.

6.INSERT INTO: For insertion tasks:

#SQL INSERT INTO Statement:

*INSERT INTO statement is used to add new rows to an existing table.
*It can insert values into all columns, specific columns, or even copy data from another table. 
*This command is essential for populating databases with meaningful records such as customers, employees or students.

Let’s explore different ways to use the INSERT INTO statement:

1. Inserting Data into All Columns:
*This method is used when you want to insert data into all columns of a table without specifying column names.
*We simply provide the values for each column, in the same order that the columns are defined in the table.

Syntax:

INSERT INTO table_name 
VALUES (value1, value2, value3, ...); 

Parameters:
*table_name: name of the table where data will be inserted
*value1, value2... : values that correspond to each column in order.

Query:

CREATE DATABASE StudentDB;

use studentdb;


CREATE TABLE Student (
    ROLL_NO INT PRIMARY KEY,
    NAME VARCHAR(50),
    ADDRESS VARCHAR(100),
    PHONE VARCHAR(15),
    AGE INT );

select * FROM student; 

INSERT INTO Student (ROLL_NO, NAME, ADDRESS, PHONE, AGE) 
VALUES  (1, 'Liam', 'New York', 'xxxxxxxxxx', 18),
               (2, 'Sophia', 'Berlin', 'xxxxxxxxxx', 18),
               (3, 'Akira', 'Tokyo', 'xxxxxxxxxx', 20),
               (4, 'Carlos', 'Tokyo', 'xxxxxxxxxx', 18);

select * from student;

INSERT INTO Student 
VALUES (5, 'Isabella', 'Rome', 'xxxxxxxxxx', 19);

2. Inserting Data into Specific Columns:

Syntax

INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...); 

Query:
INSERT INTO Student (ROLL_NO, NAME, AGE) 
VALUES (6, 'Hiroshi', 19);

select * from student;

insert into student(roll_no,name)
values (7,'logesh');

3.Inserting Multiple Rows at Once:

*Instead of running multiple INSERT INTO commands, you can insert multiple rows into a table in a single query. 
*This is more efficient and reduces the number of database operations.

Syntax

INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...), (value1, value2, ...), (value1, value2, ...);

Query:
INSERT INTO Student (ROLL_NO, NAME, ADDRESS, PHONE, AGE) 
VALUES
(8, 'Mateo Garcia', 'Madrid', 'xxxxxxxxxx', 15),
(9, 'Hana Suzuki', 'Osaka', 'xxxxxxxxxx', 18),
(10, 'Oliver Jensen', 'Copenhagen', 'xxxxxxxxxx', 17),
(11, 'Amelia Brown', 'London', 'xxxxxxxxxx', 17);

select * from student;

4. Inserting Data from One Table into Another Table:

*We can also copy data from one table into another table using the INSERT INTO SELECT statement.
*This is very useful when we want to move or replicate data from one table to another without manually typing all the data.

Method 1: Insert All Columns from Another Table:

*Inserts every column from source table into destination table.

INSERT INTO target_table
SELECT * FROM source_table;

exec sp_tables;

Example: If you want to copy all data from the OldStudent table into the Student table, use this query:
 
CREATE TABLE oldStudent (
    ROLL_NO INT PRIMARY KEY,
    NAME VARCHAR(50),
    ADDRESS VARCHAR(100),
    PHONE VARCHAR(15),
    AGE INT );

select * from oldstudent;


INSERT INTO oldStudent
SELECT * FROM Student;

select * from oldstudent;

select * from student;

#Method 3: Insert Specific Rows Based on Condition:

*You can also insert specific rows based on a condition by using the WHERE clause with the SELECT statement.

syntax:
INSERT INTO target_table
SELECT * FROM source_table
WHERE condition;

Query:

CREATE  table oldemployee(
id int,
name varchar(50),
age int
);

select * from oldemployee;

insert into oldemployee(id,name,age)
values(1,'ram',15),
(2,'raj',16),
(3,'raja',17),
(4,'rajesh',18),
(5,'rock',19);

select * FROM oldemployee;

insert into newstudent
select * from oldstudent
where age > 15;


create table newemployee(
id int,
name varchar(50),
age int
);

select * from newemployee;

insert into newemployee
select * from oldemployee
where age > 15;



































