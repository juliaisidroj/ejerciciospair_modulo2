USE northwind;
-- Productos mas baratos y caros de nuestra base de datos

SELECT MIN(UnitPrice) AS lowestPrice, MAX(UnitPrice) AS highestPrice
FROM products;

-- Conociendo el numero de productos y su precio medio

SELECT ROUND(AVG(UnitPrice)) AS promedio_precio, productName
FROM products
GROUP BY ProductName;

SELECT COUNT(*) AS total_productos
FROM products
GROUP BY total_products;

-- sacad la maxima y minima carga de los pedidos de UK

SELECT MIN(Freight) AS lowestfreight, MAX(Freight) AS highestfreight
FROM orders
WHERE ShipCountry = "UK";

-- que productos se venden por encima del precio medio

SELECT (AVG(UnitPrice)) AS precio_medio
FROM products;

SELECT *
FROM products 
WHERE UnitPrice > 28.866
ORDER BY UnitPrice desc;

-- que productos se han descontinuado

SELECT *
FROM products 
WHERE Discontinued = 1;

-- detalles de los productos de la query anterior
SELECT ProductID, ProductName
FROM products 
WHERE Discontinued = 0
ORDER BY ProductID desc
LIMIT 10;

-- relacion entre numero de pedidos y maxima carga

SELECT EmployeeID, COUNT(OrderID) AS TotalPedidos, MAX(Freight) AS CargaMaxima      
FROM
Orders
GROUP BY
EmployeeID;

-- descartar pedidos sin fecha y ordenarlos

SELECT *
FROM orders
WHERE ShippedDate IS NOT NULL
ORDER BY EmployeeID;

-- BONUS

-- Numeros de pedidos por dia
 
SELECT
    YEAR(OrderDate) AS Anio,    -- Obtiene el año del pedido
    MONTH(OrderDate) AS Mes,    -- Obtiene el mes del pedido
    DAY(OrderDate) AS Dia,      -- Obtiene el día del pedido
    COUNT(OrderID) AS TotalPedidos  -- Cuenta el número de pedidos para ese día
FROM
Orders                      -- La tabla de pedidos
GROUP BY
Anio, Mes, Dia              -- Agrupa para que el conteo sea por cada día único
ORDER BY
Anio, Mes, Dia;             -- Ordena cronológicamente

-- numero de pedidos por mes y año

SELECT
    YEAR(OrderDate) AS Anio,    -- Obtiene el año del pedido
    MONTH(OrderDate) AS Mes,    -- Obtiene el mes del pedido
    COUNT(OrderID) AS TotalPedidos  -- Cuenta el número de pedidos para ese día
FROM
Orders                      -- La tabla de pedidos
GROUP BY
Anio, Mes              -- Agrupa para que el conteo sea por cada día único
ORDER BY
Anio, Mes;           -- Ordena cronológicamente

-- selecciona las ciudades con 4 o mas empleadas

SELECT COUNT(*) AS total, ShipCity
FROM orders
GROUP BY ShipCity
HAVING total >4;











