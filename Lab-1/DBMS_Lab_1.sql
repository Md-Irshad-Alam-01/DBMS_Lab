
SQL*Plus: Release 21.0.0.0.0 - Production on Thu Jan 29 03:30:14 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Thu Jan 29 2026 03:28:12 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> CREATE TABLE Student (
  2      RollNo INT,
  3      Name VARCHAR2(50),
  4      Dept VARCHAR2(20),
  5      Age INT,
  6      Phone VARCHAR2(15)
  7  );

Table created.

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)

SQL> CREATE TABLE Course (
  2      CourseID INT,
  3      CourseName VARCHAR2(50),
  4      Credits INT
  5  );

Table created.

SQL> DESC Course;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSEID                                           NUMBER(38)
 COURSENAME                                         VARCHAR2(50)
 CREDITS                                            NUMBER(38)

SQL> ALTER TABLE Student
  2  ADD City VARCHAR2(30);

Table altered.

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(30)

SQL> ALTER TABLE Student
  2  ADD Semester VARCHAR2(10);

Table altered.

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           VARCHAR2(10)

SQL> ALTER TABLE Student
  2  RENAME COLUMN Phone TO MobileNo;

Table altered.

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           VARCHAR2(10)

SQL> INSERT INTO Student
  2  VALUES (101, 'Amit Kumar', 'CSE', 20, '9876543210', 'Patna', 'Sem-5');

1 row created.

SQL> INSERT INTO Student
  2  VALUES (102, 'Rohit Singh', 'ECE', 21, '9876543211', 'Gaya', 'Sem-5');

1 row created.

SQL> INSERT INTO Student
  2  VALUES (103, 'Abhishek Sharma', 'ME', 22, '9876543212', 'Muzaffarpur', 'Sem-5');

1 row created.

SQL> INSERT INTO Student
  2  VALUES (104, 'Aniket Verma', 'CSE', 20, '9876543213', 'Bhagalpur', 'Sem-5');

1 row created.

SQL> INSERT INTO Student
  2  VALUES (105, 'Saurav Gupta', 'EE', 23, '9876543214', 'Darbhanga', 'Sem-5');

1 row created.

SQL> SELECT * FROM Student;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
SEMESTER
----------
       101 Amit Kumar
CSE                          20 9876543210      Patna
Sem-5

       102 Rohit Singh
ECE                          21 9876543211      Gaya
Sem-5

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
SEMESTER
----------

       103 Abhishek Sharma
ME                           22 9876543212      Muzaffarpur
Sem-5

       104 Aniket Verma
CSE                          20 9876543213      Bhagalpur

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
SEMESTER
----------
Sem-5

       105 Saurav Gupta
EE                           23 9876543214      Darbhanga
Sem-5


SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SELECT * FROM Student;

    ROLLNO NAME                                               DEPT           AGE MOBILENO         CITY                           SEMESTER
---------- -------------------------------------------------- -------------------- ---------- --------------- ------------------------------ ----------
       101 Amit Kumar                                         CSE             20 9876543210      Patna                           Sem-5
       102 Rohit Singh                                        ECE             21 9876543211      Gaya                            Sem-5
       103 Abhishek Sharma                                    ME              22 9876543212      Muzaffarpur                     Sem-5
       104 Aniket Verma                                       CSE             20 9876543213      Bhagalpur               Sem-5
       105 Saurav Gupta                                       EE              23 9876543214      Darbhanga               Sem-5

SQL> SELECT RollNo, Name
  2  FROM Student;

    ROLLNO NAME
---------- --------------------------------------------------
       101 Amit Kumar
       102 Rohit Singh
       103 Abhishek Sharma
       104 Aniket Verma
       105 Saurav Gupta

SQL> SELECT *
  2  FROM Student
  3  WHERE Dept = 'CSE';

    ROLLNO NAME                                               DEPT               AGE MOBILENO         CITY                           SEMESTER
