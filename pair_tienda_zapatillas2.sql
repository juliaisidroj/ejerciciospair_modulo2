 CREATE SCHEMA `tienda_zapatillas`;
 
 USE `tienda_zapatillas`;
 
 CREATE TABLE zapatillas(
 id_zapatillas INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
 modelo VARCHAR (45) NOT NULL,
 color VARCHAR(45) NOT NULL
 );
 
 CREATE TABLE clientes (
 id_clientes INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
 nombre VARCHAR (45) NOT NULL,
 numero_telefono INTEGER NOT NULL,
 email VARCHAR (45) NOT NULL, 
 direccion VARCHAR (45) NOT NULL,
 ciudad VARCHAR (45),
 provincia VARCHAR (45) NOT NULL,
 pais VARCHAR (45) NOT NULL,
 codigo_postal VARCHAR (45) NOT NULL
 );
 
 CREATE TABLE empleados (
 id_empleados INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
 nombre VARCHAR (45) NOT NULL,
 tienda VARCHAR (45) NOT NULL,
 salario INT NOT NULL,
 fecha_incorporacion DATE NOT NULL
 );
  CREATE TABLE facturas (
 id_factura INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
 numero_factura VARCHAR (45) NOT NULL,
 fecha DATE NOT NULL,
 id_zapatillas INT NOT NULL,
	FOREIGN KEY (id_zapatillas)
	REFERENCES zapatillas (id_zapatillas),

id_empleado INT NOT NULL,
	FOREIGN KEY (id_empleado)
	REFERENCES empleados (id_empleados),
    
id_cliente INT NOT NULL,
	FOREIGN KEY (id_cliente)
	REFERENCES clientes (id_clientes)
    );
    
    ALTER TABLE zapatillas 
    ADD COLUMN marca VARCHAR (45) NOT NULL;
    ALTER TABLE zapatillas 
    ADD COLUMN talla INT NOT NULL;
    
    ALTER TABLE empleados
	MODIFY COLUMN salario FLOAT NOT NULL; 
    
    ALTER TABLE clientes 
    DROP COLUMN pais;
    
    ALTER TABLE facturas
    ADD COLUMN total FLOAT;

DESCRIBE facturas;
ALTER TABLE facturas
ADD COLUMN total FLOAT;

INSERT INTO zapatillas(modelo, color, marca, talla)
VALUES ('XQYUN', 'Negro', 'Nike', '42'),
('UOPMN', 'Rosas', 'Nike', '39'),
('OPNYT', 'Verdes', 'Adidas', '35');

INSERT INTO empleados (nombre, tienda, salario, fecha_incorporacion)
VALUES ('Laura', 'Alcobendas', '25987', '2010-09-03'),
('Maria', 'Sevilla', NULL, '2001-04-11'),
('Ester', 'Oviedo', '30165.98', '2000-11-29');

INSERT INTO clientes (nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
VALUES ('Monica', '1234567289', 'monica@email.com', 'calle Felicidad', 'Mostoles', 'Madrid', '28176'),
('Lorena', '289345678', 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', '12346'),
('Carmen', '298463759', 'carmen@email.com', 'Calle del Color', 'Vigo', 'Pontevedra', '23456');

INSERT INTO facturas (numero_factura, fecha, id_zapatillas, id_empleado, id_cliente, total)
VALUES (123, "2001-11-12", 1,2,1, 54.98),
(1234,'2005-05-23',1,1,3,75.61),
(12345,'2015-09-18',2,3,3,76.23);

DROP TABLE facturas;
SET SQL_SAFE_UPDATES = 0;
UPDATE zapatillas set color = 'Amarillas' where color = 'Rosas';

SET SQL_SAFE_UPDATES = 1; PARA VOLVER A ACTIVARLO;

INSERT INTO facturas (Numero_Factura, Fecha, id_Zapatilla, id_empleado, id_Cliente, Total)
VALUES (123, "2001-11-12", 1,2,1, 54.98),
(1234,'2005-05-23',1,1,3,75.61),
(12345,'2015-09-18',2,3,3,76.23);

INSERT INTO facturas (numero_factura, fecha, id_zapatillas, id_empleado, id_cliente, total) VALUES (123, "2001-11-12", 1,2,1, 54.98), (1234,'2005-05-23',1,1,3,75.61), (12345,'2015-09-18',2,3,3,76.23);
SET SQL_SAFE_UPDATES = 0;

SET SQL_SAFE_UPDATES = 1; PARA VOLVER A ACTIVARLO;

UPDATE empleados set tienda = 'A Coruña' where nombre = 'Laura';


UPDATE clientes set numero_telefono = '123456728' where numero_telefono = '1234567289';


CREATE TABLE productos (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    precio DECIMAL(10,2) NOT NULL CHECK (precio > 0),
    stock INT DEFAULT 0,
    fecha_alta DATE NOT NULL
);
INSERT INTO productos (nombre, precio, stock, fecha_alta) 
VALUES ('Laptop HP', 999.99, 10, '2024-12-12');













