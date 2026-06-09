create database dummy_db; -- creating dummy database

show tables;

use dummy_db;

CREATE TABLE employee(
emp_id        INT  PRIMARY KEY,
first_name    VARCHAR(50)  NOT NULL,
last_name     VARCHAR(50)  NOT NULL,
age           INT          CHECK (age >=18),
salary       DECIMAL(10,2) NOT NULL,
city         VARCHAR(50)   DEFAULT  "Mumbai"

);

describe employee;  -- to describe the table structure
-- Renaming the table
Alter table employees rename to staff;   
Alter table staff rename to employees; 

-- Add column  
Alter table employee add column phone int;     
Alter table employee add column email varchar(50) ;

-- Change column 
Alter table employee
change phone contact int  not null;


-- modify column 
alter table employee 
 modify email varchar(60) unique;

-- Drop column contact
Alter table employee drop email;
