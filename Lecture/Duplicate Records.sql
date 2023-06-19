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

/*verileri dublike etti*/
/*normalde 20 row data alrken aşağdaki kodu dahil edince 25 ro aldk sebebi
departments_dumpxdept_dump_managerin 2x4 (2 20 ye dahildi 4 daha dahil oldu d003den de 1 geldi) 
olarak d009 vermesi group by m.emp_no ekleyerek tekrar 20 yapabilrz*/
-- inner join
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY dept_no;


/*dept_no, emp_no,dept_name çkts geldi*/
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
