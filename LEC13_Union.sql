--Find a list of employee and branch names
SELECT first_name AS Company_names
FROM employee
UNION
SELECT brach_name
FROM branch
UNION 
SELECT client_name
FROM client;

--Find a list of all clients and branch suppliers names
SELECT client_name AS Names,branch_id
FROM client
UNION 
SELECT supplier_name,branch_id
FROM branch_supplier;

--Find the list of all money spent or earned by the company
SELECT salary
FROM employee
UNION
SELECT total_sales
FROM works_with;