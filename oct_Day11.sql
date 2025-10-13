#Day 13 to Day 18: Aggregate Functions:

*DISTINCT Clause: It will select only the distinct data, not repetitive.

*Count Function: Returns the total count of the data filtered.

*Sum Function: Return the sum of all the data being queried.

*Average Function: Return the average of all the data being queried.

*Minimum Function: It will return the minimum data from the whole data that is being queried.

*Maximum Function: It will return the maximum data from the whole data that is being queried.

*ORDER BY: This statement will order the queried data as per your convenience in ascending or descending order.

*GROUP BY: This statement will group all your queried data with the column given in the condition.

*ALL and ANY Clause: They are logical operators in SQL and return boolean values as a result.

*TOP Clause: Used to fetch the limited number of rows from a database.


#DISTINCT Clause: It will select only the distinct data, not repetitive.

#SQL Distinct Clause:

 *The DISTINCT keyword in SQL is used to retrieve only unique values, eliminating duplicates from query results. 
 *It ensures data accuracy and is often used with the SELECT statement for clean, precise reporting.
 
Syntax: 

SELECT DISTINCT column1, column2 
FROM table_name

Parameters:
*column1, column2: Names of the fields of the table.
*Table_name: Table from where we want to fetch the records.


CREATE TABLE students (
  ROLL_NO INT,
  NAME VARCHAR(50),
  ADDRESS VARCHAR(100),
  PHONE VARCHAR(20),
  AGE INT
);

select * from students;

INSERT INTO students (ROLL_NO, NAME, ADDRESS, PHONE, AGE)
VALUES 
  (1, 'Shubham Kumar', '123 Main Street, Bangalore', '9876543210', 23),
  (2, 'Shreya Gupta', '456 Park Road, Mumbai', '9876543211', 23),
  (3, 'Naveen Singh', '789 Market Lane, Delhi', '9876543212', 26),
  (4, 'Aman Chopra', '246 Forest Avenue, Kolkata', '9876543213', 22),
  (5, 'Aditya Patel', '7898 Ocean Drive, Chennai', '9876543214', 27),
  (6, 'Avdeep Desai', '34 River View, Hyderabad', '9876543215', 24),
  (7, 'Shubham Kumar', '123 Main Street, Bangalore', '9876543210', 23),  -- Duplicate
  (8, 'Shreya Gupta', '456 Park Road, Mumbai', '9876543211', 23),  -- Duplicate
  (9, 'Naveen Singh', '789 Market Lane, Delhi', '9876543212', 26),  -- Duplicate
  (10, 'Aditya Patel', '7898 Ocean Drive, Chennai', '9876543214', 27),  -- Duplicate
  (11, 'Aman Chopra', '246 Forest Avenue, Kolkata', '9876543213', 22),  -- Duplicate
  (12, 'Avdeep Desai', '34 River View, Hyderabad', '9876543215', 24);  -- Duplicate

  
  select * from students;
  
 #Example 1: Fetch Unique Names from the NAME Field:
 
*The query returns only unique names, eliminating the duplicate entries from the table.

Query:

SELECT DISTINCT NAME FROM students;

#Example 2: Fetching Unique Combinations of Multiple Columns:

*This query retrieves distinct combinations of NAME and AGE — if two rows have the same name and age, only one of them will appear in the result set.

Query:

SELECT DISTINCT NAME, AGE FROM students;
  
#Example 3: Using DISTINCT with the ORDER BY Clause:

*We can combine the DISTINCT keyword with the ORDER BY clause to filter unique values while sorting the result set. This query retrieves the unique ages from the students table and sorts them in ascending order

Query:

SELECT DISTINCT AGE FROM students ORDER BY AGE;  
  
 #Example 4: Using DISTINCT with Aggregate Functions (e.g., COUNT()):

 *Here, we will check the COUNT() function with a DISTINCT clause, which will give the total number of students by using the COUNT() function.

Query:

SELECT COUNT(DISTINCT ROLL_NO)  FROM Students ;

select * from students;

select count(distinct age) from students;

select max(age) from students;

select min(age) from students;ALTER 

#Example 5: DISTINCT with NULL Values:

*In SQL, the DISTINCT keyword treats NULL as a unique value.
*NULL is treated as a distinct value, so it will appear only once if there are multiple NULLs.

Query:

INSERT INTO students (ROLL_NO, NAME, ADDRESS, PHONE, AGE)
VALUES (13, 'John Doe', '123 Unknown Street', '9876543216', NULL);

select * from students;

SELECT DISTINCT AGE FROM students;

select distinct(age ) from students;
 

----------------------------------------------------------------------------------------------------------------------------------------------------

#Count Function: Returns the total count of the data filtered:

#SQL Aggregate functions:

*SQL Aggregate Functions are used to perform calculations on a set of rows and return a single value.
*These functions are particularly useful when we need to summarize, analyze or group large datasets in SQL databases.

