SELECT *
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.id
LEFT JOIN products p ON o.product_id = p.id;

SELECT 
	c.name,
	p.product_name AS product_name,
	o.id AS order_id,
	p.price AS price
FROM orders o
INNER JOIN customers c ON o.customer_id = c.id
INNER JOIN products p ON o.product_id = p.id
WHERE category = 'Electronics';

SELECT
	c.name AS customers_name,
	o.quantity AS how_much_ordered,
	p.product_name AS product_name
FROM customers c
LEFT JOIN orders o ON o.customer_id = c.id
LEFT JOIN products p ON o.product_id = p.id
ORDER BY c.name ASC;
	
SELECT 
	count(o.quantity) AS number_of_product_ordered,
	p.product_name AS product_name
FROM orders o
INNER JOIN products p ON o.product_id = p.id
GROUP BY product_name;

SELECT 
	sum(p.price*o.quantity) AS total_spent,
	c.name AS name_of_customer
FROM orders o
INNER JOIN products p ON o.product_id = p.id
INNER JOIN customers c ON o.customer_id = c.id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 1;