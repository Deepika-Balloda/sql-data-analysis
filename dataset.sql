CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Operations');

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT,
    join_year INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO employees VALUES
(101, 'Amit', 75000, 1, 2020),
(102, 'Riya', 68000, 1, 2021),
(103, 'John', 55000, 2, 2019),
(104, 'Sara', 82000, 3, 2020),
(105, 'David', 60000, 4, 2022),
(106, 'Meera', 72000, 1, 2023);