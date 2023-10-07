
-----------------------------------------------------------------
--1

CREATE TABLE trigger_test(
    message VARCHAR(100)
);

DELIMITER $$
CREATE
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES('added new employee');
    END$$
DELIMITER ;


SET FOREIGN_KEY_CHECKS=0;



INSERT INTO employee
VALUES(690, 'Oscar', 'Martinez', '1968-02-19', 'M', 420000, 107, 2);

SELECT * FROM trigger_test;

DROP TRIGGER my_trigger;

------------------------------------------------------------------------------
--2

CREATE TABLE trigger_test1(
    message VARCHAR(100)
);


DELIMITER $$
CREATE
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test1 VALUES(NEW.first_name);
    END$$
DELIMITER ;
INSERT INTO employee
VALUES(110, 'Kevin', 'Malone', '1978-02-19', 'M', 69000, 106, 3);


SELECT * FROM trigger_test1;


DROP TRIGGER my_trigger1;

----------------------------------------------------------------------------
--3


CREATE TABLE trigger_test2(
    message VARCHAR(100)
);


DELIMITER $$
CREATE
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
         IF NEW.sex = 'M' THEN
               INSERT INTO trigger_test2 VALUES('added male employee');
         ELSEIF NEW.sex = 'F' THEN
               INSERT INTO trigger_test2 VALUES('added female');
         ELSE
               INSERT INTO trigger_test2 VALUES('added other employee');
         END IF;
    END$$
DELIMITER ;




INSERT INTO employee
VALUES(111, 'Pam', 'Beesly', '1988-02-19', 'F', 69000, 106, 3);


SELECT * FROM trigger_test2;


DROP TRIGGER my_trigger2;