--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
select dept_m.dept_no, dept.dept_name, dept_m.emp_no, emp.last_name, emp.first_name
from dept_manager dept_m
join departments dept on dept_m.dept_no = dept.dept_no
join employees emp on dept_m.emp_no = emp.emp_no

