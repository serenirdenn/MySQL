SELECT 
    COUNT(emp_no)
FROM
    employees;
     /* how many employees are there? */
    
Select*from employees where first_name is null;
    
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NULL;
    
SELECT 
    COUNT(first_name)
FROM
    employees;

SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;
/* 1275 people has different names */
