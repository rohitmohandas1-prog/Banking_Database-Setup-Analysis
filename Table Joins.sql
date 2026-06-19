use bankingdb;
show tables;
select * from customers;
select * from transactions;
-- customer :- id, first_name,trans_id,type, amount


select c.customerID,c.firstname,t.transactionID,t.TransactionType,t.Amount
from customers as c inner join transactions as t
on c.customerID = t.CustomerID;


alter table transactions add column CustomerID int;
alter table transactions
add foreign key (customerID) references customers(CustomerID);

SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    t.TransactionID,
    t.TransactionType,
    t.Amount
FROM Customers c
INNER JOIN Transactions t
    ON c.CustomerID = t.CustomerID;
    
    SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    t.TransactionID,
    t.TransactionType,
    t.Amount
FROM Customers c
LEFT JOIN Transactions t
    ON c.CustomerID = t.CustomerID;
    
    
    SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    t.TransactionID,
    t.TransactionType,
    t.Amount
FROM Customers c
INNER JOIN Transactions t
    ON c.CustomerID = t.CustomerID
WHERE t.Amount > (
    SELECT AVG(Amount)
    FROM Transactions
)
ORDER BY t.Amount DESC;


SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    t.TransactionID,
    t.TransactionDate,
    t.TransactionType,
    t.Amount
FROM Customers c
INNER JOIN Transactions t
    ON c.CustomerID = t.CustomerID
WHERE t.TransactionType = 'Deposit'
  AND t.Amount > 50000
ORDER BY t.Amount DESC;


update transactions set customerID=101 
where TransactionID in (301,302,305,309) ;


update transactions set customerID=102
where TransactionID in (303,304,310) ;

update transactions set customerID=108
where TransactionID = 308;

select * from transactions;
select c.customerID,c.firstname,t.transactionID,t.TransactionType,t.Amount
from customers as c inner join transactions as t
on c.customerID = t.CustomerID
where transactiontype In("Withdrawal", "Deposit");


