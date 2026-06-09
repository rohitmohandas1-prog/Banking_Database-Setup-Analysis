create database dummy_db; -- creating dummy database

show databases; -- showing databases in server

use dummy_db;

CREATE TABLE
employees (
emp_id
INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
Last_name VARCHAR(50) NOT NULL,
age INT CHECK (age >=18),
salary DECIMAL(10,2) NOT NULL,
city VARCHAR(50) DEFAULT 'Mumbai'
);
describe employees; -- to describe table structure
-- #Renaming the table
Alter table employees rename to staff;
describe staff;
Alter table staff rename to employees;

-- add column
alter table employees add column phone int ;
describe employees;

alter table employees add column emailid varchar(50) ;


-- change column

Alter table employees
change phone contact int not null;

describe employees;

-- modify column
Alter table employees
modify emailid varchar(60) unique;

-- drop column contact
Alter table employees drop column emailid;
describe employees;

-- shifting to banking database
use bankingdb;

ALTER TABLE Customers
ADD DateOfBirth DATE;

-- Modify Existing Column
ALTER TABLE Customers
MODIFY Phone VARCHAR(20);

-- Add Constraint
ALTER TABLE Accounts
ADD CONSTRAINT chk_MinBalance
CHECK (Balance >= 1000);
