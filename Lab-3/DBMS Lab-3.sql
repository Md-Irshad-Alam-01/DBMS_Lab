SET DEFINE OFF;
--Values of Department 
INSERT INTO Department VALUES (1,'Civil Engineering','Block A');
INSERT INTO Department VALUES (2,'Civil Engineering with Computer Application','Block B');
INSERT INTO Department VALUES (3,'Mechanical Engineering','Block C');
INSERT INTO Department VALUES (4,'Electrical and Electronics Engineering','Block D');
INSERT INTO Department VALUES (5,'Computer Science and Engineering','Block E');
INSERT INTO Department VALUES (6,'Computer Science and Engineering (AIML)','Block F');
INSERT INTO Department VALUES (7,'3D Animation and Graphics','Block G');

--Values of Faculty

--Civil Engineering
INSERT INTO Faculty VALUES (201,'Akhilesh Kumar','Assistant Professor','akhileshkumar3804@gmail.com',1);
INSERT INTO Faculty VALUES (202,'Kunal Kumar (HOD)','Assistant Professor & HOD','kunal1989kumar@gmail.com',1);
INSERT INTO Faculty VALUES (203,'Nishikant Kumar','Assistant Professor','nishikantbpmce32@gmail.com',1);
INSERT INTO Faculty VALUES (204,'Raushan Anand','Assistant Professor','raushanbpmc@gmail.com',1);
INSERT INTO Faculty VALUES (205,'Vicky Anand','Assistant Professor','Vickya.pg18.ce@Nitp.ac.in',1);
INSERT INTO Faculty VALUES (206,'Pankaj Kumar','Assistant Professor','pankajkumarpk8888@gmail.com',1);


--Civil Engineering with Computer Application
INSERT INTO Faculty VALUES (220,'Akhilesh Kumar (HOD)','Asst Prof','akhileshkumar3804.ce@gmail.com',2);
INSERT INTO Faculty VALUES (221,'Kunal Kumar','Asst Prof','kunal1989kumar.ce@gmail.com',2);
INSERT INTO Faculty VALUES (222,'Nishikant Kumar','Asst Prof','nishikantbpmce32.ce@gmail.com',2);
INSERT INTO Faculty VALUES (223,'Vicky Anand','Asst Prof','Vickya.pg18.ce2@Nitp.ac.in',2);
INSERT INTO Faculty VALUES (224,'Pankaj Kumar','Asst Prof','pankajkumarpk8888.ce@gmail.com',2);
INSERT INTO Faculty VALUES (225,'Raushan Anand','Asst Prof','raushanbpmce.ce@gmail.com',2);


--Mechanical Engineering
INSERT INTO Faculty VALUES (230,'Arbind Kumar Amar','Assoc Prof & PIC','ak_amar73@yahoo.com',3);
INSERT INTO Faculty VALUES (231,'Dr Ajay Giri (HOD)','Asst Prof','ajay_giri05@rediffmail.com',3);
INSERT INTO Faculty VALUES (232,'Uttam Kumar','Asst Prof','uttamiitp1@gmail.com',3);
INSERT INTO Faculty VALUES (233,'Firoz Akhtar','Asst Prof','firozakhtar1581@gmail.com',3);
INSERT INTO Faculty VALUES (234,'Rahul Ranjan Bharti','Asst Prof','15rahulbharti@gmail.com',3);
INSERT INTO Faculty VALUES (235,'Bablu Das','Asst Prof','bkmech78@gmail.com',3);

--Electrical and Electronics Engineering
INSERT INTO Faculty VALUES (240,'Hare Krishna Mishra','Asst Prof','hare.dbit@gmail.com',4);
INSERT INTO Faculty VALUES (241,'Ashish Kumar Suman','Asst Prof','sumanashish.rkt@gmail.com',4);
INSERT INTO Faculty VALUES (242,'Mitesh Kumar','Asst Prof','mitesh.sva@gmail.com',4);
INSERT INTO Faculty VALUES (243,'Nitish Kumar','Asst Prof','nitianj@gmail.com',4);
INSERT INTO Faculty VALUES (244,'Abhimanyu Mandal','Asst Prof','mandal.abhimanyu225@gmail.com',4);
INSERT INTO Faculty VALUES (245,'Mithlesh Kumar (HOD)','Asst Prof','bpmceeee110@gmail.com',4);
INSERT INTO Faculty VALUES (246,'Kumar Ask','Asst Prof','kumar29ask@gmail.com',4);
INSERT INTO Faculty VALUES (247,'Bhavesh Nandan','Asst Prof','bhavesh.eee@gmail.com',4);

