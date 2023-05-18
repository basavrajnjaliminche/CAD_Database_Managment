-- a3_BJ.sql
-- Assignment 3
-- Revision History:
-- Basavraj Jaliminche, Section 7, YYYY.MM.DD: Created
-- Basavraj Jaliminche, Section 7, YYYY.MM.DD: Updated 

PRINT 'PROG8080 Section 7';
PRINT 'Assignment 2';
PRINT '';
PRINT 'Basavraj Jaliminche';
PRINT '';
PRINT GETDATE();

--Q.1
SELECT CourseOffering.courseNumber AS "Course", MIN(finalMark) AS "Lowest Mark",
ROUND(AVG(finalMark),0) AS "Average Mark", 
MAX(finalMark) AS "Highest Mark"
FROM CourseOffering INNER JOIN CourseStudent
	ON CourseOffering.id = CourseStudent.CourseOfferingId
WHERE sessionCode = 'F10'
GROUP BY courseNumber

--Q 2
SELECT Employee.number AS "Employee", UPPER(LEFT(Person.lastName,3)) + RIGHT(Employee.number,3) AS "user id", 
COUNT(CourseOffering.courseNumber) AS "# Courses Taught"
FROM Person  JOIN Employee ON Person.number = Employee.number  JOIN CourseOffering ON Employee.number = CourseOffering.employeeNumber
WHERE schoolCode = 'EIT' AND sessionCode IN ('F08','W08','F09','W09')
GROUP BY Employee.number, UPPER(LEFT(Person.lastName,3)) + RIGHT(Employee.number,3)
ORDER BY "user id"
--Q 3
SELECT Program.acronym AS "Program", Program.name AS "Program Name", FORMAT(SUM(tuition*(1+coopFeeMultiplier)),'C') AS "Total Fees"
FROM Program INNER JOIN ProgramFee ON Program.code = ProgramFee.code
WHERE Program.acronym <> 'CP'
GROUP BY Program.acronym, Program.name
order by Program.acronym
--Q 4
SELECT p.number AS "Student Number", p.lastName AS "Last Name",  (pay.amount) AS "Payment Amount"
FROM Person p  JOIN Payment pay
	ON p.number = pay.studentNumber
	 JOIN PaymentMethod  paym
	ON pay.paymentMethodId = paym.id
WHERE  (pay.amount) > 1000
ORDER BY "Last Name" 
--Q 5
SELECT  *
FROM Person p  JOIN student s
	ON p.number = s.number
	join StudentProgram sp on sp.studentNumber=s.number
	join program prog on prog.code=sp.programCode
	join credential c on c.code=prog.credentialCode
	where programStatusCode='A' and S.isInternational=1