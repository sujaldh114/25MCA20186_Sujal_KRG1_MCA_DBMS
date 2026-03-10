CREATE TABLE employees3 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT,
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees3 VALUES
(1,'Amit',NULL,'Management',120000),
(2,'Ravi',1,'Engineering',80000),
(3,'Neha',1,'Engineering',82000),
(4, 'Karan',2,'Engineering',60000),
(5,'Simran',2,'Engineering',62000),
(6,'Pooja',3,'Engineering',64000),
(7,'Rahul',3,'Engineering',64000),
(8,'Arjun',1,'HR',70000);

SELECT emp_id, emp_name, salary
FROM employees3
WHERE salary = (
    SELECT MAX(salary)
    FROM employees3
    WHERE salary < (SELECT MAX(salary) FROM employees3)
);

<img width="448" height="76" alt="image" src="https://github.com/user-attachments/assets/99c1d7a9-873c-4fee-82da-f7c976fcbf76" />
