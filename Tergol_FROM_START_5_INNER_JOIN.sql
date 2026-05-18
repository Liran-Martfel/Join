SELECT 
	d.dept_name,
	e.name
FROM departments AS d
INNER JOIN employees AS e 
		ON d.id = e.id;
		
SELECT 
	e.name,
	d.budget
FROM employees As e
inner join departments AS d
	ON e.id = d.id
WHERE budget > 70000;

SELECT 
	avg(e.salary) AS averege_salary,
	d.dept_name
FROM employees e
inner join departments d
	ON e.dept_id = d.id
GROUP BY dept_name;

SELECT
	count(e.name) AS number_of_employees,
	dept_name
FROM employees e
INNER JOIN departments d
	ON e.dept_id = d.id
GROUP BY dept_name;
