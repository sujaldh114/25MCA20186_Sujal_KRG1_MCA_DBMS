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
(7,'Rahul',3,'Engineering'64000),
(8,'Arjun',1,'HR',70000);

SELECT 
    e1.manager_id,
    e1.emp_name AS employee_1,
    e2.emp_name AS employee_2
FROM employees3 e1
JOIN employees3 e2
ON e1.manager_id = e2.manager_id
AND e1.emp_id < e2.emp_id
WHERE e1.manager_id IS NOT NULL;

<img width="549" height="198" alt="image" src="https://github.com/user-attachments/assets/12e84c33-d60c-4a72-b203-eb733bdb342a" />
