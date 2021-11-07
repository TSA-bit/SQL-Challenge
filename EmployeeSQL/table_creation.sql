--create new tables

Create Table department (
	dept_no VARCHAR not null,
	dept_name VARCHAR not null,
	Primary Key (dept_no)
	);

--drop table if exists
drop table department_employee;
--create new table
Create Table department_employee (
	emp_no integer not null,
	dept_no VARCHAR not null,
	foreign key(dept_no) references department (dept_no)
	);

Create table job_title (
	title_id VARCHAR not null,
	title VARCHAR not null,
	primary key (title_id)
	);

Create table employees (
	emp_no integer not null,
	emp_title_id VARCHAR not null,
	birth_date date not null,
	first_name VARCHAR not null,
	last_name VARCHAR not null,
	sex VARCHAR not null,
	hire_date date not null,
	primary key (emp_no),
	foreign key(emp_title_id) references job_title (title_id)
	);

drop table department_manager;
Create table department_manager (
	dept_no VARCHAR not null,
	emp_no integer not null,
	foreign key(dept_no) references department(dept_no),
	foreign key(emp_no) references employees(emp_no)
	);

Create table salaries (
	emp_no integer not null,
	salary integer not null,
	primary key (emp_no)
	);


	
	
	