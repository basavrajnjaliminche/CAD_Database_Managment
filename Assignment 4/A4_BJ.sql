--Assignment 4 
--Basavraj Jalimimche(8800149)
--PROG8080 Database Management
--Q.Desktop Bundles ‘R Us (DBRU) is a small company in KW that specializes in assembling desktop computers and
--accessories into “desktop bundles” and sell them at a special discount. To simplify the choices for DBRU
--customers, there are four desktop bundles to select based on brand (Dell vs HP) and bundle type (Economy vs
--Business). DBRU also sells computer parts such as mouse and keyboard (not part of a desktop bundle).
--The owner of the company realized that the spreadsheet became long and difficult to understand. You are hired
--to design a database (normalize to 3NF), which would replace this spreadsheet. You must keep all the
--information in the database. 
--Additional Information that must be included in the database:
--• All IDs are numeric and are generated automatically on insert
--• Purchaser have first and last names, email, addresses (street number, street name, city, province,country, postal code) and phones
--• Each part can be purchased from one supplier only
--• Each part belongs to only one “part type”--• Unit price of each part are the same in all the purchase date mentioned above (i.e., no price fluctuation)

--IMPORTANT:
--• You must follow the naming convention for database, tables, columns, and constraint names. One point
--deduction for each violation, up to a maximum of 10 points.
--• You must follow the SQL coding standard. One point deduction for each violation, up to a maximum of 10 points.
--• You can use functions and stored procedures and introduce variables as part of your SQL script
--Requirement

--1. If exists, drop the database. Then, create the database named DBRU_XX(XX being your initials).
--Note: Your script should run repeatedly without errors.
--2.Create proper tables
--3. Allocate columns to the proper tables.
--4. Create the proper primary key constraints.
--5. Create the proper foreign key constraints

-- a4_Bj.sql
-- Assignment 3
-- Revision History:
-- Basavraj Jalimnhe, Section 7, 2022.12.09: Created
-- Basavraj Jalimnhe, Section 7, 2022.12.09: Updated
Print 'PROG8080 Section 7';
Print 'Assignment 4';
Print '';
Print 'Basavraj Jalimnhe';
Print '';
Print GETDATE(); 
--

DROP DATABASE IF EXISTS DBRU_BJ -- 1.If exists, drop the database. Then, 

CREATE DATABASE DBRU_BJ; --create the database named DBRU_XX(XX being your initials).

CREATE TABLE PurchaseAct (id int NOT NULL IDENTITY(1, 1), ---2.Create proper tables and  Allocate columns to the proper tables.
						partNumber nvarchar(50),
						supplier nvarchar(50),
						partType nvarchar(50),
						partDescription nvarchar(50),
						purchaser nvarchar(50),
						desktopBundle nvarchar(50),
						purchaseDate nvarchar(50),
						unitPrice nvarchar(50),
						qty int, 
						PRIMARY KEY (id));-- Create the proper primary key constraints.
