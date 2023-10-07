CREATE TABLE student(
    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)
);



DROP TABLE student;

SELECT * FROM student;

INSERT INTO student VALUES(1,'Jack','Biology');

INSERT INTO student VALUES(2,'Kate','Sociology');

INSERT INTO student VALUES(3,'Claire','Chemistry');

INSERT INTO student VALUES(4,'Jack','Biology');

INSERT INTO student VALUES(5,'Mike','Computer Science');




SELECT name,student.major
 FROM student;


 SELECT *
 FROM student
 ORDER BY major,student_id DESC;

 SELECT *
 FROM student
 ORDER BY major,student_id DESC
 LIMIT 2;

 SELECT *
 FROM student
 WHERE major='Biology';

  SELECT *
 FROM student
 WHERE major='Computer Science' OR name='Claire';


  SELECT *
 FROM student
 WHERE student_id<=3 AND name<>'Jack';

 SELECT *
 FROM student
 WHERE name IN('Claire','Kate');

