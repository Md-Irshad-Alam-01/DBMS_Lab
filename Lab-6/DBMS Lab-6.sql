
-- PART A: Basic Aggregate Queries


SELECT COUNT(*) AS Total_Students FROM Student;
SELECT COUNT(*) AS Total_Faculty FROM Faculty;
SELECT COUNT(*) AS Total_Courses FROM Course;
SELECT MAX(Credits) AS Max_Credits FROM Course;
SELECT MIN(Credits) AS Min_Credits FROM Course;



-- PART B: GROUP BY on Single Tables


SELECT Department_ID, COUNT(*) AS Total_Students
FROM Student
GROUP BY Department_ID;

SELECT Department_ID, COUNT(*) AS Total_Faculty
FROM Faculty
GROUP BY Department_ID;

SELECT Department_ID, COUNT(*) AS Total_Courses
FROM Course
GROUP BY Department_ID;

SELECT Semester, COUNT(*) AS Total_Enrollments
FROM Enrollment
GROUP BY Semester;

SELECT Grade, COUNT(*) AS Total_Students
FROM Enrollment
GROUP BY Grade;



-- PART C: GROUP BY with HAVING


SELECT Department_ID, COUNT(*) AS Total_Students
FROM Student
GROUP BY Department_ID
HAVING COUNT(*) > 3;

SELECT Semester, COUNT(*) AS Total_Enrollments
FROM Enrollment
GROUP BY Semester
HAVING COUNT(*) > 2;

SELECT Grade, COUNT(*) AS Total_Students
FROM Enrollment
GROUP BY Grade
HAVING COUNT(*) > 1;

SELECT Department_ID, COUNT(*) AS Total_Courses
FROM Course
GROUP BY Department_ID
HAVING COUNT(*) > 1;



-- PART D: Aggregation with JOIN


SELECT Course_ID, COUNT(Student_ID) AS Enrolled_Students
FROM Enrollment
GROUP BY Course_ID;

SELECT C.Course_Name, COUNT(E.Student_ID) AS Enrolled_Students
FROM Course C
INNER JOIN Enrollment E
ON C.Course_ID = E.Course_ID
GROUP BY C.Course_Name;

SELECT S.Department_ID, COUNT(S.Student_ID) AS Total_Students
FROM Student S
GROUP BY S.Department_ID;

SELECT F.Name, COUNT(C.Course_ID) AS Courses_Taught
FROM Faculty F
INNER JOIN Course C
ON F.Faculty_ID = C.Faculty_ID
GROUP BY F.Name;



-- PART E: Analytical Queries

SELECT C.Course_Name, MAX(E.Grade) AS Max_Grade
FROM Course C
INNER JOIN Enrollment E
ON C.Course_ID = E.Course_ID
GROUP BY C.Course_Name;

SELECT Department_ID, COUNT(*) AS Total_Courses
FROM Course
GROUP BY Department_ID;

SELECT Semester, COUNT(Student_ID) AS Total_Students
FROM Enrollment
GROUP BY Semester;

SELECT Course_ID, COUNT(Student_ID) AS Total_Students
FROM Enrollment
GROUP BY Course_ID
HAVING COUNT(Student_ID) > 2;