INSERT INTO PurchaseAct (partNumber, supplier, partType, partDescription, purchaser, desktopBundle, purchaseDate, unitPrice, qty) VALUES ('DL1010', 'Dell', 'Desktop', 'Dell Optiplex 1010', 'Moe', 'Dell Eco', '01/31/2022', '$40', 25);
INSERT INTO PurchaseAct (partNumber, supplier, partType, partDescription, purchaser, desktopBundle, purchaseDate, unitPrice, qty) VALUES ('DL5040', 'Dell', 'Desktop', 'Dell Optiplex 5040', 'Moe', 'Dell Biz', '01/31/2022', '$150', 40);
INSERT INTO PurchaseAct (partNumber, supplier, partType, partDescription, purchaser, desktopBundle, purchaseDate, unitPrice, qty) VALUES ('DLS190', 'Dell', 'Monitor', 'Dell 19-inch Monitor', 'Moe', 'Dell Eco', '01/31/2022', '$35', 25);
INSERT INTO PurchaseAct (partNumber, supplier, partType, partDescription, purchaser, desktopBundle, purchaseDate, unitPrice, qty) VALUES ('HP400', 'HP', 'Desktop', 'HP Desktop Tower', 'Jane', 'HP Eco', '02/10/2022', '$60', 15);
INSERT INTO PurchaseAct (partNumber, supplier, partType, partDescription, purchaser, desktopBundle, purchaseDate, unitPrice, qty) VALUES ('HP800', 'HP', 'Desktop', 'HP EliteDesk 800G1', 'Jane', 'HP Biz', '02/20/2022', '$200', 20);
INSERT INTO PurchaseAct (partNumber, supplier, partType, partDescription, purchaser, desktopBundle, purchaseDate, unitPrice, qty) VALUES ('HPS027', 'HP', 'Monitor', 'HP 27-inch Monitor', 'Jane', 'HP Biz', '02/20/2022', '$120', 20);
INSERT INTO PurchaseAct (partNumber, supplier, partType, partDescription, purchaser, desktopBundle, purchaseDate, unitPrice, qty) VALUES ('LTC707', 'Logitech', 'Keyboard', 'Logitch 101-Key Computer Keyboard', 'Gary', 'Dell Eco, Dell Biz', '03/05/2022', '$7', 50);
INSERT INTO PurchaseAct (partNumber, supplier, partType, partDescription, purchaser, desktopBundle, purchaseDate, unitPrice, qty) VALUES ('LTC707', 'Logitech', 'Keyboard', 'Logitch 101-Key Computer Keyboard', 'Gary', 'Dell Biz', '03/05/2022', '$7', 50);
INSERT INTO PurchaseAct (partNumber, supplier, partType, partDescription, purchaser, desktopBundle, purchaseDate, unitPrice, qty) VALUES ('LTC808', 'Logitech', 'Mouse', 'Logitech Mouse', 'Gary', 'Dell Eco, Dell Biz', '03/05/2022', '$5', 50);
INSERT INTO PurchaseAct (partNumber, supplier, partType, partDescription, purchaser, desktopBundle, purchaseDate, unitPrice, qty) VALUES ('LTC808', 'Logitech', 'Mouse', 'Logitech Mouse', 'Gary', 'Dell Biz', '03/05/2022', '$5', 50);
INSERT INTO PurchaseAct (partNumber, supplier, partType, partDescription, purchaser, desktopBundle, purchaseDate, unitPrice, qty) VALUES ('DLS240', 'Dell', 'Monitor', 'Dell 24-inch Monitor', 'Gary', 'Dell Biz', '03/05/2022', '$80', 80);
INSERT INTO PurchaseAct (partNumber, supplier, partType, partDescription, purchaser, desktopBundle, purchaseDate, unitPrice, qty) VALUES ('HPS022', 'HP', 'Monitor', 'Hp 22-inch Monitor', 'Moe', 'HP Eco', '03/10/2022', '$45', 30);
INSERT INTO PurchaseAct (partNumber, supplier, partType, partDescription, purchaser, desktopBundle, purchaseDate, unitPrice, qty) VALUES ('LTC808', 'Logitech', 'Mouse', 'Logitech Mouse', 'Gary', 'Dell Eco, Dell Biz', '03/15/2022', '$5', 50);
INSERT INTO PurchaseAct (partNumber, supplier, partType, partDescription, purchaser, desktopBundle, purchaseDate, unitPrice, qty) VALUES ('LTC808', 'Logitech', 'Mouse', 'Logitech Mouse', 'Gary', 'Dell Biz', '03/15/2022', '$5', 50);
INSERT INTO PurchaseAct (partNumber, supplier, partType, partDescription, purchaser, desktopBundle, purchaseDate, unitPrice, qty) VALUES ('LTC909', 'Logitech', 'Camera', 'Logitech Camera', 'Gary', 'HP Biz', '03/15/2022', '$20', 30);
INSERT INTO PurchaseAct (partNumber, supplier, partType, partDescription, purchaser, desktopBundle, purchaseDate, unitPrice, qty) VALUES ('MS500', 'Microsoft', 'Keyboard', 'Microsoft 101-Key Computer Keyboard', 'Titus', 'HP Eco, HP Biz', '03/20/2022', '$9', 80);
INSERT INTO PurchaseAct (partNumber, supplier, partType, partDescription, purchaser, desktopBundle, purchaseDate, unitPrice, qty) VALUES ('MS500', 'Microsoft', 'Keyboard', 'Microsoft 101-Key Computer Keyboard', 'Titus', 'HP Biz', '03/20/2022', '$9', 80);
INSERT INTO PurchaseAct (partNumber, supplier, partType, partDescription, purchaser, desktopBundle, purchaseDate, unitPrice, qty) VALUES ('MS600', 'Microsoft', 'Mouse', 'Microsoft Mouse', 'Titus', 'HP Eco, HP Boz', '03/20/2022', '$6', 80);
INSERT INTO PurchaseAct (partNumber, supplier, partType, partDescription, purchaser, desktopBundle, purchaseDate, unitPrice, qty) VALUES ('MS600', 'Microsoft', 'Mouse', 'Microsoft Mouse', 'Titus', 'HP Boz', '03/20/2022', '$6', 80);

--Table created is in 1NF and for the making changes we have to go to 2 nf 
SELECT * FROM PurchaseAct;


--Converting table to 2NF form 
SELECT id,
       partNumber,
	   supplier, 
	   partType, 
	   partDescription,
	   desktopBundle 
INTO parts 
FROM PurchaseAct;

SELECT * FROM parts;

SELECT id,
       partNumber,
	   purchaser 
INTO Purchaser 
FROM PurchaseAct;

ALTER TABLE Purchaser
ADD firstName nvarchar(50), 
    lastName nvarchar(50),
	email nvarchar(50),
	streetNumber nvarchar(50),
	streetName nvarchar(50),
	city nvarchar(50),
	province nvarchar(50),
	country nvarchar(50) DEFAULT 'Canada',
	postalCode nvarchar(50),
	phone nvarchar(50);

CREATE INDEX idx_phone 
ON Purchaser (phone);

SELECT * FROM Purchaser;

SELECT id, 
       partNumber,
	   supplier,
	   desktopBundle,
	   purchaseDate,
	   unitPrice,
	   qty 
INTO PurchaseOrder 
FROM PurchaseAct;

ALTER TABLE PurchaseOrder
ADD CONSTRAINT CHK_PurchaseOrder CHECK (qty>0);

SELECT * FROM PurchaseOrder;


--From table 2NF created Tables in 3NF form
SELECT id,
       desktopBundle,
	   unitPrice 
INTO Bundle 
FROM PurchaseOrder;

SELECT * FROM Bundle;

--Adding unit prise must be possitive and not less than zero
ALTER TABLE Bundle 
ADD CONSTRAINT CHK_Bundle 
CHECK (unitPrice !< 0);

SELECT * FROM Bundle;

SELECT partNumber,
       desktopBundle,
	   unitPrice 
INTO BundleParts
FROM PurchaseOrder;

--
SELECT * FROM  BundleParts;







