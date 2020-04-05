CREATE TABLE departments (
	dept_no VARCHAR(10) NOT NULL,
	dept_name VARCHAR(25)
);

CREATE TABLE department_employees (
	emp_no INTEGER,
	dept_no VARCHAR(10),
	from_date DATE,
	to_date DATE
);

CREATE TABLE department_managers (
	dept_no VARCHAR(10),
	emp_no INTEGER,
	from_date DATE,
	to_date DATE
);

CREATE TABLE employees (
	emp_no INTEGER,
	birth_date DATE,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	gender VARCHAR(2),
	hire_date DATE
);

CREATE TABLE salaries (
	emp_no INTEGER,
	salary INTEGER,
	from_date DATE,
	to_date DATE
);

CREATE TABLE titles(
	emp_no INTEGER,
	title VARCHAR(25),
	from_date DATE,
	to_date DATE

);