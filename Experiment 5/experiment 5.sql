CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    salary INT
);
DO $$
DECLARE
    e_id INT;
    e_salary INT;

    emp_cursor CURSOR FOR
        SELECT emp_id, salary FROM employees;

BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO e_id, e_salary;
        EXIT WHEN NOT FOUND;

        IF e_salary < 50000 THEN
            UPDATE employees
            SET salary = salary + (salary * 0.10)
            WHERE emp_id = e_id;
        END IF;

    END LOOP;

    CLOSE emp_cursor;
END $$;