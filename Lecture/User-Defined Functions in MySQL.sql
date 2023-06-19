USE employees;
DROP FUNCTION IF EXISTS f_emp_avg_salary;

DELIMITER $$
CREATE FUNCTION f_emp_avg_salary (p_emp_no INTEGER) RETURNS DECIMAL(10,2)

/*buraya kod versiyon uymadğndn hata aldğ için deterministic ekledik*/

/*DETERMINISTIC – it states that the function will always return identical result given the same input
 NO SQL – means that the code in our function does not contain SQL (rarely the case)
 READS SQL DATA – this is usually when a simple SELECT statement is present
*/

Deterministic
BEGIN

DECLARE v_avg_salary DECIMAL(10,2);

/*we use not set ,declare is the way used to create variables visible to the body object*/

SELECT 
    AVG(s.salary)
INTO v_avg_salary FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.emp_no = p_emp_no;

RETURN v_avg_salary;
END$$

DELIMITER ;


SELECT f_emp_avg_salary(11300);