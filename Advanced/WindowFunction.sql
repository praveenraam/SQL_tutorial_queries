SELECT *,
MAX(salary) OVER(PARTITION BY dept_id) AS Max_Salary
FROM employee_salary;

SELECT *,
ROW_NUMBER() OVER(ORDER BY salary) AS COUNT_VAL
FROM employee_salary;

SELECT *,
ROW_NUMBER() OVER(PARTITION BY dept_id ORDER BY salary) AS count_val
FROM employee_salary;

SELECT *
FROM (
	SELECT *,
	ROW_NUMBER() OVER(PARTITION BY dept_id ORDER BY employee_id) AS count_val
	FROM employee_salary
) AS temp_table
WHERE count_val < 4;

SELECT * 
FROM (
	SELECT *,
	RANK() OVER(PARTITION BY dept_id ORDER BY salary) AS rank_of_sal
	FROM employee_salary
) AS temp_table
WHERE rank_of_sal < 3;