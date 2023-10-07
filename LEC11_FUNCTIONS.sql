--FIND the number of employees
SELECT COUNT(emp_id)
FROM employee;

--FIND the number of employees who have a supervisor
SELECT COUNT (super_id)
FROM employee;

--Find the number of female employees born after 1970
SELECT COUNT(emp_id)
FROM employee
WHERE sex='F' AND birth_date>'1970-01-01';

--Find average of all employee salary Where employees are male
SELECT SUM(salary)
FROM employee
WHERE sex='M';





--Find out how many males and females there are
SELECT COUNT(sex),sex
FROM employee
GROUP BY sex;

--Find total sales of each salesman
SELECT SUM(total_sales),emp_id
FROM works_with
GROUP BY emp_id;


--Find total money each client spent
SELECT SUM(total_sales),client_id
FROM works_with
GROUP BY client_id;