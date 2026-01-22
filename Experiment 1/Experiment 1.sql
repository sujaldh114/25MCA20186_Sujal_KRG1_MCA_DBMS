CREATE TABLE Division (
division_id INT PRIMARY KEY,
division_name VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE Staff (
staff_id INT PRIMARY KEY,
staff_name VARCHAR(30) NOT NULL,
pay INT CHECK (pay > 0),
division_id INT,
CONSTRAINT fk_div FOREIGN KEY (division_id) REFERENCES Division(division_id)
);

CREATE TABLE Assignment (
assignment_id INT PRIMARY KEY,
assignment_title VARCHAR(30) NOT NULL,
division_id INT,
CONSTRAINT fk_assign_div FOREIGN KEY (division_id)
REFERENCES Division(division_id)
);

INSERT INTO Division VALUES
(10, 'ADMIN'),
(20, 'ACCOUNTS'),
(30, 'TECH'),
(40, 'MARKETING');

INSERT INTO Staff VALUES
(501, 'RAVI SHARMA', 60000, 20),
(502, 'NEHA VERMA', 48000, 10),
(503, 'ARJUN MEHTA', 52000, 30),
(504, 'PRIYA GUPTA', 55000, 40);

INSERT INTO Assignment VALUES
(901, 'Budget Planning', 20),
(902, 'System Upgrade', 30),
(903, 'Client Outreach', 40);

UPDATE Staff
SET pay = 51000
WHERE staff_id = 502;

DELETE FROM Assignment
WHERE assignment_id = 902;

SELECT CURRENT_USER;

CREATE ROLE view_only_staff
WITH LOGIN PASSWORD 'view123';

SELECT CURRENT_USER;

GRANT SELECT ON Division TO view_only_staff;
GRANT SELECT ON Staff TO view_only_staff;
GRANT SELECT ON Assignment TO view_only_staff;

REVOKE CREATE ON SCHEMA public FROM view_only_staff;
REVOKE INSERT, UPDATE, DELETE ON Division FROM view_only_staff;
REVOKE INSERT, UPDATE, DELETE ON Staff FROM view_only_staff;
REVOKE INSERT, UPDATE, DELETE ON Assignment FROM view_only_staff;

ALTER TABLE Assignment
ALTER COLUMN assignment_title TYPE VARCHAR(100);

DROP TABLE Assignment;

SELECT * FROM division;
SELECT * FROM assignment;
SELECT * FROM staff;

