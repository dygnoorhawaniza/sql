-- CTEs
-- instead of using aliasing, can put it inside with function
WITH cte_example (Gender, Avg_sal, Max_sal, Min_sal, Count_sal) AS
(
SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM cte_example
;


SELECT AVG(avg_sal)
FROM (SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
) example_subquery
;

-- multiple ctes
WITH cte_example AS
(
SELECT employee_id, gender, birth_date
FROM parks_and_recreation.employee_demographics dem
WHERE birth_date > '1985-01-01'
),
cte_example2 AS
(
SELECT employee_id, salary
FROM parks_and_recreation.employee_salary 
WHERE salary > 50000
)
SELECT *
FROM cte_example
JOIN cte_example2
	ON cte_example.employee_id = cte_example2.employee_id
;
