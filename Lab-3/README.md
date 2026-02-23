# 📘 DBMS Lab 3 – Data Insertion and Table Population

## 🔷 Experiment Title

**Data Insertion and Table Population Using SQL**

## 🔷 Objective

The objective of this experiment is to understand how to insert data into database tables using SQL commands.
This lab focuses on populating tables with records while maintaining relationships using primary keys and foreign keys.

Students learn how to insert multiple records into tables such as Department, Faculty, Student, Course, and Enrollment without modifying table structure.

---

# 🟢 Total Parts in this Experiment

This lab contains **5 main parts**:

* **Part A:** Inserting Department Data
* **Part B:** Inserting Faculty Data
* **Part C:** Inserting Student Data
* **Part D:** Inserting Course Data
* **Part E:** Inserting Enrollment Data

Each part demonstrates inserting data into related tables.

---

# 🟢 Part A – Insert Data into Department Table

### 🔹 Explanation

In this part, department details are inserted into the Department table.
Each department has a unique Department_ID, name, and office location.

### 🔹 What we learn:

* Insert records using INSERT command
* Use primary key
* Store department information

### 🔹 Example:

```sql
INSERT INTO Department VALUES (1,'Civil Engineering','Block A');
INSERT INTO Department VALUES (2,'Mechanical Engineering','Block C');
```

This inserts department details into the Department table.

---

# 🟢 Part B – Insert Data into Faculty Table

### 🔹 Explanation

Faculty members are inserted and linked to departments using Department_ID (foreign key).
Each faculty has a unique Faculty_ID.

### 🔹 What we learn:

* Insert multiple rows
* Use foreign key relationship
* Store faculty details with department reference

### 🔹 Example:

```sql
INSERT INTO Faculty VALUES 
(201,'Akhilesh Kumar','Assistant Professor','akhilesh@gmail.com',1);
```

This inserts a faculty member linked to department 1.

---

# 🟢 Part C – Insert Data into Student Table

### 🔹 Explanation

Student records are inserted with date of birth, gender, contact number, and department reference.

Each student belongs to a specific department through Department_ID.

### 🔹 What we learn:

* Insert date values using DATE format
* Store student details
* Maintain foreign key relationship

### 🔹 Example:

```sql
INSERT INTO Student VALUES 
(1,'Rahul Kumar', DATE '2004-01-15','Male','9000000001',1);
```

This inserts a student record into Student table.

---

# 🟢 Part D – Insert Data into Course Table

### 🔹 Explanation

Course records are inserted and linked to both Department and Faculty tables using foreign keys.

Each course contains:

* Course ID
* Course name
* Credits
* Department ID
* Faculty ID

### 🔹 What we learn:

* Maintain multiple foreign keys
* Insert structured academic data
* Maintain relationships among tables

### 🔹 Example:

```sql
INSERT INTO Course VALUES 
(1001,'Engineering Mechanics',4,1,201);
```

This inserts a course linked to department and faculty.

---

# 🟢 Part E – Insert Data into Enrollment Table

### 🔹 Explanation

Enrollment table stores which student is enrolled in which course along with semester and grade.

This table connects Student and Course tables using foreign keys.

### 🔹 What we learn:

* Composite primary key (Student_ID, Course_ID)
* Insert enrollment records
* Maintain many-to-many relationship

### 🔹 Example:

```sql
INSERT INTO Enrollment VALUES 
(1,1001,'Sem5','A');
```

This shows student 1 enrolled in course 1001.

---

# 🟢 Tools Used

* Oracle SQL / SQL*Plus
* DBMS concepts
* INSERT command
* Primary & Foreign Keys

---

# 🟢 Conclusion

In this experiment, we successfully inserted data into multiple related tables using SQL INSERT statements.
We learned how to maintain relationships between tables using primary and foreign keys.

This lab helps in understanding real-world database population and maintaining data integrity across multiple tables.

---
