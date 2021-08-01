CREATE TABLE departments(
	dept_no VARCHAR(6),
	dept_name VARCHAR(30)
);

CREATE TABLE titles(
	title_id VARCHAR(6)
	title
);

CREATE TABLE employees(
	emp_no INT
	FOREIGN KEY (title_id) REFERENCES title(title_id)
	birth_date DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR(1)
);

CREATE TABLE dept_emp(
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp(
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
	FOREIGN KEY (emp_no),
	salaries INT
);