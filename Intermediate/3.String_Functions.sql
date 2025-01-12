SELECT LENGTH(first_name)
FROM employee_demographics;


SELECT UPPER(first_name),LOWER(last_name)
FROM employee_demographics;


SELECT TRIM('              working               ') AS Example;


SELECT first_name,
LEFT(first_name,4),
RIGHT(last_name,4)
FROM employee_demographics;


SELECT first_name,
SUBSTRING(first_name,3,2)
FROM employee_demographics;


SELECT first_name,
SUBSTRING(birth_date,6,2) AS Birth_Month
FROM employee_demographics;


SELECT first_name,REPLACE(first_name,'A','B')
FROM employee_demographics;

SELECT first_name,LOCATE('A',first_name)
FROM employee_demographics;

SELECT CONCAT(first_name,' ',last_name) AS Full_name
FROM employee_demographics;