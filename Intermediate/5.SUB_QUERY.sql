SELECT *
FROM employee_demographics
WHERE employee_id IN 
( 	SELECT employee_id -- returns ID of employees with salary more than 50000
   FROM employee_salary
   WHERE salary > 50000a
);

SELECT first_name, last_name, (
	SELECT AVG(salary)
	FROM employee_salary
) AS avg_salary
FROM employee_salary;

SELECT first_name, last_name, salary
FROM employee_salary
WHERE salary > (SELECT AVG(salary)
FROM employee_salary);


