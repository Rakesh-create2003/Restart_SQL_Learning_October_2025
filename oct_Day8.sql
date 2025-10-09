#Arithmetic Operators: Using arithmetic operators to filter the data conveniently and precisely:

#SQL | Arithmetic Operators:

*Arithmetic operators in SQL are used to perform mathematical operations on table data. 
*These operators help in calculating totals, differences, percentages, and other numeric transformations directly in queries.

These operations can be applied to:

*A single column
*Two or more columns
*Constant values with column data

#List of Arithmetic Operators in SQL:

Operator	                Description
+	                         Addition
-	                         Subtraction
/	                         Division
*	                         Multiplication
%	                         Modulus (Remainder)


1. Addition (+):

*The addition operator is used to sum values. Performs addition between:

*Column and constant
*Two columns

#Example 1: Addition with constant:

Query:

create TABLE addition(
emp_id INT,
name varchar(50),
salary int
);

select * from addition;

insert into addition(emp_id,name,salary)
values (1,'vip',20000),
(2,'mr',3000),
(3,'svs',40000),
(4,'mrp',50000),
(5,'pip',2000)

select * from addition;

SELECT emp_id,name, salary, 
       salary + 100 AS "salary + 100"
FROM addition;

Example 2: Addition of two columns

SELECT emp_id,name, salary, 
       salary + emp_id AS "salary + employee_id"
FROM addition;

 2. Subtraction (-):
*The subtraction operator deducts one value from another. Performs subtraction between:

*Column and constant
*Two columns

#Example 1: Subtracting a constant

SELECT emp_id, name, salary, 
       salary - 100 AS "salary - 100"
FROM addition;

Example 2: Subtracting one column from another:

SELECT emp_id, name, salary, 
salary - emp_id AS "salary - employee_id"
FROM addition ;

3. Multiplication (*)

*The multiplication operator multiplies values by constants or other column values. It multiplies:

*Column and constant
*Two columns

Example 1: Multiplying with a constant

SELECT emp_id, name, salary, 
       salary * 100 AS "salary * 100"
FROM addition;

Example 2: Multiplying two columns:

SELECT emp_id, name, salary, 
       salary * emp_id AS "salary * employee_id"
FROM addition;

5. Division (/):

*The division operator divides one value by another. Example for division is similar to multiplication but returns quotient instead of product.

Example:

SELECT emp_id, name, salary, 
       salary / 100 AS "salary / 100"
FROM addition;

6. Modulus (%):

*The modulus operator returns the remainder of a division.

Useful for:

*Even/Odd check
*Pattern-based calculations

#Example 1: Modulus with constant:

SELECT emp_id, name, salary, 
       salary % 25000 AS "salary % 25000"
FROM addition;

Example 2: Modulus between columns

SELECT emp_id,name, salary, 
       salary % emp_id AS "salary % employee_id"
FROM addition;	

7. Arithmetic Operations with NULL
When any arithmetic operation is performed on a NULL value, the result is always NULL.

 



















