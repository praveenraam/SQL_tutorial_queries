/* Integer */
SELECT 
	first_name,
	salary
FROM parks_and_recreation.employee_salary
WHERE
	salary > 50000;


/* String */
SELECT
	first_name
FROM parks_and_recreation.employee_demographics
WHERE
	gender = 'female';
	
	
/* Date */
SELECT 
	first_name,
	birth_date
FROM parks_and_recreation.employee_demographics
WHERE
	birth_date >= '1985-01-01';
	
/* Logical OR*/	
SELECT 
	first_name,
	age
FROM parks_and_recreation.employee_demographics
WHERE
	birth_date >= '1985-01-01' OR gender != 'male';

/* Logical AND*/
SELECT 
	first_name,
	age
FROM parks_and_recreation.employee_demographics
WHERE 
	(first_name = 'Leslie' AND age = 44) OR gender = 'male';
	

/* LIKE Statements '%' */
SELECT 
	first_name,
	age
FROM parks_and_recreation.employee_demographics
WHERE 
	first_name LIKE '%y';


/* LIKE Statement '_' */
SELECT 
	first_name,
	age
FROM parks_and_recreation.employee_demographics
WHERE 
	first_name LIKE '__n';
