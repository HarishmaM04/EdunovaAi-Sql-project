CREATE DATABASE  EduNovaAI;
USE EduNovaAI;
CREATE TABLE Roles(
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL
);
CREATE TABLE Users(
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    role_id INT,
    full_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    FOREIGN KEY(role_id) REFERENCES Roles(role_id)
);
desc student_answers
select*from student_answers
CREATE TABLE Courses(
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    instructor_id INT,
    course_title VARCHAR(150),
    level VARCHAR(30),
    price DECIMAL(10,2),
    FOREIGN KEY(instructor_id) REFERENCES Users(user_id)
);
INSERT INTO Roles(role_name) VALUES
('Admin'),('Instructor'),('Student');
SELECT * FROM Roles;
INSERT INTO Users(role_id,full_name,email,phone) VALUES
(1,'Admin User','admin@edunova.ai','9000000001'),
(2,'John Instructor','john@edunova.ai','9000000002'),
(3,'Student1','student1@gmail.com','9870000001'),
(3,'Student2','student2@gmail.com','9870000002'),
(3,'Student3','student3@gmail.com','9870000003'),
(3,'Student4','student4@gmail.com','9870000004'),
(3,'Student5','student5@gmail.com','9870000005'),
(3,'Student6','student6@gmail.com','9870000006'),
(3,'Student7','student7@gmail.com','9870000007'),
(3,'Student8','student8@gmail.com','9870000008'),
(3,'Student9','student9@gmail.com','9870000009'),
(3,'Student10','student10@gmail.com','9870000010'),
(3,'Student11','student11@gmail.com','9870000011'),
(3,'Student12','student12@gmail.com','9870000012'),
(3,'Student13','student13@gmail.com','9870000013'),
(3,'Student14','student14@gmail.com','9870000014'),
(3,'Student15','student15@gmail.com','9870000015'),
(3,'Student16','student16@gmail.com','9870000016'),
(3,'Student17','student17@gmail.com','9870000017'),
(3,'Student18','student18@gmail.com','9870000018'),
(3,'Student19','student19@gmail.com','9870000019'),
(3,'Student20','student20@gmail.com','9870000020'),
(3,'Student21','student21@gmail.com','9870000021'),
(3,'Student22','student22@gmail.com','9870000022'),
(3,'Student23','student23@gmail.com','9870000023');
INSERT INTO Courses(instructor_id,course_title,level,price) VALUES
(2,'Python Programming','Beginner',999),
(2,'Java Programming','Intermediate',1099),
(2,'C Programming','Advanced',1199),
(2,'C++ Programming','Beginner',1299),
(2,'MySQL','Intermediate',1399),
(2,'HTML & CSS','Advanced',1499),
(2,'JavaScript','Beginner',1599),
(2,'React JS','Intermediate',1699),
(2,'Node JS','Advanced',1799),
(2,'PHP','Beginner',1899),
(2,'Laravel','Intermediate',1999),
(2,'Data Science','Advanced',2099),
(2,'Machine Learning','Beginner',2199),
(2,'Deep Learning','Intermediate',2299),
(2,'Power BI','Advanced',2399),
(2,'Excel','Beginner',2499),
(2,'Tableau','Intermediate',2599),
(2,'AWS','Advanced',2699),
(2,'Azure','Beginner',2799),
(2,'DevOps','Intermediate',2899);
CREATE TABLE Modules(module_id INT AUTO_INCREMENT PRIMARY KEY,course_id INT,module_title VARCHAR(150),module_order INT,FOREIGN KEY(course_id) REFERENCES Courses(course_id));
INSERT INTO Modules(course_id,module_title,module_order) VALUES
(1,'Introduction',1),
(1,'Intermediate Concepts',2),
(2,'Introduction',1),
(2,'Intermediate Concepts',2),
(3,'Introduction',1),
(3,'Intermediate Concepts',2),
(4,'Introduction',1),
(4,'Intermediate Concepts',2),
(5,'Introduction',1),
(5,'Intermediate Concepts',2),
(6,'Introduction',1),
(6,'Intermediate Concepts',2),
(7,'Introduction',1),
(7,'Intermediate Concepts',2),
(8,'Introduction',1),
(8,'Intermediate Concepts',2),
(9,'Introduction',1),
(9,'Intermediate Concepts',2),
(10,'Introduction',1),
(10,'Intermediate Concepts',2),
(11,'Introduction',1),
(11,'Intermediate Concepts',2),
(12,'Introduction',1),
(12,'Intermediate Concepts',2),
(13,'Introduction',1),
(13,'Intermediate Concepts',2),
(14,'Introduction',1),
(14,'Intermediate Concepts',2),
(15,'Introduction',1),
(15,'Intermediate Concepts',2),
(16,'Introduction',1),
(16,'Intermediate Concepts',2),
(17,'Introduction',1),
(17,'Intermediate Concepts',2),
(18,'Introduction',1),
(18,'Intermediate Concepts',2),
(19,'Introduction',1),
(19,'Intermediate Concepts',2),
(20,'Introduction',1),
(20,'Intermediate Concepts',2);
CREATE TABLE Topics(
    topic_id INT AUTO_INCREMENT PRIMARY KEY,
    module_id INT,
    topic_title VARCHAR(150),
    topic_order INT,
    FOREIGN KEY(module_id) REFERENCES Modules(module_id)
);
INSERT INTO Topics(module_id,topic_title,topic_order) VALUES
(1,'Introduction to Python',1),
(1,'Installing Python',2),
(2,'Variables',1),
(2,'Data Types',2),
(3,'Functions',1),
(3,'Loops',2),
(4,'Lists',1),
(4,'Tuples',2),
(5,'Pointers',1),
(5,'Arrays',2),
(6,'Structures',1),
(6,'File Handling',2),
(7,'Classes',1),
(7,'Objects',2),
(8,'Inheritance',1),
(8,'Polymorphism',2),
(9,'SQL Basics',1),
(9,'DDL Commands',2),
(10,'DML Commands',1),
(10,'Constraints',2),
(11,'HTML Introduction',1),
(11,'HTML Tags',2),
(12,'Forms',1),
(12,'Tables',2),
(13,'CSS Basics',1),
(13,'Selectors',2),
(14,'Flexbox',1),
(14,'Grid',2),
(15,'JavaScript Basics',1),
(15,'Variables',2),
(16,'Functions',1),
(16,'DOM',2),
(17,'React Components',1),
(17,'Props',2),
(18,'State',1),
(18,'Hooks',2),
(19,'Node Introduction',1),
(19,'NPM',2),
(20,'Express Basics',1),
(20,'Routing',2);
CREATE TABLE Notes(
    note_id INT AUTO_INCREMENT PRIMARY KEY,
    topic_id INT,
    note_title VARCHAR(150),
    FOREIGN KEY(topic_id) REFERENCES Topics(topic_id)
);
INSERT INTO Notes(topic_id,note_title) VALUES
(1,'Python Introduction Notes'),
(2,'Python Installation Notes'),
(3,'Variables Notes'),
(4,'Data Types Notes'),
(5,'Functions Notes'),
(6,'Loops Notes'),
(7,'Lists Notes'),
(8,'Tuples Notes'),
(9,'Pointers Notes'),
(10,'Arrays Notes'),
(11,'Structures Notes'),
(12,'File Handling Notes'),
(13,'Classes Notes'),
(14,'Objects Notes'),
(15,'Inheritance Notes'),
(16,'Polymorphism Notes'),
(17,'SQL Basics Notes'),
(18,'DDL Notes'),
(19,'DML Notes'),
(20,'Constraints Notes');
CREATE TABLE Videos(
    video_id INT AUTO_INCREMENT PRIMARY KEY,
    topic_id INT,
    video_title VARCHAR(150),
    duration TIME,
    FOREIGN KEY(topic_id) REFERENCES Topics(topic_id)
);
INSERT INTO Videos(topic_id,video_title,duration) VALUES
(1,'Python Introduction','00:12:10'),
(2,'Installing Python','00:08:15'),
(3,'Variables Tutorial','00:14:30'),
(4,'Data Types Tutorial','00:15:20'),
(5,'Functions Tutorial','00:18:00'),
(6,'Loops Tutorial','00:20:15'),
(7,'Lists Tutorial','00:16:10'),
(8,'Tuples Tutorial','00:10:25'),
(9,'Pointers Tutorial','00:18:40'),
(10,'Arrays Tutorial','00:17:20'),
(11,'Structures Tutorial','00:19:30'),
(12,'File Handling','00:15:15'),
(13,'Classes Tutorial','00:21:10'),
(14,'Objects Tutorial','00:13:30'),
(15,'Inheritance Tutorial','00:24:20'),
(16,'Polymorphism Tutorial','00:22:40'),
(17,'SQL Basics','00:20:00'),
(18,'DDL Commands','00:18:25'),
(19,'DML Commands','00:19:10'),
(20,'Constraints','00:17:40');
CREATE TABLE Quiz(
    quiz_id INT AUTO_INCREMENT PRIMARY KEY,
    topic_id INT,
    quiz_title VARCHAR(150),
    total_marks INT,
    FOREIGN KEY(topic_id) REFERENCES Topics(topic_id)
);
INSERT INTO Quiz(topic_id,quiz_title,total_marks) VALUES
(1,'Python Introduction Quiz',20),
(2,'Python Installation Quiz',20),
(3,'Variables Quiz',20),
(4,'Data Types Quiz',20),
(5,'Functions Quiz',20),
(6,'Loops Quiz',20),
(7,'Lists Quiz',20),
(8,'Tuples Quiz',20),
(9,'Pointers Quiz',20),
(10,'Arrays Quiz',20),
(11,'Structures Quiz',20),
(12,'File Handling Quiz',20),
(13,'Classes Quiz',20),
(14,'Objects Quiz',20),
(15,'Inheritance Quiz',20),
(16,'Polymorphism Quiz',20),
(17,'SQL Basics Quiz',20),
(18,'DDL Commands Quiz',20),
(19,'DML Commands Quiz',20),
(20,'Constraints Quiz',20);
USE EduNovaAI;
CREATE TABLE Questions(
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    quiz_id INT,
    question_text TEXT,
    marks INT,
    FOREIGN KEY(quiz_id) REFERENCES Quiz(quiz_id)
);
INSERT INTO Questions(quiz_id,question_text,marks) VALUES
(1,'Who developed Python?',2),
(1,'Python is a ______ language.',2),
(2,'Which software is used to run Python?',2),
(2,'Python file extension is?',2),
(3,'Which symbol is used for assignment?',2),
(3,'Which keyword declares a variable?',2),
(4,'Which data type stores decimal values?',2),
(4,'Which data type stores text?',2),
(5,'Function keyword in Python?',2),
(5,'Functions are used for?',2),
(6,'Which loop repeats until condition is false?',2),
(6,'Which loop is best for fixed iterations?',2),
(7,'Which bracket is used for List?',2),
(7,'Lists are ______.',2),
(8,'Tuple uses which bracket?',2),
(8,'Tuple is ______.',2),
(9,'Pointer stores?',2),
(9,'Pointer operator?',2),
(10,'Array index starts from?',2),
(10,'Arrays store?',2);
CREATE TABLE Options(
    option_id INT AUTO_INCREMENT PRIMARY KEY,
    question_id INT,
    option_text VARCHAR(255),
    is_correct BOOLEAN,
    FOREIGN KEY(question_id) REFERENCES Questions(question_id)
);
INSERT INTO Options(question_id,option_text,is_correct) VALUES
(1,'Guido van Rossum',TRUE),
(1,'James Gosling',FALSE),
(1,'Dennis Ritchie',FALSE),
(1,'Bjarne Stroustrup',FALSE),
(2,'Programming Language',TRUE),
(2,'Database',FALSE),
(2,'Browser',FALSE),
(2,'Operating System',FALSE),
(3,'VS Code',TRUE),
(3,'MS Word',FALSE),
(3,'Chrome',FALSE),
(3,'Paint',FALSE),
(4,'.py',TRUE),
(4,'.java',FALSE),
(4,'.cpp',FALSE),
(4,'.html',FALSE),
(5,'=',TRUE),
(5,'==',FALSE),
(5,'!=',FALSE),
(5,'<=',FALSE),
(6,'No keyword required',TRUE),
(6,'var',FALSE),
(6,'let',FALSE),
(6,'const',FALSE),
(7,'float',TRUE),
(7,'string',FALSE),
(7,'char',FALSE),
(7,'bool',FALSE),
(8,'string',TRUE),
(8,'float',FALSE),
(8,'int',FALSE),
(8,'bool',FALSE),
(9,'def',TRUE),
(9,'function',FALSE),
(9,'class',FALSE),
(9,'method',FALSE),
(10,'Reuse Code',TRUE),
(10,'Delete File',FALSE),
(10,'Install Python',FALSE),
(10,'Compile Program',FALSE);
CREATE TABLE Student_Answers(
    answer_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    question_id INT,
    selected_option_id INT,
    answered_at DATETIME,
    FOREIGN KEY(user_id) REFERENCES Users(user_id),
    FOREIGN KEY(question_id) REFERENCES Questions(question_id),
    FOREIGN KEY(selected_option_id) REFERENCES Options(option_id)
);
INSERT INTO Student_Answers(user_id,question_id,selected_option_id,answered_at) VALUES
(3,1,1,NOW()),
(3,2,5,NOW()),
(3,3,9,NOW()),
(3,4,13,NOW()),
(4,5,17,NOW()),
(4,6,21,NOW()),
(5,7,25,NOW()),
(5,8,29,NOW()),
(6,9,33,NOW()),
(6,10,37,NOW());
SELECT * FROM Questions;
SELECT * FROM Options;
SELECT * FROM Student_Answers;
CREATE TABLE Scores(
    score_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    quiz_id INT,
    score INT,
    total_marks INT,
    percentage DECIMAL(5,2),
    status VARCHAR(20),
    completed_at DATETIME,
    FOREIGN KEY(user_id) REFERENCES Users(user_id),
    FOREIGN KEY(quiz_id) REFERENCES Quiz(quiz_id)
);
INSERT INTO Scores(user_id,quiz_id,score,total_marks,percentage,status,completed_at) VALUES
(3,1,18,20,90.00,'Pass',NOW()),
(3,2,17,20,85.00,'Pass',NOW()),
(4,3,15,20,75.00,'Pass',NOW()),
(5,4,12,20,60.00,'Pass',NOW()),
(6,5,19,20,95.00,'Pass',NOW()),
(3,6,10,20,50.00,'Pass',NOW()),
(4,7,8,20,40.00,'Fail',NOW()),
(5,8,16,20,80.00,'Pass',NOW()),
(6,9,14,20,70.00,'Pass',NOW()),
(3,10,20,20,100.00,'Pass',NOW());
CREATE TABLE Progress(
    progress_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    course_id INT,
    completed_topics INT,
    total_topics INT,
    progress_percentage DECIMAL(5,2),
    last_accessed DATETIME,
    FOREIGN KEY(user_id) REFERENCES Users(user_id),
    FOREIGN KEY(course_id) REFERENCES Courses(course_id)
);
INSERT INTO Progress(user_id,course_id,completed_topics,total_topics,progress_percentage,last_accessed) VALUES
(3,1,8,10,80.00,NOW()),
(3,2,5,10,50.00,NOW()),
(4,1,10,10,100.00,NOW()),
(5,2,7,10,70.00,NOW()),
(6,3,4,10,40.00,NOW());
CREATE TABLE Certificates(
    certificate_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    course_id INT,
    certificate_number VARCHAR(100),
    issue_date DATE,
    certificate_url VARCHAR(255),
    FOREIGN KEY(user_id) REFERENCES Users(user_id),
    FOREIGN KEY(course_id) REFERENCES Courses(course_id)
);
INSERT INTO Certificates(user_id,course_id,certificate_number,issue_date,certificate_url) VALUES
(4,1,'EDU-2026-001','2026-07-01','certificates/EDU-2026-001.pdf'),
(3,2,'EDU-2026-002','2026-07-10','certificates/EDU-2026-002.pdf');
CREATE TABLE Feedback(
    feedback_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    course_id INT,
    rating INT,
    comments TEXT,
    feedback_date DATE,
    FOREIGN KEY(user_id) REFERENCES Users(user_id),
    FOREIGN KEY(course_id) REFERENCES Courses(course_id)
);
INSERT INTO Feedback(user_id,course_id,rating,comments,feedback_date) VALUES
(3,1,5,'Excellent course','2026-07-15'),
(4,1,4,'Very informative','2026-07-15'),
(5,2,5,'Loved the practical sessions','2026-07-16'),
(6,3,4,'Good explanations','2026-07-16');
SELECT * FROM Scores;
SELECT * FROM Progress;
SELECT * FROM Certificates;
SELECT * FROM feedback;
-- Display all students.
SELECT *FROM Users WHERE role_id = 3;
-- Display courses with price greater than ₹2000.
SELECT *FROM Courses WHERE price > 2000;
-- Count the total number of students.
SELECT COUNT(*) AS Total_Students FROM Users WHERE role_id = 3;
-- Find the average course price.
SELECT AVG(price) AS Average_Price FROM Courses;
-- Display course name with instructor name.
SELECT c.course_title,u.full_name AS Instructor FROM Courses c INNER JOIN Users u ON c.instructor_id = u.user_id;
-- Display module name with course name.
SELECT m.module_title,c.course_title FROM Modules m INNER JOIN Courses c ON m.course_id = c.course_id;
-- Display quiz title with topic name.
SELECT q.quiz_title,t.topic_title FROM Quiz q INNER JOIN Topics t ON q.topic_id = t.topic_id;
-- Find the most expensive course.
SELECT * FROM Courses WHERE price = (SELECT MAX(price)FROM Courses);
-- Display students whose score is above the average score.
SELECT *FROM Scores WHERE score >(SELECT AVG(score)FROM Scores);
-- Display students scoring above 80%.
WITH StudentMarks AS(SELECT user_id,percentage FROM Scores)SELECT *FROM StudentMarks WHERE percentage > 80;
-- Rank students based on percentage
SELECT user_id,percentage,RANK() OVER(ORDER BY percentage DESC) AS Student_Rank FROM Scores;
-- Create Course Instructor View. 
CREATE VIEW Course_Instructor_View AS
SELECT
c.course_title,
u.full_name
FROM Courses c
JOIN Users u
ON c.instructor_id=u.user_id;
-- Display all courses.
DELIMITER $$
CREATE PROCEDURE GetCourses()
BEGIN
SELECT * FROM Courses;
END $$
DELIMITER ;
CALL GetCourses();
-- Pass or Fail Function.
DELIMITER $$
CREATE FUNCTION ResultStatus(score INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
IF score>=10 THEN
RETURN 'Pass';
ELSE
RETURN 'Fail';
END IF;
END $$
DELIMITER ;
-- Calculate percentage
DELIMITER $$
CREATE FUNCTION CalculatePercentage(score INT, total_marks INT)
RETURNS DECIMAL(5,2)
DETERMINISTIC
BEGIN
    RETURN (score * 100.0) / total_marks;
END $$
DELIMITER ;
SELECT CalculatePercentage(18,20) AS Percentage;
-- Automatically set feedback date.
DELIMITER $$
CREATE TRIGGER trg_feedback_date
BEFORE INSERT
ON Feedback
FOR EACH ROW
BEGIN
SET NEW.feedback_date=CURDATE();
END $$
DELIMITER ;
-- Trigger:
DELIMITER $$
CREATE TRIGGER trg_check_rating
BEFORE INSERT
ON Feedback
FOR EACH ROW
BEGIN
    IF NEW.rating < 1 OR NEW.rating > 5 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Rating must be between 1 and 5';
    END IF;
END $$
DELIMITER ;
INSERT INTO Feedback(user_id, course_id, rating, comments)VALUES (1, 1, 6, 'Excellent');
INSERT INTO Feedback(user_id, course_id, rating, comments)VALUES (1, 1, 5, 'Excellent');
SELECT *FROM Feedback ORDER BY feedback_id DESC LIMIT 1;
