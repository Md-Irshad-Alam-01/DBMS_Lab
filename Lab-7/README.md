# 📘 DBMS Lab 7 – Subqueries (Nested Queries)

## 🔷 Experiment Title  
**Subqueries (Nested Queries)**

---

## 🔷 Objective  
To understand and apply subqueries (nested queries) to retrieve and analyze data using conditions and aggregate functions without modifying the database.

---

# 🟢 Parts in this Experiment

* Part A: Basic Subqueries  
* Part B: Subqueries with IN  
* Part C: Subqueries with Aggregate Functions  
* Part D: Subqueries Instead of JOIN  
* Part E: Analytical Subqueries  
* Part F: Challenging Queries  

---

# 🟢 Key Concepts

* Subqueries (nested queries)  
* Single-row and multi-row subqueries  
* IN and EXISTS operators  
* Subqueries with aggregate functions  
* Data filtering using subqueries  

---

# 🟢 Example

```sql
SELECT Name
FROM Student
WHERE Department_ID = (
    SELECT Department_ID
    FROM Student
    WHERE Student_ID = 401
);
