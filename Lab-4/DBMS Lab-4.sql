/* 
   EXPERIMENT: DATA RETRIEVAL USING SQL (READ ONLY QUERIES)
   PURPOSE: Practice SELECT queries without modifying data
    */


PROMPT ================= PART A =================

CLEAR SCREEN;
SET PAGESIZE 500;
SET LINESIZE 200;
SET WRAP OFF;


/* 1. Display all columns from Student with aliases */
SELECT 
Student_ID AS Roll_No,
Name AS Student_Name,
Date_of_Birth AS DOB,
Gender AS Student_Gender,
Contact_Number AS Phone,
Department_ID AS Dept_ID
FROM Student;

/* 2. Display only StudentID, Name, Dept_ID with aliases */
SELECT 
Student_ID AS Roll_No,
Name AS Student_Name,
Department_ID AS Dept_ID
FROM Student;

/* 3. Display Faculty details with readable names */
SELECT 
Faculty_ID AS Faculty_No,
Name AS Faculty_Name,
Designation AS Job_Title,
Email AS Email_Address
FROM Faculty;


/* 4. Display Course table with renamed headers */
SELECT 
Course_ID AS Course_Code,
Course_Name AS Course_Title,
Credits AS Credit_Value,
Department_ID AS Dept_ID,
Faculty_ID AS Faculty_No
FROM Course;

/* 5. Display Enrollment table with aliases */
SELECT 
Student_ID AS Roll_No,
Course_ID AS Course_Code,
Semester AS Semester_Name,
Grade AS Final_Grade
FROM Enrollment;

PROMPT ================= PART B =================

/* 6. Students from department */
SELECT * FROM Student
WHERE Department_ID = 1;

/* 7. Female students */
SELECT * FROM Student
WHERE Gender = 'Female';

/* 8. Faculty with designation Asst Pro */
SELECT * FROM Faculty
WHERE Designation = 'Assistant Professor';

/* 9. Faculty from department D002 */
SELECT * FROM Faculty
WHERE Department_ID = 2;

/* 10. Courses with credits >= 4 */
SELECT * FROM Course
WHERE Credits >= 4;

/* 11. Students born after 1 Jan 2003 */
SELECT * FROM Student
WHERE Date_of_Birth > DATE '2003-01-01';

/* 12. Enrollment records for semester S3 */
SELECT * FROM Enrollment
WHERE Semester = 'Sem4';


PROMPT ================= PART C =================

/* 13. Students sorted by name ascending */
SELECT * FROM Student
ORDER BY Name ASC;

/* 14. Students sorted by DOB descending */
SELECT * FROM Student
ORDER BY Date_of_Birth DESC;

/* 15. Faculty sorted by designation */
SELECT * FROM Faculty
ORDER BY Designation ASC;

/* 16. Courses sorted by credits descending */
SELECT * FROM Course
ORDER BY Credits DESC;

/* 17. First 3 students */
SELECT * FROM Student
FETCH FIRST 3 ROWS ONLY;

/* 18. First 5 courses */
SELECT * FROM Course
FETCH FIRST 5 ROWS ONLY;


PROMPT ================= PART D =================

/* 19. Student name with calculated age */
SELECT Name,
TRUNC(MONTHS_BETWEEN(SYSDATE, Date_of_Birth)/12) AS Age
FROM Student;

/* 20. Course name with updated credits */
SELECT 
Course_Name,
Credits + 1 AS Updated_Credits
FROM Course;

/* 21. Enrollment with grade renamed */
SELECT 
Student_ID,
Course_ID,
Semester,
Grade AS Final_Grade
FROM Enrollment;

/* 22. Student name with birth year */
SELECT 
Name,
EXTRACT(YEAR FROM Date_of_Birth) AS Birth_Year
FROM Student;

/* 23. Faculty name with email domain */
SELECT 
Name,
SUBSTR(Email, INSTR(Email,'@')+1) AS Email_Domain
FROM Faculty;