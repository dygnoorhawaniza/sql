-- String Functions
-- how long length of first name
SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM parks_and_recreation.employee_demographics
ORDER BY 2;

SELECT UPPER('sky');
SELECT LOWER('sky');

SELECT first_name, UPPER(first_name)
FROM parks_and_recreation.employee_demographics;

-- LTRIM, RTRIM
SELECT TRIM('            sky          ');


SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name,3,2),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM parks_and_recreation.employee_demographics;


-- replace
SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM parks_and_recreation.employee_demographics;

-- locate
SELECT LOCATE('x','Alexander');

SELECT first_name, LOCATE('An', first_name)
FROM parks_and_recreation.employee_demographics;

-- concat - combine column
SELECT first_name, last_name,
CONCAT (first_name,' ',last_name)
FROM parks_and_recreation.employee_demographics;
