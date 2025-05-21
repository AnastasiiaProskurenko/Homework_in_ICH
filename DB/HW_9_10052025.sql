use northwind;

###Таблица purchase_order_details
SELECT 
    *
FROM
    purchase_order_details;
#########################################################
SELECT 
    *
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    LOWER(column_name) LIKE BINARY 'order_id';

/*
1  Для каждого заказа order_id выведите минимальный, 
максмальный и средний unit_cost
*/

SELECT  purchase_order_id,
		round( MIN(unit_cost) OVER (PARTITION BY purchase_order_id),2) as MIN_,
		round( MAX(unit_cost) OVER (PARTITION BY purchase_order_id),2) as MAX_,
		round( AVG(unit_cost) OVER (PARTITION BY purchase_order_id),2) as AVG_,
		pod.*

FROM 
		purchase_order_details as pod;


/*
2  Оставьте только уникальные строки из предыдущего запроса
*/


        
WITH pod as 
			(
				SELECT 
						purchase_order_id,
						round( MIN(unit_cost) OVER (PARTITION BY purchase_order_id),2) as MIN_,
						round( MAX(unit_cost) OVER (PARTITION BY purchase_order_id),2) as MAX_,
						round( AVG(unit_cost) OVER (PARTITION BY purchase_order_id),2) as AVG_
				FROM 
						purchase_order_details as pod
			) 
SELECT 
		*
FROM 
		(
		SELECT 
				* 
		FROM 
				pod
		) as table_1
UNION
SELECT 
		* 
FROM 	(
		SELECT 
				* 
		FROM 
				pod
		) as table_2 ;


/*
3 Посчитайте стоимость продукта в заказе как quantity*unit_cost 
Выведите суммарную стоимость продуктов с помощью оконной функции 
Сделайте то же самое с помощью GROUP BY
*/

SELECT 
		*, 
        round(
				quantity*unit_cost, 2
			 ) as Item_price,
		round(
				SUM(quantity*unit_cost) over (PARTITION BY purchase_order_id),2
			 ) as Total_cost_of_products
FROM 
		purchase_order_details;
#########################################################
SELECT 
    purchase_order_id,
    ROUND(SUM(quantity * unit_cost), 2) AS Total_cost_of_products
FROM
    purchase_order_details
GROUP BY 1;

/*
4 Посчитайте количество заказов по дате получения и posted_to_inventory 
Если оно превышает 1 то выведите '>1' в противном случае '=1'
Выведите purchase_order_id, date_received и вычисленный столбец
*/

SELECT DISTINCT 
				purchase_order_id, 
                date_received,
				CASE 
					WHEN COUNT(*) over (PARTITION BY purchase_order_id, date_received) >1 THEN '>1'
					ELSE '=1'
				END as order_count_status,
				COUNT(*) over (PARTITION BY purchase_order_id, date_received) as count_
FROM 
		purchase_order_details
WHERE 
		date_received IS NOT NULL;