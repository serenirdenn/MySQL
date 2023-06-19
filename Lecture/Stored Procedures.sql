/*
USE employees;
*/

/* Part1 */

DROP procedure IF EXISTS select_employees;

DELIMITER $$
CREATE PROCEDURE select_employees()
BEGIN
          
			SELECT * FROM employees
			LIMIT 1000;
            
END$$

DELIMITER ;

/* Part2 */

/*
USE employees; 
DROP procedure IF EXISTS select_employees;

DELIMITER $$
CREATE PROCEDURE select_employees()
BEGIN
          
			SELECT * FROM employees
			LIMIT 1000;
            
END$$

DELIMITER ;
*/

call employees.select_employees();
/* database name.procedure name */

call employees.select_employees;

call select_employees();
/* use emp yaptğmz için çağrmş olduk employeese gerek yok*/	
call select_employees;

