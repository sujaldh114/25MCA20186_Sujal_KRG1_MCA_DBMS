CREATE TABLE Students (
    student_id INT,
    name VARCHAR(50),
    city VARCHAR(50),
    percentage DECIMAL(5,2)
);

INSERT INTO Students VALUES
(1, 'Arjun', 'Delhi', 92.4),
(2, 'Neha', 'Mumbai', 96.8),
(3, 'Sahil', 'Delhi', 98.3),
(4, 'Isha', 'Pune', 94.7),
(5, 'Rohit', 'Chandigarh', 97.1),
(6, 'Meena', 'Delhi', 95.9),
(7, 'Varun', 'Pune', 99.2);

-- Without CASE statement
SELECT city,
COUNT(*) AS STUDENT_COUNT
FROM Students
WHERE percentage > 95
GROUP BY city;

-- With CASE statement
SELECT city,
SUM(CASE 
WHEN percentage > 95 THEN 1 
ELSE 0 
END) AS STUDENT_COUNTS
FROM Students
GROUP BY city;

-- (II)
SELECT city,
AVG(CASE 
WHEN percentage > 95 THEN percentage 
ELSE NULL 
END) AS STUDENT_AVG
FROM Students
GROUP BY city
ORDER BY STUDENT_AVG DESC;
