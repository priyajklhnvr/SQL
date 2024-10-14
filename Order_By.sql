CREATE TABLE FlightBooking(
            Booking_Id INT,
            FlightNo INT,
            Destination VARCHAR(50),
            SeatNo BIGINT,
            PassengeID int,
            Ticket_price double
            );
            
INSERT INTO FlightBooking (Booking_Id, FlightNo, Destination, SeatNo, PassengeID, Ticket_price) VALUES
(1, 101, 'New York', 11, 1001, 300.00),
(2, 102, 'USA', 12, 1002, 450.50),
(3, 103, 'Canada', 13, 1003, 200.75),
(4, 104, 'Hyderabad', 14, 1004, 350.25),
(5, 105, 'Mumbai', 15, 1005, 500.00),
(6, 106, 'Korea', 16, 1006, 400.00),
(7, 107, 'Kerala', 17, 1007, 250.50),
(8, 108, 'USA', 18, 1008, 280.25),
(9, 109, 'Delhi', 19, 1009, 320.00),
(10, 110, 'Goa', 20, 1010, 370.00),
(11, 111, 'USA', 21, 1011, 340.75),
(12, 112, 'Rajasthan', 22, 1012, 410.00),
(13, 113, 'Meghalaya', 23, 1013, 290.50),
(14, 114, 'Australia', 24, 1014, 460.00),
(15, 115, 'Manali', 25, 1015, 330.25);

SELECT * FROM flightbooking;
-- LIKE Operators

SELECT * FROM flightbooking WHERE Destination LIKE 'M%';
SELECT * FROM flightbooking WHERE Destination LIKE '%a';
SELECT * FROM flightbooking WHERE Destination LIKE '%n%';

SELECT DISTINCT Destination FROM flightbooking;

-- Aggregate Functions

SELECT COUNT(*) FROM flightbooking;
SELECT SUM(SeatNo) as No_Of_Seats FROM flightbooking;
SELECT MAX(Ticket_price) as MAX_Price FROM flightbooking;
SELECT MIN(Ticket_price) as MAX_Price FROM flightbooking;
SELECT AVG(SeatNo) as AVG_Seats FROM flightbooking;

SELECT * FROM flightbooking ORDER BY PassengeID DESC;
SELECT * FROM flightbooking ORDER BY Destination ASC;

SELECT * FROM flightBooking ORDER BY UPPER(Destination) DESC;
SELECT * FROM flightbooking WHERE LOWER(Destination) = LOWER('USA');











