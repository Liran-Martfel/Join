-- Tables for combinations
DROP TABLE Pastries;
DROP TABLE Toppings;
CREATE TABLE Pastries (PastryName VARCHAR(50));
CREATE TABLE Toppings (ToppingName VARCHAR(50));

INSERT INTO Pastries VALUES ('Croissant'), ('Muffin'), ('Donut');
INSERT INTO Toppings VALUES ('Chocolate'), ('Glaze'), ('Sprinkles'), ('Caramel');

-- Tables for business logic
DROP TABLE Baristas;
DROP TABLE Shifts;
CREATE TABLE Baristas (Name VARCHAR(50), HourlyRate DECIMAL(10,2));
CREATE TABLE Shifts (ShiftType VARCHAR(20), Income DECIMAL(10,2));

INSERT INTO Baristas VALUES ('Alice', 18.00), ('Bob', 22.00), ('Charlie', 15.00), ('Diana', 25.00);
INSERT INTO Shifts VALUES ('Morning', 95.00), ('Afternoon', 85.00), ('Evening', 70.00);