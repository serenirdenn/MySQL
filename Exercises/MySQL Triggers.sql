/*Create a trigger that checks if the hire date of an employee is higher than the current date.
 If true, set this date to be the current date. Format the output appropriately (YY-MM-DD).*/
 
DELIMITER $$

CREATE TRIGGER trig_hire_date
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN 
	IF NEW.from_date > date_format(sysdate(), '%Y-%m-%d') THEN 
		SET NEW.from_date = date_format(sysdate(), '%Y-%m-%d'); 
	END IF; 
END $$

DELIMITER ;


INSERT INTO employees VALUES ('999904', '1970-01-31', 'John', 'Johnson', 'M', '2025-01-01');

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;