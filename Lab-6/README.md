# 📘 DBMS Lab 6 – Data Aggregation using GROUP BY and HAVING

## 🔷 Experiment Title  
**Data Aggregation using GROUP BY and HAVING**

---

## 🔷 Objective  
To understand and apply SQL aggregate functions along with GROUP BY and HAVING clauses to summarize and analyze data without modifying the database.

---

# 🟢 Parts in this Experiment

* Part A: Basic Aggregate Queries  
* Part B: GROUP BY on Single Tables  
* Part C: GROUP BY with HAVING  
* Part D: Aggregation with JOIN  
* Part E: Analytical Queries  

---

# 🟢 Key Concepts

* Aggregate functions (COUNT, SUM, AVG, MAX, MIN)  
* GROUP BY clause  
* HAVING clause  
* GROUP BY with JOIN  
* Data summarization and analysis  

---

# 🟢 Example

```sql
SELECT Department_ID, COUNT(*) AS Total_Students
FROM Student
GROUP BY Department_ID
HAVING COUNT(*) > 3;
