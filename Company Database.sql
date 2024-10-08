CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    birth_day DATE,
    sex VARCHAR(1),
    salary INT,
    super_id INT,
    branch_id INT
);

CREATE TABLE branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(50),
    mgr_id INT,
    mgr_start_date DATE,
    FOREIGN KEY (mgr_id) REFERENCES employee (emp_id) ON DELETE SET NULL
);

ALTER TABLE employee
ADD FOREIGN KEY(branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL;

ALTER TABLE employee
ADD FOREIGN KEY (super_id)
REFERENCES employee(emp_id)
ON DELETE SET NULL;

CREATE TABLE client (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(50),
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES branch (branch_id) ON DELETE SET NULL
); 

CREATE TABLE works_with (
    emp_id INT,
    client_id INT,
    total_sales INT,
    PRIMARY KEY (emp_id, client_id),
    FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
    FOREIGN KEY(client_id) REFERENCES client (client_id) ON DELETE CASCADE
);

DROP TABLE works_with;

CREATE TABLE branch_supplier (
    branch_id INT,
    supplier_name VARCHAR(50),
    supply_type VARCHAR(40),
    PRIMARY KEY (branch_id, supplier_name),
    FOREIGN KEY (branch_id) REFERENCES branch (branch_id) ON DELETE CASCADE
);

--Corporate branch
INSERT INTO employee VALUES(100, 'David', 'Wallace', '1967-11-17', 'M', 250000, NULL, NULL);

INSERT INTO branch VALUES(1, 'Corporate', 100, '2006-02-09');

UPDATE employee
SET branch_id = 1
WHERE emp_id = 100;

INSERT INTO employee VALUES (101, 'Jan', 'Levinson', '1961-05-11', 'F', 110000, 100, 1);

--Scranton branch
INSERT INTO employee values (102, 'Michael', 'Scott', '1964-03-15', 'M', 75000,100, NULL);

INSERT INTO branch VALUES(2, 'Scranton', 102, '1992-04-06');

UPDATE employee
SET branch_id = 2
WHERE emp_id = 102;

INSERT INTO employee VALUES (103, 'Angela', 'Martin', '1971-06-25', 'F', 63000, 102, 2);
INSERT INTO employee VALUES (104, 'Kelly', 'Kapoor', '1980-02-05', 'F', 55000, 102, 2);
INSERT INTO employee VALUES (105, 'Stanley', 'Hudson', '1958-02-19', 'M', 69000, 102, 2);

--Stamford branch
INSERT INTO employee VALUES (106, 'Josh', 'Porter', '1969-09-05', 'M', 78000, 100, NULL);

INSERT INTO branch VALUES (3, 'Stamford', 106, '1998-02-13');

UPDATE employee
SET branch_id = 3
WHERE emp_id = 106;

INSERT INTO employee VALUES (107, 'Andy', 'Bernard', '1973-07-22', 'M', 65000, 106, 3);
INSERT INTO employee VALUES (108, 'Jim', 'Halpert', '1978-10-01', 'M', 71000, 106, 3);

DELETE FROM employee
WHERE emp_id = 108;

DELETE FROM branch
WHERE branch_id = 3;

--Branch Supplier
INSERT INTO branch_supplier VALUES (2, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES (2, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES (3, 'Patriot Paper', 'Paper');
INSERT INTO branch_supplier VALUES (2, 'J.T. Forms & Labels', 'Custom Forms');
INSERT INTO branch_supplier VALUES (3, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES (3, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES (3, 'Stamford Lables', 'Custom Forms');

--Client
INSERT INTO client VALUES (400, 'Dunmore Highschool', 2);
INSERT INTO client VALUES (401, 'Lackawana Country', 2);
INSERT INTO client VALUES (402, 'FedEx', 3);
INSERT INTO client VALUES (403, 'John Daly Law, LLC', 3);
INSERT INTO client VALUES (404, 'Scranton Whitepages', 2);
INSERT INTO client VALUES (405, 'Times Newspaper', 3);
INSERT INTO client VALUES (406, 'FedEx', 2);

DELETE FROM client
WHERE client_id = 406;

--Works_With
INSERT INTO works_with VALUES (105, 400, 55000);
INSERT INTO works_with VALUES (102, 401, 267000);
INSERT INTO works_with VALUES (108, 402, 22500);
INSERT INTO works_with VALUES (107, 403, 5000);
INSERT INTO works_with VALUES (108, 403, 12000);
INSERT INTO works_with VALUES (105, 404, 33000);
INSERT INTO works_with VALUES (107, 405, 26000);
INSERT INTO works_with VALUES (102, 406, 15000);
INSERT INTO works_with VALUES (105, 406, 130000);

--Find all employees
SELECT * FROM employee;

--Find all employees by salary
SELECT * 
FROM employee
ORDER BY salary DESC;

--Find all employees ordered by sex and name
SELECT * 
FROM employee
ORDER BY sex, first_name, last_name;

--Find the first and last name of all employees
SELECT first_name AS Forename, last_name AS Surname
FROM employee;

--Find out all different genders
SELECT DISTINCT sex
FROM employee;


SELECT * FROM branch;
SELECT * FROM client;
SELECT * FROM branch_supplier;
SELECT * FROM works_with;

--FUNCTIONS

--Find the number of employees
SELECT COUNT(emp_id)
FROM employee;

--Find the number of employees that has supervisor
SELECT COUNT(super_id)
FROM employee;

--Find the number of female employees that born after 1970
SELECT COUNT(emp_id)
FROM employee
WHERE sex = 'F' AND birth_day > '1971-01-01';

--Find the average of all employee's salaries
SELECT AVG(Salary)
FROM employee;

--Find the sum of all employee's salaries
SELECT SUM(Salary)
FROM employee;

--Find out how many males and females are
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;

--Find out total sales of each employee
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;

--Find out total sales of each client spent
SELECT SUM(total_sales), client_id
FROM works_with
GROUP BY client_id;

--Wildcards: % = any num of characters, _ = one character

--Find any client's who are an Limited Liability Company (LLC)
SELECT * 
FROM client
WHERE client_name LIKE '%LLC';

--Find any branch suppliers who are in label business
SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '%Label%';

--Find any employee who are born in October
SELECT *
FROM employee
WHERE birth_day LIKE '____-10%';

--Find any client who are schools
SELECT *
FROM client
WHERE client_name LIKE '%School%';

--UNIONS: combine select statement results
--Rule: same column number, same datatype

--Find a list of employee and branch names
SELECT first_name
FROM employee
UNION
SELECT branch_name
FROM branch;

--Find a list of all clients & branch supplier's name
SELECT client_name, client.branch_id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

--JOINS

--Adding new branch without mgr_id, mgr_start_date
INSERT INTO branch VALUES (4, 'Buffalo', NULL, NULL);

--INNER JOIN
--Find all branches and the name of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

--LEFT JOIN
--Find all branches and the name of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

--RIGHT JOIN
--Find all branches and the name of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;

--NESTED QUERIES:A query that use multiple select statement to give specific info  
-- Find names of all employees that sold over 30,000 to as inle client
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id
FROM works_with
WHERE works_with.total_sales > 30000
);

--Find all clients who are handled by the branch
--Michael Scott manages
--Assume you know Michael's ID

SELECT client.client_name
FROM client
WHERE client.branch_id IN (
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
);

--ON DELETE

--ON DELETE SET NULL : if we delete the emp id's the mgr_id that associated with emp id will be set null
--ON DELETE SET NULL: if we delete the emp id's the entire row of mgr_id that associated with emp id will be deleted

--TRIGGERS: Define certain action in MySQL when something happend in database
--Added new employee
CREATE TABLE trigger_test (
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

INSERT INTO employee
VALUES(109, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3);

SELECT * FROM trigger_test;

--Access specific column from the added employee
DELIMITER $$ 
CREATE 
    TRIGGER my_trigger1 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN 
        INSERT INTO trigger_test VALUES(NEW.first_name);
    END$$
DELIMITER ; 

INSERT INTO employee
VALUES(110, 'Kevin', 'Malone', '1978-02-19', 'M', 79000, 106, 2);

SELECT * FROM trigger_test;

--Conditionals trigger
DELIMITER $$ 
CREATE 
    TRIGGER my_trigger2 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        IF NEW.sex = 'M' THEN 
            INSERT INTO trigger_test VALUES('added male employee');
        ELSEIF  NEW.sex = 'F' THEN 
            INSERT INTO trigger_test VALUES('added female employee');
        ELSE 
            INSERT INTO trigger_test VALUES('added other employee');
        END IF;        
    END$$
DELIMITER ; 

INSERT INTO employee
VALUES(111, 'Kicap', 'Patootie', '2001-02-19', 'M', 23000, 106, 1);
INSERT INTO employee
VALUES(112, 'Laila', 'Cik Kembang', '1998-03-27', 'F', 45000, 106, 2);

SELECT * FROM trigger_test;

--drop trigger
DROP TRIGGER my_trigger;
