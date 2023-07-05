create database office;
use office;
create table employee(
emo_id INT primary key,
ename varchar(30),
job_desc varchar(10),
salary int);
insert into employee values(1,'magnus','gm',100000);
insert into employee values(2,'hikaro','gm',2662000);
insert into employee values(3,'fisher','gm',9191000);
insert into employee values(4,'carlsen','gm',108910);
insert into employee values(5,'pragg','gm',100000);
insert into employee values(6,'badri','im',200000);
insert into employee values(7,'arasu','fm',333000);
insert into employee values(8,'prashok','cm',626200);
insert into employee values(9,'gusi','im',999200);
insert into employee values(10,'chess','fm',1091919);
ALTER TABLE employee ADD COLUMN Hire_Date DATE;
UPDATE employee
SET Hire_Date="2012-10-05";


SELECT NOW() as currentdate;

SELECT DATE(NOW()) as currentdate; 
SELECT CURDATE();
SELECT DATE_FORMAT(CURDATE(),'%d/%m/%y');

SELECT DATEDIFF(CURDATE(),'2023-07-05') week;


SELECT CURDATE() 'start date',
 DATE_ADD(CURDATE(),INTERVAL 1 DAY) 'one day later',
 DATE_ADD(CURDATE(),INTERVAL 1 WEEK) 'one week later',
 DATE_ADD(CURDATE(),INTERVAL 1 MONTH) 'one month later',
 DATE_ADD(CURDATE(),INTERVAL 1 YEAR) 'one year later';


SELECT job_desc,COUNT(emp_id) count
FROM employee
GROUP BY job_desc; 


SELECT job_desc,COUNT(emp_id) AS count 
FROM employee
GROUP BY job_desc
HAVING COUNT(emp_id)>1;

SELECT job_desc,COUNT(emp_id) AS count
FROM employee
GROUP BY job_desc
HAVING COUNT(emp_id)>1
ORDER BY job_desc;


SELECT job_desc,COUNT(emp_id) AS count
FROM employee
GROUP BY job_desc
HAVING COUNT(emp_id)>1
ORDER BY COUNT(emp_id) desc ;

SELECT job_desc,COUNT(emp_id) AS count
FROM employee
WHERE salary>15000
GROUP BY job_desc
HAVING COUNT(emp_id)>1
ORDER BY COUNT(emp_id) DESC; 

