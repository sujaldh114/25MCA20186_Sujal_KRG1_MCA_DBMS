SQL Conditional Logic – CASE, IF–ELSE and Rule-Based Processing
Student Details

Name: Sujal Dhiman
Course: MCA – Semester 2
Subject: Technical Training (25CAP-652)

Aim

To implement conditional decision-making logic in PostgreSQL using IF–ELSE constructs and CASE expressions for classification, validation, and rule-based data processing. 

Worksheet 3

Objective

This experiment focuses on:

Understanding conditional execution in SQL

Implementing decision-making logic using CASE expressions

Simulating real-world rule validation scenarios

Classifying data based on multiple conditions

Strengthening SQL logic skills for interviews and backend systems 

Worksheet 3

Tools Used

PostgreSQL
pgAdmin 

Worksheet 3

Database Setup
Create Table
CREATE TABLE student (
    student_id INT,
    student_name VARCHAR(50),
    marks INT
);
Insert Sample Data
INSERT INTO student VALUES
(1, 'Amit', 95),
(2, 'Riya', 82),
(3, 'Rahul', 68),
(4, 'Sneha', 55),
(5, 'Karan', 40),
(6, 'Neha', 90);
SQL Conditional Queries
1. Classifying Student Performance Using CASE
SELECT student_name, marks,
CASE
    WHEN marks >= 90 THEN 'Excellent'
    WHEN marks BETWEEN 75 AND 89 THEN 'Good'
    WHEN marks BETWEEN 50 AND 74 THEN 'Average'
    ELSE 'Poor'
END AS performance
FROM student;
2. Add Status Column and Update Using CASE
ALTER TABLE student
ADD COLUMN status VARCHAR(25);

UPDATE student
SET status =
CASE
    WHEN marks >= 75 THEN 'Approved'
    WHEN marks BETWEEN 50 AND 74 THEN 'Needs Improvement'
    ELSE 'Not Approved'
END;
3. Display Updated Table
SELECT * FROM student;
4. IF–ELSE Logic Using PL/pgSQL Block
DO $$
DECLARE
    student_marks INT := 68;
BEGIN
    IF student_marks >= 90 THEN
        RAISE NOTICE 'Grade: Excellent';
    ELSIF student_marks >= 75 THEN
        RAISE NOTICE 'Grade: Good';
    ELSIF student_marks >= 50 THEN
        RAISE NOTICE 'Grade: Average';
    ELSE
        RAISE NOTICE 'Grade: Poor';
    END IF;
END $$;
5. Custom Sorting Using CASE
SELECT student_name, marks, status
FROM student
ORDER BY
CASE
    WHEN marks >= 90 THEN 1
    WHEN marks BETWEEN 75 AND 89 THEN 2
    WHEN marks BETWEEN 50 AND 74 THEN 3
    ELSE 4
END;
Output Summary

The results (shown on page 3) demonstrate:

Student performance classification (Excellent, Good, Average, Poor)

Status assignment based on marks

Custom sorting based on performance categories 

Worksheet 3

Key Concepts Covered

CASE expressions for classification

Conditional UPDATE queries

IF–ELSE logic in PL/pgSQL

Rule-based data validation

Custom sorting using CASE

Learning Outcomes

Learned to apply CASE expressions for data classification.

Implemented conditional logic inside UPDATE statements.

Used IF–ELSE control structures in PL/pgSQL for procedural validation.

Designed real-world grading and performance evaluation systems.

Applied CASE expressions for custom sorting and reporting. 

Worksheet 3

How to Run

Open PostgreSQL / pgAdmin.

Create a new database.

Execute the SQL scripts in order.

Run SELECT queries to verify results.

Conclusion

This experiment demonstrates how conditional logic in SQL can automate decision-making, classify data, and improve database-driven applications.
