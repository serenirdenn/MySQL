-- Old Join Syntax
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    e.hire_date
FROM
    employees e,
    dept_manager dm
WHERE
    e.emp_no = dm.emp_no;

-- New Join Syntax:
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    e.hire_date
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no; 
    /* Here we are getting data from the dept_manager table using the emp_no from the employee table. */
/* Extract a list containing information about all managers’ employee number, first and last name,
 department number, and hire date. Use the old type of join syntax to obtain the result.*/
