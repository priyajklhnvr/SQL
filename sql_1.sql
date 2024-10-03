create database NewDB 

CREATE table customer(
    "ID" int PRIMARY KEY,
    "Name" varchar(50) NOT NULL,
    "Age" int NOT NULL,
    "City" char(50),
    "Salary" numeric
);
select *
from customer