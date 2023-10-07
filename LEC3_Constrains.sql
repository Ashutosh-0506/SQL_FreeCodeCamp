


-- Then, create the new table
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20) NOT NULL ,
    major VARCHAR(20) DEFAULT 'undecided' UNIQUE,
    PRIMARY KEY(student_id) 
);

DESCRIBE student;

DROP TABLE student;


SELECT * FROM student;

INSERT INTO student VALUES(1,'Jack','Biology');

INSERT INTO student VALUES(2,'Kate','Sociology');

INSERT INTO student(student_id,name) VALUES(3,'Claire');

INSERT INTO student VALUES(4,'Jack','Biology');

INSERT INTO student VALUES(5,'Mike','Computer Science');
