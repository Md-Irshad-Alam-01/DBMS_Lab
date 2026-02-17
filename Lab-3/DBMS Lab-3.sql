
SQL*Plus: Release 21.0.0.0.0 - Production on Mon Feb 16 14:06:42 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: System
Enter password:
Last Successful login time: Mon Feb 16 2026 13:10:36 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> CREATE TABLE Department (
  2      dept_id INT PRIMARY KEY,
  3      dept_name VARCHAR(50) NOT NULL,
  4      office_location VARCHAR(100)
  5  );

Table created.

SQL> CREATE TABLE Student (
  2      student_id INT PRIMARY KEY,
  3      name VARCHAR(50) NOT NULL,
  4      dob DATE,
  5      gender VARCHAR(10),
  6      contact_number VARCHAR(15),
  7      dept_id INT,
  8      FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
  9  );

Table created.

SQL> CREATE TABLE Faculty (
  2      faculty_id INT PRIMARY KEY,
  3      name VARCHAR(50) NOT NULL,
  4      designation VARCHAR(50),
  5      email VARCHAR(100) UNIQUE,
  6      dept_id INT,
  7      FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
  8  );

Table created.

SQL> CREATE TABLE Course (
  2      course_id INT PRIMARY KEY,
  3      course_name VARCHAR(100) NOT NULL,
  4      credits INT,
  5      dept_id INT,
  6      faculty_id INT,
  7      FOREIGN KEY (dept_id) REFERENCES Department(dept_id),
  8      FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id)
  9  );

Table created.

SQL> CREATE TABLE Enrollment (
  2      enrollment_id INT PRIMARY KEY,
  3      student_id INT,
  4      course_id INT,
  5      semester VARCHAR(20),
  6      grade VARCHAR(5),
  7      FOREIGN KEY (student_id) REFERENCES Student(student_id),
  8      FOREIGN KEY (course_id) REFERENCES Course(course_id)
  9  );

Table created.

SQL> INSERT INTO Department VALUES (1,'Civil Engineering','Block A');

1 row created.

SQL>
SQL> INSERT INTO Department VALUES (2,'Civil Engineering with Computer Application','Block A');

1 row created.

SQL>
SQL> INSERT INTO Department VALUES (3,'Mechanical Engineering','Block B');

1 row created.

SQL>
SQL> INSERT INTO Department VALUES (4,'Electrical and Electronics Engineering','Block C');

1 row created.

SQL>
SQL> INSERT INTO Department VALUES (5,'Computer Science & Engineering','Block D');
Enter value for engineering:
old   1: INSERT INTO Department VALUES (5,'Computer Science & Engineering','Block D')
new   1: INSERT INTO Department VALUES (5,'Computer Science ','Block D')

1 row created.

SQL> INSERT INTO Department VALUES (6,'Computer Science & Engineering (AIML)','Block D');
Enter value for engineering:
old   1: INSERT INTO Department VALUES (6,'Computer Science & Engineering (AIML)','Block D')
new   1: INSERT INTO Department VALUES (6,'Computer Science  (AIML)','Block D')

1 row created.

SQL> INSERT INTO Department VALUES (7,'3D Animation and Graphics','Block E');

1 row created.

SQL> SELECT * FROM Department;

   DEPT_ID DEPT_NAME
---------- --------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------------------------------------
         1 Civil Engineering
Block A

         2 Civil Engineering with Computer Application
Block A

         3 Mechanical Engineering
Block B


   DEPT_ID DEPT_NAME
---------- --------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------------------------------------
         4 Electrical and Electronics Engineering
Block C

         5 Computer Science
Block D

         6 Computer Science  (AIML)
Block D


   DEPT_ID DEPT_NAME
---------- --------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------------------------------------
         7 3D Animation and Graphics
Block E


7 rows selected.

SQL> SET LINESIZE 200;
SQL> SET PAGESIZE 200;
SQL> SELECT dept_id, dept_name, office_location FROM Department;

   DEPT_ID DEPT_NAME                                          OFFICE_LOCATION
---------- -------------------------------------------------- ----------------------------------------------------------------------------------------------------
         1 Civil Engineering                                  Block A
         2 Civil Engineering with Computer Application        Block A
         3 Mechanical Engineering                             Block B
         4 Electrical and Electronics Engineering             Block C
         5 Computer Science                                   Block D
         6 Computer Science  (AIML)                           Block D
         7 3D Animation and Graphics                          Block E

7 rows selected.

SQL> INSERT INTO Faculty VALUES (201,'Akhilesh Kumar','Assistant Professor','akhileshkumar3804@gmail.com',1);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (202,'Kunal Kumar (HOD)','Assistant Professor & HOD','kunal1989kumar@gmail.com',1);
Enter value for hod:
old   1: INSERT INTO Faculty VALUES (202,'Kunal Kumar (HOD)','Assistant Professor & HOD','kunal1989kumar@gmail.com',1)
new   1: INSERT INTO Faculty VALUES (202,'Kunal Kumar (HOD)','Assistant Professor ','kunal1989kumar@gmail.com',1)

1 row created.

SQL> INSERT INTO Faculty VALUES (203,'Nishikant Kumar','Assistant Professor','nishikantbpmce32@gmail.com',1);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (204,'Raushan Anand','Assistant Professor','raushanbpmc@gmail.com',1);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (205,'Vicky Anand','Assistant Professor','Vickya.pg18.ce@Nitp.ac.in',1);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (206,'Pankaj Kumar','Assistant Professor','pankajkumarpk8888@gmail.com',1);

1 row created.

SQL> SELECT * FROM Faculty WHERE dept_id = 1;

FACULTY_ID NAME                                               DESIGNATION
---------- -------------------------------------------------- --------------------------------------------------
EMAIL                                                                      DEPT_ID
---------------------------------------------------------------------------------------------------- ----------
       201 Akhilesh Kumar                                     Assistant Professor
akhileshkumar3804@gmail.com                                                      1

       202 Kunal Kumar (HOD)                                  Assistant Professor
kunal1989kumar@gmail.com                                                         1

       203 Nishikant Kumar                                    Assistant Professor
nishikantbpmce32@gmail.com                                                       1

       204 Raushan Anand                                      Assistant Professor
raushanbpmc@gmail.com                                                            1

       205 Vicky Anand                                        Assistant Professor
Vickya.pg18.ce@Nitp.ac.in                                                        1

       206 Pankaj Kumar                                       Assistant Professor
pankajkumarpk8888@gmail.com                                                      1


6 rows selected.

SQL> SET LINESIZE 300;
SQL> SET PAGESIZE 200;
SQL> COLUMN name FORMAT A25;
SQL> COLUMN designation FORMAT A35;
SQL> COLUMN email FORMAT A35;
SQL> SELECT faculty_id, name, designation, email, dept_id
  2  FROM Faculty
  3  WHERE dept_id = 1;

FACULTY_ID NAME                      DESIGNATION                         EMAIL                                      DEPT_ID
---------- ------------------------- ----------------------------------- ----------------------------------- ----------
       201 Akhilesh Kumar            Assistant Professor                 akhileshkumar3804@gmail.com                      1
       202 Kunal Kumar (HOD)         Assistant Professor                 kunal1989kumar@gmail.com                 1
       203 Nishikant Kumar           Assistant Professor                 nishikantbpmce32@gmail.com               1
       204 Raushan Anand             Assistant Professor                 raushanbpmc@gmail.com                            1
       205 Vicky Anand               Assistant Professor                 Vickya.pg18.ce@Nitp.ac.in                1
       206 Pankaj Kumar              Assistant Professor                 pankajkumarpk8888@gmail.com                      1

6 rows selected.

SQL> INSERT INTO Faculty VALUES (207,'Akhilesh Kumar (HOD)','Assistant Professor','akhileshkumar3804@gmail.com',2);
INSERT INTO Faculty VALUES (207,'Akhilesh Kumar (HOD)','Assistant Professor','akhileshkumar3804@gmail.com',2)
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008379) violated


SQL>
SQL> INSERT INTO Faculty VALUES (208,'Kunal Kumar','Assistant Professor','kunal1989kumar@gmail.com',2);
INSERT INTO Faculty VALUES (208,'Kunal Kumar','Assistant Professor','kunal1989kumar@gmail.com',2)
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008379) violated


SQL>
SQL> INSERT INTO Faculty VALUES (209,'Nishikant Kumar','Assistant Professor','nishikantbpmce32@gmail.com',2);
INSERT INTO Faculty VALUES (209,'Nishikant Kumar','Assistant Professor','nishikantbpmce32@gmail.com',2)
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008379) violated


SQL>
SQL> INSERT INTO Faculty VALUES (210,'Vicky Anand','Assistant Professor','Vickya.pg18@Nitp.ac.in',2);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (211,'Pankaj Kumar','Assistant Professor','pankajkumarpk8888@gmail.com',2);
INSERT INTO Faculty VALUES (211,'Pankaj Kumar','Assistant Professor','pankajkumarpk8888@gmail.com',2)
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008379) violated


