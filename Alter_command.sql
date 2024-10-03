/*ADD 4 colmuns*/

ALTER TABLE customer  ADD COLUMN Gender varchar(15);
ALTER TABLE customer  ADD COLUMN Email varchar(25);
ALTER TABLE customer  ADD COLUMN PhoneNo varchar(15);
ALTER TABLE customer  ADD COLUMN DOB date;

SELECT * FROM customer;
DESC customer;

/* Remove 2 columns */

ALTER TABLE customer DROP COLUMN Gender;
ALTER TABLE customer DROP COLUMN DOB;

/* Rename 3 columns */

ALTER TABLE customer RENAME COLUMN City to cust_city;
ALTER TABLE customer RENAME COLUMN PhoneNo to Contact;
ALTER TABLE customer RENAME COLUMN Email to Email_id;

/* Change datatypes*/

ALTER TABLE customer CHANGE COLUMN cust_city cust_city varchar(50);
ALTER TABLE customer CHANGE COLUMN Contact Contact bigint;
ALTER TABLE customer CHANGE COLUMN Age Age float;

/* Rename the Table Name*/
ALTER TABLE customer RENAME TO custmomer_info;