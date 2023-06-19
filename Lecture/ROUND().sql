SELECT 
    ROUND(AVG(salary))
FROM
    salaries;

SELECT 
    ROUND(AVG(salary), 2)
FROM
    salaries;
    
/*en yakn integer için round(avg(salary)) yeterli */