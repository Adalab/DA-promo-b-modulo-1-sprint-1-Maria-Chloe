USE northwind;

SELECT MIN(`unit_price`) AS lowestPrice, MAX(`unit_price`) AS highestPrice
FROM products ;

-- EJERCICIO 2 --
SELECT COUNT(`product_id`), AVG(`unit_price`)
FROM products ;

-- EJERCICIO 3 --
SELECT MIN(freight), MAX(freight)
FROM orders
WHERE `ship_country` = 'UK' ;

-- EJERCICIO 4 --

SELECT `unit_price`, `product_name`
FROM products
WHERE `unit_price`> (SELECT AVG(`unit_price`)
FROM products)
ORDER BY `unit_price` DESC ;

-- EJERCICIO 5 --
SELECT COUNT(`product_id`)
FROM products
WHERE discontinued = True;

-- EJERCICIO 6 --
SELECT `product_id`, `product_name`
FROM products
WHERE discontinued = False
ORDER BY `product_id` DESC
LIMIT 10;

