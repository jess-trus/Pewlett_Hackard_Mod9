--Find employee name, sex and salary
SELECT first_name, last_name, sex,
	(SELECT salary 
	 FROM salaries 
	 WHERE salaries.emp_no = employees.emp_no) as salary
FROM employees;

-- Find employees hired in 1986
SELECT first_name, last_name, hire_date
From employees
where hire_date between '1986-01-01' AND '1986-12-31'

-- Find department manager names, employee number and department 
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.first_name, e.last_name
FROM (
  SELECT DISTINCT dept_no
  FROM dept_manager
) AS dmd
JOIN dept_manager AS dm ON dmd.dept_no = dm.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no
JOIN departments AS d ON dm.dept_no = d.dept_no;

-- Find all employee names, employee number and department
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.first_name, e.last_name
FROM (
  SELECT DISTINCT dept_no
  FROM dept_emp
) AS dmd
JOIN dept_emp AS dm ON dmd.dept_no = dm.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no
JOIN departments AS d ON dm.dept_no = d.dept_no;

-- Find employees with first name "Hercules" and last name starting with "B"
SELECT first_name, last_name, sex
FROM employees
WHERE first_name= 'Hercules' and last_name like 'B%';

-- Find all employees in the Sales department
SELECT first_name, emp_no, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_emp
    WHERE dept_no IN (
        SELECT dept_no
        FROM departments as d
        WHERE dept_name = 'Sales'))

-- Find all employees in sales and development departments
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY d.dept_name, e.last_name, e.first_name;

--Find number of employees with each last name
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;