--Computer Science & Engineering
INSERT INTO Faculty VALUES (260,'Murlidhar Prasad Singh (HOD)','Asst Prof','singhmurlidhar@gmail.com',5);
INSERT INTO Faculty VALUES (261,'Md Ehtashamoul Haque','Asst Prof','ehtasham47@gmail.com',5);
INSERT INTO Faculty VALUES (262,'Arun Kumar','Asst Prof (Guest)','arunkr75@gmail.com',5);
INSERT INTO Faculty VALUES (263,'Ravi Kumar','Lab Asst','sonubhardwaj4200@gmail.com',5);
INSERT INTO Faculty VALUES (264,'Amit Kumar','Asst Prof','amitbcebhagalpur@gmail.com',5);
INSERT INTO Faculty VALUES (265,'Md Izhar','Asst Prof','mdizhar1996@gmail.com',5);
INSERT INTO Faculty VALUES (266,'Manisha Kumari Singh','Asst Prof','manisha.ks241@gmail.com',5);
INSERT INTO Faculty VALUES (267,'Praveen Kumar','Asst Prof','praveenkumaryadav782@gmail.com',5);
INSERT INTO Faculty VALUES (268,'Sujeet Kumar','Asst Prof','ksujeet.cs@gmail.com',5);

--Computer Science & Engineering (AIML)
INSERT INTO Faculty VALUES (280,'Sujeet Kumar','Asst Prof','ksujeet.cs@gmail.com',6);
INSERT INTO Faculty VALUES (281,'Praveen Kumar','Asst Prof','praveenkumaryadav782@gmail.com',6);
INSERT INTO Faculty VALUES (282,'Manisha Kumari Singh','Asst Prof','manisha.ks241@gmail.com',6);
INSERT INTO Faculty VALUES (283,'Md Izhar','Asst Prof','mdizhar1996@gmail.com',6);
INSERT INTO Faculty VALUES (284,'Amit Kumar','Asst Prof','amitbcebhagalpur@gmail.com',6);
INSERT INTO Faculty VALUES (285,'Md Ehteshamoul Hoque (HOD)','Asst Prof','ehtasham47@gmail.com',6);
INSERT INTO Faculty VALUES (286,'Murlidhar Prasad Singh','Asst Prof','singhmurlidhar@gmail.com',6);

--3D Animation and Graphics
INSERT INTO Faculty VALUES (300,'Murlidhar Prasad Singh (HOD)','Asst Prof','singhmurlidhar@gmail.com',7);
INSERT INTO Faculty VALUES (301,'Md Ehteshamoul Hoque','Asst Prof','ehtasham47@gmail.com',7);
INSERT INTO Faculty VALUES (302,'Sujeet Kumar','Asst Prof','ksujeet.cs@gmail.com',7);
INSERT INTO Faculty VALUES (303,'Praveen Kumar','Asst Prof','praveenkumaryadav782@gmail.com',7);
INSERT INTO Faculty VALUES (304,'Manisha Kumari Singh','Asst Prof','manisha.ks241@gmail.com',7);
INSERT INTO Faculty VALUES (305,'Md Izhar','Asst Prof','mdizhar1996@gmail.com',7);
INSERT INTO Faculty VALUES (306,'Amit Kumar','Asst Prof','amitbcebhagalpur@gmail.com',7);

--Vlaues of Student

--Civil Engineering
INSERT INTO Student VALUES (1,'Rahul Kumar', DATE '2004-01-15','Male','9000000001',1);
INSERT INTO Student VALUES (2,'Aman Raj', DATE '2025-03-22','Male','9000000002',1);
INSERT INTO Student VALUES (3,'Neha Kumari', DATE '2025-05-10','Female','9000000003',1);
INSERT INTO Student VALUES (4,'Pooja Singh', DATE '2025-12-05','Female','9000000004',1);
INSERT INTO Student VALUES (5,'Satyam Kumar', DATE '2025-07-18','Male','9000000005',1);
INSERT INTO Student VALUES (6,'Ritika Kumari', DATE '2025-09-09','Female','9000000006',1);
INSERT INTO Student VALUES (7,'Vikash Kumar', DATE '2025-11-25','Male','9000000007',1);
INSERT INTO Student VALUES (8,'Ankit Raj', DATE '2025-02-14','Male','9000000008',1);
INSERT INTO Student VALUES (9,'Sneha Kumari', DATE '2025-06-30','Female','900000009',1);
INSERT INTO Student VALUES (10,'Rohit Kumar', DATE '2003-08-20','Male','9000000010',1);

