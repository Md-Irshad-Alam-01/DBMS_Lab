
-- PART A: Basic Subqueries

-- 1. 
SELECT Name
FROM Student
WHERE Department_ID = (
    SELECT Department_ID
    FROM Student
    WHERE Student_ID = 401
);

-- 2. 
SELECT Name
FROM Student
WHERE Gender = (
    SELECT Gender
    FROM Student
    WHERE Student_ID = 402
);

-- 3. 
SELECT Name
FROM Student
WHERE Department_ID = (
    SELECT Department_ID
    FROM Student
    WHERE Student_ID = 403
);



-- PART B: Subqueries with IN


-- 4. 
SELECT Name
FROM Student
WHERE Department_ID IN (
    SELECT Department_ID
    FROM Student
    WHERE Gender = 'Female'
);

-- 5. 
SELECT Name
FROM Student
WHERE Student_ID IN (
    SELECT Student_ID
    FROM Enrollment
);

-- 6. 
SELECT Name
FROM Student
WHERE Student_ID IN (
    SELECT Student_ID
    FROM Enrollment
);


-- PART C: Aggregate Subqueries


-- 7.
SELECT Course_Name
FROM Course
WHERE Credits > (
    SELECT AVG(Credits)
    FROM Course
);

-- 8. 
SELECT Name
FROM Student
WHERE Student_ID > (
    SELECT AVG(Student_ID)
    FROM Student
);

-- 9. 
SELECT Department_ID
FROM Student
GROUP BY Department_ID
HAVING COUNT(*) > (
    SELECT AVG(cnt)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM Student
        GROUP BY Department_ID
    )
);


-- PART D: Subqueries Instead of JOIN


-- 10. 
SELECT Name
FROM Student
WHERE Student_ID IN (
    SELECT Student_ID
    FROM Enrollment
);

-- 11.
SELECT Name
FROM Student
WHERE Department_ID IS NOT NULL;

-- 12. 
SELECT Course_Name
FROM Course
WHERE Course_ID IN (
    SELECT Course_ID
    FROM Enrollment
);



-- PART E: Analytical Subqueries


-- 13.
SELECT Course_Name
FROM Course
WHERE Credits = (
    SELECT MAX(Credits)
    FROM Course
);

-- 14. 
SELECT Student_ID
FROM Enrollment
GROUP BY Student_ID
HAVING COUNT(*) > 1;

-- 15. 
SELECT Department_ID
FROM Student
GROUP BY Department_ID
HAVING COUNT(*) = (
    SELECT MAX(cnt)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM Student
        GROUP BY Department_ID
    )
);