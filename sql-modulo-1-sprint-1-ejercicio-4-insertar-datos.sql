INSERT INTO zapatillas (modelo, color, marca, talla)
VALUES ('XQYUN', 'Negro', 'Nike', 42);

INSERT INTO zapatillas (modelo, color, marca, talla)
VALUES ('UOPMN', 'Rosas', 'Nike', 39),
('OPNYT', 'Verdes', 'Adidas', 35);

INSERT INTO empleados (nombre, tienda, salario, `fecha_incorporacion`)
VALUES ('Laura', 'Alcobendas', 25987, '2010-09-03'),
('Maria', 'Sevilla', NULL, '2001-04-11'),
('Ester', 'Oviedo', 30165.98, '2000-11-29');

INSERT INTO clientes (nombre, `numero_telefono`, email, direccion, ciudad, provincia, `codigo_postal`)
VALUES ('Monica', 123456789, 'monica@email.com', 'Calle Felicidad', 'Mostoles', 'Madrid', 28176),
('Lorena', 15478962, 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', 12346),
('Carmen', 2589631, 'carmen@email.com', 'Calle del Color', 'Vigo', 'Pontevedra', 23456);

INSERT INTO facturas
VALUES (NULL, '123', '2001-12-11', 2, 1, 1, 54.98);

INSERT INTO facturas
VALUES (NULL, '1234', '2005-05-23', 1, 3, 1, 89.91),
(NULL, '12345', '2015-09-18', 3, 3, 2, 76.23);

UPDATE zapatillas
SET color = 'Amarillas'
WHERE color = 'Rosas';

UPDATE empleados
SET tienda = 'A Coruña'
WHERE nombre = 'Laura';

UPDATE clientes
SET `numero_telefono`= 12345678
WHERE nombre = 'Monica';

UPDATE facturas
SET total = 89.91
WHERE id_factura = 2;






