-- List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
from employees e
join salaries s on e.emp_no = s.emp_no

--List first name, last name, and hire date 
--for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date like '%1986';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
select dept_m.dept_no, dept.dept_name, dept_m.emp_no, emp.last_name, emp.first_name
from dept_manager dept_m
join departments dept on dept_m.dept_no = dept.dept_no
join employees emp on dept_m.emp_no = emp.emp_no

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select dept_emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
from dept_emp
join employees emp on dept_emp.emp_no = emp.emp_no
join departments dept on dept_emp.dept_no = dept.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select dept_emp.emp_no, emp.last_name, emp.first_name, dept.dept_name  
from departments dept
join dept_emp on dept.dept_no = dept_emp.dept_no
join employees emp on dept_emp.emp_no = emp.emp_no
where dept_name = 'Sales'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select dept_emp.emp_no, emp.last_name, emp.first_name, dept.dept_name  
from departments dept
join dept_emp on dept.dept_no = dept_emp.dept_no
join employees emp on dept_emp.emp_no = emp.emp_no
where dept_name = 'Sales' or dept_name ='Development'

--List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc