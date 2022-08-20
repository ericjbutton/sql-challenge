--List first name, last name, and hire date 
--for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date like '%1986';


