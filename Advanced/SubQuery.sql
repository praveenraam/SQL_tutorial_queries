SELECT AVG(salary) FROM employee_salary;

-- List of employees with more salary than avg salary without salary included
SELECT *
FROM employee_demographics
WHERE employee_id IN (
	SELECT employee_id 
	FROM employee_salary
	WHERE (SELECT AVG(salary) FROM employee_salary) < salary
);

-- List of employees with more salary than avg salary with salary included
SELECT DEMO.employee_id,DEMO.first_name, DEMO.last_name, SAL.salary
FROM employee_demographics AS DEMO
INNER JOIN employee_salary AS SAL
	ON DEMO.employee_id = SAL.employee_id
WHERE DEMO.employee_id IN (
	SELECT employee_id 
	FROM employee_salary
	WHERE (SELECT AVG(salary) FROM employee_salary) < salary
);


SELECT *
FROM employee_demographics
WHERE (SAL.dept_id,SAL.salary) IN (
	SELECT dept_id, MAX(salary)
	FROM employee_salary AS SAL
	INNER JOIN parks_departments AS PD
		ON SAL.dept_id = PD.department_id
	GROUP BY SAL.dept_id
);


-- return departments with employees
SELECT *
FROM parks_departments
WHERE department_id IN (
	SELECT dept_id
	FROM employee_salary
);
-- return department without employees
SELECT PD.department_id
FROM parks_departments AS PD
LEFT JOIN employee_salary AS ES
	ON PD.department_id = ES.dept_id
WHERE ES.dept_id IS NULL
;

SELECT DOM.employee_id,DOM.first_name,SAL.salary
FROM employee_demographics AS DOM
INNER JOIN employee_salary AS SAL
	ON DOM.employee_id = SAL.employee_id
WHERE SAL.employee_id IN  (
	SELECT SAL1.employee_id
	FROM employee_salary AS SAL1
	WHERE SAL1.salary > (
		SELECT AVG(salary)
		FROM employee_salary AS SAL2
		WHERE SAL2.dept_id = SAL1.dept_id
		)
	)
;