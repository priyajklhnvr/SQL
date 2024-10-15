CREATE TABLE bookDetails(
		book_id int unique,
		book_name varchar(30),
		author varchar(30) not null,
		publisher varchar(30),
		category varchar(20),
		language varchar(15),
		price int);
        
INSERT INTO bookDetails VALUES
(1,"Godaan","Munshi Premchand","Arrow Books","Fiction","Hindi",399),
(2,"The Alchemist","Paulo Coelho","HarperCollins","Fiction","English",299),
(3,"Khasakkintee","O.V. Vijayan","DC Books","Novel","Telugu",299),
(4,"Randamoozham","M.T.Vasudevan","DC Books","Fiction","Malayalam",375),
(5,"Rashmirathi","Ramdhari Singh Dinkar","DC Books","Novel","Hindi",280),
(6,"Harry Potter","J.K.Rowling","Bloomsbury","Fantasy","English",499),
(7,"A Brief History of Time","Stephen Hawking","Bantam","Cosmology","English",350),
(8,"Bharathipura","Anandamurthy","Oxford","Fiction","Kannada",250),
(9,"Samskara","Anandamurthy","Penguin Classic","Fiction","Kannada",300),
(10,"Atomic Habits","James Clear","Penguin Random House","Self help","English",550);



CREATE TABLE healthCare(
		 P_id int not null,
		 P_name varchar(20),
		 Appointment_No int not null unique,
		 doctor varchar(20)
         );


INSERT INTO healthCare values
(12,'Dev',50,'Dr.Swaroop'),
(13,'Robort',61,'Dr.Shwetha'),
(14,'kiran',42,'Dr.sanidhya'),
(15,'Kanta',82,'Dr.Arun'),
(16,'Amala',44,'Dr.Priya'),
(17,'Nitya',48,'Dr.bhavya'),
(18,'Manu',22,'Dr.Nagarathna'),
(19,'Manoj',75,'Dr.Sahana');

select * from healthcare;




