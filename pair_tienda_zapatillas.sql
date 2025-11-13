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
 id_factura INT AUTO_INCREMENT NOT NULL,
 numero_factura VARCHAR (45) NOT NULL,
 fecha DATE NOT NULL,
 id_zapatilla INT NOT NULL,
	FOREIGN KEY (id_zapatilla)
	REFERENCES id_zapatilla(id_zapatilla),
    
id_empleado INT NOT NULL,
	FOREIGN KEY (id_empleado)
	REFERENCES id_empleado(id_empleado),
    
id_cliente INT NOT NULL,
	FOREIGN KEY (id_cliente)
	REFERENCES id_cliente(id_cliente)
    );
 
 