SQL>
SQL> INSERT INTO Faculty VALUES (212,'Raushan Anand','Assistant Professor','raushanbpmce@gmail.com',2);

1 row created.

SQL> SELECT faculty_id, name, designation, email, dept_id
  2  FROM Faculty
  3  WHERE dept_id = 2;

FACULTY_ID NAME                      DESIGNATION                         EMAIL   DEPT_ID
---------- ------------------------- ----------------------------------- ----------------------------------- ----------
       210 Vicky Anand               Assistant Professor                 Vickya.pg18@Nitp.ac.in                 2
       212 Raushan Anand             Assistant Professor                 raushanbpmce@gmail.com                 2

SQL> INSERT INTO Faculty VALUES (220,'Akhilesh Kumar (HOD)','Asst Prof','akhileshkumar3804.ce@gmail.com',2);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (221,'Kunal Kumar','Asst Prof','kunal1989kumar.ce@gmail.com',2);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (222,'Nishikant Kumar','Asst Prof','nishikantbpmce32.ce@gmail.com',2);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (223,'Vicky Anand','Asst Prof','Vickya.pg18.ce2@Nitp.ac.in',2);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (224,'Pankaj Kumar','Asst Prof','pankajkumarpk8888.ce@gmail.com',2);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (225,'Raushan Anand','Asst Prof','raushanbpmce.ce@gmail.com',2);

1 row created.

SQL> SET LINESIZE 300;
SQL> COLUMN name FORMAT A25;
SQL> COLUMN designation FORMAT A12;
SQL> COLUMN email FORMAT A35;
SQL>
SQL> SELECT faculty_id,name,designation,email,dept_id
  2  FROM Faculty
  3  WHERE dept_id=2;

FACULTY_ID NAME                      DESIGNATION  EMAIL                           DEPT_ID
---------- ------------------------- ------------ ----------------------------------- ----------
       210 Vicky Anand               Assistant Pr Vickya.pg18@Nitp.ac.in                2
                                     ofessor

       212 Raushan Anand             Assistant Pr raushanbpmce@gmail.com                2
                                     ofessor

       220 Akhilesh Kumar (HOD)      Asst Prof    akhileshkumar3804.ce@gmail.com        2
       221 Kunal Kumar               Asst Prof    kunal1989kumar.ce@gmail.com           2
       222 Nishikant Kumar           Asst Prof    nishikantbpmce32.ce@gmail.com         2
       223 Vicky Anand               Asst Prof    Vickya.pg18.ce2@Nitp.ac.in            2
       224 Pankaj Kumar              Asst Prof    pankajkumarpk8888.ce@gmail.com        2
       225 Raushan Anand             Asst Prof    raushanbpmce.ce@gmail.com             2

8 rows selected.

SQL> INSERT INTO Faculty VALUES (230,'Arbind Kumar Amar','Assoc Prof & PIC','ak_amar73@yahoo.com',3);
Enter value for pic:
old   1: INSERT INTO Faculty VALUES (230,'Arbind Kumar Amar','Assoc Prof & PIC','ak_amar73@yahoo.com',3)
new   1: INSERT INTO Faculty VALUES (230,'Arbind Kumar Amar','Assoc Prof ','ak_amar73@yahoo.com',3)

1 row created.

SQL> INSERT INTO Faculty VALUES (231,'Dr Ajay Giri (HOD)','Asst Prof','ajay_giri05@rediffmail.com',3);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (232,'Uttam Kumar','Asst Prof','uttamiitp1@gmail.com',3);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (233,'Firoz Akhtar','Asst Prof','firozakhtar1581@gmail.com',3);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (234,'Rahul Ranjan Bharti','Asst Prof','15rahulbharti@gmail.com',3);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (235,'Bablu Das','Asst Prof','bkmech78@gmail.com',3);

1 row created.

SQL> SET LINESIZE 300;
SQL> COLUMN name FORMAT A28;
SQL> COLUMN designation FORMAT A20;
SQL> COLUMN email FORMAT A35;
SQL>
SQL> SELECT faculty_id,name,designation,email,dept_id
  2  FROM Faculty
  3  WHERE dept_id=3;

FACULTY_ID NAME                         DESIGNATION          EMAIL           DEPT_ID
---------- ---------------------------- -------------------- ----------------------------------- ----------
       230 Arbind Kumar Amar            Assoc Prof           ak_amar73@yahoo.com                    3
       231 Dr Ajay Giri (HOD)           Asst Prof            ajay_giri05@rediffmail.com             3
       232 Uttam Kumar                  Asst Prof            uttamiitp1@gmail.com                   3
       233 Firoz Akhtar                 Asst Prof            firozakhtar1581@gmail.com                      3
       234 Rahul Ranjan Bharti          Asst Prof            15rahulbharti@gmail.com                        3
       235 Bablu Das                    Asst Prof            bkmech78@gmail.com                     3

6 rows selected.

SQL> INSERT INTO Faculty VALUES (240,'Hare Krishna Mishra','Asst Prof','hare.dbit@gmail.com',4);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (241,'Ashish Kumar Suman','Asst Prof','sumanashish.rkt@gmail.com',4);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (242,'Mitesh Kumar','Asst Prof','mitesh.sva@gmail.com',4);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (243,'Nitish Kumar','Asst Prof','nitianj@gmail.com',4);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (244,'Abhimanyu Mandal','Asst Prof','mandal.abhimanyu225@gmail.com',4);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (245,'Mithlesh Kumar (HOD)','Asst Prof','bpmceeee110@gmail.com',4);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (246,'Kumar Ask','Asst Prof','kumar29ask@gmail.com',4);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (247,'Bhavesh Nandan','Asst Prof','bhavesh.eee@gmail.com',4);

1 row created.

SQL> SET LINESIZE 300;
SQL> COLUMN name FORMAT A28;
SQL> COLUMN designation FORMAT A12;
SQL> COLUMN email FORMAT A35;
SQL>
SQL> SELECT faculty_id,name,designation,email,dept_id
  2  FROM Faculty
  3  WHERE dept_id=4;

FACULTY_ID NAME                         DESIGNATION  EMAIL                    DEPT_ID
---------- ---------------------------- ------------ ----------------------------------- ----------
       240 Hare Krishna Mishra          Asst Prof    hare.dbit@gmail.com    4
       241 Ashish Kumar Suman           Asst Prof    sumanashish.rkt@gmail.com                       4
       242 Mitesh Kumar                 Asst Prof    mitesh.sva@gmail.com   4
       243 Nitish Kumar                 Asst Prof    nitianj@gmail.com      4
       244 Abhimanyu Mandal             Asst Prof    mandal.abhimanyu225@gmail.com           4
       245 Mithlesh Kumar (HOD)         Asst Prof    bpmceeee110@gmail.com  4
       246 Kumar Ask                    Asst Prof    kumar29ask@gmail.com   4
       247 Bhavesh Nandan               Asst Prof    bhavesh.eee@gmail.com  4

8 rows selected.

SQL> INSERT INTO Faculty VALUES (260,'Murlidhar Prasad Singh (HOD)','Asst Prof','singhmurlidhar@gmail.com',5);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (261,'Md Ehtashamoul Haque','Asst Prof','ehtasham47@gmail.com',5);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (262,'Arun Kumar','Asst Prof (Guest)','arunkr75@gmail.com',5);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (263,'Ravi Kumar','Lab Asst','sonubhardwaj4200@gmail.com',5);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (264,'Amit Kumar','Asst Prof','amitbcebhagalpur@gmail.com',5);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (265,'Md Izhar','Asst Prof','mdizhar1996@gmail.com',5);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (266,'Manisha Kumari Singh','Asst Prof','manisha.ks241@gmail.com',5);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (267,'Praveen Kumar','Asst Prof','praveenkumaryadav782@gmail.com',5);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (268,'Sujeet Kumar','Asst Prof','ksujeet.cs@gmail.com',5);

1 row created.

SQL> SET LINESIZE 300;
SQL> COLUMN name FORMAT A30;
SQL> COLUMN designation FORMAT A18;
SQL> COLUMN email FORMAT A35;
SQL>
SQL> SELECT faculty_id,name,designation,email,dept_id
  2  FROM Faculty
  3  WHERE dept_id=5;

FACULTY_ID NAME                           DESIGNATION        EMAIL                          DEPT_ID
---------- ------------------------------ ------------------ ----------------------------------- ----------
       260 Murlidhar Prasad Singh (HOD)   Asst Prof          singhmurlidhar@gmail.com     5
       261 Md Ehtashamoul Haque           Asst Prof          ehtasham47@gmail.com         5
       262 Arun Kumar                     Asst Prof (Guest)  arunkr75@gmail.com           5
       263 Ravi Kumar                     Lab Asst           sonubhardwaj4200@gmail.com   5
       264 Amit Kumar                     Asst Prof          amitbcebhagalpur@gmail.com   5
       265 Md Izhar                       Asst Prof          mdizhar1996@gmail.com        5
       266 Manisha Kumari Singh           Asst Prof          manisha.ks241@gmail.com      5
       267 Praveen Kumar                  Asst Prof          praveenkumaryadav782@gmail.com                5
       268 Sujeet Kumar                   Asst Prof          ksujeet.cs@gmail.com         5

