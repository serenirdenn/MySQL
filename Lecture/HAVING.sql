SELECT 
    *
FROM
    employees
WHERE
    hire_date >= '2000-01-01';
    
SELECT 
    *
FROM
    employees
HAVING
    hire_date >= '2000-01-01';


SELECT 
    first_name, COUNT(first_name) as names_count
FROM
    employees
WHERE
    COUNT(first_name) > 250
GROUP BY first_name
ORDER BY first_name;


SELECT 
    first_name, COUNT(first_name) as names_count
FROM
    employees
     /*where de runlamaz */
GROUP BY first_name
HAVING COUNT(first_name) > 250
ORDER BY first_name;