#Day 19 to Day 24: Joins in SQL:

*Union Clause: Just like the mathematical union operator, this clause will make the union of the tables given.

*Intersection Clause: It will join the two or more tables where they are intersecting.

*Aliases: It will give an alias to the table which we can refer to later.

*Cartesian Join and Self Join: Sometimes to query out some data, we have to self join the table to itself.

*Inner, Left, Right and Full Joins: These four types of joining comes into play when we have to join one table with another. Look upon their syntax and learn to deal with these joins.

*Division Clause: Division is typically required when you want to find out entities that are interacting with all entities of a set of different types of entities.

*Using Clause: If several columns have the same names but the datatypes do not match, the NATURAL JOIN clause can be modified with the USING clause to specify the columns that should be used for an EQUIJOIN.

*Combining values: Combining aggregate and non-aggregate values in SQL using Joins and Over clause.

*MINUS Operator: It is used as "except" which means it will join the two intersecting tables and will minus one table so that only the intersection and the other table are covered.

*Joining 3 or more tables: Although used very rarely but this will make you learn and understand how to join 3 or more tables and then carry out the querying operations.



#Union Clause: Just like the mathematical union operator, this clause will make the union of the tables given:

#SQL | Union Clause:
*The UNION clause in SQL is a powerful tool used to combine the results of two or more SELECT statements into a single result set.

*It ensures that duplicate rows are removed by default, providing only distinct values.

*To include duplicate values as well, the UNION ALL clause is used.


#Union Clause in SQL:

*Removes Duplicate Rows: The UNION clause ensures that only distinct rows are returned in the result set.

*Includes Duplicates with UNION ALL: The UNION ALL clause returns all rows, including duplicates.

*Compatible Data: The columns in each SELECT query must have the same number, order, and data type.

Syntax:

UNION:

SELECT column_name(s) FROM table1  
UNION 
SELECT column_name(s) FROM table2;

UNION ALL:

SELECT column_name(s) FROM table1 
UNION ALL
SELECT column_name(s) FROM table2;


select * from student;

--select * from students;

select * from StudentsNames;

exec sp_tables;

Example 1: Using UNION to Fetch Distinct students_id:

Query:

select studentid from student union select studentid from studentsnames;


Example 2: Using UNION ALL to Include Duplicates:

Query:

select studentid from student union all select studentid from studentsnames;

Example 3: Using UNION ALL with Conditions

Query:

SELECT studentid,NAME FROM Student WHERE studentid>3 
UNION ALL
SELECT studentid,Name FROM StudentsNames WHERE studentid<3
ORDER BY 1; 

SELECT studentid,NAME FROM Student WHERE studentid>3 
UNION ALL
SELECT studentid,Name FROM StudentsNames WHERE studentid<3
ORDER BY 2; 

-----------------------------------------------------------------------------------------------------------------------------------------------------
#Intersection Clause: It will join the two or more tables where they are intersecting.

#SQL | Intersect & Except clause:

*In SQL, INTERSECT and EXCEPT are set operations used to compare results from two SELECT statements. 

*INTERSECT returns only the rows that are common to both queries. 

*EXCEPT returns the rows that are in the first query but not in the second.

INTERSECT Clause:

Syntax:

SELECT column-1, column-2 …… 
FROM table 1
WHERE…..

INTERSECT

SELECT column-1, column-2 …… 
FROM table 2
WHERE…..

*Retrieves selected columns (column-1, column-2…) from two tables.

*INTERSECT returns only the rows that are common to both SELECT statements.

*The WHERE clauses filter data in each query before finding the intersection

Query:

select studentid from student  intersect  select studentid from studentsnames; 

select * from employee;

select * from emp

select * from employees;

exec sp_tables;

SELECT emp_no, Name,sal 
FROM emp
LEFT JOIN employees
ON emp.emp_no  = Employees.EmpID

create table em(
id int,
name varchar(50),
age int,
city varchar(50)
);

select * from em;

insert into em(id,name,age,city) 
values (1,'suresh',24,'delhi'),
(2,'ramesh',23,'pune'),
(3,'kashish',34,'agra');


select * from em;

create table emplo (
bonus_id int,
employee_id int,
bonus int
);

select * from emplo; 

insert into emplo(bonus_id,employee_id,bonus)
values (43,1,'20000'),
(45,3,'10000');


alter table emplo
alter column bonus varchar(10);

select * from emplo;

select * from em;

SELECT ID, Name, Bonus 
FROM em
LEFT JOIN emplo
ON em.ID = emplo.employee_id;

SELECT ID, Name, Bonus 
FROM em
right JOIN emplo
ON em.ID = emplo.employee_id;

insert into emplo (bonus_id,employee_id,bonus)
values (47,4,'4000');

INSERT into em(id,name,age,city) values (5,'rock',40,'mumbai')

#EXCEPT Clause:
*The EXCEPT clause returns rows that are in the first SELECT query but not in the second.
*It is used to find data present in one set and missing in another.

Syntax:

SELECT column-1, column-2 …… 
FROM table 1
WHERE…..

EXCEPT

SELECT column-1, column-2 …… 
FROM table 2
WHERE…..

 
SELECT ID, Name, Bonus 
FROM
em
LEFT JOIN
emplo
ON em.ID = emplo.Employee_ID

EXCEPT

SELECT ID, Name, Bonus 
FROM
em
RIGHT JOIN
emplo
ON em.ID = emplo.Employee_ID;

































