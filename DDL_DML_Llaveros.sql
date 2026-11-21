CREATE DATABASE ddldml;
USE DDLDML;
CREATE TABLE llavero (
id_llavero INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
color VARCHAR(30)
);
CREATE TABLE lugar_compra (
id_lugar INT AUTO_INCREMENT PRIMARY KEY,
nombre_lugar VARCHAR(50) NOT NULL,
ciudad VARCHAR(40) NOT NULL
);
CREATE TABLE compra_llavero (
id_compra INT AUTO_INCREMENT PRIMARY KEY,
id_llavero INT NOT NULL,
id_lugar INT NOT NULL,
fecha_compra DATE NOT NULL,
precio DECIMAL(7.2) NOT NULL
);
ALTER TABLE llavero
ADD COLUMN material VARCHAR (30);
ALTER TABLE llavero 
ADD tamano  VARCHAR (20);
ALTER TABLE lugar_compra 
ADD COLUMN tipo_lugar VARCHAR (30);
ALTER TABLE lugar_compra
ADD COLUMN referencia VARCHAR(60);
ALTER TABLE compra_llavero
ADD COLUMN estado VARCHAR (20);
ALTER TABLE compra_llavero
ADD COLUMN observacion VARCHAR(80);
INSERT INTO llavero (nombre,color,material,tamano)
VALUES ('colibri','cafe','madera','5 cm');
INSERT INTO llavero (nombre,color,material,tamano)
VALUES ('guitarra miniatura','rojo','metal','7 cm');
INSERT INTO llavero (nombre,color,material,tamano)
VALUES ('ballena','azul','plastico','4 cm');
INSERT INTO lugar_compra (nombre_lugar,ciudad,tipo_lugar,referencia)
VALUES('Mercado artesanal','Tijuana','Mercado','puesto 12');
INSERT INTO lugar_compra(nombre_lugar,ciudad,tipo_lugar,referencia)
VALUES ('Tienda del Museo','San Diego','Tienda','Entrada principal');
INSERT INTO lugar_compra(nombre_lugar,ciudad,tipo_lugar,referencia)
Values('Feria loacal','Chulavista','Feria','Parque central');
ALTER TABLE compra_llavero
MODIFY precio DECIMAL (7,2) NOT NULL;
UPDATE compra_llavero
SET precio = 5.50
WHERE id_compra = 1;
INSERT INTO compra_llavero (id_llavero,id_lugar,fecha_compra,precio)
VALUES(2,2,'2026-08-02',8.25);
INSERT INTO compra_llavero (id_llavero,id_lugar,fecha_compra,precio)
VALUES (3,3,'2026-02-24',4.75);
SELECT * FROM llavero;
SELECT nombre, color, material,tamano
FROM llavero
WHERE id_llavero = 2; 
SELECT * FROM lugar_compra;
SELECT nombre_lugar,ciudad,tipo_lugar
FROM lugar_compra 
WHERE id_lugar = 2;
SELECT fecha_compra, precio, estado
FROM compra_llavero
WHERE id_compra = 1;
UPDATE llavero
SET color = 'Verde'
WHERE id_llavero = 1;
UPDATE lugar_compra
SET referencia = 'Entrada norte'
WHERE id_lugar = 2;
DELETE FROM compra_llavero
WHERE id_compra = 2;
DELETE FROM compra_llavero
WHERE id_compra = 3;
DELETE FROM lugar_compra
WHERE id_lugar = 2;
DELETE FROM lugar_compra
WHERE id_lugar = 3;
DELETE FROM llavero
WHERE id_llavero = 2;
DELETE FROM llavero
WHERE id_llavero = 3;
DROP TABLE compra_llavero;