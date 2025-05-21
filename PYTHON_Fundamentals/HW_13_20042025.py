"""Прогрессия увеличения
Напишите программу, которая создаёт новый кортеж, состоящий из
элементов изначального в том же порядке. Добавить в него только
элементы, которые больше всех предыдущих значений в исходном кортеже.
Данные:
numbers = (3, 7, 2, 8, 5, 10, 1)
Пример вывода:
Кортеж по возрастанию: (3, 7, 8, 10)"""
from itertools import count

numbers = (3, 7, 2, 8, 5, 10, 1)
num=0
new_numbers=[]

for i in numbers:
    if i>num:
        num=i
        new_numbers.append(i)
new_numbers=tuple(new_numbers)
print("Кортеж по возрастанию: ",new_numbers)

"""Повторяющиеся элементы
Напишите программу, которая находит индексы элементов кортежа, 
встречающихся более одного раза. Вывести сами элементы и их индексы.
Данные:
numbers = (1, 2, 3, 4, 2, 5, 3, 6, 4, 2, 9)
Пример вывода:
Индексы элемента 2: 1 4 9 
Индексы элемента 3: 2 6 
Индексы элемента 4: 3 8"""

numbers = (1, 2, 3, 4, 2, 5, 3, 6, 4, 2, 9)
new_numbers = list(numbers)

skil=[]

for i in new_numbers:
    if new_numbers.count(i)>1 and i not in skil:
             skil.append(i)

for i in skil:
    print(f"Индексы элемента {i}: ", end="")
    for j in range (new_numbers.count(i)):
        a=new_numbers.index(i)
        new_numbers.remove(i)
        new_numbers.insert(a,'0')
        print(a, end=" ")
    print()



