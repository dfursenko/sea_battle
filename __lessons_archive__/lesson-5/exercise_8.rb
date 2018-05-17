require_relative 'classes/user'

# ДОМАШНЕЕ ЗАДАНИЕ. Урок 5. Задание 8.
#
# 8. * Реализовать метод, отвечающий за выстрел в кораблик. Какой уровень доступа должен быть у такого метода?
#   Помните, что нужно запоминать, в какие координаты кораблика уже попадал противник.

# Сделано:
# - метод реализующий выстрел по заданной координате
# - сохранение информации о выстреле

# игрок стреляет по полю, указывая координату
user = User.new
puts "Производим выстрел по координате [1, 1]"
user.shoot 1, 1

# проверяем работает ли метод
puts "Был ли выстрел по координате [5, 6]: #{SEA_BATTLE.check_coord 5, 6}"
puts "Был ли выстрел по координате [1, 1]: #{SEA_BATTLE.check_coord 1, 1}"
puts "Был ли выстрел по координате [3, 4]: #{SEA_BATTLE.check_coord 3, 4}"

# РЕЗУЛЬТАТ
# => Производим выстрел по координате [1, 1]
# => Был ли выстрел по координате [5, 6]: false
# => Был ли выстрел по координате [1, 1]: true
# => Был ли выстрел по координате [3, 4]: false