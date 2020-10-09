def valid_number?(number_string) # this method is only testing the number to make sure that it is not 0 and is an integer
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

int_1 = nil
int_2 = nil

puts "Please enter a positive or negative integer"
int_1 = gets.chomp

loop do
  puts "Please enter a positive or negative integer"
  int_2 = gets.chomp
  
  if (int_1.to_i > -1 && int_2.to_i > -1) || (int_1.to_i < 0 && int_2.to_i < 0)
    puts "Sorry. One integer must be positive, one must be negative"
  elsif valid_number?(int_1) && valid_number?(int_2)
    int_1 = int_1.to_i
    int_2 = int_2.to_i
    break
  else
    puts "Invalid input. Only non-zero integers are allowed."
  end
end

result = int_1 + int_2

puts "#{int_1} + #{int_2} is #{result}"

#This can also be done using multiple methods as well

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts '>> Please enter a positive or negative integer:'
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"