Iterative Control Structures in PostgreSQL – FOR, WHILE and LOOP
Student Details

Name – Sujal Dhiman
Course – MCA Semester 2
Subject – Technical Training (25CAP-652)

Aim

To understand and implement iterative control structures in PostgreSQL, including FOR loops, WHILE loops, and LOOP constructs for repeated execution of database logic. 

Experiment 4

Objectives

This experiment focuses on:

Understanding why iteration is required in database programming

Learning the behavior of FOR, WHILE, and LOOP constructs

Understanding repeated data processing in databases

Relating loop concepts to real-world batch processing

Strengthening procedural SQL knowledge used in enterprise systems 

Experiment 4

Software Requirement

PostgreSQL 

Experiment 4

Theory Overview

In database systems, many operations must run repeatedly (for example updating marks, payroll processing, reporting). SQL handles single queries efficiently, but repeated logic requires procedural control using PL/pgSQL loops. These loops are commonly used inside:

Functions

Stored Procedures

Anonymous DO blocks 

Experiment 4

Types of Loops Covered

FOR Loop (Range Based) – runs fixed number of times

FOR Loop (Query Based) – processes rows one by one

WHILE Loop – runs until condition becomes false

LOOP with EXIT – runs until manually stopped 

Experiment 4

Database Setup
Create Table
CREATE TABLE students (
    stud_id INT PRIMARY KEY,
    stud_name VARCHAR(50),
    marks INT,
    attendance INT
);
Insert Sample Data
INSERT INTO students VALUES 
(201, 'Rahul', 88, 96),
(202, 'Simran', 72, 82),
(203, 'Arjun', 49, 65),
(204, 'Meena', 91, 98),
(205, 'Vikas', 63, 75);
Loop Examples
1. FOR Loop – Simple Counter
DO $$
DECLARE i INT;
BEGIN
FOR i IN 1..4 LOOP
    RAISE NOTICE 'Iteration number: %', i;
END LOOP;
END $$;
2. FOR Loop with Query (Row Processing)
DO $$
DECLARE rec RECORD;
BEGIN
FOR rec IN SELECT stud_id, stud_name FROM students LOOP
    RAISE NOTICE 'Student ID: %, Name: %', rec.stud_id, rec.stud_name;
END LOOP;
END $$;
3. WHILE Loop
DO $$
DECLARE cnt INT := 1;
BEGIN
WHILE cnt <= 3 LOOP
    RAISE NOTICE 'While loop count: %', cnt;
    cnt := cnt + 1;
END LOOP;
END $$;
4. LOOP with EXIT Condition
DO $$
DECLARE num INT := 1;
BEGIN
LOOP
    RAISE NOTICE 'Loop cycle: %', num;
    num := num + 1;
    EXIT WHEN num > 5;
END LOOP;
END $$;
5. Bonus Marks Using FOR Loop
DO $$
DECLARE rec RECORD;
BEGIN
FOR rec IN SELECT stud_id, attendance FROM students LOOP
    IF rec.attendance > 90 THEN
        UPDATE students
        SET marks = marks + 5
        WHERE stud_id = rec.stud_id;
        RAISE NOTICE 'Grace marks added for Student ID %', rec.stud_id;
    END IF;
END LOOP;
END $$;
6. Result Classification Using LOOP + IF
DO $$
DECLARE rec RECORD;
BEGIN
FOR rec IN SELECT stud_name, marks FROM students LOOP
    IF rec.marks >= 75 THEN
        RAISE NOTICE '% -> Result: Excellent', rec.stud_name;
    ELSIF rec.marks >= 60 THEN
        RAISE NOTICE '% -> Result: Good', rec.stud_name;
    ELSIF rec.marks >= 50 THEN
        RAISE NOTICE '% -> Result: Average', rec.stud_name;
    ELSE
        RAISE NOTICE '% -> Result: Needs Improvement', rec.stud_name;
    END IF;
END LOOP;
END $$;
Result Summary

This experiment demonstrates how iterative control structures help automate repeated database operations, row-by-row processing, and batch updates. Output examples shown in the worksheet display iteration counts, row processing notices, and result classification. 

Experiment 4

Learning Outcomes

Understand the need for iteration in database programming

Use FOR, WHILE, and LOOP constructs in PostgreSQL

Perform row-by-row processing using query-based loops

Apply conditional logic inside loops

Execute batch operations such as bulk updates

Understand control flow using EXIT conditions

Gain foundational PL/pgSQL programming skills 

Experiment 4

How to Run

Open PostgreSQL or pgAdmin.

Create a new database.

Execute the SQL scripts in order.

Observe the notices and updated table results.

Conclusion

This experiment builds foundational knowledge of procedural SQL and demonstrates how loops automate repetitive database tasks in real-world applications.
