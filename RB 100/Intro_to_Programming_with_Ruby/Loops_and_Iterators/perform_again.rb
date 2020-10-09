loop do
  puts "Do you want to do that again? Type 'Y' for yes."
  answer = gets.chomp
  if answer != 'Y'
    break 
  end
end

# This is a do/while loop. The code will run at least once and break if the code tells it to