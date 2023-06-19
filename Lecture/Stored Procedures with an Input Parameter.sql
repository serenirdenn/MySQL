USE employees;
DROP procedure IF EXISTS emp_salary;

DELIMITER $$
CREATE PROCEDURE emp_salary(IN p_emp_no INTEGER)
BEGIN
SELECT 
    e.first_name, e.last_name, s.salary, s.from_date, s.to_date
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.emp_no = p_emp_no;
END$$

DELIMITER ;
/* After doing this, when you press the lightning in the stored procedure section, 
it will ask for an emp number, and when you enter an emp number, all contracts about that person will appear**/

-- emp_avg_salary with SELECT e.first_name, e.last_name, avg(s.salary)
DROP procedure IF EXISTS emp_avg_salary;

DELIMITER $$
CREATE PROCEDURE emp_avg_salary (in p_emp_no integer)
BEGIN
SELECT 
    e.first_name, e.last_name, avg(s.salary)
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.emp_no = p_emp_no;
END$$

DELIMITER ;

CALL emp_avg_salary(11300);
