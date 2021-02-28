-- Data Analysis #1 
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary  
INTO TABLE employee_info
FROM employees
LEFT JOIN salaries 
ON employees.emp_no = salaries.emp_no;

-- Data Analysis #2 
SELECT employees.first_name, employees.last_name, employees.hire_date
INTO TABLE hire_date_filter
FROM employees
select * from hire_date_filter
WHERE hire_date between '1986-01-01' and '1986-12-31';

-- Data Analysis #3
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
INTO TABLE manager_department_info
FROM departments
LEFT JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
LEFT JOIN employees
ON dept_manager.emp_no = employees.emp_no;

-- Data Analysis #4
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
INTO TABLE employee_department
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments 
ON dept_emp.dept_no = departments.dept_no;

-- Data Analysis #5
SELECT employees.first_name, employees.last_name, employees.sex
INTO TABLE hercules_b_filter
FROM employees
SELECT * FROM hercules_b_filter
WHERE first_name like 'Hercules'
AND last_name like 'B%';

-- Data Analysis #6
SELECT * FROM employee_department 
WHERE dept_name like 'Sales';

-- Data Analysis #7 
SELECT * FROM employee_department 
WHERE dept_name like 'Sales' 
OR dept_name like 'Development';

-- Data Analysis #8
SELECT last_name as "last name",
count(last_name)
FROM employees
GROUP BY last_name
ORDER BY "count" DESC; 
