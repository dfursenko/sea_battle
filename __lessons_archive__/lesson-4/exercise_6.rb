require './classes/worker'

# ДОМАШНЕЕ ЗАДАНИЕ. УРОК 4. Задания 6

# 6. * Существует класс Worker (работник). У каждого работника есть имя и зарплата.
#   Необходимо подготовить метод класса, который выводил бы имя заработную плату в массиве.

worker = Worker.new('Василий', 200_234)

puts 'Данные сотрудника в массиве:'
p worker.arr_output

# РЕЗУЛЬТАТ:
# => Данные сотрудника в массиве
# => ["Василий 220257.4"]






