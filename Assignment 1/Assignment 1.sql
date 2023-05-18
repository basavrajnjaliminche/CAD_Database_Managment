-- a1_BJ.sql
-- Revision History:
-- Basavraj Jaliminche, Section 4, 2022.10.07: Created
-- Basavraj Jaliminche, Section 4, 2022.10.07: Updated
Print 'PROG8080 Section 4';
Print '';
Print 'Basavraj Jaliminche';
Print 'Asssignment 1';
Print 'Student ID : 8800149';
Print '';
Print GETDATE();


/*Q.1 List number and academicStatusCode for all students who have
been discontinued or suspended. List the results in ascending order
by number. Use “!=“ operator as part of your solution. Do not use
OR or NOT.
Number of rows expected: 13 */

select number,academicStatusCode,* 
from student s 
where academicStatusCode !='N' 
order by s.number asc;

/*Q.2 College management would like to see the new values that will
result if all incidental fees are increased by 10%. Show item aliased
as ‘Incidental Fee Item’. Show amountPerSemester aliased as
‘Current Fee’. Use an expression to calculate the increased fee and
alias the output as ‘Increased Fee’. Order the results in descending
order using the ‘Current Fee’ alias.*/

SELECT item as "Incidental Fee Item", amountPerSemester as "Current Fee",  CONVERT( CHAR(12), CAST( amountPerSemester * 1.10 AS MONEY ), 1) as 'Increased Fee' 
FROM IncidentalFee 
ORDER BY amountPerSemester;

/*Q.3 List the code, acronym and name of the programs with program
name that contains ‘Coop’. */
select code, acronym , name 
from [dbo].[Program] 
where name like '%Coop%'


/*Q.4 List user id’s for all persons whose last name starts with ‘Y’. The
user id consists of the first letter of the first name and the first seven
letters of the last name, all in lower case. Alias the user id ‘User ID’,
and sort the results in ascending ‘User ID’ order. Use either LEFT()
or SUBSTRING() as you wish.*/

select firstname,lastName,LOWER(SUBSTRING(firstName,0,2)+SUBSTRING(lastName,0,8)) as 'User ID' 
from person 
where lastName like'Y%' order by [User ID] asc

/*Q.5 List number, birth date aliased as ‘dob’, and calculated age aliased
as ‘age’, for persons that are at least 65 years old as of today. Use
FORMAT() to display ‘dob’ in the format similar to “January 01,
2022”. Use DATEDIFF() to calculate the ‘age’. */

SELECT number, FORMAT(birthdate,'MMMM dd, yyyy') as "dob", DATEDIFF(YEAR, birthdate, GETDATE()) as "age" 
FROM Person 
WHERE DATEDIFF(YEAR, birthdate, GETDATE()) > 65;

/*Q.6 List number aliased as ‘Course Code’ and name aliased as ‘Course
Name’ for all courses that have the word ‘Database’ in their name.
You need to use a Scalar function. You CANNOT use LIKE. */

select number as 'Course Code' ,name as 'Course Name', * 
from course 
where charindex('database',name)>0;