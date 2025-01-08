/* GROUP BY */
SELECT gender 
FROM parks_and_recreation.employee_demographics
GROUP BY gender;


SELECT occupation,salary
FROM parks_and_recreation.employee_salary
GROUP BY occupation,salary;


SELECT occupation,AVG(salary)
FROM parks_and_recreation.employee_salary
GROUP BY salary,occupation;

/* ORDER BY */
SELECT first_name,age
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC;


SELECT first_name,gender
FROM parks_and_recreation.employee_demographics
ORDER BY gender,age;


SELECT first_name,gender,age
FROM parks_and_recreation.employee_demographics
ORDER BY gender,age;

SELECT first_name,gender,age
FROM parks_and_recreation.employee_demographics
ORDER BY age,gender;