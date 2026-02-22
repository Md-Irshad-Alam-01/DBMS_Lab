CREATE TABLE Student (
  RollNo INT,
  Name VARCHAR2(50),
  Dept VARCHAR2(20),
  Age INT,
  Phone VARCHAR2(15)
);

CREATE TABLE Course (
  CourseID INT,
  CourseName VARCHAR2(50),
  Credits INT
);

ALTER TABLE Student
  ADD City VARCHAR2(30);

ALTER TABLE Student
  ADD Semester VARCHAR2(10);

ALTER TABLE Student
  RENAME COLUMN Phone TO MobileNo;

DROP TABLE Course;

INSERT INTO Student
  VALUES (101, 'Amit Kumar', 'CSE', 20, '9876543210', 'Patna', 'Sem-5');

INSERT INTO Student
  VALUES (102, 'Rohit Singh', 'ECE', 21, '9876543211', 'Gaya', 'Sem-5');

INSERT INTO Student
  VALUES (103, 'Abhishek Sharma', 'ME', 22, '9876543212', 'Muzaffarpur', 'Sem-5');

INSERT INTO Student
  VALUES (104, 'Aniket Verma', 'CSE', 20, '9876543213', 'Bhagalpur', 'Sem-5');

INSERT INTO Student
  VALUES (105, 'Saurav Gupta', 'EE', 23, '9876543214', 'Darbhanga', 'Sem-5');


UPDATE Student
  SET Dept = 'ECE'
  WHERE RollNo = 101;

UPDATE Student
  SET City = 'Patna'
  WHERE Name = 'Rohit Singh';

UPDATE Student
  SET Age = Age + 1;

DELETE FROM Student
  WHERE RollNo = 105;
