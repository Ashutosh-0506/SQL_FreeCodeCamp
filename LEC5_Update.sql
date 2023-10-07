


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

UPDATE student
SET major='Bio'
WHERE major='Biology';

UPDATE student
SET major='CS'
WHERE major='Computer Science';


UPDATE student
SET major='Bio-Chemistry'
WHERE major='Bio' OR major='Chemistry';


UPDATE student
SET name ='Tom',major='Undecided'
WHERE student_id=1;


UPDATE student
SET major='Undecided';




