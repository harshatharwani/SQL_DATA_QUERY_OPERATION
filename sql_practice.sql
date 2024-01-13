use sep;
show databases;

CREATE TABLE Customer(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age int(2),
  Phone int(10)
);


INSERT INTO Customer (CustomerID, CustomerName, LastName, Country, Age)
VALUES (1, 'Shubham', 'Thakur', 'India','23'),
       (2, 'Aman ', 'Chopra', 'Australia','21'),
       (3, 'Naveen', 'Tulasi', 'Sri lanka','24'),
       (4, 'Aditya', 'Arpan', 'Austria','21'),
       (5, 'Nishant. Salchichas S.A.', 'Jain', 'Spain','22');
       
       
       CREATE TABLE SubTable AS
SELECT CustomerID, CustomerName
FROM customer;

select * from SubTable;

insert into customer (phone) 
values('1234567892')
('1234567892')
('1234567892')
('1234567892')
('1234567892') ;


create table customercopy as select * from customer;
select * from customercopy;

CREATE TABLE customer_copy AS SELECT * FROM customer LIMIT 3;
SELECT COUNT (item), Customer_id FROM Orders GROUP BY order_id;  
use sep;

create table customer2 (CustomerID1 INT PRIMARY KEY,
    CustomerName1 VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age int(2),
  Phone int(10)
);

insert into customer2 select * from customer ;
 create table cust3(select * from customer);
 insert into cust3(select * from customer);
 select * from cust3;
 
 create table customer3(
 select * from customer);
SELECT * FROM Customer WHERE LastName REGEXP '[A-C]';
SELECT * FROM Customer WHERE LastName REGEXP '[R-Z]';
SELECT * FROM Customer WHERE LastName REGEXP '[e-z]';
SELECT * FROM customer  WHERE LastName  LIKE '%[a-z]%';
use sep;

CREATE TABLE Emp(
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Country VARCHAR(50),
    Age int(2),
  Salary int(10)
);
INSERT INTO Emp (EmpID, Name,Country, Age, Salary)
VALUES (1, 'Shubham',  'India','23','30000'),
       (2, 'Aman ',  'Australia','21','45000'),
       (3, 'Naveen', 'Sri lanka','24','40000'),
       (4, 'Aditya',  'Austria','21','35000'),
       (5, 'Nishant', 'Spain','22','25000');
       Select * from Emp; 

SELECT Name
FROM Emp
where Age
BETWEEN 22 AND 24;

select * from emp
where salary between 35000
and 40000;


SELECT Name
FROM Emp
WHERE Salary IN (30000, 40000, 25000);

SELECT CustomerName, Country
FROM Customer
ORDER BY
(CASE
    WHEN Country  IS 'India' THEN Country
    ELSE Age
END);

SELECT CustomerName, Country
FROM Customer
(CASE
    WHEN Country  IS 'India' THEN Country
    ELSE Age
END);

SELECT CustomerName, Country
FROM Customer
ORDER BY
(CASE
    WHEN Country  = 'India' THEN Country
    ELSE Age
END);
select * from customer;
SELECT CustomerName, Age,
CASE
    WHEN Age>= 22 THEN 'The Age is greater than 22'
    WHEN Age = 21 THEN 'The Age is 21'
    ELSE 'The Age is over 30'
END AS QuantityText
FROM Customer;

SELECT CustomerName,age
FROM Customer
ORDER BY
(CASE
    WHEN Country  = 'India' THEN Country
    ELSE Age
END);