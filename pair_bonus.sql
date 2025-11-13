DROP SCHEMA IF EXISTS mi_ejercicio;
CREATE SCHEMA mi_ejercicio;
USE mi_ejercicio;

 CREATE TABLE empleadas (
 id_empleada INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
 salario INT NOT NULL,
 nombre VARCHAR (45) NOT NULL,
 apellido VARCHAR (45) NOT NULL,
 pais VARCHAR (45) NOT NULL
 );
 
 CREATE TABLE personas2 (
    id INT NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    nombre VARCHAR(255),
    edad INT,
    ciudad varchar(255) DEFAULT 'Madrid',
    CHECK (edad>16)
);

CREATE TABLE proyectos (
id_proyecto INT PRIMARY KEY AUTO_INCREMENT NOT NULL
);


CREATE TABLE empleadas_en_proyectos(
id_proyecto INT PRIMARY KEY NOT NULL,
empleadas INT NOT NULL,
FOREIGN KEY (empleadas)
	REFERENCES empleadas(id_empleada)
	on delete cascade
);



