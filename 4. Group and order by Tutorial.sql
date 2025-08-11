-- GROUP BY
USE parks_and_recreation;
SELECT *
FROM employee_demographics;

-- GROUP BY have to match SELECT
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;


-- ORDER BY DESC, ASC, can use column position too (not recommended)
SELECT *
FROM employee_demographics
ORDER BY gender, age
;

