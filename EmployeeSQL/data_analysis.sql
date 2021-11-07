--part 1 of data analysis: list employee details: employee number, last name, first name, sex and salary
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from salaries
inner join employees on
employees.emp_no=salaries.emp_no;

create view employee_list as
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from salaries
inner join employees on
employees.emp_no=salaries.emp_no;

--part 2 of data analysis: list first name, last name and hire date for employees who were hired in 1986
select first_name, last_name, hire_date
from employees
where date_part('year', hire_date) = 1986;
--create view from query
create view hire_date_1986 as
select first_name, last_name, hire_date
from employees
where date_part('year', hire_date) = 1986;

--part 3: List the manager of each dept with dept number, dept name, manager's employee number, last name, first name
select department_manager.dept_no as "Department Number", 
	department.dept_name as "Department Name",
	department_manager.emp_no as "Employee Number",
	employees.last_name as "Last Name",
	employees.first_name as "First Name"
from employees
join department_manager
	join department
	on department_manager.dept_no=department.dept_no
on department_manager.emp_no = employees.emp_no;

--part 4 List the department of each employee with the following:
--employee number, last name, first name, department name
select employees.emp_no, 
	employees.last_name, 
	employees.first_name,
	department.dept_name
from employees
join department_employee
	join department on
	department_employee.dept_no = department.dept_no
on employees.emp_no = department_employee.emp_no;

--part 5 List first name, last name and sex for employees whose first
--name is "Hercules" and last names begin with "B".
Select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';

--part 6 List all employees in the sales department, including
--employee number, last name, first name and department name
Select employees.emp_no,
	employees.last_name,
	employees.first_name,
	department.dept_name
from employees
join department_employee
	join department on
	department_employee.dept_no = department.dept_no
on employees.emp_no=department_employee.emp_no
where dept_name = 'Sales';

--part 7 List all employees in the Sales and Development depts, 
--including employee number, last name, first name, and dept name
Select employees.emp_no,
	employees.last_name,
	employees.first_name,
	department.dept_name
from employees
join department_employee
	join department on
	department_employee.dept_no = department.dept_no
on employees.emp_no=department_employee.emp_no
where dept_name = 'Sales' or dept_name = 'Development';

--part 8 In descending order, list the frequency count of employee
--last names (how many share each last name)
select last_name, count(*)
from employees
group by last_name
order by count(*)desc;





