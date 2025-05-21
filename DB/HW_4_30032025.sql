/*1 Подключитесь к своей базе данных созданной на уроке*/

USE 210225_Proskurenko;

/*
2 Создайте таблицу, которая отражает погоду в Вашем 
городе за последние 5 дней и включает следующее столбцы
Id - первичный ключ, заполняется автоматически
Дата - не может быть пропуском
Дневная температура - целое число, принимает значения от -30 до 30
Ночная температура - целое число, принимает значения от -30 до 30
Скорость ветра - подумайте какой тип данных и ограничения 
необходимы для этого столбца
*/
CREATE TABLE Weather_in_my_city (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    date_weather DATE NOT NULL,
    day_temperature INT CHECK (- 30 < day_temperature < 30),
    night_temperature INT CHECK (- 30 < night_temperature < 30),
    wind_speed INT CHECK (wind_speed >= 0)
);

/*3 Заполните таблицу 5 строками - за последние 5 дней */

INSERT INTO Weather_in_my_city(date_weather, day_temperature, night_temperature,wind_speed)
						VALUES ('2025-03-25',12,6,5),
							   ('2025-03-26',15,3,0),
                               ('2025-03-27',17,6,2),
                               ('2025-03-28',20,8,6),
                               ('2025-03-29',21,8,4);

/*4 Увеличьте значения ночной температуры на 
градус если скорость ветра не превышала 3 м/с
*/

UPDATE Weather_in_my_city 
SET 
    night_temperature = night_temperature + 1
WHERE
    wind_speed < 3;

/*5 На основе полученной таблицы создайте представление в своей базе данных - включите все строки Вашей таблицы и дополнительно рассчитанные столбцы
Средняя суточная температура - среднее арифметическое между ночной и дневной температурами
Столбец на основе скорости ветра - если скорость 
ветра не превышала 2 м/с то значение ‘штиль’, 
от 2 включительно до 5 - ‘умеренный ветер’, 
в остальных случаях - ‘сильный ветер’*/

CREATE OR REPLACE VIEW weather_5_days AS
SELECT*, 
	((day_temperature+night_temperature)/2) AS Average_daily_temperature,
CASE 
	WHEN wind_speed <2 THEN 'штиль'
    WHEN 2<=wind_speed AND wind_speed<5 THEN 'умеренный ветер'
    WHEN wind_speed >=5 THEN 'сильный ветер' 
    END AS 'Wind'
FROM weather_in_my_city;

/* Для проверки*/
SELECT *
FROM
    Weather_in_my_city;
    
    
SELECT *
FROM
    weather_5_days;

/* Cntr+B и Beauty Query в формате не работает, поэтому вручную форматировала*/