9 rows selected.

SQL> INSERT INTO Faculty VALUES (280,'Sujeet Kumar','Asst Prof','ksujeet.cs.aiml@gmail.com',6);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (281,'Praveen Kumar','Asst Prof','praveenkumaryadav782.aiml@gmail.com',6);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (282,'Manisha Kumari Singh','Asst Prof','manisha.ks241.aiml@gmail.com',6);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (283,'Md Izhar','Asst Prof','mdizhar1996.aiml@gmail.com',6);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (284,'Amit Kumar','Asst Prof','amitbcebhagalpur.aiml@gmail.com',6);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (285,'Md Ehteshamoul Hoque (HOD)','Asst Prof','ehtasham47.aiml@gmail.com',6);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (286,'Murlidhar Prasad Singh','Asst Prof','singhmurlidhar.aiml@gmail.com',6);

1 row created.

SQL> SET LINESIZE 300;
SQL> COLUMN name FORMAT A30;
SQL> COLUMN designation FORMAT A15;
SQL> COLUMN email FORMAT A35;
SQL>
SQL> SELECT faculty_id,name,designation,email,dept_id
  2  FROM Faculty
  3  WHERE dept_id=6;

FACULTY_ID NAME                           DESIGNATION     EMAIL                          DEPT_ID
---------- ------------------------------ --------------- ----------------------------------- ----------
       280 Sujeet Kumar                   Asst Prof       ksujeet.cs.aiml@gmail.com            6
       281 Praveen Kumar                  Asst Prof       praveenkumaryadav782.aiml@gmail.com           6
       282 Manisha Kumari Singh           Asst Prof       manisha.ks241.aiml@gmail.com         6
       283 Md Izhar                       Asst Prof       mdizhar1996.aiml@gmail.com           6
       284 Amit Kumar                     Asst Prof       amitbcebhagalpur.aiml@gmail.com       6
       285 Md Ehteshamoul Hoque (HOD)     Asst Prof       ehtasham47.aiml@gmail.com            6
       286 Murlidhar Prasad Singh         Asst Prof       singhmurlidhar.aiml@gmail.com        6

7 rows selected.

SQL> INSERT INTO Faculty VALUES (300,'Murlidhar Prasad Singh (HOD)','Asst Prof','singhmurlidhar.3d@gmail.com',7);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (301,'Md Ehteshamoul Hoque','Asst Prof','ehtasham47.3d@gmail.com',7);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (302,'Sujeet Kumar','Asst Prof','ksujeet.cs.3d@gmail.com',7);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (303,'Praveen Kumar','Asst Prof','praveenkumaryadav782.3d@gmail.com',7);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (304,'Manisha Kumari Singh','Asst Prof','manisha.ks241.3d@gmail.com',7);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (305,'Md Izhar','Asst Prof','mdizhar1996.3d@gmail.com',7);

1 row created.

SQL>
SQL> INSERT INTO Faculty VALUES (306,'Amit Kumar','Asst Prof','amitbcebhagalpur.3d@gmail.com',7);

1 row created.

SQL> SET LINESIZE 300;
SQL> COLUMN name FORMAT A30;
SQL> COLUMN designation FORMAT A15;
SQL> COLUMN email FORMAT A35;
SQL>
SQL> SELECT faculty_id,name,designation,email,dept_id
  2  FROM Faculty
  3  WHERE dept_id=7;

FACULTY_ID NAME                           DESIGNATION     EMAIL                             DEPT_ID
---------- ------------------------------ --------------- ----------------------------------- ----------
       300 Murlidhar Prasad Singh (HOD)   Asst Prof       singhmurlidhar.3d@gmail.com             7
       301 Md Ehteshamoul Hoque           Asst Prof       ehtasham47.3d@gmail.com                 7
       302 Sujeet Kumar                   Asst Prof       ksujeet.cs.3d@gmail.com                 7
       303 Praveen Kumar                  Asst Prof       praveenkumaryadav782.3d@gmail.com       7
       304 Manisha Kumari Singh           Asst Prof       manisha.ks241.3d@gmail.com              7
       305 Md Izhar                       Asst Prof       mdizhar1996.3d@gmail.com                7
       306 Amit Kumar                     Asst Prof       amitbcebhagalpur.3d@gmail.com           7

7 rows selected.

SQL> INSERT INTO Student VALUES (1,'Rahul Kumar', DATE '2004-01-15','Male','9000000001',1);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (2,'Aman Raj', DATE '2004-03-22','Male','9000000002',1);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (3,'Neha Kumari', DATE '2004-05-10','Female','9000000003',1);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (4,'Pooja Singh', DATE '2003-12-05','Female','9000000004',1);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (5,'Satyam Kumar', DATE '2004-07-18','Male','9000000005',1);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (6,'Ritika Kumari', DATE '2004-09-09','Female','9000000006',1);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (7,'Vikash Kumar', DATE '2003-11-25','Male','9000000007',1);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (8,'Ankit Raj', DATE '2004-02-14','Male','9000000008',1);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (9,'Sneha Kumari', DATE '2004-06-30','Female','9000000009',1);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (10,'Rohit Kumar', DATE '2003-08-20','Male','9000000010',1);

1 row created.

SQL> SET LINESIZE 300;
SQL> COLUMN name FORMAT A20;
SQL>
SQL> SELECT student_id,name,gender,dept_id
  2  FROM Student
  3  WHERE dept_id=1;

STUDENT_ID NAME                 GENDER        DEPT_ID
---------- -------------------- ---------- ----------
         1 Rahul Kumar          Male                1
         2 Aman Raj             Male                1
         3 Neha Kumari          Female              1
         4 Pooja Singh          Female              1
         5 Satyam Kumar         Male                1
         6 Ritika Kumari        Female              1
         7 Vikash Kumar         Male                1
         8 Ankit Raj            Male                1
         9 Sneha Kumari         Female              1
        10 Rohit Kumar          Male                1

10 rows selected.

SQL> SET LINESIZE 300;
SQL> SET PAGESIZE 200;
SQL>
SQL> COLUMN name FORMAT A22;
SQL> COLUMN dob FORMAT A12;
SQL> COLUMN gender FORMAT A8;
SQL> COLUMN contact_number FORMAT A15;
SQL> SELECT
  2      student_id        AS "Student ID",
  3      name              AS "Student Name",
  4      dob               AS "Date of Birth",
  5      gender            AS "Gender",
  6      contact_number    AS "Contact Number",
  7      dept_id           AS "Department"
  8  FROM Student
  9  WHERE dept_id = 1;

Student ID Student Name                                       Date of B Gender   Contact Number  Department
---------- -------------------------------------------------- --------- -------- --------------- ----------
         1 Rahul Kumar                                        15-JAN-04 Male     9000000001  1
         2 Aman Raj                                           22-MAR-04 Male     9000000002  1
         3 Neha Kumari                                        10-MAY-04 Female   9000000003  1
         4 Pooja Singh                                        05-DEC-03 Female   9000000004  1
         5 Satyam Kumar                                       18-JUL-04 Male     9000000005  1
         6 Ritika Kumari                                      09-SEP-04 Female   9000000006  1
         7 Vikash Kumar                                       25-NOV-03 Male     9000000007  1
         8 Ankit Raj                                          14-FEB-04 Male     9000000008  1
         9 Sneha Kumari                                       30-JUN-04 Female   9000000009  1
        10 Rohit Kumar                                        20-AUG-03 Male     9000000010  1

10 rows selected.

SQL> INSERT INTO Student VALUES (11,'Aditya Kumar', DATE '2004-01-11','Male','9000000011',2);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (12,'Kajal Kumari', DATE '2004-02-19','Female','9000000012',2);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (13,'Ravi Kumar', DATE '2003-10-05','Male','9000000013',2);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (14,'Priya Kumari', DATE '2004-06-21','Female','9000000014',2);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (15,'Abhishek Raj', DATE '2004-03-14','Male','9000000015',2);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (16,'Nisha Kumari', DATE '2003-12-12','Female','9000000016',2);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (17,'Deepak Kumar', DATE '2004-08-07','Male','9000000017',2);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (18,'Komal Kumari', DATE '2004-09-28','Female','9000000018',2);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (19,'Manish Kumar', DATE '2003-07-17','Male','9000000019',2);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (20,'Sneha Singh', DATE '2004-05-03','Female','9000000020',2);

1 row created.

SQL> SET LINESIZE 300;
SQL> SET PAGESIZE 200;
SQL>
SQL> COLUMN name FORMAT A22;
SQL> COLUMN dob FORMAT A12;
SQL> COLUMN gender FORMAT A8;
SQL> COLUMN contact_number FORMAT A15;
SQL> SELECT
  2      student_id        AS "Student ID",
  3      name              AS "Student Name",
  4      dob               AS "Date of Birth",
  5      gender            AS "Gender",
  6      contact_number    AS "Contact Number",
  7      dept_id           AS "Department"
  8  FROM Student
  9  WHERE dept_id = 2;

