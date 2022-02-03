# create database
CREATE DATABASE IF NOT EXISTS test01_office CHARACTER SET utf8; 

#show database
SHOW CREATE DATABASE test01_office; 

#use database
USE test01_office;

#create table
CREATE TABLE IF NOT EXISTS `dept01`(
id INT(7),
`NAME` VARCHAR(25)
);

#create table
CREATE TABLE IF NOT EXISTS dept02
AS
SELECT *
FROM atguigudb.`departments`;


CREATE TABLE IF NOT EXISTS emp01(
id INT(7),
first_name VARCHAR(25),
last_name VARCHAR(25),
dept_id INT(7)
);

CREATE TABLE IF NOT EXISTS emp02
AS
SELECT *
FROM atguigudb.`employees`;


#drop table
DROP TABLE emp01;
ROLLBACK;
SHOW TABLES;

#rename table
RENAME TABLE emp02
TO emp01;

#alter table
ALTER TABLE emp01 
MODIFY last_name VARCHAR(50);

#add col.
ALTER TABLE dept02
ADD test_column VARCHAR(20);
DESC dept02

ALTER TABLE emp01
ADD test_column VARCHAR(15);
DESC emp01

#drop col.
ALTER TABLE emp01
DROP COLUMN department_id;
DESC emp01;

#show table
SHOW CREATE TABLE dept01;
SHOW CREATE TABLE dept02;
SHOW CREATE TABLE emp01;
SHOW CREATE TABLE emp02;
DESC emp01;
SHOW TABLES FROM test01_office;
 
SELECT *
FROM dept02;