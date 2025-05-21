use northwind;
/*1   Вывести названия продуктов таблица products, включая количество заказанных единиц quantity для каждого продукта таблица order_details.
Решить задачу с помощью cte и подзапроса*/

SELECT * FROM products;
SELECT * FROM order_details;

WITH od as (SELECT quantity, product_id from order_details)
SELECT id, product_name, sum(od.quantity) as quo
FROM products as p
LEFT JOIN od 
on  p.id = od.product_id 
GROUP BY product_name
ORDER BY quo;



WITH 
all_schemas as 
	(SELECT p.*, od.quantity from products as p
	LEFT JOIN order_details as od
	on od.product_id=p.id)
SELECT id, product_name,  sum(quantity) as 'Number of unit' FROM all_schemas
GROUP BY product_name
ORDER BY 3 DESC;

SELECT id, product_name, sum(quantity) as 'Number of unit'  
FROM (
	SELECT p.*, od.quantity from products as p
	LEFT JOIN order_details as od
	on od.product_id=p.id ) as pod
GROUP BY product_name
ORDER BY 3 DESC
;

/*2  Найти все заказы таблица orders, сделанные после даты самого первого заказа клиента Lee таблица customers.*/

SELECT * FROM orders
WHERE order_date>
	(SELECT min(order_date)from orders as o
	JOIN customers as c
	on c.id=o.customer_id
	where c.last_name LIKE "Lee") 
;

SELECT * FROM orders;

/*3 Найти все продукты таблицы  products c максимальным target_level*/

SELECT product_name, target_level  
FROM products 
WHERE target_level=
	(SELECT MAX(target_level) FROM products);

SELECT MAX(target_level) FROM products;
