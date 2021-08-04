DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_managers;
DROP TABLE IF EXISTS salaries;

CREATE TABLE departments(
	dept_no VARCHAR(6) PRIMARY KEY
	,dept_name VARCHAR(30)
);

CREATE TABLE titles(
	title_id VARCHAR(6) PRIMARY KEY
	,title VARCHAR(20)
);

CREATE TABLE employees(
	emp_no INT PRIMARY KEY
	,title_id VARCHAR(20)
	,FOREIGN KEY (title_id) REFERENCES titles(title_id)
	,birth_date DATE
	,first_name VARCHAR(20)
	,last_name VARCHAR(20)
	,sex VARCHAR(1)
);

CREATE TABLE dept_emp(
	dept_no VARCHAR(6)
	,emp_no INT
	,FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_managers(
	dept_no VARCHAR(6)
	,emp_no INT
	,FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
	emp_no INT
	,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	,salaries INT
	,PRIMARY KEY (emp_no)
);