Student ID Student Name                                       Date of B Gender   Contact Number  Department
---------- -------------------------------------------------- --------- -------- --------------- ----------
        11 Aditya Kumar                                       11-JAN-04 Male     9000000011       2
        12 Kajal Kumari                                       19-FEB-04 Female   9000000012       2
        13 Ravi Kumar                                         05-OCT-03 Male     9000000013       2
        14 Priya Kumari                                       21-JUN-04 Female   9000000014       2
        15 Abhishek Raj                                       14-MAR-04 Male     9000000015       2
        16 Nisha Kumari                                       12-DEC-03 Female   9000000016       2
        17 Deepak Kumar                                       07-AUG-04 Male     9000000017       2
        18 Komal Kumari                                       28-SEP-04 Female   9000000018       2
        19 Manish Kumar                                       17-JUL-03 Male     9000000019       2
        20 Sneha Singh                                        03-MAY-04 Female   9000000020       2

10 rows selected.

SQL> INSERT INTO Student VALUES (21,'Rohit Kumar', DATE '2004-01-10','Male','9000000021',3);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (22,'Ankit Raj', DATE '2004-03-18','Male','9000000022',3);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (23,'Pooja Kumari', DATE '2003-11-25','Female','9000000023',3);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (24,'Satyam Kumar', DATE '2004-07-09','Male','9000000024',3);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (25,'Neha Singh', DATE '2004-02-14','Female','9000000025',3);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (26,'Vikash Kumar', DATE '2003-08-21','Male','9000000026',3);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (27,'Ritika Kumari', DATE '2004-09-30','Female','9000000027',3);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (28,'Aditya Raj', DATE '2004-05-06','Male','9000000028',3);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (29,'Komal Kumari', DATE '2003-12-12','Female','9000000029',3);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (30,'Deepak Kumar', DATE '2004-06-17','Male','9000000030',3);

1 row created.

SQL> SELECT student_id,name,dob,gender,contact_number,dept_id
  2  FROM Student
  3  WHERE dept_id=3;

STUDENT_ID NAME                   DOB          GENDER   CONTACT_NUMBER     DEPT_ID
---------- ---------------------- ------------ -------- --------------- ----------
        21 Rohit Kumar            10-JAN-04    Male     9000000021               3
        22 Ankit Raj              18-MAR-04    Male     9000000022               3
        23 Pooja Kumari           25-NOV-03    Female   9000000023               3
        24 Satyam Kumar           09-JUL-04    Male     9000000024               3
        25 Neha Singh             14-FEB-04    Female   9000000025               3
        26 Vikash Kumar           21-AUG-03    Male     9000000026               3
        27 Ritika Kumari          30-SEP-04    Female   9000000027               3
        28 Aditya Raj             06-MAY-04    Male     9000000028               3
        29 Komal Kumari           12-DEC-03    Female   9000000029               3
        30 Deepak Kumar           17-JUN-04    Male     9000000030               3

10 rows selected.

SQL> INSERT INTO Student VALUES (31,'Aman Kumar', DATE '2004-01-05','Male','9000000031',4);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (32,'Rahul Raj', DATE '2004-03-12','Male','9000000032',4);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (33,'Sneha Kumari', DATE '2003-10-20','Female','9000000033',4);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (34,'Priya Singh', DATE '2004-07-14','Female','9000000034',4);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (35,'Vikash Kumar', DATE '2004-02-22','Male','9000000035',4);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (36,'Ritika Kumari', DATE '2003-12-09','Female','9000000036',4);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (37,'Satyam Raj', DATE '2004-09-01','Male','9000000037',4);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (38,'Ankit Kumar', DATE '2004-05-27','Male','9000000038',4);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (39,'Neha Kumari', DATE '2003-08-18','Female','9000000039',4);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (40,'Aditya Kumar', DATE '2004-06-30','Male','9000000040',4);

1 row created.

SQL> SET LINESIZE 300;
SQL> COLUMN name FORMAT A22;
SQL>
SQL> SELECT student_id,name,dob,gender,contact_number,dept_id
  2  FROM Student
  3  WHERE dept_id=4;

STUDENT_ID NAME                   DOB          GENDER   CONTACT_NUMBER     DEPT_ID
---------- ---------------------- ------------ -------- --------------- ----------
        31 Aman Kumar             05-JAN-04    Male     9000000031               4
        32 Rahul Raj              12-MAR-04    Male     9000000032               4
        33 Sneha Kumari           20-OCT-03    Female   9000000033               4
        34 Priya Singh            14-JUL-04    Female   9000000034               4
        35 Vikash Kumar           22-FEB-04    Male     9000000035               4
        36 Ritika Kumari          09-DEC-03    Female   9000000036               4
        37 Satyam Raj             01-SEP-04    Male     9000000037               4
        38 Ankit Kumar            27-MAY-04    Male     9000000038               4
        39 Neha Kumari            18-AUG-03    Female   9000000039               4
        40 Aditya Kumar           30-JUN-04    Male     9000000040               4

10 rows selected.

SQL> INSERT INTO Student VALUES (41,'Md Irshad Alam', DATE '2004-02-11','Male','9000000041',5);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (42,'Aman Raj', DATE '2004-04-19','Male','9000000042',5);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (43,'Riya Singh', DATE '2003-11-08','Female','9000000043',5);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (44,'Neha Kumari', DATE '2004-07-25','Female','9000000044',5);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (45,'Satyam Kumar', DATE '2004-03-16','Male','9000000045',5);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (46,'Ankit Raj', DATE '2003-12-30','Male','9000000046',5);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (47,'Pooja Kumari', DATE '2004-05-05','Female','9000000047',5);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (48,'Rohit Kumar', DATE '2003-09-21','Male','9000000048',5);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (49,'Sneha Kumari', DATE '2004-08-14','Female','9000000049',5);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (50,'Vikash Kumar', DATE '2004-06-09','Male','9000000050',5);

1 row created.

SQL> SET LINESIZE 300;
SQL> COLUMN name FORMAT A22;
SQL>
SQL> SELECT student_id,name,dob,gender,contact_number,dept_id
  2  FROM Student
  3  WHERE dept_id=5;

STUDENT_ID NAME                   DOB          GENDER   CONTACT_NUMBER     DEPT_ID
---------- ---------------------- ------------ -------- --------------- ----------
        41 Md Irshad Alam         11-FEB-04    Male     9000000041               5
        42 Aman Raj               19-APR-04    Male     9000000042               5
        43 Riya Singh             08-NOV-03    Female   9000000043               5
        44 Neha Kumari            25-JUL-04    Female   9000000044               5
        45 Satyam Kumar           16-MAR-04    Male     9000000045               5
        46 Ankit Raj              30-DEC-03    Male     9000000046               5
        47 Pooja Kumari           05-MAY-04    Female   9000000047               5
        48 Rohit Kumar            21-SEP-03    Male     9000000048               5
        49 Sneha Kumari           14-AUG-04    Female   9000000049               5
        50 Vikash Kumar           09-JUN-04    Male     9000000050               5

10 rows selected.

SQL> INSERT INTO Student VALUES (51,'Aditya Kumar', DATE '2004-01-09','Male','9000000051',6);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (52,'Priya Kumari', DATE '2004-03-17','Female','9000000052',6);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (53,'Rahul Kumar', DATE '2003-10-28','Male','9000000053',6);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (54,'Neha Singh', DATE '2004-07-11','Female','9000000054',6);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (55,'Aman Raj', DATE '2004-02-26','Male','9000000055',6);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (56,'Ritika Kumari', DATE '2003-12-15','Female','9000000056',6);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (57,'Satyam Kumar', DATE '2004-09-03','Male','9000000057',6);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (58,'Komal Kumari', DATE '2004-05-22','Female','9000000058',6);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (59,'Vikash Kumar', DATE '2003-08-06','Male','9000000059',6);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (60,'Sneha Kumari', DATE '2004-06-18','Female','9000000060',6);

1 row created.

SQL> SET LINESIZE 300;
SQL> COLUMN name FORMAT A22;
SQL>
SQL> SELECT student_id,name,dob,gender,contact_number,dept_id
  2  FROM Student
  3  WHERE dept_id=6;

STUDENT_ID NAME                   DOB          GENDER   CONTACT_NUMBER     DEPT_ID
---------- ---------------------- ------------ -------- --------------- ----------
        51 Aditya Kumar           09-JAN-04    Male     9000000051               6
        52 Priya Kumari           17-MAR-04    Female   9000000052               6
        53 Rahul Kumar            28-OCT-03    Male     9000000053               6
        54 Neha Singh             11-JUL-04    Female   9000000054               6
        55 Aman Raj               26-FEB-04    Male     9000000055               6
        56 Ritika Kumari          15-DEC-03    Female   9000000056               6
        57 Satyam Kumar           03-SEP-04    Male     9000000057               6
        58 Komal Kumari           22-MAY-04    Female   9000000058               6
        59 Vikash Kumar           06-AUG-03    Male     9000000059               6
        60 Sneha Kumari           18-JUN-04    Female   9000000060               6

