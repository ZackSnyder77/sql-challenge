
-- QUESTION 1
-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.

-- SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
-- FROM salaries
-- LEFT JOIN employees ON
-- employees.emp_no=salaries.emp_no;


-- QUESTION 2
-- 2. List employees who were hired in 1986.

-- SELECT emp_no, first_name, last_name, hire_date, EXTRACT(YEAR FROM hire_date) as test
-- FROM employees
-- WHERE EXTRACT(YEAR FROM hire_date)='1986';

SELECT * FROM department_managers;

SELECT * FROM departments;

SELECT * FROM employees;