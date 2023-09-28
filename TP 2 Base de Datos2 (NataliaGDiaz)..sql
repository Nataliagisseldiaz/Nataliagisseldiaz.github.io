
CREATE DATABASE bicicleteria;


USE bicicleteria;


CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono VARCHAR(15),
    dni VARCHAR(10) NOT NULL,
    domicilio VARCHAR(100),
    codigo_bicicleta INT
);


CREATE TABLE bicicletas (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    color VARCHAR(20),
    tipo_bicicleta INT NOT NULL,
    anio_fabricacion INT
);


CREATE TABLE tipos_bicicletas (
    codigo INT PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);


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



