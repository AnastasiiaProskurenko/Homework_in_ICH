"""
1.Оценки текстом
Напишите программу, которая преобразует список оценок по системе от 1 до 5 в текстовое представление.
Нужно сохранить в списках числовой результат и текстовое представление. Где, 5 — "отлично", 3-4 — "хорошо", а 2 и ниже — "неудовлетворительно".
Данные:
grades = [5, 3, 4, 2, 1, 5, 3]
Пример вывода:
[[5, 'отлично'], [3, 'хорошо'], [4, 'хорошо'], [2, 'неудовлетворительно'], [1, 'неудовлетворительно'], [5, 'отлично'], [3, 'хорошо']]
"""
# grades = [5, 3, 4, 2, 1, 5, 3]
#
# new_grades = [[n,"отлично"] if n>4 else ([n,"неудовлетворительно"] if n<3 else [n,"хорошо"]) for n in grades ]
# print(new_grades)


"""
2.Правильные скобки
Напишите программу, которая принимает строку, содержащую любые виды скобок — круглые (), квадратные [] и фигурные {}.
Необходимо проверить, правильно ли они расставлены. Скобки считаются правильно расставленными, если:
Каждая открывающая скобка имеет соответствующую закрывающую.
Скобки закрываются в правильном порядке.
Пример данных:
string = "({[}])"
Пример вывода:
Скобки: ({[}])
Валидны: False
Скобки: ([({}()){}])
Валидны: True
"""
#string = input("Введите тредложение с скобками: ")
string = "(h{d[asf]fddddddh}gggcgbf)"
stack_for_print=[]
stack = []
valid = True

for char in string:
    if char in '([{':
        stack.append(char)
    elif char == ')':
        if not stack or stack[-1] != '(':
            valid = False
            break
        stack.pop()
    elif char == ']':
        if not stack or stack[-1] != '[':
            valid = False
            break
        stack.pop()
    elif char == '}':
        if not stack or stack[-1] != '{':
            valid = False
            break
        stack.pop()


if stack:
    valid = False

# for char in string:
#     if char in '([{}])':
#         stack_for_print.append(str(char))

stack_for_print= (n for n in string if n in '([{}])')

print("Скобки:", "".join(stack_for_print))
print("Валидны:", valid)
#print("Скобки:", "".join(n for n in string if n in '([{}])'))