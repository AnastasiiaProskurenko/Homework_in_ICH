/*1 Выведите одним запросом с использованием UNION столбцы id, employee_id из 
таблицы orders и соответствующие им столбцы из таблицы purchase_orders 
В таблице purchase_orders  created_by соответствует employee_id*/

SELECT id, employee_id FROM orders
union
SELECT id, created_by FROM purchase_orders;



/*2 Из предыдущего запроса удалите записи там где employee_id не имеет значения 
Добавьте дополнительный столбец со сведениями из какой таблицы была взята запись*/

(SELECT id, employee_id , 'Orders' as "Schemas"  FROM orders WHERE employee_id is not NULL)
union
(SELECT id, created_by  , "Purchase_orders" FROM purchase_orders WHERE created_by is not NULL);

/*3 Выведите все столбцы таблицы order_details а также 
дополнительный столбец payment_method из таблицы purchase_orders 
Оставьте только заказы для которых известен payment_method*/

SELECT od.*, po.payment_method
FROM order_details as od
JOIN orders as o
on od.order_id=o.id
JOIN employees as e
on o.employee_id=e.id
JOIN purchase_orders as po
on e.id=po.created_by
WHERE po.payment_method is not NULL;


/*4 Выведите заказы orders и фамилии клиентов customers 
для тех заказов по которым были инвойсы таблица invoices*/

SELECT o.*, c.last_name FROM orders as o
JOIN customers as c
on c.id = o.customer_id
JOIN invoices as i
on o.id = i.order_id
;


/*5 Подсчитайте количество инвойсов для каждого клиента из предыдущего запроса*/
SELECT o.*, c.last_name,c.first_name ,COUNT(i.invoice_date)as "Колличество заказов" FROM orders as o
JOIN customers as c
on c.id = o.customer_id
JOIN invoices as i
on o.id = i.order_id
GROUP BY c.last_name, c.first_name
ORDER BY c.last_name;
SELECT * FROM customers;
