-- e3_BJ.sql
-- Exercise 3
-- Revision History:
-- Basavaraj Jaliminche, Section 7, 2022.10.31: Created
-- Basavraj Jaliminche, Section 7, 2022.10.31: Updated 

Print 'PROG8080 Section 7';
Print 'Exercise 3';
Print '';
Print 'Basavraj Jaliminche';
Print 'Student Id- 8800149';
Print GETDATE(); 

use SIS
--Q.1 Find the lowest finalMark in the CourseStudent table.
select top 1 * 
from CourseStudent 
order by finalMark 

--Q.2 Find the total number of students enrolled in courses with session code F08

select count(*) 
from [dbo].[CourseOffering]
where sessionCode = 'F08'

--Q.3 Find the average student enrolment in all the courses.

select AVG(id) as average_number,courseNumber
from CourseOffering
group by courseNumber


--Q.4 List person number and birth date for the oldest person.Use a subquery in the WHERE clause. 
select number,birthdate
from Person 
where birthdate in (
                     select min(birthdate)
					 from Person)

--Q.5 List the courses that are offered in the first semester in
--the ITID program. Include the course number, credit
--hours, credits, and course name in the result. Order your
--answer by course number ascending. Use only subqueries
--to produce your answer. The only literal string constant
--you can use is “ITID”. Do not use a join to produce the
--result.

select * 
from Course 
where number in (select courseNumber
                 from  ProgramCourse  
				 where programCode in 
				                     (select code 
				                      from Program
									  where acronym='ITID') and semester =1) 