--Civil Engineering with Computer Application
INSERT INTO Student VALUES (11,'Aditya Kumar', DATE '2004-01-11','Male','9000000011',2);
INSERT INTO Student VALUES (12,'Kajal Kumari', DATE '2004-02-19','Female','9000000012',2);
INSERT INTO Student VALUES (13,'Ravi Kumar', DATE '2003-10-05','Male','9000000013',2);
INSERT INTO Student VALUES (14,'Priya Kumari', DATE '2004-06-21','Female','9000000014',2);
INSERT INTO Student VALUES (15,'Abhishek Raj', DATE '2004-03-14','Male','9000000015',2);
INSERT INTO Student VALUES (16,'Nisha Kumari', DATE '2003-12-12','Female','9876543216',2);
INSERT INTO Student VALUES (17,'Deepak Kumar', DATE '2004-08-07','Male','9000000017',2);
INSERT INTO Student VALUES (18,'Komal Kumari', DATE '2004-09-28','Female','9000000018',2);
INSERT INTO Student VALUES (19,'Manish Kumar', DATE '2003-07-17','Male','9000000019',2);
INSERT INTO Student VALUES (20,'Sneha Singh', DATE '2004-05-03','Female','9000000020',2);


--Mechanical Engineering
INSERT INTO Student VALUES (21,'Rohit Kumar', DATE '2004-01-10','Male','9000000021',3);
INSERT INTO Student VALUES (22,'Ankit Raj', DATE '2004-03-18','Male','9000000022',3);
INSERT INTO Student VALUES (23,'Pooja Kumari', DATE '2003-11-25','Female','9000000023',3);
INSERT INTO Student VALUES (24,'Satyam Kumar', DATE '2004-07-09','Male','9000000024',3);
INSERT INTO Student VALUES (25,'Neha Singh', DATE '2004-02-14','Female','9000000025',3);
INSERT INTO Student VALUES (26,'Vikash Kumar', DATE '2003-08-21','Male','9000000026',3);
INSERT INTO Student VALUES (27,'Ritika Kumari', DATE '2004-09-30','Female','9000000027',3);
INSERT INTO Student VALUES (28,'Aditya Raj', DATE '2004-05-06','Male','9000000028',3);
INSERT INTO Student VALUES (29,'Komal Kumari', DATE '2003-12-12','Female','9000000029',3);
INSERT INTO Student VALUES (30,'Deepak Kumar', DATE '2004-06-17','Male','9000000030',3);


--Electrical and Electronics Engineering
INSERT INTO Student VALUES (31,'Aman Kumar', DATE '2004-01-05','Male','9000000031',4);
INSERT INTO Student VALUES (32,'Rahul Raj', DATE '2004-03-12','Male','9000000032',4);
INSERT INTO Student VALUES (33,'Sneha Kumari', DATE '2003-10-20','Female','9000000033',4);
INSERT INTO Student VALUES (34,'Priya Singh', DATE '2004-07-14','Female','9000000034',4);
INSERT INTO Student VALUES (35,'Vikash Kumar', DATE '2004-02-22','Male','9000000035',4);
INSERT INTO Student VALUES (36,'Ritika Kumari', DATE '2003-12-09','Female','9000000036',4);
INSERT INTO Student VALUES (37,'Satyam Raj', DATE '2004-09-01','Male','9000000037',4);
INSERT INTO Student VALUES (38,'Ankit Kumar', DATE '2004-05-27','Male','9000000038',4);
INSERT INTO Student VALUES (39,'Neha Kumari', DATE '2003-08-18','Female','9000000039',4);
INSERT INTO Student VALUES (40,'Aditya Kumar', DATE '2004-06-30','Male','9000000040',4);

