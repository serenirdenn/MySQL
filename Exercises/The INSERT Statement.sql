/* Part1 */

SELECT 
    *
FROM
    titles
LIMIT 10; 
 
INSERT INTO titles
(
	emp_no,
    title,
    from_date
)
VALUES
(
	999903,
    'Senior Engineer',
    '1997-10-01'
);

SELECT 
    *
FROM
    titles
ORDER BY emp_no DESC;

/* Part2 */

SELECT 
    *
FROM
    dept_emp
ORDER BY emp_no DESC
LIMIT 10;
 
INSERT INTO dept_emp
(
	emp_no,
    dept_no,
    from_date,
    to_date
)
VALUES
(
	999903,
    'd005',
    '1997-10-01',
    '9999-01-01'
);