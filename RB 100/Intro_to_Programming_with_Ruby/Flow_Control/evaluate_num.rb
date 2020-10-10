puts "enter a number between 0 and 100"
num = gets.chomp.to_i

num = case
when num.between?(0, 50) 
    "number is between 0 and 50"
when num.between?(51, 100)
    "number is between 51 and 100"
when num > 100
    "number is more than 100"
end

puts num