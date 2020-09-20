loop do
  input_string = nil # we have to declare these variables here so that the outer loop can still access them
  number_of_lines = nil
  loop do
    puts '>> How many output lines do you want? ' \
       'Enter a number >= 3 (Q to quit):'

    input_string = gets.chomp.downcase
    break if input_string == "q"

    number_of_lines = input_string.to_i # this way we can use the data converted to an integer (only if the variable is not a q of course)
    break if number_of_lines >= 3

    puts ">> That's not enough lines."
  end

    break if input_string == "q" #this will break out the outer loop and end the program.

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
end