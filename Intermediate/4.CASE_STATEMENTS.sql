SELECT first_name,age,
CASE 
	WHEN age >= 50 THEN 'OLD'
	WHEN age < 50 THEN 'YOUND'
END AS described
FROM employee_demographics;



SELECT first_name,last_name,salary,
CASE
	WHEN salary > 50000 THEN salary*1.05
	WHEN salary <= 50000 THEN salary*1.07
END AS new_salary,
CASE 
	WHEN dept_id = 6 THEN salary*.1
	WHEN dept_id != 6 THEN 0
END AS bonus
FROM employee_salary;