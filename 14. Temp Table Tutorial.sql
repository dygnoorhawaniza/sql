-- Temporary tables
-- added new 
CREATE TEMPORARY TABLE temp_table (
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  favorite_movie VARCHAR(100)
);

SELECT * 
FROM temp_table;

INSERT INTO temp_table 
VALUES ('Alex', 'Harry', 'Yuyuy');

SELECT *
FROM temp_table;


-- from park_and_recreation
SELECT *
FROM employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM salary_over_50k;