10 rows selected.

SQL> INSERT INTO Student VALUES (61,'Arjun Kumar', DATE '2004-01-14','Male','9000000061',7);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (62,'Riya Kumari', DATE '2004-03-22','Female','9000000062',7);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (63,'Satyam Raj', DATE '2003-11-19','Male','9000000063',7);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (64,'Priya Singh', DATE '2004-07-07','Female','9000000064',7);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (65,'Vikash Kumar', DATE '2004-02-11','Male','9000000065',7);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (66,'Neha Kumari', DATE '2003-12-28','Female','9000000066',7);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (67,'Aman Kumar', DATE '2004-09-04','Male','9000000067',7);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (68,'Komal Kumari', DATE '2004-05-16','Female','9000000068',7);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (69,'Rahul Kumar', DATE '2003-08-25','Male','9000000069',7);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES (70,'Sneha Kumari', DATE '2004-06-30','Female','9000000070',7);

1 row created.

SQL> SET LINESIZE 300;
SQL> COLUMN name FORMAT A22;
SQL>
SQL> SELECT student_id,name,dob,gender,contact_number,dept_id
  2  FROM Student
  3  WHERE dept_id=7;

STUDENT_ID NAME                   DOB          GENDER   CONTACT_NUMBER     DEPT_ID
---------- ---------------------- ------------ -------- --------------- ----------
        61 Arjun Kumar            14-JAN-04    Male     9000000061               7
        62 Riya Kumari            22-MAR-04    Female   9000000062               7
        63 Satyam Raj             19-NOV-03    Male     9000000063               7
        64 Priya Singh            07-JUL-04    Female   9000000064               7
        65 Vikash Kumar           11-FEB-04    Male     9000000065               7
        66 Neha Kumari            28-DEC-03    Female   9000000066               7
        67 Aman Kumar             04-SEP-04    Male     9000000067               7
        68 Komal Kumari           16-MAY-04    Female   9000000068               7
        69 Rahul Kumar            25-AUG-03    Male     9000000069               7
        70 Sneha Kumari           30-JUN-04    Female   9000000070               7

10 rows selected.

SQL> INSERT INTO Course VALUES (1001,'Engineering Mechanics',4,1,201);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1002,'Structural Analysis',4,1,202);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1003,'Geotechnical Engineering',3,1,203);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1004,'Transportation Engineering',3,1,204);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1005,'Environmental Engineering',4,1,205);

1 row created.

SQL> SELECT course_id,course_name,credits,dept_id,faculty_id
  2  FROM Course
  3  WHERE dept_id=1;

 COURSE_ID COURSE_NAME                                                                                    CREDITS    DEPT_ID FACULTY_ID
---------- ---------------------------------------------------------------------------------------------------- ---------- ---------- ----------
      1001 Engineering Mechanics                                                                        4           1        201
      1002 Structural Analysis                                                                          4           1        202
      1003 Geotechnical Engineering                                                                     3           1        203
      1004 Transportation Engineering                                                                   3           1        204
      1005 Environmental Engineering                                                                    4           1        205

SQL> SET LINESIZE 300;
SQL> SET PAGESIZE 200;
SQL> SELECT course_id,
  2         course_name,
  3         credits,
  4         dept_id,
  5         faculty_id
  6  FROM Course
  7  WHERE dept_id = 1;

 COURSE_ID COURSE_NAME                                                                                    CREDITS    DEPT_ID FACULTY_ID
---------- ---------------------------------------------------------------------------------------------------- ---------- ---------- ----------
      1001 Engineering Mechanics                                                                        4           1        201
      1002 Structural Analysis                                                                          4           1        202
      1003 Geotechnical Engineering                                                                     3           1        203
      1004 Transportation Engineering                                                                   3           1        204
      1005 Environmental Engineering                                                                    4           1        205

SQL> SELECT course_id,
  2         course_name,
  3         credits,
  4         dept_id,
  5         faculty_id
  6  FROM Course
  7  WHERE dept_id = 1;

 COURSE_ID COURSE_NAME                                                                                    CREDITS    DEPT_ID FACULTY_ID
---------- ---------------------------------------------------------------------------------------------------- ---------- ---------- ----------
      1001 Engineering Mechanics                                                                        4           1        201
      1002 Structural Analysis                                                                          4           1        202
      1003 Geotechnical Engineering                                                                     3           1        203
      1004 Transportation Engineering                                                                   3           1        204
      1005 Environmental Engineering                                                                    4           1        205

SQL> SET LINESIZE 300;
SQL> SET PAGESIZE 200;
SQL> COLUMN course_name FORMAT A35;
SQL> SELECT course_id,
  2         course_name,
  3         credits,
  4         dept_id,
  5         faculty_id
  6  FROM Course
  7  WHERE dept_id = 1;

 COURSE_ID COURSE_NAME                            CREDITS    DEPT_ID FACULTY_ID
---------- ----------------------------------- ---------- ---------- ----------
      1001 Engineering Mechanics                        4          1        201
      1002 Structural Analysis                          4          1        202
      1003 Geotechnical Engineering                     3          1        203
      1004 Transportation Engineering                   3          1        204
      1005 Environmental Engineering                    4          1        205

SQL> INSERT INTO Course VALUES (1006,'Engineering Mathematics',4,2,220);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1007,'Computer Programming',4,2,221);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1008,'Database Management System',4,2,222);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1009,'Surveying',3,2,223);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1010,'Construction Technology',3,2,224);

1 row created.

SQL> SET LINESIZE 300;
SQL> COLUMN course_name FORMAT A35;
SQL>
SQL> SELECT course_id,course_name,credits,dept_id,faculty_id
  2  FROM Course
  3  WHERE dept_id=2;

 COURSE_ID COURSE_NAME                            CREDITS    DEPT_ID FACULTY_ID
---------- ----------------------------------- ---------- ---------- ----------
      1006 Engineering Mathematics                      4          2        220
      1007 Computer Programming                         4          2        221
      1008 Database Management System                   4          2        222
      1009 Surveying                                    3          2        223
      1010 Construction Technology                      3          2        224

SQL> INSERT INTO Course VALUES (1011,'Engineering Thermodynamics',4,3,230);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1012,'Fluid Mechanics',4,3,231);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1013,'Machine Design',3,3,232);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1014,'Manufacturing Process',3,3,233);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1015,'Heat Transfer',4,3,234);

1 row created.

SQL> SET LINESIZE 300;
SQL> COLUMN course_name FORMAT A35;
SQL>
SQL> SELECT course_id,course_name,credits,dept_id,faculty_id
  2  FROM Course
  3  WHERE dept_id=3;

 COURSE_ID COURSE_NAME                            CREDITS    DEPT_ID FACULTY_ID
---------- ----------------------------------- ---------- ---------- ----------
      1011 Engineering Thermodynamics                   4          3        230
      1012 Fluid Mechanics                              4          3        231
      1013 Machine Design                               3          3        232
      1014 Manufacturing Process                        3          3        233
      1015 Heat Transfer                                4          3        234

SQL> INSERT INTO Course VALUES (1016,'Basic Electrical Engineering',4,4,240);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1017,'Electrical Machines',4,4,241);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1018,'Power Systems',4,4,242);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1019,'Control Systems',3,4,243);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1020,'Power Electronics',3,4,244);

1 row created.

SQL> SET LINESIZE 300;
SQL> COLUMN course_name FORMAT A35;
SQL>
SQL> SELECT course_id,course_name,credits,dept_id,faculty_id
  2  FROM Course
  3  WHERE dept_id=4;

 COURSE_ID COURSE_NAME                            CREDITS    DEPT_ID FACULTY_ID
---------- ----------------------------------- ---------- ---------- ----------
      1016 Basic Electrical Engineering                 4          4        240
      1017 Electrical Machines                          4          4        241
      1018 Power Systems                                4          4        242
      1019 Control Systems                              3          4        243
      1020 Power Electronics                            3          4        244

SQL> INSERT INTO Course VALUES (1021,'Programming in C',4,5,260);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1022,'Data Structures',4,5,261);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1023,'Database Management System',4,5,264);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1024,'Operating System',4,5,265);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1025,'Computer Networks',3,5,267);

1 row created.

SQL> SET LINESIZE 300;
SQL> COLUMN course_name FORMAT A35;
SQL>
SQL> SELECT course_id,course_name,credits,dept_id,faculty_id
  2  FROM Course
  3  WHERE dept_id=5;

 COURSE_ID COURSE_NAME                            CREDITS    DEPT_ID FACULTY_ID
---------- ----------------------------------- ---------- ---------- ----------
      1021 Programming in C                             4          5        260
      1022 Data Structures                              4          5        261
      1023 Database Management System                   4          5        264
      1024 Operating System                             4          5        265
      1025 Computer Networks                            3          5        267

