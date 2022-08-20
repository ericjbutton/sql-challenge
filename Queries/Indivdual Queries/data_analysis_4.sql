--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select dept_emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
from dept_emp
join employees emp on dept_emp.emp_no = emp.emp_no
join departments dept on dept_emp.dept_no = dept.dept_no;
