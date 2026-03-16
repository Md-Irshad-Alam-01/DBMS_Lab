SELECT 
S.Student_ID,
S.Name,
E.Course_ID
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID;

SELECT 
S.Name,
E.Semester
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID;

SELECT 
S.Name,
E.Grade
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID;

SELECT 
C.Course_Name,
C.Credits,
F.Name AS Faculty_Name
FROM Course C
INNER JOIN Faculty F
ON C.Faculty_ID = F.Faculty_ID;

SELECT 
C.Course_Name
FROM Course C
INNER JOIN Faculty F
ON C.Faculty_ID = F.Faculty_ID
WHERE F.Faculty_ID = 201;

SELECT 
F.Name,
F.Designation,
C.Course_Name
FROM Faculty F
INNER JOIN Course C
ON F.Faculty_ID = C.Faculty_ID;

SELECT 
S.Name,
C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID;

SELECT 
S.Name,
C.Course_Name,
E.Semester
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID;

SELECT 
S.Name,
C.Course_Name,
E.Grade
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID
WHERE E.Semester = 'Sem4';

SELECT 
C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID
WHERE S.Student_ID = 41;

SELECT 
S.Name,
S.Department_ID,
C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID;

SELECT 
D.Department_Name,
C.Course_Name
FROM Department D
INNER JOIN Course C
ON D.Department_ID = C.Department_ID;

SELECT 
F.Name,
D.Department_Name
FROM Faculty F
INNER JOIN Department D
ON F.Department_ID = D.Department_ID;

SELECT 
S.Name,
C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID
WHERE S.Department_ID = 5;

SELECT 
S.Name,
C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID
ORDER BY S.Name ASC;

SELECT 
F.Name,
C.Course_Name,
C.Credits
FROM Faculty F
INNER JOIN Course C
ON F.Faculty_ID = C.Faculty_ID
ORDER BY C.Credits DESC;

SELECT 
C.Course_Name,
COUNT(E.Student_ID) AS Total_Students
FROM Course C
INNER JOIN Enrollment E
ON C.Course_ID = E.Course_ID
GROUP BY C.Course_Name;

SELECT 
F.Name,
COUNT(C.Course_ID) AS Total_Courses
FROM Faculty F
INNER JOIN Course C
ON F.Faculty_ID = C.Faculty_ID
GROUP BY F.Name;

SELECT 
D.Department_Name,
COUNT(S.Student_ID) AS Total_Students
FROM Department D
INNER JOIN Student S
ON D.Department_ID = S.Department_ID
GROUP BY D.Department_Name;

SELECT 
C.Course_Name,
MAX(E.Grade) AS Max_Grade
FROM Course C
INNER JOIN Enrollment E
ON C.Course_ID = E.Course_ID
GROUP BY C.Course_Name;