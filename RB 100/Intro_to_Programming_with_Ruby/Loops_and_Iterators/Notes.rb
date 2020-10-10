# countdown.rb using an Until loop

x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Done!"

# perform_again can also be written like this:
begin
  puts "Do you want to do that again?"
  answer = gets.chomp
end while answer == 'Y'
# another form of do/while, though not reccomended


# For loops actually return a value as opposed to a while loop which returns nil

#Recursion is another way to create a loop in Ruby. Recursion is the act of calling a method from within itself.:
def doubler(start)
  puts start
  if start < 10
    doubler(start * 2) #this starts our method over until start is more than 10
  end
end

doubler(2)
2
4
8
16
=> nil

#.each will always return the original array that is called on:
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

=> [1, 2, 3, 4, 5]

