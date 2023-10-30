use logicfirst;

-- create client table similar to branch table

create table branch(
branch_id int primary key,
br_name varchar(30) not null,
addr varchar(200));


CREATE TABLE clients (
client_id INT PRIMARY KEY AUTO_INCREMENT,
location VARCHAR(30) NOT NULL,
addr VARCHAR(200) );

INSERT INTO clients VALUES(1,"NewYork","25 10th Block");
INSERT INTO clients VALUES(2,"Coimbatore","120 15th Block");
INSERT INTO clients VALUES(3,"London","21 ABC Road");

-- combines the two tables removing duplicates


SELECT * FROM branch;
SELECT * FROM clients;


SELECT * FROM branch
UNION
SELECT * FROM clients;

SELECT * FROM branch
UNION ALL
SELECT * FROM clients;




























