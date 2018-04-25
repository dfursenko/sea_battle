# ДОМАШНЕЕ ЗАДАНИЕ

# 1. Укоротить метод ​ my_loop...

  # Сделано:
  # - повторения описаны циклом
  # - добавлена возможность указывать конечное число
  # - добавлена возможность не использовать блок при вызове метода
  def my_loop(last = 3)
    n = 0
    puts 'Начало'
    yield n += 1 until n == last if block_given?
    puts 'Завершение'
  end

  # стандартный вызов
  my_loop {|n| puts n} # => Начало 1 2 3 Завершение

  # вызов до нужного числа
  my_loop(10) {|n| puts n} # => Начало 1 2 3 4 5 6 7 8 9 10 Завершение

  # вызов без блока
  my_loop # => Начало Завершение


# 2. Доработать Ship.how_many_ships(length)...

  # Сделано:
  # - проверка корректности вводимых данных
  # - использован case/when
  # - использован условный модификатор
  class Ship
    def Ship.how_many_ships(length)
      raise self.wrong_coords_message unless (1..4) === length

      puts count =
        case length
          when 1 then 4
          when 2 then 3
          when 3 then 2
          when 4 then 1
          else false
        end
    end

    def Ship.wrong_coords_message
      'Введено некорректное количество координат кораблика. Пожалуйста, введите число от 1 до 4'
    end
  end

  Ship.how_many_ships(3) # => 2
  Ship.how_many_ships(7) # => 'Введено некорректное количество координат кораблика...'
