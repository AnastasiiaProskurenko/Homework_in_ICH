				/*1 Посчитайте основные статистики - среднее, сумму, 
				минимум, максимум столбца unit_cost.*/
USE northwind;

SELECT 
	AVG(unit_cost) AS "Сдернее значение",
	MIN(unit_cost) AS"Минимальное значение",
	MAX(unit_cost) AS"Максимальное значение",
	SUM(unit_cost) AS"Общая сумма"
 FROM purchase_order_details;

				/*2 Посчитайте количество уникальных заказов purchase_order_id*/

SELECT 
    COUNT(DISTINCT purchase_order_id) AS 'Количество заказов'
FROM
    purchase_order_details;

				/*3 Посчитайте количество продуктов product_id в каждом заказе 
				purchase_order_id Отсортируйте полученные данные по убыванию количества*/

SELECT  purchase_order_id ,
	COUNT(product_id)
FROM purchase_order_details
GROUP BY purchase_order_id
ORDER BY 2 DESC;

				/*4 Посчитайте заказы по дате доставки date_received Считаем 
				только те продукты, количество quantity которых больше 30*/

SELECT date_received, 
	COUNT(purchase_order_id) AS "Количество заказов"
FROM purchase_order_details
	WHERE quantity>30
GROUP BY date_received,purchase_order_id;

SELECT * FROM purchase_order_details;

				/*5 Посчитайте суммарную стоимость заказов в каждую из дат Стоимость 
				заказа - произведение quantity на unit_cost*/

SELECT date_received, 
	SUM(quantity*unit_cost) AS "Общая сумма заказов"
FROM purchase_order_details
GROUP BY date_received;

				/*6 Сгруппируйте товары по unit_cost и вычислите среднее и 
				максимальное значение quantity только для товаров где purchase_order_id не больше 100*/

SELECT unit_cost, purchase_order_id,
	AVG(quantity) AS "Среднее значение", 
	MAX(quantity) AS "Максимальное значение"
FROM purchase_order_details
GROUP BY unit_cost
	HAVING purchase_order_id <=100
ORDER BY unit_cost;

				/* так вроде как красивее*/
 
SELECT unit_cost, 
	AVG(quantity) AS "Среднее значение", 
	MAX(quantity) AS "Максимальное значение"
FROM purchase_order_details
	WHERE purchase_order_id <=100
GROUP BY unit_cost
ORDER BY unit_cost;


				/*7 Выберите только строки где есть значения в столбце 
				inventory_id Создайте столбец category - если unit_cost > 20 
				то 'Expensive' в остальных случаях 'others' Посчитайте количество 
				продуктов в каждой категории*/
SELECT 
    CASE
        WHEN unit_cost > 20 THEN 'Expensive'
        ELSE 'others'
    END AS categori,
    SUM(quantity) AS 'Количество продуктов'
FROM
    purchase_order_details
WHERE
    inventory_id IS NOT NULL
GROUP BY categori
ORDER BY 1;
    
SELECT * FROM purchase_order_details;