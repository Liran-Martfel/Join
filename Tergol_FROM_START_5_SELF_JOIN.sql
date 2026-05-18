SELECT 
	f.flight_no AS flight_number,
	p.flight_no AS flight_ID,
	f.origin AS flight_from,
	f.destination AS flight_to
FROM flights f
LEFT JOIN flights p ON f.prev_flight_id = p.id; 

SELECT 
	p.flight_no AS predecessor_flight,
    p.origin AS original_start_city, 
    f.flight_no AS current_flight,
    f.origin AS connection_city,      
    f.destination AS final_destination
FROM flights f
LEFT JOIN flights p on f.prev_flight_id = p.id
WHERE p.flight_no = 'TK101';

SELECT 
    base.flight_no AS flight_number,
    COUNT(next_f.id) AS onward_connections_count
FROM flights base
LEFT JOIN flights next_f ON next_f.prev_flight_id = base.id
GROUP BY base.id, base.flight_no
ORDER BY onward_connections_count DESC;

SELECT 
	f.destination AS destination_f,
	f.origin AS origin_f
FROM flights f
INNER JOIN flights next_f ON next_f.prev_flight_id = f.id
WHERE f.destination != next_f.origin;