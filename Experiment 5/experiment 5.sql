CREATE TYPE activity_enum AS ENUM ('start', 'end');

-- Create table
CREATE TABLE Activity (
    machine_id INT,
    process_id INT,
    activity_type activity_enum,
    timestamp FLOAT,
    PRIMARY KEY (machine_id, process_id, activity_type)
);

-- Insert data
INSERT INTO Activity (machine_id, process_id, activity_type, timestamp) VALUES
(0, 0, 'start', 0.712),
(0, 0, 'end', 1.520),
(0, 1, 'start', 3.140),
(0, 1, 'end', 4.120),
(1, 0, 'start', 0.550),
(1, 0, 'end', 1.550),
(1, 1, 'start', 0.430),
(1, 1, 'end', 1.420),
(2, 0, 'start', 4.100),
(2, 0, 'end', 4.512),
(2, 1, 'start', 2.500),
(2, 1, 'end', 5.000);

SELECT 
    a.machine_id,
    ROUND(AVG(b.timestamp - a.timestamp)::numeric, 3) AS processing_time
FROM Activity a
JOIN Activity b
ON a.machine_id = b.machine_id
AND a.process_id = b.process_id
AND a.activity_type = 'start'
AND b.activity_type = 'end'
GROUP BY a.machine_id;