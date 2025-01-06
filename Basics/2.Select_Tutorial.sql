/* All columns */
SELECT *
FROM parks_and_recreation.parks_departments;


/* Specific Columns */
SELECT 
	first_name,
	last_name
FROM parks_and_recreation.employee_demographics;


/* Arithmetic ops */
SELECT 
	First_name,
	last_name,
	age,
	(age+10)*5
FROM parks_and_recreation.employee_demographics;


/* DISTINCT */
SELECT DISTINCT 
	age,
	gender
FROM parks_and_recreation.employee_demographics;