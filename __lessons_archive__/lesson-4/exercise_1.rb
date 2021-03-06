require './classes/ship'

# ДОМАШНЕЕ ЗАДАНИЕ. УРОК 4. Задание 1.

# 1. Предыдущий пример со сравнением кораблей изменить так,
# чтобы название и длина считывалось со строки (по желанию).

print 'Введите данные первого корабля (название размер): '
name1, length1 = gets.chomp.split(' ')
s1 = Ship.new(name1, length1.to_i)

print 'Теперь данные второго корабля (название размер): '
name2, length2 = gets.chomp.split(' ')
s2 = Ship.new(name2, length2.to_i)

puts result =
  if s1 == s2
   s1.message_equal(s2)
  elsif s1 > s2
   s1.message_more_than(s2)
  else
   s2.message_more_than(s1)
  end

# РЕЗУЛЬТАТ:
# Введите данные первого корабля (название размер): battleship 4
# Введите данные второго корабля (название размер): destroyer 2
# => Корабль battleship больше, чем destroyer.