SELECT *
FROM drivers d
FULL OUTER JOIN cars c ON d.id = c.id;

SELECT *
FROM drivers d
FULL OUTER JOIN cars c ON d.car_id = c.id
WHERE c.id is NULL;

SELECT 
	name AS driver_name,
	model AS car_model,
	coalesce(price,0) AS price
FROM drivers d
FULL OUTER JOIN cars c on d.car_id = c.id;

--Which single join type lets you find drivers WITHOUT a car AND cars WITHOUT a driver in one query? Full Outer Join;
