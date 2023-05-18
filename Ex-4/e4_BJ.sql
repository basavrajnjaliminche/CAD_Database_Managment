-- e4_.sql
-- Exercise 4
-- Revision History:
-- BASAVRAJ JALIMINCHE, Section 7, 2022.12.04: Created
-- BASAVRAJ JALIMINCHE, Section 7, 2022.12.04: Updated 
Print 'PROG8080 Section 7';
Print 'Exercise 4';
Print '';
Print 'Basavraj Jaliminche';
Print '8800149';
Print GETDATE(); 

USE SIS
--Q.1 Insert a Person record for Indu Taneja.Show all columns for the record you just added
--Insert a Person record for Indu Taneja
INSERT INTO [dbo].[Person]
VALUES
('7424476','TANEJA','INDU','FLAT NO. 100 TRIVENI APARTMENTS PITAM PURA',
'NEW DELHI','ON','IND','110034','0141-6610242','94324060195',
'iteneja@conestogac.on.ca',
'iteneja@bsnl.co.in','1989.10.07')

--Show all columns for the record you just added
SELECT * FROM Person WHERE number = '7424476'

--Q.2 Insert a Student record for Indu Taneja.
--Show number, isInternational, academicStatusCode,
--financialStatusCode, sequentialNumber and balance for Indu Taneja.


  --select * FROM Payment
--select * from Student

INSERT INTO Student
	(number, isInternational, academicStatusCode, financialStatusCode, sequentialNumber,
	 balance, localStreet, localCity, localPostalCode, localPhone)
VALUES
	('7424476', 1, 'N', 'N', 0, 1130.00,
	 '445 GIBSON ST N', 'Kitchener', 'N2M 4T4', '(226) 147-2985');

--Show localStreet for Indu Taneja.

SELECT localStreet
FROM Student
WHERE number = '7424476'

--Show localCity and localPostalCode for Indu Taneja
SELECT localCity,localPostalCode
FROM Student
WHERE number = '7424476'

SELECT number
	, isInternational
	, academicStatusCode
	, financialStatusCode
	, sequentialNumber
	, balance
	, localStreet
	, localCity
	, localPostalCode
FROM Student
WHERE number = '7424476'



--q.3 Inspect the Program table to find the program code for the CAD program.

--SELECT * FROM Program

SELECT code 
FROM Program 
WHERE acronym = 'CAD'

--Insert a StudentProgram record that puts Indu Taneja in the CAD
--program. Use the Program code that you looked up.

--SELECT * FROM StudentProgram 

INSERT INTO StudentProgram
(studentNumber, programCode, semester, programStatusCode)
VALUES
('7424476','0066C',1,'A')

--Show studentNumber, programCode, semester and programStatusCode
--for Indu Taneja.
SELECT studentNumber
	, programCode
	, semester
	, programStatusCode
FROM StudentProgram
WHERE studentNumber = '7424476';

--q.4 
--Inspect the CourseOffering table and find the id for PROG8080 in the Fall
--2014 (F14) session.

--SELECT *
--FROM CourseOffering

SELECT ID
FROM CourseOffering
WHERE courseNumber = 'PROG8080' AND
      sessionCode = 'F14'

--Insert a CourseStudent record that puts InduTaneja in PROG8080 in the
--Fall 2014 session. Use the CourseOffering id that you looked up.
--ANS:

--SELECT * 
--FROM CourseStudent

INSERT INTO CourseStudent
	(CourseOfferingId, studentNumber, finalMark)
VALUES
	(62, '7424476', 0);

--Show courseOfferingId, studentNumber and finalMark for Indu Taneja

SELECT CourseOfferingId
	, studentNumber
	, finalMark
FROM CourseStudent
WHERE studentNumber = '7424476';

--Q.5 nspect the IncidentalFee table to find the id for the 'Technology
--Enhancement Fee'.

--SELECT * FROM IncidentalFee

SELECT id
FROM IncidentalFee
WHERE item = 'Technology Enhancement Fee'


--Update the 'Technology Enhancement Fee' to $100.00.
UPDATE IncidentalFee
SET amountPerSemester = 100.00
WHERE id = 5;

--Begin a transaction.
BEGIN TRAN;

--Update the 'Technology Enhancement Fee' to set amountPerSemester to $150.00.

UPDATE IncidentalFee 
       SET amountPerSemester = 150.00
	   WHERE id = 5 ;

--Rollback the transaction.

ROLLBACK;

--Show the 'Technology Enhancement Fee'. The amountPerSemester should be $100.00.

SELECT * 
FROM IncidentalFee
WHERE id = 5

