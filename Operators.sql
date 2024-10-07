CREATE TABLE airport_details(
         airport_ID INT NOT NULL,
         airport_name VARCHAR(30),
         city VARCHAR(50),
         country VARCHAR(50),
         terminal_count INT,
         passenger_count BIGINT,
         international_status BOOLEAN,
         opening_year YEAR,
         managing_authority VARCHAR(50)
);
ALTER TABLE airport_details change COLUMN airport_name airport_name VARCHAR(100);

CREATE TABLE olympic_games(
         olympic_ID INT NOT NULL,
         year YEAR,
         host_city VARCHAR(50),
         host_country VARCHAR(50),
         game_season VARCHAR(25),
         total_sports INT,
         total_athletes INT,
         start_date DATE,
         end_date DATE
);

INSERT INTO airport_details VALUES(airport_ID,airport_name,city,country,terminal_count,passenger_count,international_status,opening_year,managing_authority);
INSERT INTO airport_details VALUES(01,'Kempegowda Airport', 'Bengaluru','India',10,1000,True,2008,'Bangalore International Airport Limited');
INSERT INTO airport_details VALUES(02,'Los Angeles International Airport', 'LAX','USA',15,900,false,2017,'Los Angeles World Airports');
INSERT INTO airport_details VALUES(03,'Indira Gandhi International Airport', 'Delhi','India',20,1200,false,2019,'Delhi International Airport Limited');
INSERT INTO airport_details VALUES(04,'Toronto Pearson International Airport', 'YYZ','Canada',17,1120,True,2001,'Greater Toronto Airports Authority');
INSERT INTO airport_details VALUES(05,'Frankfurt Airport', 'FRA','Germany',22,2000,True,2013,'Fraport AG ');
INSERT INTO airport_details VALUES(06,'Chhatrapati Shivaji Maharaj International Airport ', 'Mumbai','India',30,1500,false,1942,'Mumbai International Airport Limited');
INSERT INTO airport_details VALUES(07,'Pune International Airport', 'Pune','India',35,2000,True,2005,'Airports Authority of India');
INSERT INTO airport_details VALUES(08,'Charles de Gaulle Airport', 'Paris','France',24,1700,false,2011,'Groupe ADP (Aéroports de Paris)');
INSERT INTO airport_details VALUES(09,'OHare International Airport', 'Chicago','USA',32,2550,True,1999,'Chicago Department of Aviation');
INSERT INTO airport_details VALUES(010,'Rajiv Gandhi International Airport', 'Hyderabad','India',35,500,True,2012,'GMR Hyderabad International Airport Limited');


SELECT * FROM airport_details where country= 'India' AND 
airport_ID = 07; 

SELECT * FROM airport_details where city = 'Pune' AND
terminal_count = 35 AND airport_ID = 16;

SELECT * FROM airport_details where city = 'Mumbai'
or airport_ID = 07;

SELECT * FROM airport_details where airport_ID in(1,3,5,7);
SELECT * FROM airport_details where airport_ID not in(5,6,7);



INSERT INTO olympic_games VALUES (olympic_ID, year, host_city, host_country, game_season, total_sports, total_athletes, start_date, end_date) ;
INSERT INTO olympic_games VALUES(11, 2020, 'Bengaluru', 'India', 'Summer', 33, 1132, '2021-07-23', '2021-08-08');
INSERT INTO olympic_games VALUES(12, 2002, 'Salt Lake City', 'USA', 'Winter', 15, 2500, '2002-02-08', '2002-02-24');
INSERT INTO olympic_games VALUES(13, 2000, 'Sydney', 'Australia', 'Summer', 28, 10700, '2000-09-15', '2000-10-01');
INSERT INTO olympic_games VALUES(14, 2022, 'Ahmedabad', 'India', 'Summer', 32, 10000, '2018-07-01', '2018-08-1'); 
INSERT INTO olympic_games VALUES(15, 2017, 'Tokyo', 'Japan', 'Summer', 33, 1000, '2021-07-23', '2021-08-08');
INSERT INTO olympic_games VALUES(16, 2023, 'Mumbai', 'India', 'Summer', 32, 1500, '2024-07-26', '2024-08-11');
INSERT INTO olympic_games VALUES(17, 2014, 'Sochi', 'Russia', 'Winter', 15, 2890, '2014-02-07', '2014-02-23');
INSERT INTO olympic_games VALUES(18, 1998, 'New Delhi', 'India', 'Winter', 23, 490, '2004-08-06', '2004-08-30');
INSERT INTO olympic_games VALUES(19, 2010, 'New Delhi', 'India', 'Commonwealth', 17, 7000, '2010-10-03', '2010-10-14');

SELECT * FROM olympic_games where game_season= 'Winter' AND 
host_city = 'New delhi'; 

SELECT * FROM olympic_games where year = 2014 AND
host_city = 'Sochi' AND olympic_ID = 17;

SELECT * FROM olympic_games where host_city = 'Ahmedabad'
or olympic_ID = 12;

SELECT * FROM olympic_games where olympic_ID in(11,13,15,17);
SELECT * FROM olympic_games where olympic_ID not in(15,16,17);






SELECT * FROM airport_details;

SELECT * FROM olympic_games;
