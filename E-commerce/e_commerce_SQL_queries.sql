-- Creating SQL queries with the database created: 

USE Ecommerce;

SHOW tables;

-- Selecting all contents from the Customer data:
SELECT * FROM Customer;

-- Using WHERE statement:
SELECT * FROM Customer
WHERE State LIKE 'SP';

-- Creating derivate attribute and using ORDER BY statement:
SELECT idCustomer, concat(Fname, ' ', Minit, ' ', Lname) AS Name,
	   concat(Street, ', ', St_Num, ', ', Complement, ', ', City, ', ', State) AS Address, Country, CPF, CNPJ 
FROM Customer
ORDER BY Name;

-- Using HAVING statement and joining tables:
SELECT DISTINCT c.idCustomer, o.idOrders, concat(c.Fname, ' ', c.Lname) AS Name,
	   concat(c.Street, ', ', c.St_Num, ', ', c.Complement, ', ', c.City, ', ', c.State) AS Address, 
       c.Country, c.CPF, c.CNPJ, p.PaymentType, o.PaymentStatus, o.ShippingValue
FROM Customer c INNER JOIN Payment p
ON c.idCustomer = p.idCustomer
INNER JOIN  Orders o
ON o.idOrderCustomer = c.idCustomer
HAVING o.ShippingValue > 6;
