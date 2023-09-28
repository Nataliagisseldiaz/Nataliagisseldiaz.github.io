-- Crear una base de datos llamada "bicicleteria" (puedes cambiar el nombre si lo deseas)
CREATE DATABASE bicicleteria;

-- Usar la base de datos "bicicleteria"
USE bicicleteria;

-- Crear la tabla "clientes" para almacenar información de los clientes
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono VARCHAR(15),
    dni VARCHAR(10) NOT NULL,
    domicilio VARCHAR(100),
    codigo_bicicleta INT
);

-- Crear la tabla "bicicletas" para almacenar información de las bicicletas
CREATE TABLE bicicletas (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    color VARCHAR(20),
    tipo_bicicleta INT NOT NULL,
    anio_fabricacion INT
);

-- Crear la tabla "tipos_bicicletas" para almacenar información sobre los tipos de bicicletas
CREATE TABLE tipos_bicicletas (
    codigo INT PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

-- Insertar algunos tipos de bicicletas ficticios en la tabla "tipos_bicicletas"
INSERT INTO tipos_bicicletas (codigo, descripcion) VALUES
    (1, 'Paseo'),
    (2, 'Montaña'),
    (3, 'Carrera');

/*SELECT 
    c.nombre, c.apellido, 
    b.marca, b.modelo, 
    tb.descripcion AS tipo_bicicleta
FROM clientes c
JOIN bicicletas b ON c.codigo_bicicleta = b.codigo
JOIN tipos_bicicletas tb ON b.tipo_bicicleta = tb.codigo;