SQL> INSERT INTO Course VALUES (1026,'Python Programming',4,6,280);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1027,'Machine Learning',4,6,281);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1028,'Artificial Intelligence',4,6,282);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1029,'Data Science',3,6,283);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1030,'Deep Learning',3,6,284);

1 row created.

SQL> SET LINESIZE 300;
SQL> COLUMN course_name FORMAT A35;
SQL>
SQL> SELECT course_id,course_name,credits,dept_id,faculty_id
  2  FROM Course
  3  WHERE dept_id=6;

 COURSE_ID COURSE_NAME                            CREDITS    DEPT_ID FACULTY_ID
---------- ----------------------------------- ---------- ---------- ----------
      1026 Python Programming                           4          6        280
      1027 Machine Learning                             4          6        281
      1028 Artificial Intelligence                      4          6        282
      1029 Data Science                                 3          6        283
      1030 Deep Learning                                3          6        284

SQL> INSERT INTO Course VALUES (1031,'Introduction to Animation',4,7,300);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1032,'3D Modeling',4,7,301);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1033,'Texturing and Lighting',3,7,302);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1034,'Visual Effects (VFX)',3,7,303);

1 row created.

SQL>
SQL> INSERT INTO Course VALUES (1035,'Graphic Design',4,7,304);

1 row created.

SQL> SET LINESIZE 300;
SQL> COLUMN course_name FORMAT A35;
SQL>
SQL> SELECT course_id,course_name,credits,dept_id,faculty_id
  2  FROM Course
  3  WHERE dept_id=7;

 COURSE_ID COURSE_NAME                            CREDITS    DEPT_ID FACULTY_ID
---------- ----------------------------------- ---------- ---------- ----------
      1031 Introduction to Animation                    4          7        300
      1032 3D Modeling                                  4          7        301
      1033 Texturing and Lighting                       3          7        302
      1034 Visual Effects (VFX)                         3          7        303
      1035 Graphic Design                               4          7        304

SQL> INSERT INTO Enrollment VALUES (1,1,1001,'Sem3','A');

1 row created.

SQL> INSERT INTO Enrollment VALUES (2,2,1002,'Sem3','B+');

1 row created.

SQL> INSERT INTO Enrollment VALUES (3,3,1003,'Sem3','A');

1 row created.

SQL> INSERT INTO Enrollment VALUES (4,4,1004,'Sem3','B');

1 row created.

SQL> INSERT INTO Enrollment VALUES (5,5,1005,'Sem3','A');

1 row created.

SQL> INSERT INTO Enrollment VALUES (6,6,1001,'Sem3','B+');

1 row created.

SQL> INSERT INTO Enrollment VALUES (7,7,1002,'Sem3','A');

1 row created.

SQL> INSERT INTO Enrollment VALUES (8,8,1003,'Sem3','B');

1 row created.

SQL> INSERT INTO Enrollment VALUES (9,9,1004,'Sem3','A');

1 row created.

SQL> INSERT INTO Enrollment VALUES (10,10,1005,'Sem3','B+');

1 row created.

SQL> INSERT INTO Enrollment VALUES (6,11,1006,'Sem3','A');
INSERT INTO Enrollment VALUES (6,11,1006,'Sem3','A')
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008385) violated


SQL> INSERT INTO Enrollment VALUES (7,12,1007,'Sem3','B+');
INSERT INTO Enrollment VALUES (7,12,1007,'Sem3','B+')
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008385) violated


SQL> INSERT INTO Enrollment VALUES (8,13,1008,'Sem3','A');
INSERT INTO Enrollment VALUES (8,13,1008,'Sem3','A')
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008385) violated


SQL> INSERT INTO Enrollment VALUES (9,14,1009,'Sem3','B');
INSERT INTO Enrollment VALUES (9,14,1009,'Sem3','B')
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008385) violated


SQL> INSERT INTO Enrollment VALUES (10,15,1010,'Sem3','A');
INSERT INTO Enrollment VALUES (10,15,1010,'Sem3','A')
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008385) violated


