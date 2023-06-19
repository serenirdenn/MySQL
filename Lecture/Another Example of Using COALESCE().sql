SELECT 
    dept_no,
    dept_name,
    COALESCE('deparment manager name') AS fake_col
FROM
    departments_dup;
    

SELECT 
    dept_no,
    dept_name,
    IFNULL('deparment manager name') AS fake_col
FROM
    departments_dup;
