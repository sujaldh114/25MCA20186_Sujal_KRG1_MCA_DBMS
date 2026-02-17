SQL SELECT Queries – Filtering, Sorting, Grouping and Aggregation
Student Details

Name: Sujal Dhiman
Course: MCA – Semester 2
Subject: Technical Training (25CAP-652)

Aim

To implement and analyze SQL SELECT queries using filtering, sorting, grouping, and aggregation concepts in PostgreSQL for efficient data retrieval and analytical reporting. 

Worksheet 2

Objective

This experiment focuses on:

Retrieving specific data using filtering conditions

Sorting query results using single and multiple attributes

Performing aggregation using grouping techniques

Applying conditions on aggregated data

Understanding real-world analytical queries used in placements and interviews 

Worksheet 2

Tools Used

PostgreSQL

pgAdmin 

Worksheet 2

Database Setup
Create Table
CREATE TABLE Students (
    student_id INT,
    name VARCHAR(50),
    city VARCHAR(50),
    percentage DECIMAL(5,2)
);
Insert Sample Data
INSERT INTO Students VALUES
(1, 'Arjun', 'Delhi', 92.4),
(2, 'Neha', 'Mumbai', 96.8),
(3, 'Sahil', 'Delhi', 98.3),
(4, 'Isha', 'Pune', 94.7),
(5, 'Rohit', 'Chandigarh', 97.1),
(6, 'Meena', 'Delhi', 95.9),
(7, 'Varun', 'Pune', 99.2);
SQL Queries
1. Count Students Scoring Above 95% (Without CASE)
SELECT city, COUNT(*) AS student_count
FROM Students
WHERE percentage > 95
GROUP BY city;
2. Count Students Above 95% Using CASE Statement
SELECT city,
SUM(CASE WHEN percentage > 95 THEN 1 ELSE 0 END) AS student_counts
FROM Students
GROUP BY city;
3. Average Percentage of Students Scoring Above 95%
SELECT city,
AVG(CASE WHEN percentage > 95 THEN percentage ELSE NULL END) AS student_avg
FROM Students
GROUP BY city
ORDER BY student_avg DESC;
Output Summary

The results demonstrate:

Number of high-performing students per city

Average percentage of students scoring above 95

The output tables on page 3 show city-wise counts and averages, where Mumbai and Delhi appear as top-performing cities based on aggregation results. 

Worksheet 2

Key Concepts Covered

WHERE clause for filtering

GROUP BY for aggregation

ORDER BY for sorting

CASE statements for conditional aggregation

Analytical SQL queries used in real-world scenarios

Learning Outcomes

From this experiment:

Learned how to filter relevant records from a database.

Understood how sorting improves readability of reports.

Learned grouping techniques for analytical queries.

Differentiated between row-level and group-level conditions.

Improved confidence in writing SQL queries for real-world scenarios and interviews. 

Worksheet 2

How to Run

Open PostgreSQL / pgAdmin.

Create a new database.

Execute the SQL scripts in order.

Run the SELECT queries to verify results.

Conclusion

This experiment strengthens understanding of SQL analytical queries using filtering, grouping, sorting, and aggregation, which are essential for data analysis and technical interviews.
