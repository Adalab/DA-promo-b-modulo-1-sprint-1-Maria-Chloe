USE northwind;

/* Ejercicio 1 */
SELECT `employee_id`, `last_name`, `first_name`
FROM employees;

/* Ejercicio 2 */
SELECT *
FROM products
WHERE `unit_price` <= 5;

/* Ejercicio 3 */
SELECT *
FROM products
WHERE `unit_price` = 18
OR `unit_price` = 19
OR `unit_price` = 20
ORDER BY `unit_price`; 

/* Ejercicio 4 */
SELECT *
FROM products
WHERE `unit_price` >= 15
AND `unit_price` <= 50
ORDER BY `unit_price`;

/* Ejercicio 5 */
SELECT *
FROM products
WHERE `unit_price` IS NULL ;

/* Ejercicio 6 */
/* Nos coge solo un registro, porque solo hay uno con esas condiciones antes del id 10 */
SELECT *
FROM products
WHERE `product_id`< 10
AND `unit_price`<= 15 ;

/* Nos coge 10 registros empezando por el unit price mas pequeño */
SELECT *
FROM products
WHERE `unit_price`<= 15 
ORDER BY `unit_price` ASC
LIMIT 10;

/* Nos coge 10 registros empezando por el product id mas pequeño. Creemos que esta consulta tiene más sentido para lo que se busca en el enunciado. */
SELECT *
FROM products
WHERE `unit_price`<= 15 
ORDER BY `product_id` ASC
LIMIT 10;

/* Ejercicio 7 */
SELECT *
FROM products
WHERE NOT `unit_price`>= 15 
ORDER BY `product_id` ASC
LIMIT 10;

/* Ejercicio 8 */
SELECT `ship_country`
FROM orders 
ORDER BY `ship_country`;
 
 /*Si quisieramos saber cuantos pedidos hace cada pais para sabe cual nos compra más. Ejemplo hecho con Argentina. */
SELECT COUNT(`ship_country`) 
FROM orders
WHERE `ship_country` = 'Argentina';
















