
CREATE DATABASE bicicleteria;


USE bicicleteria;


CREATE TABLE tipos_bicicletas (
    codigo INT PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);


INSERT INTO tipos_bicicletas (codigo, descripcion) VALUES
    (1, 'Paseo'),
    (2, 'Montaña'),
    (3, 'Carrera');

CREATE TABLE bicicletas (
    codigo INT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    color VARCHAR(20),
    tipo_bicicleta INT NOT NULL,
    anio_fabricacion INT
);


CREATE TABLE clientes (
    codigo_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono VARCHAR(15),
    dni VARCHAR(10) NOT NULL,
    domicilio VARCHAR(100),
    codigo_bicicleta INT,
    FOREIGN KEY (codigo_bicicleta) REFERENCES bicicletas(codigo)
);


INSERT INTO bicicletas (codigo, marca, modelo, color, tipo_bicicleta, anio_fabricacion) VALUES
    (1, 'Marca1', 'Modelo1', 'Rojo', 1, 2021),
    (2, 'Marca2', 'Modelo2', 'Azul', 2, 2022),
    (3, 'Marca3', 'Modelo3', 'Verde', 3, 2020),
    (4, 'Marca4', 'Modelo4', 'Negro', 1, 2023),
    (5, 'Marca5', 'Modelo5', 'Blanco', 2, 2021);


INSERT INTO clientes (nombre, apellido, telefono, dni, domicilio, codigo_bicicleta) VALUES
    ('Cliente1', 'Apellido1', '123-456-789', '1234567890', 'Calle A 123', 1),
    ('Cliente2', 'Apellido2', '987-654-321', '0987654321', 'Calle B 456', 2),
    ('Cliente3', 'Apellido3', '111-222-333', '1112223334', 'Calle C 789', 3),
    ('Cliente4', 'Apellido4', '444-555-666', '4445556667', 'Calle D 101', 4),
    ('Cliente5', 'Apellido5', '777-888-999', '7778889998', 'Calle E 345', 5);
    
   
SELECT 
    c.nombre, c.apellido, 
    b.marca, b.modelo, 
    tb.descripcion AS tipo_bicicleta
FROM clientes c
JOIN bicicletas b ON c.codigo_bicicleta = b.codigo
JOIN tipos_bicicletas tb ON b.tipo_bicicleta = tb.codigo;


