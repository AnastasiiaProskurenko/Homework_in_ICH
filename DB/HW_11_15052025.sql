/*Создать кастомные функции
1. Функция для расчета площади круга*/

DELIMITER //
CREATE FUNCTION SQUER_circle(R  NUMERIC(10,2) )
RETURNS NUMERIC(10,2)
BEGIN
	RETURN pow(R,2)*pi();
END //
DELIMITER ;

SELECT SQUER_circle (3);
/*2. Функция для расчета гипотенузы треугольника*/

DELIMITER //
CREATE FUNCTION HYPOTUNOSIS(x  NUMERIC(10,2), y  NUMERIC(10,2) )
RETURNS NUMERIC(10,2)
BEGIN
	RETURN sqrt(pow(x,2)+pow(y,2));
END //
DELIMITER ;

SELECT HYPOTUNOSIS (15,8);