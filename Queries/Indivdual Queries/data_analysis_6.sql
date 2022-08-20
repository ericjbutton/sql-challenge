--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select dept_emp.emp_no, emp.last_name, emp.first_name, dept.dept_name  
from departments dept
join dept_emp on dept.dept_no = dept_emp.dept_no
join employees emp on dept_emp.emp_no = emp.emp_no
where dept_name = 'Sales'