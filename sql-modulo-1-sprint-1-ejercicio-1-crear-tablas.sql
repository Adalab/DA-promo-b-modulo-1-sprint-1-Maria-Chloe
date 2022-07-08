CREATE SCHEMA footfoocker;
USE footfoocker;
CREATE TABLE empleados (
id_empleado INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR (45) NOT NULL,
tienda VARCHAR (45) NOT NULL,
salario INT DEFAULT NULL,
fecha_incorporacion DATE NOT NULL,
PRIMARY KEY (id_empleado)
);

CREATE TABLE clientes (
id_cliente INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR (45) NOT NULL,
numero_telefono INT (9) NOT NULL,
email VARCHAR (45) NOT NULL,
direccion VARCHAR (45) NOT NULL,
ciudad VARCHAR (45) DEFAULT NULL,
provincia VARCHAR (45) NOT NULL,
pais VARCHAR (45) NOT NULL,
codigo_postal VARCHAR (45) NOT NULL,
PRIMARY KEY (id_cliente)
);

CREATE TABLE zapatillas (
id_zapatilla INT NOT NULL AUTO_INCREMENT,
modelo VARCHAR (45) NOT NULL,
color VARCHAR (45) NOT NULL,
PRIMARY KEY (id_zapatilla)
);

CREATE TABLE facturas (
id_factura INT NOT NULL AUTO_INCREMENT,
numero_factura VARCHAR (45) NOT NULL,
fecha DATE NOT NULL,
id_empleado INT NOT NULL, 
id_cliente INT NOT NULL,
id_zapatilla INT NOT NULL,
PRIMARY KEY (id_factura),
INDEX `fk_id_empleado` (id_empleado),
CONSTRAINT `fk_id_empleado`
FOREIGN KEY (`id_empleado`)
REFERENCES `empleados`(id_empleado),
INDEX `fk_id_cliente` (id_cliente),
CONSTRAINT `fk_id_cliente`
FOREIGN KEY (`id_cliente`) 
REFERENCES `clientes`(id_cliente),
INDEX `fk_id_zapatilla` (id_zapatilla),
CONSTRAINT `fk_id_zapatilla`
FOREIGN KEY (`id_zapatilla`)
REFERENCES `zapatillas`(id_zapatilla)
);


ALTER TABLE zapatillas 
ADD COLUMN marca VARCHAR(45) NOT NULL,
ADD COLUMN talla INT NOT NULL;


ALTER TABLE empleados 
MODIFY COLUMN salario FLOAT;

ALTER TABLE clientes
DROP COLUMN pais,
MODIFY COLUMN codigo_postal INT(5);

ALTER TABLE facturas
ADD COLUMN total FLOAT DEFAULT NULL;