---------- -------------------------------------------------- -------------------- ---------- --------------- ------------------------------ ----------
       101 Amit Kumar                                         CSE                 20 9876543210      Patna                           Sem-5
       104 Aniket Verma                                       CSE                 20 9876543213      Bhagalpur               Sem-5

SQL> SELECT *
  2  FROM Student
  3  WHERE Age > 20;

    ROLLNO NAME                                               DEPT           AGE MOBILENO         CITY                           SEMESTER
---------- -------------------------------------------------- -------------------- ---------- --------------- ------------------------------ ----------
       102 Rohit Singh                                        ECE             21 9876543211      Gaya                            Sem-5
       103 Abhishek Sharma                                    ME              22 9876543212      Muzaffarpur                     Sem-5
       105 Saurav Gupta                                       EE              23 9876543214      Darbhanga               Sem-5

SQL> UPDATE Student
  2  SET Dept = 'ECE'
  3  WHERE RollNo = 101;

1 row updated.

SQL> SELECT * FROM Student;

    ROLLNO NAME                                               DEPT           AGE MOBILENO         CITY                           SEMESTER
---------- -------------------------------------------------- -------------------- ---------- --------------- ------------------------------ ----------
       101 Amit Kumar                                         ECE             20 9876543210      Patna                           Sem-5
       102 Rohit Singh                                        ECE             21 9876543211      Gaya                            Sem-5
       103 Abhishek Sharma                                    ME              22 9876543212      Muzaffarpur                     Sem-5
       104 Aniket Verma                                       CSE             20 9876543213      Bhagalpur               Sem-5
       105 Saurav Gupta                                       EE              23 9876543214      Darbhanga               Sem-5

SQL> UPDATE Student
  2  SET City = 'Patna'
  3  WHERE Name = 'Rohit Singh';

1 row updated.

SQL> SELECT * FROM Student;

    ROLLNO NAME                                               DEPT           AGE MOBILENO         CITY                           SEMESTER
---------- -------------------------------------------------- -------------------- ---------- --------------- ------------------------------ ----------
       101 Amit Kumar                                         ECE             20 9876543210      Patna                           Sem-5
       102 Rohit Singh                                        ECE             21 9876543211      Patna                           Sem-5
       103 Abhishek Sharma                                    ME              22 9876543212      Muzaffarpur                     Sem-5
       104 Aniket Verma                                       CSE             20 9876543213      Bhagalpur               Sem-5
       105 Saurav Gupta                                       EE              23 9876543214      Darbhanga               Sem-5

SQL> UPDATE Student
  2  SET Age = Age + 1;

5 rows updated.

SQL> SELECT * FROM Student;

    ROLLNO NAME                                               DEPT                        AGE MOBILENO        CITY                           SEMESTER
---------- -------------------------------------------------- -------------------- ---------- --------------- ------------------------------ ----------
       101 Amit Kumar                                         ECE                          21 9876543210      Patna                          Sem-5
       102 Rohit Singh                                        ECE                          22 9876543211      Patna                          Sem-5
       103 Abhishek Sharma                                    ME                           23 9876543212      Muzaffarpur                    Sem-5
       104 Aniket Verma                                       CSE                          21 9876543213      Bhagalpur                      Sem-5
       105 Saurav Gupta                                       EE                           24 9876543214      Darbhanga                      Sem-5

SQL> DELETE FROM Student
  2  WHERE RollNo = 105;

1 row deleted.

SQL> SELECT * FROM Student;

    ROLLNO NAME                                               DEPT           AGE MOBILENO         CITY                           SEMESTER
---------- -------------------------------------------------- -------------------- ---------- --------------- ------------------------------ ----------
       101 Amit Kumar                                         ECE             21 9876543210      Patna                           Sem-5
       102 Rohit Singh                                        ECE             22 9876543211      Patna                           Sem-5
       103 Abhishek Sharma                                    ME              23 9876543212      Muzaffarpur                     Sem-5
       104 Aniket Verma                                       CSE             21 9876543213      Bhagalpur               Sem-5

SQL>













