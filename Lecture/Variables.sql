set @v_avg_salary = 0;
call employees.emp_avg_salary_out(11300, @v_avg_salary);
select @v_avg_salary;

/*v is used instead of p since it is a variable not a parameter*/