--Computer Science & Engineering
INSERT INTO Student VALUES (41,'Md Irshad Alam', DATE '2004-02-11','Male','9000000041',5);
INSERT INTO Student VALUES (42,'Aman Raj', DATE '2004-04-19','Male','9000000042',5);
INSERT INTO Student VALUES (43,'Riya Singh', DATE '2003-11-08','Female','9000000043',5);
INSERT INTO Student VALUES (44,'Neha Kumari', DATE '2004-07-25','Female','9000000044',5);
INSERT INTO Student VALUES (45,'Satyam Kumar', DATE '2004-03-16','Male','9000000045',5);
INSERT INTO Student VALUES (46,'Ankit Raj', DATE '2003-12-30','Male','9000000046',5);
INSERT INTO Student VALUES (47,'Pooja Kumari', DATE '2004-05-05','Female','9000000047',5);
INSERT INTO Student VALUES (48,'Rohit Kumar', DATE '2003-09-21','Male','9000000048',5);
INSERT INTO Student VALUES (49,'Sneha Kumari', DATE '2004-08-14','Female','9000000049',5);
INSERT INTO Student VALUES (50,'Vikash Kumar', DATE '2004-06-09','Male','9000000050',5);

--Computer Science & Engineering (AIML)
INSERT INTO Student VALUES (51,'Aditya Kumar', DATE '2004-01-09','Male','9000000051',6);
INSERT INTO Student VALUES (52,'Priya Kumari', DATE '2004-03-17','Female','9000000052',6);
INSERT INTO Student VALUES (53,'Rahul Kumar', DATE '2003-10-28','Male','9000000053',6);
INSERT INTO Student VALUES (54,'Neha Singh', DATE '2004-07-11','Female','9000000054',6);
INSERT INTO Student VALUES (55,'Aman Raj', DATE '2004-02-26','Male','9000000055',6);
INSERT INTO Student VALUES (56,'Ritika Kumari', DATE '2003-12-15','Female','9000000056',6);
INSERT INTO Student VALUES (57,'Satyam Kumar', DATE '2004-09-03','Male','9000000057',6);
INSERT INTO Student VALUES (58,'Komal Kumari', DATE '2004-05-22','Female','9000000058',6);
INSERT INTO Student VALUES (59,'Vikash Kumar', DATE '2003-08-06','Male','9000000059',6);
INSERT INTO Student VALUES (60,'Sneha Kumari', DATE '2004-06-18','Female','9000000060',6);

--3D Animation and Graphics
INSERT INTO Student VALUES (61,'Arjun Kumar', DATE '2004-01-14','Male','9000000061',7);
INSERT INTO Student VALUES (62,'Riya Kumari', DATE '2004-03-22','Female','9000000062',7);
INSERT INTO Student VALUES (63,'Satyam Raj', DATE '2003-11-19','Male','9000000063',7);
INSERT INTO Student VALUES (64,'Priya Singh', DATE '2004-07-07','Female','9000000064',7);
INSERT INTO Student VALUES (65,'Vikash Kumar', DATE '2004-02-11','Male','9000000065',7);
INSERT INTO Student VALUES (66,'Neha Kumari', DATE '2003-12-28','Female','9000000066',7);
INSERT INTO Student VALUES (67,'Aman Kumar', DATE '2004-09-04','Male','9000000067',7);
INSERT INTO Student VALUES (68,'Komal Kumari', DATE '2004-05-16','Female','9000000068',7);
INSERT INTO Student VALUES (69,'Rahul Kumar', DATE '2003-08-25','Male','9000000069',7);
INSERT INTO Student VALUES (70,'Sneha Kumari', DATE '2004-06-30','Female','9000000070',7);


--Values of Course

--Civil Engineering
INSERT INTO Course VALUES (1001,'Engineering Mechanics',4,1,201);
INSERT INTO Course VALUES (1002,'Structural Analysis',4,1,202);
INSERT INTO Course VALUES (1003,'Geotechnical Engineering',3,1,203);
INSERT INTO Course VALUES (1004,'Transportation Engineering',3,1,204);
INSERT INTO Course VALUES (1005,'Environmental Engineering',4,1,205);

