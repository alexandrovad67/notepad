require 'date' #чтобы преобразовать строки в дату

class Task < Post

  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console

    puts "Что будем делать?"
    @text = STDIN.gets.chomp

    puts "К какому числу? Укажите дату в формате дд.мм.гггг, например 12.05.2021"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y-%m-%d_%H-%M-%S")}  \n\r \n\r"

    deadline = "Крайний срок: #{@due_date}"

    return [deadline, @text, time_string]
  end
end