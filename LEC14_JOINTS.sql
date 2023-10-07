INSERT INTO branch VALUES(4,'Buffalo',NULL,NULL);
--Find all branches and the name of all their managers

SELECT employee.emp_id,employee.first_name,branch.brach_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

SELECT employee.emp_id,employee.first_name,branch.brach_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

SELECT employee.emp_id,employee.first_name,branch.brach_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;

