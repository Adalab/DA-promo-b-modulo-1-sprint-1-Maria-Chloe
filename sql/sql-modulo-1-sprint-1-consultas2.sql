USE northwind;

SELECT `product_id`, `product_name`, `unit_price`
FROM products
ORDER BY `product_id`
LIMIT 10;


SELECT `product_id`, `product_name`, `unit_price`
FROM products
ORDER BY `product_id` DESC
LIMIT 10;

SELECT DISTINCT `order_id`
FROM `order_details`;



SELECT DISTINCT `order_id` 
FROM `order_details`
LIMIT 2;

SELECT `order_id`,`unit_price`, `quantity`, (unit_price * quantity) AS ImporteTotal 
FROM order_details
ORDER BY`ImporteTotal` DESC
LIMIT 3;

 /* ¿porqué existen order_id repetidos, si es una PK?, ¿cómo puede ser? */
 
 
 SELECT `order_id`,`unit_price`, `quantity`, (unit_price * quantity) AS ImporteTotal 
FROM order_details
ORDER BY`ImporteTotal` DESC
LIMIT 5
OFFSET 5;
 
 
/* SELECT products.product_id , categories.category_id
 FROM products, categories;   Seguimos pensando cómo se haría para conocer cuantos pedidos de cada categoría se han hecho */


SELECT category_name AS NombreDeCategoria
FROM categories;












