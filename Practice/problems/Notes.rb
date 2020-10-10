loop do
  number = rand(100)
  puts number
  break if number.between?(0, 10) # we can use .between? as a range bewtween two numbers.
end


names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift # .shift will remove and return an element in order.
  break if names.empty? # we can use .empty? to check if an array is empty
end


# A simple counter
5.times do |index|
  puts index
  break if index == 2
end


#Using .next

number = 0

until number == 10
  number += 1
  next if number.odd? # this will assure that next will ONLY apply to odd numbers and will account numbers other than 0
  puts number
end

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5 # next will skip us over the next iteration in the code (puts and break) UNLESS 5 is reached. This i will assure that our loop goes on until 5 is found.

  puts "5 is reached"
  break
end

# User provided data and other tools

choice = nil # listing the choice as nil on outside assures that the variable will be Accessible inside and outside the loop
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice) # %w(y n) is a short hand way of making an array of strings without "" or ,. so this is array would look like ["y", "n"].
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'

# Simple User and Password Entry

USERNAME = "HelloKitty" # use all caps for constants that cannot be altered
PASSWORD = "password123"

loop do
  puts "please enter your username"
  username_try = gets.chomp

  puts "please enter your password"
  password_try = gets.chomp
  
  break if password_try == PASSWORD && username_try == USERNAME
  puts "Authorization Failed!"
end

puts "Welcome!" # it's better to keep outside of the loop because we know that the loop can't be broken until the pass is correct


# Divider from User-Input

def valid_number?(number_string)  # this method will check if the user submitted a valid number that we can use in our program
  number_string.to_i.to_s == number_string
end

numerator = nil # its better to define the variable beforehand and assign it nil so that we can repeatedly use the var.

loop do 
  puts "Please enter the numerator"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts "Invalid input. Only integers are allowed"
end

denominator = nil

loop do
  puts "Please enter the denominator"
  denominator = gets.chomp

  if denominator.to_i == 0
    puts "Invalid input. A denominator of 0 is not allowed"
  else
    break if valid_number?(denominator)
      puts "Invalid input. Only integers are allowed"
  end
end

result = numerator.to_i / denominator.to_i # remember that the above method is only checking the validity of the var. We still need to clarify to_i since we did not do that from when we gathered the user data.
puts "#{numerator} / #{denominator} is #{result}"

  
# Methods

def print_me
  "I'm printing the return value!" # because this is last line of the method, Ruby will automatically return it
end

puts print_me


# random sentence creator

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(array)
  array.sample # sample will output a random element from an array
end

def activity(array)
  array.sample
end

def sentence(names, activities)
  "#{names} went #{activities} today!"
end

puts sentence(name(names), activity(activities))

# Ternary Operator

boolean = [true, false].sample

boolean ? puts("i'm true") : puts("i'm false") # This is one situation where you HAVE to put ()  after puts in order for it to work


# Assigning an if statement to a variable

status = ['awake', 'tired'].sample

alert = if status == 'awake' # we can actually assign an if statement to a variable like this. 
          'Be productive' # if we were to return these conditionals it would not work. They would break out of the if statement and not input a value to the variable.
        else
          'Go to sleep'
        end

puts alert


#Clean formatting for case statements

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green' then puts 'Go!'
when 'yellow'then puts 'Slow down!'
else              puts 'Stop!'
end

#when case statements only have one when statement, it's easier to do it on one line. Otherwise
#it's best to have multiple lines


#Strings

empty_string = String.new
empty_string = ""

#either of these would work to create a new empty string.


#Comparing strings of differnt cases

name = "Roger"

puts name.casecmp?('RoGeR') # => true
puts name.casecmp?('DAVE') # => false

#or

name = "Roger"

puts name.casecmp('RoGeR') == 0 # => true
puts name.casecmp('DAVE') == 0 # => false

# if it compared againsts RoGe it would == 1, if it was compared to RoGerS it would == -1 


#Replacing an entire string 

greeting = "hello"
greeting.gsub!("hello", "goodbye") # we can use gsub to also replace only certain characters of a string as well 

puts greeting

"greeting".gsub(/[aeiou]/, '*') #=> "h*ll*"  here we replaced all of the vowels with *

#Splitting and printing a string

alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.split('')


#Checking for matches in substrings

colors = 'blue pink yellow orange'

puts colors.include?('yellow') # => true
puts colors.include?('purple') # => false
puts colors.include?('ran') # => true because the of orange


#Arrays

pets = ['cat', 'dog', 'fish', 'lizard']

my_pets = pets[2, 3] # we can also do pets[2..3] but we cnnot do pets[2][3] or else that would give us the h of fish

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}"

# we could also pop the last element of an array using pop
my_pets.pop # my_pets => [fish]


# using Array#select

numbers = [5, 9, 21, 26, 39]

divisible_by_three = numbers.select { |n| n % 3 == 0 } # select checks for a condition and returns the values of elements that meet said condition
p divisible_by_three

#flattening a multi-dimensional array

favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
p favorites.flatten
# => ["Dave", 7, "Miranda", 3, "Jason", 11]

#comparing elements

array1 = [1, 5, 9]
array2 = [1, 9, 5]

puts array1 == array2 
# => false   When two arrays are compared, each element is compared with the other which means 
# array1[1] == array2[1] is false and therefore so is the initial comparison


#Hashes

cars = {
  car: { type: "sedan", color: "blue", year: 2003 },
  truck: { type: "pickup", color: "red", year: 1998 }
}

car = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]] # how our car sub hash would look like as an array



TEST