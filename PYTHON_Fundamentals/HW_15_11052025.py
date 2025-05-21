"""
1. Одно слово
Напишите программу, которая обрабатывает список из строк и удаляет все строки, содержащие более одного слова, а также преобразует оставшиеся строки к нижнему регистру.
Данные:
text_list = ["Hello", "Python Programming", "World", "Advanced Topics", "Simple"]
Пример вывода:
Обработанный список: ['hello', 'world', 'simple']
"""
from os import remove

text_list = ["Hello", "Python Programming", "World", "Advanced Topics", "Simple"]


# new_text_list=[]
# for number in text_list:
#     if " "  not in number:
#         new_text_list.append(number.lower())
# print(new_text_list)


"""2 Вариант"""

# i=0
# for number in text_list:
#     if " " in number:
#         text_list.remove(number)
# for number in text_list:
#         text_list.insert(i,number.lower())
#         i+=1
#         text_list.remove(text_list[i])
# print(text_list)


"""
2. Обновление цен товаров
Дан список товаров с ценами. 
Программа должна применить скидку к каждому товару и добавить 
в список элемент с новой ценой. В конце вывести таблицу с новой ценой.
Данные:
products = [["Laptop", 1200], ["Mouse", 25], ["Keyboard", 75], ["Monitor", 200]]
Пример вывода:
Введите скидку (в процентах): 17
Товар          Старая цена    Новая цена
Laptop            1200.00$       996.00$
Mouse                25.00$         20.75$
Keyboard           75.00$         62.25$
Monitor            200.00$       166.00$
"""

products = [["Laptop", 1200], ["Mouse", 25], ["Keyboard", 75], ["Monitor", 200]]

sale = int(input("Введите скидку (в процентах): "))

print(f"{'Товар':<10}{'Старая цена':>12}{'Новая цена':>12}")

for pr, price in products:
    print(f"{str(pr):<10}{float(price):>11.2f}${(price*(1-sale/100)):>11.2f}$")

