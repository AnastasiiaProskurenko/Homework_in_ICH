"""
1.Сумма цифр числа
Напишите программу, которая получит четырехзначное число
от пользователя и выведет на экран сумму цифр этого числа.
"""

chislo=int(input("Введите четырехзначное число: "))
pervuyDesyatok = chislo%10
vtoroyDeyatok = (chislo//10)%10
tretiyDesyatok = (chislo //100)%10
chetvertuyDesyatok = (chislo //1000)%10
summaCufr = pervuyDesyatok+vtoroyDeyatok+tretiyDesyatok+chetvertuyDesyatok
print("Сумма цифр числа: "+str(summaCufr))

# упрощение

chislo=int(input("Введите четырехзначное число: "))
print("Сумма цифр числа: "+str(chislo%10+(chislo//10)%10+(chislo //100)%10+(chislo //1000)%10))


"""
2.Умножение чисел
Напишите программу, которая получает два числа от пользователя, умножает одно 
число на второе и выводит результат и оба числа через дефис. Не сохраняете 
результат умножения в переменной.
Результат: 20-4-5
"""

pervoe = int (input("Введите первое число: "))
vtoroe = int (input("Введите второе число: "))
print("Результат: ", pervoe*vtoroe, end="-")
print(pervoe , vtoroe, sep="-")


"""
3.Вычисление без операторов % и //
Напишите программу, которая получает два числа от пользователя и вычисляет:
Остаток от деления
Результат целочисленного деления
Решить без использования операторов % и //.
"""
pervoe = int (input("Введите первое число: "))
vtoroe = int (input("Введите второе число: "))
resultat = pervoe/vtoroe
print(int(resultat))
print(pervoe-(int(resultat))*vtoroe)







