-- e2_XX.sql
-- Exercise 2
-- Revision History:
-- Basavraj Jaliminche, Section 4, 2022.10.16: Created
-- Basavraj Jaliminche, Section 4, 2022.10.16: Updated
Print 'PROG8080 Section 4';
Print 'Exercise 2';
Print '';
Print 'Basavraj Jaliminche';
Print '';
Print GETDATE(); 

-- Q1.List the required course prerequisites for COMP2280. Include
--the course codes and course names for each prerequisite in
--the result. Order the result by the prerequisite course code. Do
--not use the explicit join syntax.
use sis

select c1.number,c1.name,c2.prerequisiteNumber
from course c1,CoursePrerequisiteAnd c2
where c1.number=c2.courseNumber and c2.courseNumber= 'COMP2280'
order by c2.prerequisiteNumber

--Q2 List the persons from the Person table who are not students.
--Show the person’s number, first name, last name, and city.
--Use LEFT OUTER JOIN. Order the results by the person’s last
--name.

select p.number,p.firstname,p.lastname,p.city
from Person p left join Student s
on p.number = s.number

--Q.3 List the lab software installed on machines in room 1C26. List
--each software package’s unique identifier along with the
--software product’s name. Order the result by software product
--name. Use the explicit join syntax. 

select s.product,s.uniqueId 
from Software s inner join LabSoftware l 
on s.uniqueId = l.softwareUniqueId
inner join Room r on l.roomId = r.id and r.number = '1C26' 
order by product

--Q.4 Show Employee e1.number aliased as ‘Employee’ and
--Employee e1.reportsTo aliased as ‘Supervisor’ and Employee
--e2.reportsTo aliased as ‘Supervisor Reports To’. Order the
--results by e1.reportsTo. Do left outer self-join (e1.reportsTo =
--e2.number).

select e1.number as 'Employee',e1.reportsTo 'Supervisor',e2.reportsTo 'Supervisor Reports To'
from Employee e1 left join Employee e2 
on e1.reportsTo = e2.number
order by e1.reportsTo
