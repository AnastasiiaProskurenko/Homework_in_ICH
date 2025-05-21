#1. Выведите Ваш возраст на текущий день в секундах

SELECT DATEDIFF(CURDATE(), '1988-09-08') * 24 * 60 * 60 AS 'I\'m this second';

#2. Выведите какая дата будет через 51 день

SELECT DATE_ADD(CURDATE(), INTERVAL 51 DAY) AS 'Future';

#3. Отформатируйте предыдущей запрос - выведите день недели для этой даты Используйте документацию My SQL

SELECT DAYNAME(DATE_ADD(CURDATE(), INTERVAL 51 DAY)) AS 'Future';

/*4.  Подключитесь к базе данных northwind Выведите столбец с исходной
 датой создания транзакции transaction_created_date из таблицы inventory_transactions, 
а также столбец полученный прибавлением 3 часов к этой дате*/

use northwind;
SELECT 
    transaction_created_date,
    DATE_ADD(transaction_created_date,
        INTERVAL 3 HOUR) AS 'New Date'
FROM
    inventory_transactions;
    
SELECT 
	CONCAT('Клиент с id ',customer_id, ' сделал заказ ' , order_date) AS Report 
FROM 
	orders;

SELECT  
	CONCAT('Клиент ',CAST(ship_name AS CHAR),' с id ',
			CAST(customer_id AS CHAR), ' сделал заказ ' ,
			CAST( order_date AS DATE)) AS Report 
FROM 
	orders;
        
  



























