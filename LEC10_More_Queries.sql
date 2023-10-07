--Find all employees name
SELECT employee.last_name
FROM employee;


-- Find the order of employees by salary decending
SELECT *
FROM employee
ORDER BY salary DESC;

-- Select all the employess ordered by  
SELECT *
FROM employee
ORDER BY salary DESC;

--Order by Sex then name
SELECT *
FROM employee 
ORDER BY sex,first_name,last_name;

--Select first five employee from the table
SELECT * 
FROM employee
LIMIT 5;

--Find first and last name of all employees
SELECT employee.first_name,employee.last_name
FROM employee;


--Find first and last name of all employees
SELECT employee.first_name AS Forename,employee.last_name AS Surname
FROM employee;


--Find out all the different genders
SELECT DISTINCT sex 
FROM employee;