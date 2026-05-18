SELECT	
	name AS driver,
	model AS car_model
FROM drivers d
LEFT JOIN cars c
	ON d.car_id = c.id;
	
SELECT
	name AS driver
FROM drivers d
LEFT JOIN cars c
	ON d.car_id = c.id
WHERE car_id is NULL;

SELECT
	model AS car_model
FROM cars c
LEFT JOIN drivers d
	ON c.id = d.car_id
WHERE car_id is NULL;


SELECT
	dept_name AS name_of_dept,
	count(e.id) AS number_of_employees_in_dept
FROM departments d
LEFT JOIN employees e
	ON d.id = e.dept_id
GROUP BY dept_name;

SELECT
	e.name AS employee_name,
	coalesce(d.budget,0) AS budget
FROM employees e
LEFT JOIN departments d
	ON e.dept_id = d.id;
	