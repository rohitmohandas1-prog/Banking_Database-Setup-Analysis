use bankingdb;
show tables;
select * from accounts;
select sum(Balance) as Total_Balance from accounts;
select avg(Balance) as Average_Balance from accounts;
select max(Balance) as Maximum_Balance from accounts;
select Min(Balance) as Minimum_Balance from accounts;
select count(accountid) as Count_AccountID from accounts;
select count(*) from accounts;

select * from accounts;

-- "Group By" functions 

select accountType, sum(balance) as Total_Balance
from accounts
group by accounttype
order by Total_Balance ASC;

SELECT 
    AccountType,
    SUM(Balance) AS TotalBalance
FROM Accounts
GROUP BY AccountType
HAVING SUM(Balance) > 25000;

 