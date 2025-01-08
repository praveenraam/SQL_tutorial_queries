USE parks_and_recreation;

SELECT *
FROM parks_and_recreation.employee_demographics AS ED
INNER JOIN parks_and_recreation.employee_salary AS ES
	ON ED.employee_id = ES.employee_id;

SELECT ED.employee_id,age,occupation
FROM employee_demographics AS ED
INNER JOIN employee_salary AS ES
	ON ED.employee_id = ES.employee_id;
	
SELECT *
FROM employee_demographics AS ED
LEFT JOIN employee_salary AS ES
	ON ED.employee_id = ES.employee_id;
	
	
SELECT *
FROM employee_demographics AS ED
RIGHT JOIN employee_salary AS ES
	ON ED.employee_id = ES.employee_id;


SELECT *
FROM employee_demographics AS ED
INNER JOIN employee_salary AS ES
	ON ED.employee_id = ES.employee_id
INNER JOIN parks_departments AS PD
	ON PD.department_id = ES.dept_id;