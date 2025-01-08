USE `parks_and_recreation`;

/* HAVING */

SELECT gender,AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age)>40;


SELECT occupation,AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%manager'
GROUP BY occupation
HAVING AVG(salary) > 50000;

/* Limits & Aliasing */

SELECT * 
FROM parks_and_recreation.employee_demographics
LIMIT 3;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC 
LIMIT 3;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age 
LIMIT 3,5;