--Civil Engineering with Computer Application
INSERT INTO Course VALUES (1006,'Engineering Mathematics',4,2,220);
INSERT INTO Course VALUES (1007,'Computer Programming',4,2,221);
INSERT INTO Course VALUES (1008,'Database Management System',4,2,222);
INSERT INTO Course VALUES (1009,'Surveying',3,2,223);
INSERT INTO Course VALUES (1010,'Construction Technology',3,2,224);

--Mechanical Engineering
INSERT INTO Course VALUES (1011,'Engineering Thermodynamics',4,3,230);
INSERT INTO Course VALUES (1012,'Fluid Mechanics',4,3,231);
INSERT INTO Course VALUES (1013,'Machine Design',3,3,232);
INSERT INTO Course VALUES (1014,'Manufacturing Process',3,3,233);
INSERT INTO Course VALUES (1015,'Heat Transfer',4,3,234);

--Electrical and Electronics Engineering
INSERT INTO Course VALUES (1016,'Basic Electrical Engineering',4,4,240);
INSERT INTO Course VALUES (1017,'Electrical Machines',4,4,241);
INSERT INTO Course VALUES (1018,'Power Systems',4,4,242);
INSERT INTO Course VALUES (1019,'Control Systems',3,4,243);
INSERT INTO Course VALUES (1020,'Power Electronics',3,4,244);

--Computer Science & Engineering
INSERT INTO Course VALUES (1021,'Programming in C',4,5,260);
INSERT INTO Course VALUES (1022,'Data Structures',4,5,261);
INSERT INTO Course VALUES (1023,'Database Management System',4,5,264);
INSERT INTO Course VALUES (1024,'Operating System',4,5,265);
INSERT INTO Course VALUES (1025,'Computer Networks',3,5,267);

--Computer Science & Engineering (AIML)
INSERT INTO Course VALUES (1026,'Python Programming',4,6,280);
INSERT INTO Course VALUES (1027,'Machine Learning',4,6,281);
INSERT INTO Course VALUES (1028,'Artificial Intelligence',4,6,282);
INSERT INTO Course VALUES (1029,'Data Science',3,6,283);
INSERT INTO Course VALUES (1030,'Deep Learning',3,6,284);

--3D Animation and Graphics
INSERT INTO Course VALUES (1031,'Introduction to Animation',4,7,300);
INSERT INTO Course VALUES (1032,'3D Modeling',4,7,301);
INSERT INTO Course VALUES (1033,'Texturing and Lighting',3,7,302);
INSERT INTO Course VALUES (1034,'Visual Effects (VFX)',3,7,303);
INSERT INTO Course VALUES (1035,'Graphic Design',4,7,304);


--Student Enrollment

--Civil Engineering
INSERT INTO Enrollment VALUES (1,1001,'Sem4','A');
INSERT INTO Enrollment VALUES (2,1002,'Sem5','B+');
INSERT INTO Enrollment VALUES (3,1003,'Sem5','A');
INSERT INTO Enrollment VALUES (4,1004,'Sem5','B');
INSERT INTO Enrollment VALUES (5,1005,'Sem5','A');
INSERT INTO Enrollment VALUES (6,1001,'Sem5','B+');
INSERT INTO Enrollment VALUES (7,1002,'Sem5','A');
INSERT INTO Enrollment VALUES (8,1003,'Sem5','B');
INSERT INTO Enrollment VALUES (9,1004,'Sem5','A');
INSERT INTO Enrollment VALUES (10,1005,'Sem5','B+');

--Civil Engineering with Computer Application
INSERT INTO Enrollment VALUES (11,1006,'Sem4','A');
INSERT INTO Enrollment VALUES (12,1007,'Sem5','B+');
INSERT INTO Enrollment VALUES (13,1008,'Sem5','A');
INSERT INTO Enrollment VALUES (14,1009,'Sem5','B');
INSERT INTO Enrollment VALUES (15,1010,'Sem5','A');
INSERT INTO Enrollment VALUES (16,1006,'Sem5','B+');
INSERT INTO Enrollment VALUES (17,1007,'Sem5','A');
INSERT INTO Enrollment VALUES (18,1008,'Sem5','B');
INSERT INTO Enrollment VALUES (19,1009,'Sem5','A');
INSERT INTO Enrollment VALUES (20,1010,'Sem5','B+');

