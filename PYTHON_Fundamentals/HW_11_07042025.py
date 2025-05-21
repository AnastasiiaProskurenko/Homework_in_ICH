"""Звёздочки вместо чисел
Напишите программу, которая заменяет все цифры в строке на звёздочки *.
text = "My number is 123-456-789"
Пример вывода:
Строка: My number is 123-456-789
Результат: My number is ***-***-***"""
from dataclasses import replace


# text = "My number is 123-456-789"
# #text = input("Строка: ")
# new_text=""
# for i in range(len(text)-1):
#     if text[i].isdigit():
#         new_text+="*"
#     else:
#         new_text+=text[i]
# print(new_text)
 for n in "0123456789":



"""Количество символов
Напишите программу, которая подсчитывает количество вхождений всех символов в строке. 
Нужно вывести только символы, которые встречаются более 1 раза (игнорируя регистр), 
с указанием их количества. Выводите повторяющиеся символы только один раз.
text = "Programming in python"
Пример вывода:
Строка: Programming in python
Символ 'p' встречается 2 раз(а)
Символ 'r' встречается 2 раз(а)
Символ 'o' встречается 2 раз(а)
Символ 'g' встречается 2 раз(а)
Символ 'm' встречается 2 раз(а)
Символ 'i' встречается 2 раз(а)
Символ 'n' встречается 3 раз(а)
Символ ' ' встречается 2 раз(а)"""

# text = "Programming in python".lower()
# alfabet=""
# for char in text:
#     if char not in alfabet:
#         alfabet+=char
#
# for char in alfabet:
#     if text.count(char)>1 :
#         print(f"Символ '{char}' встречается {text.count(char)} раз(а)")




"""Увеличение чисел
Напишите программу, которая заменяет все числа в строке на их эквивалент, умноженный на 10.
text = "I have 5 apples and 10 oranges, price is 0.5 each. Card number is ....3672."
Пример вывода:
I have 50.0 apples and 100.0 oranges, price is 5.0 each. Card number is ....3672."""

#text = input().split()

# text = "I have 5 apples and 10 oranges, price is 0.5 each. Card number is ....3672.".split()
# new_text = ""
#
# for i in text:
#     if i.replace('.', '', 1).isdigit():
#         tmp = float(i) * 10
#         new_text += str(tmp)+" "
#     else:
#         new_text += i+" "
#
# print(f"Результат: {new_text}")


