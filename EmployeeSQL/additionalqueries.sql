-- What salary information is there for employee #499942
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.emp_title_id, titles.title, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no=salaries.emp_no
JOIN titles ON employees.emp_title_id=titles.title_id
WHERE employees.emp_no = 499942;

-- What is the average salary by sex
SELECT employees.sex, AVG(salaries.salary) AS "Average Salary"
FROM employees
JOIN salaries ON employees.emp_no=salaries.emp_no
GROUP BY employees.sex;

-- What is the average salary by title
SELECT titles.title, AVG(salaries.salary) AS "Average Salary"
FROM employees
JOIN salaries ON employees.emp_no=salaries.emp_no
JOIN titles ON employees.emp_title_id=titles.title_id
GROUP BY titles.title;