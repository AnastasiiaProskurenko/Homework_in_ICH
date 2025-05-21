"""Число в конце
Напишите программу, которая создает новый список. В него необходимо добавить только
те строки из исходного списка, в которых цифры находятся только в конце.
Данные:
strings = ["apple23", "ban1ana45", "12cherry", "grape3", "blue23berry"]
Пример вывода:
Строки с цифрами только в конце: ['apple23', 'grape3']"""

strings = ["apple23", "ban1ana45", "12cherry", "grape3", "blue23berry"]

result = []

for i in strings:

    if not i[-1].isdigit():   # Если строка не окончается цифрой, пропускаем
        continue

    j = len(i) - 1      # Находим с какого места в конце начинаются цифры
    while j >= 0 and i[j].isdigit():
        j -= 1
    digits_start = j + 1

    for l in range(len(i)):     # Ищем первую цифру в строке
        if i[l].isdigit():
            first_digit = l
            break
    if first_digit == digits_start:   # Если первое вхождение цифры в строку совпадает с тем где начинаются цифры в конце, мы добавляем в результат
        result.append(i)

print("Строки с цифрами только в конце: ", result)


"""Удаление кратных
Напишите программу, которая удаляет из списка все значения, 
кратные числу, которое вводится пользователем.
Данные:
numbers = [1, 3, 6, 9, 10, 12, 15, 19, 20]
Пример вывода:
Введите число для удаления кратных ему элементов: 3
Список без кратных значений: [1, 10, 19, 20]"""

numbers = [1, 3, 6, 9, 10, 12, 15, 19, 20]
new_numbers = []
num= int(input("Введите число для удаления кратных ему элементов: "))

for i in numbers:
    if i%num!=0:
        new_numbers.append(i)

print(new_numbers)


"""Порядок четных
Напишите программу, которая формирует новый список чисел. 
Добавьте в него все элементы исходного списка, где:
нечетные числа занимают те же позиции,
чётные числа отсортированы между собой обратном порядке.
Данные:
numbers = [5, 2, 3, 8, 4, 1, 2, 7]
Пример вывода:
Список после сортировки: [5, 8, 3, 4, 2, 1, 2, 7]"""
numbers = [5, 2, 3, 8, 4, 1, 2, 7]

chet=[]
nechet=[]
new_num=[]

for index,value in enumerate(numbers):
    if value%2==0:
        chet.append(value)
    else:
        nechet.append(value)
        nechet.append(index)

chet=sorted(chet,reverse=True)

for i in range(len(chet)):
    new_num.append(chet[i])
    new_num.insert(nechet[1],nechet[0])
    nechet.remove(nechet[0])
    nechet.remove(nechet[0])

print("Список после сортировки: ",new_num)




Mein Lernverhalten – Beispielantwort

Was habe ich gestern gemacht?
Gestern und auch diesen Sonntag habe ich den verpassten Unterrichtsstoff wiederholt und Hausaufgaben gemacht. Ich versuche, alles nachzuholen, weil ich viel verpasst habe.

Welche Probleme/Hindernisse habe ich?
Ich habe Schwierigkeiten, weil sich Deutsch mit Englisch vermischt. Außerdem ist die Satzstruktur in den vier Sprachen, die ich kenne, unterschiedlich. Das macht es mir schwer, korrekte Sätze zu bilden.

Was werde ich heute machen?
Heute werde ich weiter den verpassten Stoff durchgehen und an meinen Hausaufgaben arbeiten. Ich möchte die wichtigsten Redemittel aus dem Unterricht lernen und die Satzbildung verbessern.








