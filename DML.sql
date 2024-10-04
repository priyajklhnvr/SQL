SELECT * FROM metro;
SELECT * FROM customer_info;
SELECT * FROM orders;

INSERT INTO metro VALUES(01, 'Green', 10, 'Banashankri');
INSERT INTO metro VALUES(02, 'Purple', 5, 'Mejastic');
INSERT INTO metro VALUES(03, 'Yellow', 8, 'Matri Square');
INSERT INTO metro VALUES(04, 'Purple', 15, 'Jaynagar');
INSERT INTO metro VALUES(05, 'Green', 12, 'Ragi Gudda');
INSERT INTO metro VALUES(06, 'Yellow', 9, 'KR Market');
INSERT INTO metro VALUES(07, 'Green', 18, 'southEnd');
INSERT INTO metro VALUES(08, 'Yellow', 13, 'LalBhag');

SELECT * FROM  metro WHERE Metro_id = 05;
SELECT * FROM metro WHERE Metro_line = 'Yellow';
SELECT * FROM metro WHERE Metro_station Like  'M%';

INSERT INTO customer_info VALUES(011, 'Jhon', 20, 'Banglore', 'Jhon123@gmail.com', 2345987645);
INSERT INTO customer_info VALUES(012, 'Priya', 35, 'Mysore' , 'Priya123@gmail.com' , 3345907645);
INSERT INTO customer_info VALUES(013, 'Ram', 48, 'Udupi' , 'Ram123@gmail.com' , 2340087646);
INSERT INTO customer_info VALUES(014, 'Joe', 15, 'Dvngr' , 'Joe123@gmail.com' , 1145987645);
INSERT INTO customer_info VALUES(015, 'Naman', 22, 'Manglore' , 'Naman123@gmail.com' , 8765987641);
INSERT INTO customer_info VALUES(016, 'Suman', 29, 'Svmg' , 'Suman123@gmail.com' , 4345909645);
INSERT INTO customer_info VALUES(017, 'Dia', 68, 'Ballari' , 'Dia123@gmail.com' , 0346687641);
INSERT INTO customer_info VALUES(018, 'Narayan', 33, 'Gadag' , 'Narayan123@gmail.com' , 1234987640);

SELECT * FROM customer_info WHERE Name = 'Ram';
SELECT Name, cust_city FROM customer_info WHERE ID = 017;
SELECT 	* FROM customer_info WHERE Age < 30;

INSERT INTO orders VALUES (101, 201, 'Pending', 'Unpaid');
INSERT INTO orders VALUES (102, 202, 'Shipped', 'Paid');
INSERT INTO orders VALUES (103, 203, 'Deliverd', 'Unpaid');
INSERT INTO orders VALUES (104, 204, 'Shipped', 'Unpaid');
INSERT INTO orders VALUES (105, 205, 'Pending', 'Paid');
INSERT INTO orders VALUES (106, 206, 'Deliverd', 'Paid');
INSERT INTO orders VALUES (107, 207, 'Shipped', 'Unpaid');
INSERT INTO orders VALUES (108, 208, 'Deliverd', 'Paid');

SELECT * FROM orders WHERE orderStatus = 'Shipped' AND paymentStatus = 'Paid';
SELECT * FROM orders WHERE OrderStatus = 'Shipped' OR paymentStatus = 'Paid';
SELECT * FROM orders WHERE cust_ID BETWEEN 202 AND 207;




