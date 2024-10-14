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
(2, 102, 'Puna', 12, 1002, 450.50),
(3, 103, 'Canada', 13, 1003, 200.75),
(4, 104, 'Hyderabad', 14, 1004, 350.25),
(5, 105, 'Mumbai', 15, 1005, 500.00),
(6, 106, 'Korea', 16, 1006, 400.00),
(7, 107, 'Kerala', 17, 1007, 250.50),
(8, 108, 'Japan', 18, 1008, 280.25),
(9, 109, 'Delhi', 19, 1009, 320.00),
(10, 110, 'Goa', 20, 1010, 370.00),
(11, 111, 'USA', 21, 1011, 340.75),
(12, 112, 'Rajasthan', 22, 1012, 410.00),
(13, 113, 'Meghalaya', 23, 1013, 290.50),
(14, 114, 'Australia', 24, 1014, 460.00),
(15, 115, 'Manali', 25, 1015, 330.25);

SELECT * FROM flightbooking;



UPDATE flightbooking SET Destination = 'Hariyana' WHERE Booking_Id = 6;
UPDATE flightbooking SET SeatNo = 171 WHERE destination = 'USA' OR Booking_Id = 12;
UPDATE flightbooking SET PassengeID = 2000  WHERE Booking_Id IN(13,14,15);

DELETE FROM flightbooking WHERE FlightNo = 114;




            
CREATE TABLE ProductInventory (
    ProductID INT,
    BatchNumber VARCHAR(20),
    ProductName VARCHAR(100),
    QuantityInStock INT,
	SupplierID INT,
    ExpirationDate DATE
);

INSERT INTO ProductInventory VALUES(1, 'BATCH001', 'Laptop', 100, 1, '2025-12-31');
INSERT INTO ProductInventory VALUES(2, 'BATCH002', 'Wheat Bread', 150, 2, '2026-01-15');
INSERT INTO ProductInventory VALUES(3, 'BATCH003', 'Almond Butter', 200, 1, '2024-11-30');
INSERT INTO ProductInventory VALUES(4, 'BATCH004', 'Smartwatch', 50, 3, '2025-05-20');
INSERT INTO ProductInventory VALUES(5, 'BATCH005', 'Coconut Oil', 75, 4, '2026-03-01');
INSERT INTO ProductInventory VALUES(6, 'BATCH006', 'Digital Camera', 30, 5, '2025-08-15');
INSERT INTO ProductInventory VALUES(7, 'BATCH007', 'Brown Rice', 90, 1, '2025-07-10');
INSERT INTO ProductInventory VALUES(8, 'BATCH008', 'Almond Milk', 120, 2, '2026-02-28');
INSERT INTO ProductInventory VALUES(9, 'BATCH009', 'Projector', 60, 3, '2024-12-01');
INSERT INTO ProductInventory VALUES(10, 'BATCH010', 'Dark Chocolate', 200, 4, '2025-12-15');
INSERT INTO ProductInventory VALUES(11, 'BATCH011', 'Camera', 80, 5, '2026-04-10');
INSERT INTO ProductInventory VALUES(12, 'BATCH012', 'Olive Oil', 110, 1, '2025-09-05');
INSERT INTO ProductInventory VALUES(13, 'BATCH013', 'Speaker', 140, 2, '2024-11-20');
INSERT INTO ProductInventory VALUES(14, 'BATCH014', 'Honey', 170, 3, '2026-05-25');
INSERT INTO ProductInventory VALUES(15, 'BATCH015', 'Tea', 65, 4, '2025-11-11');

SELECT * FROM productinventory;

UPDATE productinventory SET ProductName = 'Ice Cream' WHERE ProductID = 7;
UPDATE productinventory SET ExpirationDate = '2025-10-10' WHERE BatchNumber = 'BATCH011' AND ProductName = 'Camera';
UPDATE productinventory SET SupplierID = 555 WHERE QuantityInStock IN (100,150,200);

DELETE FROM productinventory WHERE SupplierID = 4;

CREATE TABLE CreateAccount (
    AccountID INT ,                
    Username VARCHAR(50) ,           
    Email VARCHAR(100),      
    InitialDeposit DECIMAL, 
    CreatedDate DATE,    
    AccountStatus VARCHAR(20) 
);

INSERT INTO CreateAccount  VALUES (1, 'Priya', 'Priya123@gmail.com', 1000.00, '2024-01-01', 'Active');
INSERT INTO CreateAccount  VALUES (2, 'Amar', 'amar@example.com', 1500.50, '2024-01-02', 'Active');
INSERT INTO CreateAccount  VALUES (3, 'Jack', 'jack432@gmail.com', 2000.00, '2024-01-03', 'Inactive');
INSERT INTO CreateAccount  VALUES (4, 'Vinay', 'vinay@example.com', 1200.75, '2024-01-04', 'Active');
INSERT INTO CreateAccount  VALUES (5, 'Priyanka', 'Priya2001@this.com', 800.00, '2024-01-05', 'Active');
INSERT INTO CreateAccount  VALUES (6, 'Sindhu', 'Sindu@gmial.com', 2500.00, '2024-01-06', 'Inactive');
INSERT INTO CreateAccount  VALUES (7, 'Virat', 'virat@gmail.com', 300.20, '2024-01-07', 'Active');
INSERT INTO CreateAccount  VALUES (8, 'Soumya', 'soumya@example.com', 950.75, '2024-01-08', 'Active');
INSERT INTO CreateAccount  VALUES (9, 'Ramya', 'ramya098@gmail.com', 1500.00, '2024-01-09', 'Inactive');
INSERT INTO CreateAccount  VALUES (10, 'Govind', 'govindHerry@gmail.com', 1800.50, '2024-01-10', 'Active');
INSERT INTO CreateAccount  VALUES (11, 'Cristopher', 'Jain@example.com', 400.00, '2024-01-11', 'Active');
INSERT INTO CreateAccount  VALUES (12, 'Kavya', 'kavya@This.com', 700.25, '2024-01-12', 'Inactive');
INSERT INTO CreateAccount  VALUES (13, 'Karan', 'Karan@123.com', 950.50, '2024-01-13', 'Active');
INSERT INTO CreateAccount  VALUES (14, 'leo', 'leo@example.com', 1200.00, '2024-01-14', 'Active');
INSERT INTO CreateAccount  VALUES (15, 'mona', 'mona@gmail.com', 600.00, '2024-01-15', 'Inactive');

SELECT * FROM createaccount;

UPDATE CreateAccount SET AccountStatus = 'Inactive' WHERE AccountID = 4;
UPDATE CreateAccount SET InitialDeposit = 5000.00, AccountStatus = 'Active' WHERE AccountID = 15;
UPDATE createaccount SET Email = 'Priyajkl2001@gmail.com' WHERE Username = 'Priya' OR InitialDeposit = 600.00;

DELETE FROM createaccount WHERE Email = 'mona@gmail.com';


