#ALL and ANY Clause: They are logical operators in SQL and return boolean values as a result:

#SQL | ALL and ANY:

*In SQL, the ALL and ANY operators are logical operators used to compare a value with a set of values returned by a subquery. 

*These operators provide powerful ways to filter results based on a range of conditions.

#What is the SQL ALL Operator?:

*The ALL operator is used to compare a value with all the values returned by a subquery. 
*The condition will be evaluated to TRUE if the value meets the specified condition for every value in the result set of the subquery.

*The ALL must be preceded by comparison operators and evaluates true if all of the subqueries values meet the condition.
ALL is used with SELECT, WHERE, and HAVING statements.


syntax:

SELECT column_name(s)
FROM table_name
WHERE column_name comparison_operator ALL
  (SELECT column_name
   FROM table_name
   WHERE condition(s));

*comparison_operator: This is the comparison operator that can be one of =, >, <, >=, <=, <>, etc.

*subquery: A query that returns the set of values to be compared with the column in the outer query.

select * from product;

create table product(
productid int,
productname varchar(100),
supplierid int,
categoryid int,
price int
);

insert into product (productid,productname,supplierid,categoryid,price)
values (1,'chais',1,1,18);

insert into product (productid,productname,supplierid,categoryid,price)
values (2,'chang',1,1,19),
(3,'aniseed',1,2,10),
(4,'chief antos',2,2,22),
(5,'gumbo mix',2,2,21),
(6,'boysenbery',3,2,25),
(7,'organic dried',3,7,30),
(8,'northwoods',3,2,40),
(9,'mishi kobe niku',4,6,97);

insert into product (productid,productname,supplierid,categoryid,price)
values (2,'chang',1,1,19)

select * from product;

select * from order;

create table order_tb(
orderdetails_id int ,
orderid int,
productid int,
quantity int 
);

select * from order_tb;

insert into order_tb (orderdetails_id,orderid,productid,quantity)
values (1,10248,1,12);


insert into order_tb (orderdetails_id,orderid,productid,quantity)
values (2,10248,2,15),
(3,10248,3,2),
(4,10249,4,5),
(5,10249,6,10),
(6,10241,7,20),
(7,10250,8,5),
(8,10252,9,8),
(9,10253,10,25);

select * from order_tb;

#Example 1 : Retrieve all product names from the Products table:


select * from product;

select productname from product;

Query:

SELECT ALL  productname
FROM Product
WHERE true;

select productname from product;

#Retrieve product names if all records in the OrderDetails table have a quantity of 6 or 2:

SELECT ProductName
FROM Product
WHERE ProductID = ALL (SELECT ProductID
                       FROM Order_tb
                       WHERE Quantity = 6 OR Quantity = 10);

SELECT ProductName
FROM Product
WHERE ProductID = ALL (SELECT ProductID
                       FROM Order_tb
                       WHERE Quantity = 6 OR Quantity = 2);



select * from product;

Example 3 : Find the OrderIDs where the maximum quantity in the order exceeds the average quantity of all orders.

Query:
--not understanding this query:
SELECT OrderID
FROM Order_tb
GROUP BY OrderID
HAVING MAX(Quantity) > ALL (SELECT AVG(Quantity) 
                            FROM Order_tb
                            GROUP BY OrderID);

SELECT OrderID
FROM Order_tb
GROUP BY OrderID;

SELECT OrderID
FROM Order_tb
GROUP BY orderid
HAVING MAX(Quantity);

SELECT AVG(Quantity) FROM Order_tb GROUP BY OrderID;

select * from order_tb;
---------------------------------------------------------------------------------------------------------------------------------------------------

#What is the SQL ANY Operator?

*ANY compares a value to each value in a list or results from a query and evaluates to true if the result of an inner query contains at least one row.

*ANY return true if any of the subqueries values meet the condition.

*ANY must be preceded by comparison operators.

Syntax:

SELECT column_name(s)
FROM table_name
WHERE column_name comparison_operator ANY
  (SELECT column_name
   FROM table_name
   WHERE condition(s));

#How to Use SQL ANY with SELECT, WHERE, and HAVING:

#Example 1 : Find distinct category IDs of products that appear in the OrderDetails table:

Query:

SELECT DISTINCT CategoryID
FROM Product
WHERE ProductID = ANY (SELECT ProductID 
                       FROM order_tb);

Example 2 : Find product names with a quantity of 9 in the OrderDetails table.

Query:

SELECT ProductName
FROM Product
WHERE ProductID = ANY (SELECT ProductID
                       FROM Order_tb
                       WHERE Quantity = 10);

SELECT ProductName
FROM Product
WHERE ProductID = ANY (SELECT ProductID
                       FROM Order_tb
                       WHERE Quantity = 5);

select * from product;

select * from order_tb;



------------------------------------------------------------------------------------------------------------------------------------------------------
#TOP Clause in Microsoft SQL Server:

*TOP clause in Microsoft SQL Server fetches a limited number of rows from a database.

*The SELECT TOP clause is very useful when dealing with large databases. The TOP clause is useful for fetching the data records in larger datasets as it reduces the complexity.

#Syntax:

*TOP clause syntax in Microsoft SQL Server is:

SELECT TOP value column1, column2
FROM table_name;


#Syntax Using Percent:

SELECT TOP value PERCENT column1, column2
FROM table_name;

#Microsoft SQL Server TOP Clause Examples:

Query:
SELECT TOP 2 * FROM Customer;

select * from customer;

SELECT TOP with WHERE clause example
We can fetch data records by using a where clause with some condition was well.

Query:

SELECT TOP 1 * FROM Customer
WHERE Country='usa';

SELECT TOP 5 * FROM Customer;




















