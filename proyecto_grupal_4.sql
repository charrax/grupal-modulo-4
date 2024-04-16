CREATE DATABASE proyecto_grupal_4;
use proyecto_grupal_4;

CREATE TABLE usuarios (
	id_usuario INT auto_increment primary key,
    nombre varchar(50),
    apellido varchar(50),
    contraseña varchar(100),
    zona_horaria VARCHAR(50) DEFAULT 'UTC-3',
    genero varchar(15),
    telefono_de_contacto varchar(15)
);

CREATE TABLE contactos (
	id_contacto INT auto_increment primary key,
    id_usuario int,
    numero_de_telefono varchar(15),
    correo_electronico varchar(50)
);

INSERT INTO usuarios (id_usuario, nombre, apellido, contraseña, zona_horaria, genero, telefono_de_contacto) VALUES
(1,'Juan',  'Carrasco', 'juan.perezmple', '2024-05-20', 'Masculino', '1234567890'),
(2,'Laura', 'Romero', 'laura.mm', '2024-05-20', 'Masculino', '0987654321'),
(3,'Carlos', 'Geve', 'carlos.gomez@e', '2024-05-20', 'Femenino', '0987654321'),
(4,'Isabel',  'Beltran', 'isabel.diaz', '2024-05-20', 'Masculino', '3456789012'),
(5,'Antonio', 'Lopez', 'antonio.lop', '2024-05-20', 'Femenino', '0987654321'),
(6,'Sofia', 'Lepe', 'sofia.castrom', '2024-05-20', 'Masculino', '5678901234'),
(7,'Lucas', 'Toro', 'lucas.fercom', '2024-05-20', 'Femenino', '0987654321'),
(8,'Beatriz', 'Herrera','beatrizple.com', '2024-05-20', 'Masculino', '7890123456');

INSERT INTO contactos (id_contacto, id_usuario, correo_electronico, numero_de_telefono) VALUES
(1,1,'juan.perez@example.com', '1234567890'),
(2,2,'laura.mtz@example.com', '0987654321'),
(3,3,'carlos.gomez@example.com', '2345678901'),
(4,4,'isabel.diaz@example.com', '3456789012'),
(5,5,'antonio.lopez@example.com', '4567890123'),
(6,6,'sofia.castro@example.com', '5678901234'),
(7,7,'lucas.fernandez@example.com', '6789012345'),
(8,8,'beatriz.sanchez@example.com', '7890123456');

-- Modificar el UTC por defecto de la tabla usuarios
ALTER TABLE usuarios MODIFY zona_horaria VARCHAR(50) DEFAULT 'UTC-2';

-- "Eliminar la columna de telefono de contacto de tabla Usuarios, para que no tener redundancia de informacion dado que esos datos son ahora
-- delegado a la tabla contactos para normalizar y evitar la redundancia o duplicidad de informacion"
ALTER TABLE usuarios DROP COLUMN telefono_de_contacto;

select * from usuarios;
select * from contactos;