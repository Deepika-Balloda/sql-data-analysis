-- 1. List all employees
SELECT * FROM employees;

-- 2. Employees who joined after 2020
SELECT emp_name, join_year
FROM employees
WHERE join_year > 2020;

-- 3. Average salary by department
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- 4. Highest salary employee
SELECT emp_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 1;

-- 5. Count employees in each department
SELECT d.dept_name, COUNT(e.emp_id) AS total_employees
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;