# 📘 DBMS Lab Assignment – College Database Design (ER Model & SQL)

## 🎓 College Lab Assignment

This lab assignment focuses on designing and implementing a **College Database System** using ER modeling and SQL.
The objective is to understand how real-world data is represented using entities, relationships, and relational tables in a database.

All work is implemented and executed using **Oracle SQL / SQL*Plus environment** as part of DBMS lab coursework.

---

## 🛠️ Tools & Technologies Used

* Oracle Database (SQL*Plus)
* SQL (Structured Query Language)
* ER Diagram Tool (draw.io / diagrams.net)

---

## 🎯 Objective of the Assignment

To understand **Entity–Relationship (ER) modeling** and convert it into relational tables and SQL queries for a college database system.

This assignment helps in learning:

* Database design concepts
* ER diagram creation
* Conversion of ER model into relational schema
* Implementation using SQL CREATE TABLE queries

---

## 📚 Database Overview

The college database consists of the following main entities:

### 1️⃣ Department

Represents academic departments such as CSE, Mechanical, Electrical, etc.
Each department has a unique ID, name, and office location.
One department can have many students, faculty members, and courses.

### 2️⃣ Student

Represents students enrolled in the college.
Each student belongs to one department and has personal details such as name, DOB, gender, and contact number.
A student can enroll in multiple courses.

### 3️⃣ Faculty

Represents teaching staff of the college.
Each faculty member works in one department and can teach multiple courses.
Includes details such as faculty ID, name, designation, and email.

### 4️⃣ Course

Represents subjects offered by departments.
Each course belongs to one department and is taught by one faculty member.
A course can be taken by many students.

### 5️⃣ Enrollment

Represents the relationship between students and courses.
This is a many-to-many relationship between Student and Course.
Additional details include semester and grade.

---

## 🧩 Assignment Structure

The assignment is divided into **three main parts**:

### 🔹 Part A – ER Diagram Design

* Identify entities and attributes
* Define relationships between entities
* Show primary keys and foreign keys
* Represent cardinality (1-1, 1-M, M-N)
* ER diagram created using ER design tool

### 🔹 Part B – Relational Table Design

* Convert ER diagram into relational tables
* Define attributes for each table
* Specify primary keys
* Specify foreign keys
* Prepare logical database schema

### 🔹 Part C – SQL Implementation

* Write SQL CREATE TABLE queries
* Apply constraints (PRIMARY KEY, FOREIGN KEY)
* Use appropriate data types
* Implement relational structure in Oracle SQL

---

## 🧪 Learning Outcomes

After completing this assignment, the following concepts are understood:

* ER modeling and database design
* Entity and relationship identification
* Primary and foreign key usage
* Converting ER diagram to relational schema
* SQL table creation with constraints

---

## 🏫 Course Information

* Subject: Database Management System (DBMS)
* Type: College Lab Assignment
* Environment: Oracle SQL / SQL*Plus
* Topic: ER Modeling and SQL Table Creation

---

## 📌 Conclusion

This assignment provides practical understanding of designing a structured database system for a college.
It demonstrates how real-world entities and relationships are converted into relational tables and implemented using SQL.

The experiment improves knowledge of ER diagrams, normalization, and SQL table creation which are essential for database development.
