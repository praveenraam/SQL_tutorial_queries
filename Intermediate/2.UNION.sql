SELECT first_name,last_name
FROM employee_demographics
UNION 
SELECT first_name,last_name
FROM employee_salary;


SELECT first_name, last_name, "OLD" AS Label
FROM employee_demographics
WHERE age >= 50
UNION
SELECT first_name,last_name, "High Paid" AS Label
FROM employee_salary
WHERE salary > 70000;


SELECT first_name, last_name, "OLD MAN" AS Label
FROM employee_demographics
WHERE age >= 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, "OLD Lady" AS Label
FROM employee_demographics
WHERE age >= 40 AND gender = 'Female'
UNION
SELECT first_name,last_name, "High Paid" AS Label
FROM employee_salary
WHERE salary > 70000;
