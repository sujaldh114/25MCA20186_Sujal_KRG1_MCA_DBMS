CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

CREATE TABLE Enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id)
);

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO Students VALUES (1, 'Amit', 10);
INSERT INTO Students VALUES (2, 'Riya', 20);
INSERT INTO Students VALUES (3, 'John', 10);
INSERT INTO Students VALUES (4, 'Sara', 30);

INSERT INTO Courses VALUES (101, 'Math');
INSERT INTO Courses VALUES (102, 'Science');
INSERT INTO Courses VALUES (103, 'Computer');

INSERT INTO Enrollments VALUES (1, 101);
INSERT INTO Enrollments VALUES (1, 102);
INSERT INTO Enrollments VALUES (2, 103);

INSERT INTO Departments VALUES (10, 'Engineering');
INSERT INTO Departments VALUES (20, 'Medical');
INSERT INTO Departments VALUES (30, 'Arts');

-- 1 part (INNER JOIN)
SELECT s.student_name, c.course_name
FROM Students s
INNER JOIN Enrollments e ON s.student_id = e.student_id
INNER JOIN Courses c ON e.course_id = c.course_id;

-- 2 part (LEFT JOIN)
SELECT s.student_name
FROM Students s
LEFT JOIN Enrollments e ON s.student_id = e.student_id
WHERE e.course_id IS NULL;

-- 3 part (RIGHT JOIN)
SELECT c.course_name, s.student_name
FROM Students s
RIGHT JOIN Enrollments e ON s.student_id = e.student_id
RIGHT JOIN Courses c ON e.course_id = c.course_id;

-- 4 part (MULTIPLE JOINS)
SELECT s.student_name, d.dept_name
FROM Students s
INNER JOIN Departments d ON s.dept_id = d.dept_id;

-- 5 part (CROSS JOIN)
SELECT s.student_name, c.course_name
FROM Students s
CROSS JOIN Courses c;
