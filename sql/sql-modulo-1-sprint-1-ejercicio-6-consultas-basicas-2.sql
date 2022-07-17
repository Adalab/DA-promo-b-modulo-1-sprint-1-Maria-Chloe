USE northwind;


-- Ejercicio 1
SELECT `product_id`, `product_name`, `unit_price`
FROM products
ORDER BY `product_id`
LIMIT 10;

-- Ejercicio 2
SELECT `product_id`, `product_name`, `unit_price`
FROM products
ORDER BY `product_id` DESC
LIMIT 10;

-- Ejercicio 3
SELECT DISTINCT `order_id`
FROM `order_details`;

-- Ejercicio 4
SELECT DISTINCT `order_id` 
FROM `order_details`
LIMIT 2;

-- Ejercicio 5
SELECT `order_id`,`unit_price`, `quantity`, (unit_price * quantity) AS ImporteTotal 
FROM order_details
ORDER BY`ImporteTotal` DESC
LIMIT 3;

 /* ¿porqué existen order_id repetidos, si es una PK?, ¿cómo puede ser? */
 
-- Ejercicio 6 
 SELECT `order_id`,`unit_price`, `quantity`, (unit_price * quantity) AS ImporteTotal 
FROM order_details
ORDER BY`ImporteTotal` DESC
LIMIT 5
OFFSET 5;
 
 
/* SELECT products.product_id , categories.category_id
 FROM products, categories;   Seguimos pensando cómo se haría para conocer cuantos pedidos de cada categoría se han hecho */

-- Ejercicio 7
SELECT category_name AS NombreDeCategoria
FROM categories;

-- Ejercicio 8
SELECT `order_id`,`order_date`, `shipped_date`, `required_date`, DATE_ADD(`shipped_date`, INTERVAL 5 DAY) AS `fecha_retrasada`
FROM orders;

-- Ejercicio 9
SELECT `product_name`, `unit_price`
FROM products
WHERE `unit_price` BETWEEN 15 AND 50
ORDER BY `unit_price`;


-- Ejercicio 10 --
SELECT `product_name`, `unit_price`
FROM products
WHERE `unit_price` IN (18, 19, 20)
ORDER BY `unit_price`;



