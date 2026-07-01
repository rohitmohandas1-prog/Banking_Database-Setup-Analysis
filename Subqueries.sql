use bankingdb;
select * from customers;
select * from transactions;

select c.CustomerId, c.Firstname,c.Email,t.Transactiondate,t.TransactionDate,t.Amount from Customers c cross join transactions t;

select *
from transactions
where amount > (select AVG(AMOUNT) from transactions);

SELECT
    AccountID,
    AccountType,
    Balance,
    CustomerID
FROM Accounts
WHERE Balance >
(SELECT AVG(Balance)
    FROM Accounts)
ORDER BY Balance DESC;

SELECT
    AccountID,
    AccountType,
    Balance,
    CustomerID
FROM Accounts
WHERE AccountID IN
(
    SELECT AccountID
    FROM Transactions
    WHERE TransactionType = 'Deposit'
);


SELECT
    AccountID,
    AccountType,
    Balance,
    CustomerID
FROM Accounts
WHERE Balance =
(
    SELECT MAX(Balance)
    FROM Accounts
);