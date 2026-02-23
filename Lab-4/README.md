# 📘 DBMS Lab 4 – Data Retrieval Using SQL (Read-Only Queries)

## 🔷 Experiment Title

**Data Retrieval Using SQL (Read-Only Queries)**

## 🔷 Objective

The objective of this experiment is to understand and practice retrieving and analyzing data from existing database tables using SQL read-only queries.
These queries help in viewing, filtering, sorting, and computing data without modifying the database structure or stored data.

This experiment focuses only on the **SELECT statement** and its various uses such as aliases, filtering, sorting, and derived output.

---

# 🟢 Total Parts in this Experiment

This lab contains **4 main parts**:

* **Part A:** Basic Data Display with Aliases
* **Part B:** Conditional Data Display (WHERE clause)
* **Part C:** Sorting and Limiting Results
* **Part D:** Derived / Computed Output

Each part helps to understand different SQL data retrieval techniques.

---

# 🟢 Part A – Basic Data Display Using Aliases

### 🔹 Explanation

This part focuses on displaying data from tables and using **column aliases**.
Aliases are temporary names given to columns in output to make them more readable and meaningful.

Aliases do not change actual column names in the table; they only change how results appear in output.

### 🔹 What we learn in Part A:

* Display all table data
* Rename column names in output
* Use `AS` keyword for alias
* Improve readability of query results

### 🔹 Example:

```sql
SELECT Student_ID AS Roll_No,
       Name AS Student_Name
FROM Student;
```

---

# 🟢 Part B – Conditional Data Display (WHERE Clause)

### 🔹 Explanation

This part uses the **WHERE clause** to filter records.
Filtering allows us to display only those rows that satisfy specific conditions.

### 🔹 What we learn:

* Filter by department
* Filter by gender
* Filter by designation
* Filter using date
* Filter using semester
* Use comparison operators (=, >, >=)

### 🔹 Example:

```sql
SELECT * FROM Student
WHERE Gender = 'Female';
```

This displays only female students.

---

# 🟢 Part C – Sorting and Limiting Results

### 🔹 Explanation

This part focuses on arranging and limiting data.

**Sorting** helps display records in ascending or descending order.
**Limiting** helps display only a fixed number of rows.

### 🔹 What we learn:

* Sort using `ORDER BY`
* Ascending and descending order
* Display first few rows using `FETCH FIRST`

### 🔹 Example:

```sql
SELECT * FROM Student
ORDER BY Name ASC;
```

Displays student names in alphabetical order.

```sql
SELECT * FROM Student
FETCH FIRST 5 ROWS ONLY;
```

Displays only first 5 records.

---

# 🟢 Part D – Derived / Computed Output

### 🔹 Explanation

This part shows calculated or derived values without changing actual data in tables.

We perform calculations on existing data and display results.

### 🔹 What we learn:

* Calculate age using DOB
* Increase credits temporarily
* Extract year from date
* Extract email domain
* Rename columns in output

### 🔹 Example:

```sql
SELECT Name,
TRUNC(MONTHS_BETWEEN(SYSDATE, Date_of_Birth)/12) AS Age
FROM Student;
```

This calculates student age without modifying the table.

---

# 🟢 Tools Used

* Oracle SQL (SQL*Plus / Oracle XE)
* DBMS concepts
* SELECT queries

---

# 🟢 Conclusion

This experiment helped in understanding how to retrieve data from database tables using SQL SELECT queries.
We learned how to display, filter, sort, and compute data without modifying database content.
These SQL retrieval commands are essential for database querying and analysis in real-world applications.

---

