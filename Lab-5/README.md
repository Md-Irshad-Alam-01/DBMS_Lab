# 📘 DBMS Lab 5 – Data Retrieval Using JOINs

## 🔷 Experiment Title  
**Data Retrieval from Multiple Tables Using JOINs**

---

## 🔷 Objective  
To understand and apply INNER JOIN to retrieve data from multiple related tables using primary–foreign key relationships without modifying the database.

---

# 🟢 Parts in this Experiment

* Part A: Student–Enrollment  
* Part B: Course–Faculty  
* Part C: Student–Course–Enrollment  
* Part D: Department-Based Queries  
* Part E: Filtering and Sorting  
* Part F: Analytical Queries  

---

# 🟢 Key Concepts

* INNER JOIN  
* Table aliases  
* Primary–Foreign Key relationships  
* Multi-table queries  
* GROUP BY with JOIN  

---

# 🟢 Example

```sql
SELECT S.Name, C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID;
