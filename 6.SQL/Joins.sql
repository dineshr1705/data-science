use logicfirst;

DROP TABLE EMPLOYEE;    -- DROP AND FRESHLY CREATE
DROP TABLE BRANCH;

create table branch(
branch_id int primary key,
br_name varchar(30) not null,
addr varchar(200));


create table employee(
emp_id int primary key auto_increment,
emp_name varchar(20) not null,
jobdes varchar(20),
salary int,
branch_id int,
constraint fk_branchid foreign key(branch_id) references branch(branch_id)
);


INSERT INTO branch VALUES(1,"Chennai","16 ABC Road");
INSERT INTO branch VALUES(2,"Coimbatore","120 15th Block");
INSERT INTO branch VALUES(3,"Mumbai","25 XYZ Road");
INSERT INTO branch VALUES(4,"Hydrabad","32 10th Street");

INSERT INTO employee VALUES(1,'Ram','ADMIN',1000000,2);
INSERT INTO employee VALUES(2,'Harini','MANAGER',2500000,2);
INSERT INTO employee VALUES(3,'George','SALES',2000000,1);
INSERT INTO employee VALUES(4,'Ramya','SALES',1300000,2);
INSERT INTO employee VALUES(5,'Meena','HR',2000000,3);
INSERT INTO employee VALUES(6,'Ashok','MANAGER',3000000,1);
INSERT INTO employee VALUES(7,'Abdul','HR',2000000,1);
INSERT INTO employee VALUES(8,'Ramya','ENGINEER',1000000,2);
INSERT INTO employee VALUES(9,'Raghu','CEO',8000000,3);
INSERT INTO employee VALUES(10,'Arvind','MANAGER',2800000,3);
INSERT INTO employee VALUES(11,'Akshay','ENGINEER',1000000,1);
INSERT INTO employee VALUES(12,'John','ADMIN',2200000,1);
INSERT INTO employee VALUES(13,'Abinaya','ENGINEER',2100000,2);
INSERT INTO employee VALUES(14,'Vidya','ADMIN',2200000,NULL);
INSERT INTO employee VALUES(15,'Ranjani','ENGINEER',2100000,NULL);


SELECT * FROM EMPLOYEE;
SELECT * FROM BRANCH;


SELECT employee.emp_id,employee.emp_name,employee.jobdes,branch.br_name 
from employee
INNER JOIN branch           -- inner join & join both are same
on employee.branch_id = branch.branch_id
order by employee.emp_id;




SELECT employee.emp_id,employee.emp_name,employee.jobdes,branch.br_name 
from employee
LEFT JOIN branch           -- inner join & join both are same
on employee.branch_id = branch.branch_id
order by employee.emp_id;



SELECT E.emp_id,E.emp_name,E.jobdes,B.br_name 
from employee AS E
RIGHT JOIN branch AS B
on E.branch_id = B.branch_id
order by E.emp_id;


SELECT EMPLOYEE.EMP_ID,EMPLOYEE.EMP_NAME,EMPLOYEE.JOBDES,BRANCH.BR_NAME
FROM EMPLOYEE,BRANCH
WHERE EMPLOYEE.BRANCH_ID = BRANCH.BRANCH_ID;


-- BR_NAME EMP_COUNT

SELECT B.BR_NAME,COUNT(E.EMP_ID) NO_OF_EMP
FROM BRANCH AS B
JOIN EMPLOYEE AS E
ON B.BRANCH_ID = E.BRANCH_ID
GROUP BY E.BRANCH_ID;








