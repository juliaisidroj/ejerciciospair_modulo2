USE northwind;
SELECT employeeID, LastName, FirstName
FROM employees;

SELECT *
FROM products 
WHERE unitPrice between 0 and 5;

SELECT *
FROM products
WHERE UnitPrice is NULL;

SELECT *
FROM products
WHERE UnitPrice >15 and productid<20;

SELECT *
FROM products
WHERE NOT UnitPrice >15 and productid <20;

SELECT *
FROM products
WHERE NOT (UnitPrice <= 15 OR productid <= 20);

