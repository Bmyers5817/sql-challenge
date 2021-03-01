DROP TABLE IF EXISTS departments

CREATE TABLE departments (
    dept_no VARCHAR(30) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(50)   NOT NULL
);

DROP TABLE IF EXISTS titles
CREATE TABLE titles (
    title_ID VARCHAR(15) PRIMARY KEY NOT NULL,
    title VARCHAR(30) NOT NULL
);

DROP TABLE IF EXISTS employees
CREATE TABLE employees (
    emp_no INT PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR(15),
    birth_date date,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    sex VARCHAR(10),
    hire_date date,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

DROP TABLE IF EXISTS dept_emp
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(15) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

DROP TABLE IF EXISTS dept_manager
CREATE TABLE dept_manager (
    dept_no VARCHAR(15),
    emp_no INT PRIMARY KEY NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no) 
);

DROP TABLE IF EXISTS salaries
CREATE TABLE salaries (
    emp_no INT(15) NOT NULL,
    salary FLOAT   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
