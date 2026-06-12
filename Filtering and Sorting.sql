use bankingdb; 

select * from accounts where accounttype IN ("Savings", "Current");

SELECT *
FROM Accounts
ORDER BY Balance DESC
LIMIT 5;

Select * from accounts
where accounttype = "Savings"
ORDER By Balance DESC
LIMIT 3;

-- Customers whose name starts with A
select * from customers where firstName like 'A%';
select * from customers where LastName like '%kar';
select * from customers where email like '%gmail%';

SELECT *
FROM Transactions
ORDER BY TransactionDate DESC;

-- String functions

Select firstname, lastname, concat (firstname, " ",lastname) as FullName
from customers;
select upper(FirstName) as FirstName from customers;
select lower(lastname) as lastName from customers;

select Firstname,substring(fIRSTNAME,2,3) from customers;