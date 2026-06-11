show databases;
use dummy_db;
show tables;
describe employees;
insert into employees(emp_id,first_name,last_name,age,salary,city,contact)
values(1,'Agatha','Christy', 22, 35000, 'Mumbai', 9999345612);

Alter table employees modify column contact varchar(20);

select * from employees;


insert into employees(emp_id,first_name,last_name,age,salary,city,contact)
values(2,'Rakesh','Patil', 24, 60000, 'Pune', 9999456612);
Alter table employees modify column contact varchar(20);

select * from employees;

SET SQL_SAFE_UPDATES = 0;   -- turn off safe mode
update employees
set city = 'Bangalore'
where first_name = 'Agatha'; -- Update Rows 

use bankingdb;


INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateOfBirth)
VALUES
(102, 'Priya', 'Patil', 'priya@gmail.com', '9988776655', '2025-05-03', '2000-09-20');

INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateOfBirth)
VALUES
(101, 'Rahul', 'Sharma', 'rahul@gmail.com', '9876543210', '2025-05-01', '2001-04-15');

describe Customers;


select * from customers;

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(201, 101, 'Savings', 25000),
(202, 102, 'Current', 40000);

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES (203, 103, 'Savings', 95000),
(204, 104, 'Current', 64000),
(205, 105, 'Savings', 27300),
(206, 106, 'Current', 87280),
(207, 107, 'Savings', 56358);

select * from accounts;
use bankingdb;

-- Update customer phone
UPDATE Customers
SET Phone = '9999999999'
WHERE CustomerID = 101;
-- Verify
SELECT * FROM Customers
WHERE CustomerID = 101;

-- Update Customer Email Address
UPDATE Customers
SET Email ='priya.patil@gmail.com'
where CustomerID =102;


use bankingdb;
INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateOfBirth)
VALUES (103, 'Rohan',    'Mehta',      'rohan.mehta@outlook.com',   '9712345678', '2023-08-10', '1993-11-30'),
  (104, 'Sneha',    'Iyer',       'sneha.iyer@gmail.com',      '9654321870', '2024-02-18', '1997-04-14'),
  (105, 'Karan',    'Joshi',      'karan.joshi@hotmail.com',   '9501234567', '2024-05-30', '1990-08-22'),
  (106, 'Divya',    'Nair',       'divya.nair@gmail.com',      '9432198765', '2024-07-11', '2001-12-03'),
  (107, 'Vikram',   'Reddy',      'vikram.reddy@yahoo.com',    '9378654321', '2024-09-25', '1988-06-17'),
  (108, 'Ananya',   'Gupta',      'ananya.gupta@gmail.com',    '9265478901', '2024-11-08', '1999-02-28');

select * from customers;

Update Accounts
Set AccountID = 3000
where AccountID =201;

Update Accounts
Set AccountID = 201
where AccountID =3000;

Update Accounts
Set Balance = 30000
where AccountID =201;

Select * from accounts;



select * from transactions;

INSERT INTO Transactions (TransactionID, AccountID, TransactionDate, Amount, TransactionType)
VALUES (102, 201, '2024-01-05', 15000.00, 'Credit'),
  (1002, 202, '2024-01-12',  8500.50, 'Debit'),
  (1003, 203, '2024-02-03', 22000.00, 'Credit'),
  (1004, 204, '2024-02-18',  3200.75, 'Debit'),
  (1005, 205, '2024-03-07', 11500.00, 'Transfer'),
  (1006, 206, '2024-03-21',  5750.25, 'Debit');

INSERT INTO Transactions (TransactionID, AccountID, TransactionDate, Amount, TransactionType)
VALUES (302, 207, '2024-03-05', 15300.00, 'Credit');

-- Deleting Records

Delete from Transactions
where TransactionID = 302;

select * from transactions;

