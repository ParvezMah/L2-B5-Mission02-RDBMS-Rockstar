-- Active: 1747587952649@@127.0.0.1@5432@ph
SELECT * FROM employees;

CREATE VIEW dept_avg_salary
AS
SELECT department_name, avg(salary) FROM employees group by department_name;

SELECT department_name, avg(salary) FROM employees group by department_name;

SELECT * FROM dept_avg_salary;

SELECT employee_name, salary, department_name 
from employees
WHERE department_name IN
-- (SELECT department_name, hire_date FROM employees WHERE department_name LIKE '%R%')
(SELECT department_name FROM employees WHERE department_name LIKE '%R%')

CREATE VIEW test_view
AS
SELECT employee_name, salary, department_name 
from employees
WHERE department_name IN
-- (SELECT department_name, hire_date FROM employees WHERE department_name LIKE '%R%')
(SELECT department_name FROM employees WHERE department_name LIKE '%R%');

SELECT * FROM test_view;