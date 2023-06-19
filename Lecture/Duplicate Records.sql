-- duplicate records
INSERT INTO dept_manager_dup 
VALUES 	('110228', 'd003', '1992-03-21', '9999-01-01');
        
INSERT INTO departments_dup 
VALUES	('d009', 'Customer Service');

-- dept_manager_dup
SELECT 
    *
FROM
    dept_manager_dup
ORDER BY dept_no ASC;

-- departments_dup
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no ASC;

/*it duplicated the data*/
/*While we normally get 20 rows of data, when we include the code below, we get 25 rows.
The reason is that departments_dump x dept_dump_manager gives d009 as 2x4 (2 included 20, 4 more included, 1 came from d003).
We can make 20 again by adding group by m.emp_no.) */
-- inner join
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY dept_no;


/*dept_no, emp_no,dept_name output came*/
/*
employees;
birth_date
emp_no
first_name
gender
hire_date
last_name

departments,
dept_name
dept_no


dept_manager;
dept_no
emp_no
from_date
to_Date

dept_manager_dup;
emp_no
dept_no
from_date
to_date

departments_dup;
dept_no
dept_name

*/

-- add GROUP BY m.emp_no
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        JOIN
    departments_dup d ON m.dept_no = d.dept_no
GROUP BY m.emp_no
ORDER BY dept_no;