*They are often used with GROUP BY clause in SQL to summarize data for each group.
*Commonly used aggregate functions include 
*COUNT(), 
*SUM(),
*AVG(),
*MIN() ,
*MAX().


Commonly Used SQL Aggregate Functions:

1. Count():

*It is used to count the number of rows in a table.
*It helps summarize data by giving the total number of entries. 
*It can be used in different ways depending on what you want to count:

*COUNT(*): Counts all rows.

*COUNT(column_name): Counts non-NULL values in the specified column.

*COUNT(DISTINCT column_name): Counts unique non-NULL values in the column.

Examples:

-- Total number of records in the table
SELECT COUNT(*) AS TotalRecords FROM Employee;

-- Count of non-NULL salaries
SELECT COUNT(Salary) AS NonNullSalaries FROM Employee;

-- Count of unique non-NULL salaries
SELECT COUNT(DISTINCT Salary) AS UniqueSalaries FROM Employee;

2. SUM()

*It is used to calculate the total of a numeric column.
*It adds up all non-NULL values in that column for Example, SUM(column_name) returns sum of all non-NULL values in the specified column.

Examples:

select *  from employee;

-- Calculate the total salary
SELECT SUM(Salary) AS TotalSalary FROM Employee;

-- Calculate the sum of unique salaries
SELECT SUM(DISTINCT Salary) AS DistinctSalarySum FROM Employee;

3. AVG()
*It is used to calculate average value of a numeric column.
*It divides sum of all non-NULL values by the number of non-NULL rows for Example, AVG(column_name) returns average of all non-NULL values in the specified column.


Examples:

-- Calculate the average salary
SELECT AVG(Salary) AS AverageSalary FROM Employee;

-- Average of distinct salaries
SELECT AVG(DISTINCT Salary) AS DistinctAvgSalary FROM Employee;


4. MIN() and MAX():

*The MIN() and MAX() functions return the smallest and largest values, respectively, from a column.

Examples:

-- Find the highest salary
SELECT MAX(Salary) AS HighestSalary FROM Employee;

-- Find the lowest salary
SELECT MIN(Salary) AS LowestSalary FROM Employee;

1. Count Total Number of Employees:


SELECT COUNT(*) AS TotalEmployees FROM Employee;

2. Calculate Total Salary:

SELECT SUM(Salary) AS TotalSalary FROM Employee;

3. Find Average Salary:

SELECT AVG(Salary) AS AverageSalary FROM Employee;

4. Find Highest and Lowest Salary:

SELECT MAX(Salary) AS HighestSalary FROM Employee;

select min(salary) as lowestsalary from employee;

-----------------------------------------------------------------------------------------------------------------------------------------------------------

#ORDER BY: This statement will order the queried data as per your convenience in ascending or descending order.:

#SQL ORDER BY:

*The ORDER BY clause in SQL is used to sort query results based on one or more columns in either ascending (ASC) or descending (DESC) order.
*Whether you are presenting data to users or analyzing large datasets, sorting the results in a structured way is essential.

*By default, it sorts in ascending order (lowest to highest).

*To sort in descending order, use the DESC keyword.

Syntax:

SELECT * FROM table_name ORDER BY column_name ASC | DESC;

Key Terms:

*table_name: name of the table.

*column_name: name of the column according to which the data is needed to be arranged.

*ASC: to sort the data in ascending order.

*DESC: to sort the data in descending order.

SQL ORDER BY Clause Examples:

select * from students;

Query:

SELECT * FROM students ORDER BY ROLL_NO DESC;

select * from students order by roll_no;

#Example 2 : Sort by Multiple Columns:

Query:

SELECT * FROM students ORDER BY age DESC , name ASC;


#Example of Sorting By Column Number:

*Here we take an example to sort a database table according to column 1 i.e Roll Number. For this a query will be:

Query:

CREATE TABLE studentinfo
( Roll_no INT,
NAME VARCHAR(25),
Address VARCHAR(20),
CONTACTNO BIGINT NOT NULL,
Age INT ); 

select * from studentinfo;

INSERT INTO studentinfo
VALUES (7,'ROHIT','GHAZIABAD',9193458625,18),
(4,'DEEP','RAMNAGAR',9193458546,18),
(1,'HARSH','DELHI',9193342625,18),
(8,'NIRAJ','ALIPUR',9193678625,19),
(5,'SAPTARHI','KOLKATA',9193789625,19),
(2,'PRATIK','BIHAR',9193457825,19),
(6,'DHANRAJ','BARABAJAR',9193358625,20),
(3,'RIYANKA','SILIGURI',9193218625,20);

SELECT Roll_no, Name, Address
FROM studentinfo
ORDER BY 1

-----------------------------------------------------------------------------------------------------------------------------------------------------------

 































































