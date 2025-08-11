-- WHERE CLAUSE

SELECT *
FROM employee_salary
WHERE first_name = 'Leslie'
;

SELECT *
FROM employee_salary
WHERE salary <= 50000
;

# ! is not 
SELECT *
FROM employee_demographics
WHERE gender != 'Female'
;

-- AND OR NOT -- Logical Operators
SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55
;

-- LIKE STATEMENT
-- % (anything) and _ (specific value)
SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%'
;



