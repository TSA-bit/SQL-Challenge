--list employee details: employee number, last name, first name, sex and salary
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from salaries
inner join employees on
employees.emp_no=salaries.emp_no;

create view employee_list as
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from salaries
inner join employees on
employees.emp_no=salaries.emp_no;