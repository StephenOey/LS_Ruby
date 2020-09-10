x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1 #this assures that the x variable decrements by 1 and does not lead an infinite loop
end

puts "Done!"

