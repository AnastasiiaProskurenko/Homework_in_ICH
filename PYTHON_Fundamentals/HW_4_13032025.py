# Напишите программу, которая получит два логических значения
# от пользователя и выведет результат логических операций
# and, or, not для этих значений, а также сравнение на
# равенство и неравенство. Для операции not используйте
# первое число. Продумайте в каком виде получать ввод
# от пользователя для логического значения.#
# Пример вывода:#
# Enter first value: <value1>
# Enter second value: <value1>
# and: True
# or: True
# not: False
# equal: False
# not equal: True
#способ 1

fValue = bool(int(input("Enter first value 1=yes or 0=no: ")))
sValue = bool(int(input("Noch einmal, enter value 1=yes or 0=no: ")))

print("and: ", fValue and sValue)
print("or: ", fValue or sValue)
print("not: ", not fValue)
print("equal: ", fValue == sValue)
print("not equal: ",fValue != sValue)
# способ 2
Value1 = (input("Enter first value 1=yes or 0=no: "))
Value2 = (input("Noch einmal, enter value 1=yes or 0=no: "))
if Value1 == "1":
    Value1 = 1
else: Value1 = False
if Value2 == "1":
    Value2 = 1
else: Value2 = False
print("and: ", fValue and sValue, "\n or: ", fValue or sValue, "\n not: ", not fValue,
      "\n equal: ", fValue == sValue, "\n not equal: ",fValue != sValue)

#print(fValue) #проверка
#print(sValue) #проверка

# Проверка условий
# Напишите программу, которая принимает на вход логические значения
# двух переменных (свет включён и окно открыто) и проверяет:
# Оба ли условия выполнены.
# Хотя бы одно из условий выполнено.
# Пример вывода:
# Свет включён? True
# Окно открыто? False
# Оба условия выполнены? False
# Хотя бы одно условие выполнено? True

light = bool(int(input("Свет включён? 1=да или 0=нет: ")))
window = bool(int(input("Окно открыто? 1=да или 0=нет: ")))

print("Оба условия выполнены? ",light and window, "\nХотя бы одно условие выполнено? ",light or window)

#  * Стоимость мобильного тарифа
# Напишите программу для расчёта стоимости использования мобильного тарифа:
# Базовая стоимость: 30 евро.
# Каждый мегабайт интернета сверх 500 МБ стоит 0.2 евро.
# Программа должна запросить у пользователя количество использованных
# мегабайтов и вывести сколько всего он заплатил (базовый и переплата).
# Пример вывода:
# Введите использованные мегабайты: 510
# Общая стоимость: 32.0

amount = int(input("Введите использованные мегабайты: "))
#способ 1
if amount > 500 :
    totalCost = 30.0+(amount-500)*0.2
else:
    totalCost = 30.0
print("Общая стоимость: ", totalCost)
# способ 2
print("Общая стоимость: ", 30.0+(amount>=500)*(amount-500)*0.2)


