 CREATE SCHEMA `solucion_errores`;
 
 USE solucion_errores;

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    email VARCHAR(50) UNIQUE,
    fecha_registro DATE DEFAULT (NOW()),
    edad INT ,
    saldo DECIMAL(10,2) DEFAULT 0,
    CHECK (edad > 18)
);