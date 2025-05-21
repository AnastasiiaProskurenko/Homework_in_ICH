#Таблица order_details
/*1 Для каждого product_id выведите inventory_id а также предыдущий и последующей inventory_id по убыванию quantity*/

SELECT * FROM order_details;

SELECT 
		product_id, 
        quantity, 
        inventory_id,
		LAG(inventory_id) over (ORDER BY quantity DESC) as 'Предыдущий',
        LEAD(inventory_id) over (ORDER BY quantity DESC) as 'Последующей'
FROM 
		order_details;


/*2 Выведите максимальный и минимальный unit_price для каждого order_id с помощью функции FIRST VALUE  Вывести order_id и полученные значения*/
#Проверка
SELECT 
		order_id, 
		min(unit_price) over (PARTITION BY order_id) as MIN_,
		max(unit_price) over (PARTITION BY order_id) as MAX_
FROM 
		order_details;

#Решение
SELECT 
		order_id, 
		FIRST_VALUE(unit_price) over (PARTITION BY order_id ORDER BY unit_price ) as MIN_,
		FIRST_VALUE(unit_price) over (PARTITION BY order_id ORDER BY unit_price DESC) as MAX_
FROM 
		order_details
UNION
SELECT
		order_id, 
		FIRST_VALUE(unit_price) over (PARTITION BY order_id ORDER BY unit_price ) as MIN_,
		FIRST_VALUE(unit_price) over (PARTITION BY order_id ORDER BY unit_price DESC) as MAX_
FROM 
		order_details;

/*3 Выведите order_id и столбец с разнице между  unit_price для каждой заказа и минимальным 
unit_price в рамках одного заказа Задачу решить двумя способами - с помощью First VAlue и MIN*/

SELECT 
		order_id,
        unit_price,
		FIRST_VALUE(unit_price) over (PARTITION BY order_id ORDER BY unit_price ASC) as MIN_,
		(
        unit_price-(FIRST_VALUE(unit_price) over (PARTITION BY order_id ORDER BY unit_price ASC))
        ) as 'Разница'
FROM 
		order_details;

SELECT 
		order_id,
		unit_price,
		min(unit_price) over (PARTITION BY order_id) as MIN_,
		(
		unit_price-(min(unit_price) over (PARTITION BY order_id))
		) as 'Разница'
FROM 
		order_details;

/*4 Присвойте ранг каждой строке используя RANK по убыванию quantity*/

SELECT 
		*,
		RANK () over (ORDER BY quantity DESC) as RANK_
FROM 
		order_details;

/*5  Из предыдущего запроса выберите только строки с рангом до 10 включительно*/

WITH  RANK_ as
				( 
					Select 
							order_id,
							product_id,
							quantity,
							unit_price,
							RANK () over (ORDER BY quantity DESC ) as r
					From 
							order_details
				)
SELECT 
		* 
FROM 	
		RANK_
WHERE 
		r<=10;