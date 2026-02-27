CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees (emp_name, department, salary) VALUES
('Amit', 'IT', 60000),
('Riya', 'HR', 45000),
('Sohan', 'IT', 70000),
('Neha', 'Finance', 40000);

-- create view for IT employees
CREATE VIEW it_employees AS
SELECT emp_id, emp_name, salary
FROM employees
WHERE department = 'IT';

-- query the view
SELECT * FROM it_employees;

-- update data using view
UPDATE it_employees
SET salary = salary + 5000
WHERE emp_id = 1;

-- create view for high salary employees
CREATE VIEW high_salary AS
SELECT emp_name, department, salary
FROM employees
WHERE salary > 50000;

-- query second view
SELECT * FROM high_salary;

-- create read-only view
CREATE VIEW readonly_view AS
SELECT emp_name, salary 
FROM employees
WITH CHECK OPTION;

-- drop view
DROP VIEW it_employees;