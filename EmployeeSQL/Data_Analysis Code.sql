
-- QUESTION 1
-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
LEFT JOIN salaries ON
employees.emp_no=salaries.emp_no;

-- QUESTION 2
-- 2. List employees who were hired in 1986.

SELECT emp_no, first_name, last_name, hire_date, EXTRACT(YEAR FROM hire_date) as test
FROM employees
WHERE EXTRACT(YEAR FROM hire_date)='1986';

-- QUESTION 3
-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

SELECT dm.dept_no, d.dept_name, dm.emp_no, emp.last_name, emp.first_name, dm.from_date, dm.to_date
FROM department_managers AS dm
	JOIN departments AS d
	ON (dm.dept_no = d.dept_no)
	JOIN employees AS emp
	ON (dm.emp_no = emp.emp_no);
	
-- QUESTION 4
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
	
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
	JOIN department_employees AS de
	ON (e.emp_no = de.emp_no)
	JOIN departments AS d
	ON (de.dept_no = d.dept_no);

-- QUESTION 5
-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
	
SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
	
-- QUESTION 6
-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
	JOIN department_employees AS de
	ON (e.emp_no = de.emp_no)
	JOIN departments AS d
	ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales';
	
-- QUESTION 7
-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
	JOIN department_employees AS de
	ON (e.emp_no = de.emp_no)
	JOIN departments AS d
	ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';
	
-- QUESTION 8
-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.	

SELECT last_name, COUNT(last_name) as employee_count FROM employees
GROUP BY last_name
ORDER by employee_count DESC;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

