/* 
CREATE DATABASE IF NOT EXISTS Sales;
USE Sales;
*/

/*Use the same SELECT statement structure 
as the one shown in the lecture to select all 
records from the “sales” table. Do it twice – 
once specifying the name of the database explicitly 
in the SELECT statement, and once, without that specification.*/

SELECT * FROM customers;

SELECT * FROM sales.customers;

