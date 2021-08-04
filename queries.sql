SELECT e.emp_no
	, last_name
	, first_name
	, sex
	, s.salaries
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

SELECT first_name
	, last_name
	, start_date
FROM employees
WHERE start_date BETWEEN '1986-01-01' AND '1987-01-01';

SELECT d.dept_no
	, d.dept_name
	, dm.emp_no
	, e.first_name
	, e.last_name
FROM dept_managers dm
JOIN departments d
ON dm.dept_no = d.dept_no
JOIN employees e
ON dm.emp_no = e.emp_no;

SELECT e.emp_no
	, e.last_name
	, e.first_name
	, d.dept_name
FROM dept_emp 
JOIN employees e
ON dept_emp.emp_no = e.emp_no
JOIN departments d
ON dept_emp.dept_no = d.dept_no;

SELECT first_name
	, last_name
	, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT e.emp_no
	, e.last_name
	, e.first_name
	, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

SELECT e.emp_no
	, e.last_name
	, e.first_name
	, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

SELECT last_name
	,COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
