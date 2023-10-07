


-- Then, create the new table
CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20) ,
    major VARCHAR(20) ,
    PRIMARY KEY(student_id)
);

DESCRIBE student;

DROP TABLE student;


SELECT * FROM student;


INSERT INTO student(name,major) VALUES('Jack','Biology');

INSERT INTO student(name,major) VALUES('Kate','Sociology');

INSERT INTO student(name,major) VALUES('Claire','Chemistry');

INSERT INTO student(name,major) VALUES('Jack','Biology');

INSERT INTO student(name,major) VALUES('Mike','Computer Science');

DELETE FROM student
WHERE student_id=5;

DELETE FROM student
WHERE name='Kate' AND major='Sociology';

DELETE FROM student;