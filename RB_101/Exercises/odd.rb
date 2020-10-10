=begin
Write a method that takes one integer argument, which may be positive, negative, or zero. 
This method returns true if the number's absolute value is odd. 
You may assume that the argument is a valid integer value.

argument must be an integer
we cannot use #odd? or #even?

method will take one argument
we will divide the argument by 2 and if the remainder is 1 or more then we will return true.
=end

def is_odd?(n)
  n % 2 >= 1
end

puts is_odd?(5)
puts is_odd?(4)
puts is_odd?(7)