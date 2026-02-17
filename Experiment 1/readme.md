Database Management Experiment – DDL, DML & DCL
👨‍🎓 Student Details

Name: Sujal Dhiman

Course: MCA – Semester 2

Subject: Technical Training (25CAP-652)

🎯 Aim

To design and implement a sample database system using DDL, DML, and DCL commands, including database creation, data manipulation, schema modification, and role-based access control to ensure data integrity and secure read-only access for authorized users. 

Worksheet 1

📌 Objective

This experiment focuses on gaining hands-on experience with:

Data Definition Language (DDL)

Data Manipulation Language (DML)

Data Control Language (DCL)

Implementing role-based privileges to secure database access. 

Worksheet 1

🗂️ Database Schema

The system contains three tables:

1️⃣ Division

Stores company divisions.

CREATE TABLE Division (
    division_id INT PRIMARY KEY,
    division_name VARCHAR(30) UNIQUE NOT NULL
);
2️⃣ Staff

Stores staff details with salary constraints and foreign key.

CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    staff_name VARCHAR(30) NOT NULL,
    pay INT CHECK (pay > 0),
    division_id INT,
    CONSTRAINT fk_div FOREIGN KEY (division_id)
    REFERENCES Division(division_id)
);
3️⃣ Assignment

Stores assignments assigned to divisions.

CREATE TABLE Assignment (
    assignment_id INT PRIMARY KEY,
    assignment_title VARCHAR(30) NOT NULL,
    division_id INT,
    CONSTRAINT fk_assign_div FOREIGN KEY (division_id)
    REFERENCES Division(division_id)
);
🧾 DML Operations (Data Manipulation)
Insert Data
INSERT INTO Division VALUES
(10,'ADMIN'),
(20,'ACCOUNTS'),
(30,'TECH'),
(40,'MARKETING');

INSERT INTO Staff VALUES
(501,'RAVI SHARMA',60000,20),
(502,'NEHA VERMA',48000,10),
(503,'ARJUN MEHTA',52000,30),
(504,'PRIYA GUPTA',55000,40);

INSERT INTO Assignment VALUES
(901,'Budget Planning',20),
(902,'System Upgrade',30),
(903,'Client Outreach',40);
Update Data
UPDATE Staff
SET pay = 51000
WHERE staff_id = 502;
Delete Data
DELETE FROM Assignment
WHERE assignment_id = 902;
🔐 DCL Operations (Access Control)
Create Read-Only Role
CREATE ROLE view_only_staff
WITH LOGIN PASSWORD 'view123';
Grant Permissions
GRANT SELECT ON Division TO view_only_staff;
GRANT SELECT ON Staff TO view_only_staff;
GRANT SELECT ON Assignment TO view_only_staff;
Revoke Permissions
REVOKE CREATE ON SCHEMA public FROM view_only_staff;
REVOKE INSERT, UPDATE, DELETE ON Division FROM view_only_staff;
REVOKE INSERT, UPDATE, DELETE ON Staff FROM view_only_staff;
REVOKE INSERT, UPDATE, DELETE ON Assignment FROM view_only_staff;
🔧 Schema Modification (DDL)
ALTER TABLE Assignment
ALTER COLUMN assignment_title TYPE VARCHAR(100);

DROP TABLE Assignment;
📊 Output

After execution, the database contains:

Division Table

Staff Table

Assignment Table

(Sample outputs are included in the worksheet screenshots on page 4.) 

Worksheet 1

📚 Learning Outcomes

From this experiment, we learned:

Practical implementation of DDL, DML, and DCL.

Creating relationships using Foreign Keys.

Applying role-based access control.

Performing schema modification and data manipulation.

Ensuring data integrity and database security. 

Worksheet 1

🚀 How to Run

Open PostgreSQL / MySQL / SQL Server.

Create a new database.

Run the SQL queries in the given order.

Verify results using:

SELECT * FROM Division;
SELECT * FROM Staff;
SELECT * FROM Assignment;
⭐ Conclusion

This experiment demonstrates how to build a secure and structured database system while applying real-world SQL operations including database creation, data handling, and user access management.