SQL> INSERT INTO Enrollment VALUES (11,11,1006,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (12,12,1007,'Sem3','B+');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (13,13,1008,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (14,14,1009,'Sem3','B');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (15,15,1010,'Sem3','A');

1 row created.

SQL> SET LINESIZE 300;
SQL>
SQL> SELECT * FROM Enrollment;

ENROLLMENT_ID STUDENT_ID  COURSE_ID SEMESTER             GRADE
------------- ---------- ---------- -------------------- -----
            1          1       1001 Sem3                 A
            2          2       1002 Sem3                 B+
            3          3       1003 Sem3                 A
            4          4       1004 Sem3                 B
            5          5       1005 Sem3                 A
            6          6       1001 Sem3                 B+
            7          7       1002 Sem3                 A
            8          8       1003 Sem3                 B
            9          9       1004 Sem3                 A
           10         10       1005 Sem3                 B+
           11         11       1006 Sem3                 A
           12         12       1007 Sem3                 B+
           13         13       1008 Sem3                 A
           14         14       1009 Sem3                 B
           15         15       1010 Sem3                 A

15 rows selected.

SQL> INSERT INTO Enrollment VALUES (16,21,1011,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (17,22,1012,'Sem3','B+');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (18,23,1013,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (19,24,1014,'Sem3','B');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (20,25,1015,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (21,26,1011,'Sem3','B+');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (22,27,1012,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (23,28,1013,'Sem3','B');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (24,29,1014,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (25,30,1015,'Sem3','B+');

1 row created.

SQL> SET LINESIZE 200;
SQL> SELECT * FROM Enrollment
  2  WHERE student_id BETWEEN 21 AND 30;

ENROLLMENT_ID STUDENT_ID  COURSE_ID SEMESTER             GRADE
------------- ---------- ---------- -------------------- -----
           16         21       1011 Sem3                 A
           17         22       1012 Sem3                 B+
           18         23       1013 Sem3                 A
           19         24       1014 Sem3                 B
           20         25       1015 Sem3                 A
           21         26       1011 Sem3                 B+
           22         27       1012 Sem3                 A
           23         28       1013 Sem3                 B
           24         29       1014 Sem3                 A
           25         30       1015 Sem3                 B+

10 rows selected.

SQL> INSERT INTO Enrollment VALUES (26,31,1016,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (27,32,1017,'Sem3','B+');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (28,33,1018,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (29,34,1019,'Sem3','B');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (30,35,1020,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (31,36,1016,'Sem3','B+');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (32,37,1017,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (33,38,1018,'Sem3','B');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (34,39,1019,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (35,40,1020,'Sem3','B+');

1 row created.

SQL> SET LINESIZE 200;
SQL>
SQL> SELECT * FROM Enrollment
  2  WHERE student_id BETWEEN 31 AND 40;

ENROLLMENT_ID STUDENT_ID  COURSE_ID SEMESTER             GRADE
------------- ---------- ---------- -------------------- -----
           26         31       1016 Sem3                 A
           27         32       1017 Sem3                 B+
           28         33       1018 Sem3                 A
           29         34       1019 Sem3                 B
           30         35       1020 Sem3                 A
           31         36       1016 Sem3                 B+
           32         37       1017 Sem3                 A
           33         38       1018 Sem3                 B
           34         39       1019 Sem3                 A
           35         40       1020 Sem3                 B+

10 rows selected.

SQL> INSERT INTO Enrollment VALUES (36,41,1021,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (37,42,1022,'Sem3','B+');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (38,43,1023,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (39,44,1024,'Sem3','B');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (40,45,1025,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (41,46,1021,'Sem3','B+');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (42,47,1022,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (43,48,1023,'Sem3','B');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (44,49,1024,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (45,50,1025,'Sem3','B+');

1 row created.

SQL> SET LINESIZE 200;
SQL>
SQL> SELECT * FROM Enrollment
  2  WHERE student_id BETWEEN 41 AND 50;

ENROLLMENT_ID STUDENT_ID  COURSE_ID SEMESTER             GRADE
------------- ---------- ---------- -------------------- -----
           36         41       1021 Sem3                 A
           37         42       1022 Sem3                 B+
           38         43       1023 Sem3                 A
           39         44       1024 Sem3                 B
           40         45       1025 Sem3                 A
           41         46       1021 Sem3                 B+
           42         47       1022 Sem3                 A
           43         48       1023 Sem3                 B
           44         49       1024 Sem3                 A
           45         50       1025 Sem3                 B+

10 rows selected.

SQL> INSERT INTO Enrollment VALUES (46,51,1026,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (47,52,1027,'Sem3','B+');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (48,53,1028,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (49,54,1029,'Sem3','B');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (50,55,1030,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (51,56,1026,'Sem3','B+');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (52,57,1027,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (53,58,1028,'Sem3','B');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (54,59,1029,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (55,60,1030,'Sem3','B+');

1 row created.

SQL> SET LINESIZE 200;
SQL>
SQL> SELECT * FROM Enrollment
  2  WHERE student_id BETWEEN 51 AND 60;

ENROLLMENT_ID STUDENT_ID  COURSE_ID SEMESTER             GRADE
------------- ---------- ---------- -------------------- -----
           46         51       1026 Sem3                 A
           47         52       1027 Sem3                 B+
           48         53       1028 Sem3                 A
           49         54       1029 Sem3                 B
           50         55       1030 Sem3                 A
           51         56       1026 Sem3                 B+
           52         57       1027 Sem3                 A
           53         58       1028 Sem3                 B
           54         59       1029 Sem3                 A
           55         60       1030 Sem3                 B+

10 rows selected.

SQL> INSERT INTO Enrollment VALUES (56,61,1031,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (57,62,1032,'Sem3','B+');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (58,63,1033,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (59,64,1034,'Sem3','B');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (60,65,1035,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (61,66,1031,'Sem3','B+');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (62,67,1032,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (63,68,1033,'Sem3','B');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (64,69,1034,'Sem3','A');

1 row created.

SQL>
SQL> INSERT INTO Enrollment VALUES (65,70,1035,'Sem3','B+');

1 row created.

SQL> SET LINESIZE 300;
SQL> SET PAGESIZE 200;
SQL>
SQL> SELECT enrollment_id,
  2         student_id,
  3         course_id,
  4         semester,
  5         grade
  6  FROM Enrollment
  7  WHERE student_id BETWEEN 61 AND 70;

ENROLLMENT_ID STUDENT_ID  COURSE_ID SEMESTER             GRADE
------------- ---------- ---------- -------------------- -----
           56         61       1031 Sem3                 A
           57         62       1032 Sem3                 B+
           58         63       1033 Sem3                 A
           59         64       1034 Sem3                 B
           60         65       1035 Sem3                 A
           61         66       1031 Sem3                 B+
           62         67       1032 Sem3                 A
           63         68       1033 Sem3                 B
           64         69       1034 Sem3                 A
           65         70       1035 Sem3                 B+

10 rows selected.

SQL> SELECT * FROM Department;

   DEPT_ID DEPT_NAME                                          OFFICE_LOCATION
---------- -------------------------------------------------- ----------------------------------------------------------------------------------------------------
         1 Civil Engineering                                  Block A
         2 Civil Engineering with Computer Application        Block A
         3 Mechanical Engineering                             Block B
         4 Electrical and Electronics Engineering             Block C
         5 Computer Science                                   Block D
         6 Computer Science  (AIML)                           Block D
         7 3D Animation and Graphics                          Block E

7 rows selected.

SQL> SELECT * FROM Faculty;

FACULTY_ID NAME                   DESIGNATION     EMAIL                                  DEPT_ID
---------- ---------------------- --------------- ----------------------------------- ----------
       201 Akhilesh Kumar         Assistant Profe akhileshkumar3804@gmail.com                  1
                                  ssor

       202 Kunal Kumar (HOD)      Assistant Profe kunal1989kumar@gmail.com                     1
                                  ssor

       203 Nishikant Kumar        Assistant Profe nishikantbpmce32@gmail.com                   1
                                  ssor

       204 Raushan Anand          Assistant Profe raushanbpmc@gmail.com                        1
                                  ssor

       205 Vicky Anand            Assistant Profe Vickya.pg18.ce@Nitp.ac.in                    1
                                  ssor

       206 Pankaj Kumar           Assistant Profe pankajkumarpk8888@gmail.com                  1
                                  ssor

       210 Vicky Anand            Assistant Profe Vickya.pg18@Nitp.ac.in                       2
                                  ssor

       212 Raushan Anand          Assistant Profe raushanbpmce@gmail.com                       2
                                  ssor

       220 Akhilesh Kumar (HOD)   Asst Prof       akhileshkumar3804.ce@gmail.com               2
       221 Kunal Kumar            Asst Prof       kunal1989kumar.ce@gmail.com                  2
       222 Nishikant Kumar        Asst Prof       nishikantbpmce32.ce@gmail.com                2
       223 Vicky Anand            Asst Prof       Vickya.pg18.ce2@Nitp.ac.in                   2
       224 Pankaj Kumar           Asst Prof       pankajkumarpk8888.ce@gmail.com               2
       225 Raushan Anand          Asst Prof       raushanbpmce.ce@gmail.com                    2
       230 Arbind Kumar Amar      Assoc Prof      ak_amar73@yahoo.com                          3
       231 Dr Ajay Giri (HOD)     Asst Prof       ajay_giri05@rediffmail.com                   3
       232 Uttam Kumar            Asst Prof       uttamiitp1@gmail.com                         3
       233 Firoz Akhtar           Asst Prof       firozakhtar1581@gmail.com                    3
       234 Rahul Ranjan Bharti    Asst Prof       15rahulbharti@gmail.com                      3
       235 Bablu Das              Asst Prof       bkmech78@gmail.com                           3
       240 Hare Krishna Mishra    Asst Prof       hare.dbit@gmail.com                          4
       241 Ashish Kumar Suman     Asst Prof       sumanashish.rkt@gmail.com                    4
       242 Mitesh Kumar           Asst Prof       mitesh.sva@gmail.com                         4
       243 Nitish Kumar           Asst Prof       nitianj@gmail.com                            4
       244 Abhimanyu Mandal       Asst Prof       mandal.abhimanyu225@gmail.com                4
       245 Mithlesh Kumar (HOD)   Asst Prof       bpmceeee110@gmail.com                        4
       246 Kumar Ask              Asst Prof       kumar29ask@gmail.com                         4
       247 Bhavesh Nandan         Asst Prof       bhavesh.eee@gmail.com                        4
       260 Murlidhar Prasad Singh Asst Prof       singhmurlidhar@gmail.com                     5
            (HOD)

       261 Md Ehtashamoul Haque   Asst Prof       ehtasham47@gmail.com                         5
       262 Arun Kumar             Asst Prof (Gues arunkr75@gmail.com                           5
                                  t)

       263 Ravi Kumar             Lab Asst        sonubhardwaj4200@gmail.com                   5
       264 Amit Kumar             Asst Prof       amitbcebhagalpur@gmail.com                   5
       265 Md Izhar               Asst Prof       mdizhar1996@gmail.com                        5
       266 Manisha Kumari Singh   Asst Prof       manisha.ks241@gmail.com                      5
       267 Praveen Kumar          Asst Prof       praveenkumaryadav782@gmail.com               5
       268 Sujeet Kumar           Asst Prof       ksujeet.cs@gmail.com                         5
       280 Sujeet Kumar           Asst Prof       ksujeet.cs.aiml@gmail.com                    6
       281 Praveen Kumar          Asst Prof       praveenkumaryadav782.aiml@gmail.com          6
       282 Manisha Kumari Singh   Asst Prof       manisha.ks241.aiml@gmail.com                 6
       283 Md Izhar               Asst Prof       mdizhar1996.aiml@gmail.com                   6
       284 Amit Kumar             Asst Prof       amitbcebhagalpur.aiml@gmail.com              6
       285 Md Ehteshamoul Hoque ( Asst Prof       ehtasham47.aiml@gmail.com                    6
           HOD)

       286 Murlidhar Prasad Singh Asst Prof       singhmurlidhar.aiml@gmail.com                6
       300 Murlidhar Prasad Singh Asst Prof       singhmurlidhar.3d@gmail.com                  7
            (HOD)

       301 Md Ehteshamoul Hoque   Asst Prof       ehtasham47.3d@gmail.com                      7
       302 Sujeet Kumar           Asst Prof       ksujeet.cs.3d@gmail.com                      7
       303 Praveen Kumar          Asst Prof       praveenkumaryadav782.3d@gmail.com            7
       304 Manisha Kumari Singh   Asst Prof       manisha.ks241.3d@gmail.com                   7
       305 Md Izhar               Asst Prof       mdizhar1996.3d@gmail.com                     7
       306 Amit Kumar             Asst Prof       amitbcebhagalpur.3d@gmail.com                7

51 rows selected.

SQL> SELECT * FROM Course;

 COURSE_ID COURSE_NAME                            CREDITS    DEPT_ID FACULTY_ID
---------- ----------------------------------- ---------- ---------- ----------
      1001 Engineering Mechanics                        4          1        201
      1002 Structural Analysis                          4          1        202
      1003 Geotechnical Engineering                     3          1        203
      1004 Transportation Engineering                   3          1        204
      1005 Environmental Engineering                    4          1        205
      1006 Engineering Mathematics                      4          2        220
      1007 Computer Programming                         4          2        221
      1008 Database Management System                   4          2        222
      1009 Surveying                                    3          2        223
      1010 Construction Technology                      3          2        224
      1011 Engineering Thermodynamics                   4          3        230
      1012 Fluid Mechanics                              4          3        231
      1013 Machine Design                               3          3        232
      1014 Manufacturing Process                        3          3        233
      1015 Heat Transfer                                4          3        234
      1016 Basic Electrical Engineering                 4          4        240
      1017 Electrical Machines                          4          4        241
      1018 Power Systems                                4          4        242
      1019 Control Systems                              3          4        243
      1020 Power Electronics                            3          4        244
      1021 Programming in C                             4          5        260
      1022 Data Structures                              4          5        261
      1023 Database Management System                   4          5        264
      1024 Operating System                             4          5        265
      1025 Computer Networks                            3          5        267
      1026 Python Programming                           4          6        280
      1027 Machine Learning                             4          6        281
      1028 Artificial Intelligence                      4          6        282
      1029 Data Science                                 3          6        283
      1030 Deep Learning                                3          6        284
      1031 Introduction to Animation                    4          7        300
      1032 3D Modeling                                  4          7        301
      1033 Texturing and Lighting                       3          7        302
      1034 Visual Effects (VFX)                         3          7        303
      1035 Graphic Design                               4          7        304

35 rows selected.

SQL> SELECT * FROM Student;

STUDENT_ID NAME                   DOB          GENDER   CONTACT_NUMBER     DEPT_ID
---------- ---------------------- ------------ -------- --------------- ----------
         1 Rahul Kumar            15-JAN-04    Male     9000000001               1
         2 Aman Raj               22-MAR-04    Male     9000000002               1
         3 Neha Kumari            10-MAY-04    Female   9000000003               1
         4 Pooja Singh            05-DEC-03    Female   9000000004               1
         5 Satyam Kumar           18-JUL-04    Male     9000000005               1
         6 Ritika Kumari          09-SEP-04    Female   9000000006               1
         7 Vikash Kumar           25-NOV-03    Male     9000000007               1
         8 Ankit Raj              14-FEB-04    Male     9000000008               1
         9 Sneha Kumari           30-JUN-04    Female   9000000009               1
        10 Rohit Kumar            20-AUG-03    Male     9000000010               1
        11 Aditya Kumar           11-JAN-04    Male     9000000011               2
        12 Kajal Kumari           19-FEB-04    Female   9000000012               2
        13 Ravi Kumar             05-OCT-03    Male     9000000013               2
        14 Priya Kumari           21-JUN-04    Female   9000000014               2
        15 Abhishek Raj           14-MAR-04    Male     9000000015               2
        16 Nisha Kumari           12-DEC-03    Female   9000000016               2
        17 Deepak Kumar           07-AUG-04    Male     9000000017               2
        18 Komal Kumari           28-SEP-04    Female   9000000018               2
        19 Manish Kumar           17-JUL-03    Male     9000000019               2
        20 Sneha Singh            03-MAY-04    Female   9000000020               2
        21 Rohit Kumar            10-JAN-04    Male     9000000021               3
        22 Ankit Raj              18-MAR-04    Male     9000000022               3
        23 Pooja Kumari           25-NOV-03    Female   9000000023               3
        24 Satyam Kumar           09-JUL-04    Male     9000000024               3
        25 Neha Singh             14-FEB-04    Female   9000000025               3
        26 Vikash Kumar           21-AUG-03    Male     9000000026               3
        27 Ritika Kumari          30-SEP-04    Female   9000000027               3
        28 Aditya Raj             06-MAY-04    Male     9000000028               3
        29 Komal Kumari           12-DEC-03    Female   9000000029               3
        30 Deepak Kumar           17-JUN-04    Male     9000000030               3
        31 Aman Kumar             05-JAN-04    Male     9000000031               4
        32 Rahul Raj              12-MAR-04    Male     9000000032               4
        33 Sneha Kumari           20-OCT-03    Female   9000000033               4
        34 Priya Singh            14-JUL-04    Female   9000000034               4
        35 Vikash Kumar           22-FEB-04    Male     9000000035               4
        36 Ritika Kumari          09-DEC-03    Female   9000000036               4
        37 Satyam Raj             01-SEP-04    Male     9000000037               4
        38 Ankit Kumar            27-MAY-04    Male     9000000038               4
        39 Neha Kumari            18-AUG-03    Female   9000000039               4
        40 Aditya Kumar           30-JUN-04    Male     9000000040               4
        41 Md Irshad Alam         11-FEB-04    Male     9000000041               5
        42 Aman Raj               19-APR-04    Male     9000000042               5
        43 Riya Singh             08-NOV-03    Female   9000000043               5
        44 Neha Kumari            25-JUL-04    Female   9000000044               5
        45 Satyam Kumar           16-MAR-04    Male     9000000045               5
        46 Ankit Raj              30-DEC-03    Male     9000000046               5
        47 Pooja Kumari           05-MAY-04    Female   9000000047               5
        48 Rohit Kumar            21-SEP-03    Male     9000000048               5
        49 Sneha Kumari           14-AUG-04    Female   9000000049               5
        50 Vikash Kumar           09-JUN-04    Male     9000000050               5
        51 Aditya Kumar           09-JAN-04    Male     9000000051               6
        52 Priya Kumari           17-MAR-04    Female   9000000052               6
        53 Rahul Kumar            28-OCT-03    Male     9000000053               6
        54 Neha Singh             11-JUL-04    Female   9000000054               6
        55 Aman Raj               26-FEB-04    Male     9000000055               6
        56 Ritika Kumari          15-DEC-03    Female   9000000056               6
        57 Satyam Kumar           03-SEP-04    Male     9000000057               6
        58 Komal Kumari           22-MAY-04    Female   9000000058               6
        59 Vikash Kumar           06-AUG-03    Male     9000000059               6
        60 Sneha Kumari           18-JUN-04    Female   9000000060               6
        61 Arjun Kumar            14-JAN-04    Male     9000000061               7
        62 Riya Kumari            22-MAR-04    Female   9000000062               7
        63 Satyam Raj             19-NOV-03    Male     9000000063               7
        64 Priya Singh            07-JUL-04    Female   9000000064               7
        65 Vikash Kumar           11-FEB-04    Male     9000000065               7
        66 Neha Kumari            28-DEC-03    Female   9000000066               7
        67 Aman Kumar             04-SEP-04    Male     9000000067               7
        68 Komal Kumari           16-MAY-04    Female   9000000068               7
        69 Rahul Kumar            25-AUG-03    Male     9000000069               7
        70 Sneha Kumari           30-JUN-04    Female   9000000070               7

70 rows selected.

SQL> SELECT * FROM Enrollment;

ENROLLMENT_ID STUDENT_ID  COURSE_ID SEMESTER             GRADE
------------- ---------- ---------- -------------------- -----
            1          1       1001 Sem3                 A
            2          2       1002 Sem3                 B+
            3          3       1003 Sem3                 A
            4          4       1004 Sem3                 B
            5          5       1005 Sem3                 A
            6          6       1001 Sem3                 B+
            7          7       1002 Sem3                 A
            8          8       1003 Sem3                 B
            9          9       1004 Sem3                 A
           10         10       1005 Sem3                 B+
           11         11       1006 Sem3                 A
           12         12       1007 Sem3                 B+
           13         13       1008 Sem3                 A
           14         14       1009 Sem3                 B
           15         15       1010 Sem3                 A
           16         21       1011 Sem3                 A
           17         22       1012 Sem3                 B+
           18         23       1013 Sem3                 A
           19         24       1014 Sem3                 B
           20         25       1015 Sem3                 A
           21         26       1011 Sem3                 B+
           22         27       1012 Sem3                 A
           23         28       1013 Sem3                 B
           24         29       1014 Sem3                 A
           25         30       1015 Sem3                 B+
           26         31       1016 Sem3                 A
           27         32       1017 Sem3                 B+
           28         33       1018 Sem3                 A
           29         34       1019 Sem3                 B
           30         35       1020 Sem3                 A
           31         36       1016 Sem3                 B+
           32         37       1017 Sem3                 A
           33         38       1018 Sem3                 B
           34         39       1019 Sem3                 A
           35         40       1020 Sem3                 B+
           36         41       1021 Sem3                 A
           37         42       1022 Sem3                 B+
           38         43       1023 Sem3                 A
           39         44       1024 Sem3                 B
           40         45       1025 Sem3                 A
           41         46       1021 Sem3                 B+
           42         47       1022 Sem3                 A
           43         48       1023 Sem3                 B
           44         49       1024 Sem3                 A
           45         50       1025 Sem3                 B+
           46         51       1026 Sem3                 A
           47         52       1027 Sem3                 B+
           48         53       1028 Sem3                 A
           49         54       1029 Sem3                 B
           50         55       1030 Sem3                 A
           51         56       1026 Sem3                 B+
           52         57       1027 Sem3                 A
           53         58       1028 Sem3                 B
           54         59       1029 Sem3                 A
           55         60       1030 Sem3                 B+
           56         61       1031 Sem3                 A
           57         62       1032 Sem3                 B+
           58         63       1033 Sem3                 A
           59         64       1034 Sem3                 B
           60         65       1035 Sem3                 A
           61         66       1031 Sem3                 B+
           62         67       1032 Sem3                 A
           63         68       1033 Sem3                 B
           64         69       1034 Sem3                 A
           65         70       1035 Sem3                 B+

65 rows selected.

SQL> 