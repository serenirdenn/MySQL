/* Part1 */

-- dept_manager_dup
SELECT 
    *
FROM
    dept_manager_dup
ORDER BY dept_no;

-- departments_dup
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

/* Part2 */

SELECT 
    e.hire_datem.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;
/*inner joins extract only records in which the values in the related columns match ,
 null values or nor appearing in the other , are not displayed */