--Mechanical Engineering
INSERT INTO Enrollment VALUES (21,1011,'Sem4','A');
INSERT INTO Enrollment VALUES (22,1012,'Sem5','B+');
INSERT INTO Enrollment VALUES (23,1013,'Sem5','A');
INSERT INTO Enrollment VALUES (24,1014,'Sem5','B');
INSERT INTO Enrollment VALUES (25,1015,'Sem5','A');
INSERT INTO Enrollment VALUES (26,1011,'Sem5','B+');
INSERT INTO Enrollment VALUES (27,1012,'Sem5','A');
INSERT INTO Enrollment VALUES (28,1013,'Sem5','B');
INSERT INTO Enrollment VALUES (29,1014,'Sem5','A');
INSERT INTO Enrollment VALUES (30,1015,'Sem5','B+');

--Electrical and Electronics Engineering
INSERT INTO Enrollment VALUES (31,1016,'Sem4','A');
INSERT INTO Enrollment VALUES (32,1017,'Sem5','B+');
INSERT INTO Enrollment VALUES (33,1018,'Sem5','A');
INSERT INTO Enrollment VALUES (34,1019,'Sem5','B');
INSERT INTO Enrollment VALUES (35,1020,'Sem5','A');
INSERT INTO Enrollment VALUES (36,1016,'Sem5','B+');
INSERT INTO Enrollment VALUES (37,1017,'Sem5','A');
INSERT INTO Enrollment VALUES (38,1018,'Sem5','B');
INSERT INTO Enrollment VALUES (39,1019,'Sem5','A');
INSERT INTO Enrollment VALUES (40,1020,'Sem5','B+');

--Computer Science & Engineering
INSERT INTO Enrollment VALUES (41,1021,'Sem4','A');
INSERT INTO Enrollment VALUES (42,1022,'Sem5','B+');
INSERT INTO Enrollment VALUES (43,1023,'Sem5','A');
INSERT INTO Enrollment VALUES (44,1024,'Sem5','B');
INSERT INTO Enrollment VALUES (45,1025,'Sem5','A');
INSERT INTO Enrollment VALUES (46,1021,'Sem5','B+');
INSERT INTO Enrollment VALUES (47,1022,'Sem5','A');
INSERT INTO Enrollment VALUES (48,1023,'Sem5','B');
INSERT INTO Enrollment VALUES (49,1024,'Sem5','A');
INSERT INTO Enrollment VALUES (50,1025,'Sem5','B+');

--Computer Science & Engineering (AIML)
INSERT INTO Enrollment VALUES (51,1026,'Sem4','A');
INSERT INTO Enrollment VALUES (52,1027,'Sem5','B+');
INSERT INTO Enrollment VALUES (53,1028,'Sem5','A');
INSERT INTO Enrollment VALUES (54,1029,'Sem5','B');
INSERT INTO Enrollment VALUES (55,1030,'Sem5','A');
INSERT INTO Enrollment VALUES (56,1026,'Sem5','B+');
INSERT INTO Enrollment VALUES (57,1027,'Sem5','A');
INSERT INTO Enrollment VALUES (58,1028,'Sem5','B');
INSERT INTO Enrollment VALUES (59,1029,'Sem5','A');
INSERT INTO Enrollment VALUES (60,1030,'Sem5','B+');

--3D Animation and Graphics
INSERT INTO Enrollment VALUES (61,1031,'Sem4','A');
INSERT INTO Enrollment VALUES (62,1032,'Sem5','B+');
INSERT INTO Enrollment VALUES (63,1033,'Sem5','A');
INSERT INTO Enrollment VALUES (64,1034,'Sem5','B');
INSERT INTO Enrollment VALUES (65,1035,'Sem5','A');
INSERT INTO Enrollment VALUES (66,1031,'Sem5','B+');
INSERT INTO Enrollment VALUES (67,1032,'Sem5','A');
INSERT INTO Enrollment VALUES (68,1033,'Sem5','B');
INSERT INTO Enrollment VALUES (69,1034,'Sem5','A');
INSERT INTO Enrollment VALUES (70,1035,'Sem5','B+');

SET LINESIZE 200;
SET PAGESIZE 200;
SET WRAP OFF;

SELECT * FROM Department;
SELECT * FROM Faculty;
SELECT * FROM Course;
SELECT * FROM Student;
SELECT * FROM Enrollment;

commit;
