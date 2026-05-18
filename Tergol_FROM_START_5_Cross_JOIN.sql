SELECT *
FROM Pastries p
CROSS JOIN Toppings t;

SELECT count(*)
FROM Baristas b
CROSS JOIN Toppings t;

SELECT count(*)
FROM Baristas b
CROSS JOIN Toppings t
WHERE HourlyRate > 20.00;

--Concept Check: Explain the difference between CROSS JOIN and INNER JOIN — when does a CROSS JOIN produce the exact same result as an INNER JOIN?
--CROSS JOIN is mixxing all of the data, so you will see the every single outcome, inner join is showing you only what in commne between the 2 tables
-- they print the same result when there is only one line in each table.

SELECT 
	s.ShiftType AS Shift_Type,
	sum(b.HourlyRate) AS Total_Cost,
	Income AS Income
FROM Shifts s
CROSS JOIN Baristas b 
GROUP BY ShiftType, Income
HAVING Total_Cost < Income;
