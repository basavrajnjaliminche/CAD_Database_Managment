-- Exercise 1
-- Revision History:
-- Basavraj Jaliminche, Section 4, 2022.08.30: Created
-- Basavraj Jaliminche, Section 4, 2022.09.02: Updated
Print 'PROG8080 Section 4';
Print 'Exercise 1';
Print 'Student ID : 8800149';
Print '';
Print '';Print GETDATE(); -- Q.1 List all data from the AcademicStatus table. (Academic Status)use SISselect *from [dbo].[AcademicStatus]--Q.2 List all the unique studentNumber from the Payment table. (Payment)Select DISTINCT [studentNumber]from [dbo].[Payment]--Q.3 List number and academicStatusCode for all students who have been discontinued(i.e., its ‘D’). List the results in descending order by number.(Student)SELECT number,academicStatusCode
FROM Student
WHERE academicStatusCode='D'
ORDER BY number--Q.4 List the province code the persons are from, but show each province code only once (i.e., no duplicates). List the results in ascending order by province code.(Person)SELECT DISTINCT provinceCode
FROM Person
ORDER BY provinceCode/*
5. List the province code the persons are from (i.e., no duplicates) with 
the NULL value excluded in the output. 
Number of rows expected: 4 
*/SELECT DISTINCT provinceCode
FROM Person
WHERE provinceCode IS NOT NULL/*
6. List number, last name, first name, city, and country for persons who 
does not have a province code assigned. 
Number of rows expected: 41 
*/SELECT number,lastName,firstName,city,countryCode
FROM Person
WHERE provinceCode IS NULL/*
7. List all data for students with finalmark less than (but not equal to) 55 
and greater than 50. Use BETWEEN as part of your solution. 
Number of rows expected: 10 
*/

SELECT *
FROM CourseStudent
WHERE finalMark BETWEEN 51 AND 54/*
8. List the number, capacity and memory of any room that has a capacity 
greater than or equal to 40, is a lab, has computers with 4GB memory, 
and is located at the Doon campus. 
Number of rows expected: 1
*/

SELECT number,capacity,memory
FROM Room
WHERE capacity>=40 AND isLab=1 AND memory='4GB' AND campusCode='D'/*
9. List all employees who teach in the School of Trades and 
Apprenticeship and are located at the Doon, Guelph or Waterloo 
campus. 
Number of rows expected: 3
*/

SELECT *
FROM Employee
WHERE schoolCode LIKE 'TAP' AND campusCode IN ('D','W','G')/*
10.List number, last name, first name, city, and country for persons with 
first name that starts with “AND” followed by any single character. 
Number of rows expected: 2
*/

SELECT number,lastName,firstName,city,countryCode
FROM Person
WHERE firstName LIKE 'AND_'