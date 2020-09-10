=begin
 Regex stands for Regular Expression which is a 
 seqence of characters that form pattern matching rules, 
 and is then applied to a string to look for matches.
 
examples:

1. Check if the pattern "ss" appears in the word "Mississippi"

2. Print out the 3rd word of each sentence from a list of sentences.

3. Find and replace all instances of "Mrs." with "Ms." in a sentence etc.

4. Checks if a string starts with an "St" etc.

Creating regular expressions starts with the forward slash character (/). 
Inside two forward slashes you can place any characters you would like to match with the string.

the =~ operator to see if we have a match in our regular expression
=end

'powerball' =~ /b/ # we are taking the string and searching for an occurance of the letter b
=> 5 # 5 is returned because "b" takes place on the 5th index point [5] of the string.
# because 5 is truthy, we could also use this to pass through boolean operators.

/b/.match("powerball") # .match is similar to =~ expect it returns a MatchData "data" or nil if not found
=> #<MatchData "b">  

# Ruby also has a built in Math module:

Math.sqrt(400) # within the Math module, we can use it's square root function sqrt.
=> 20.0

Math::PI # PI is a constant that can't be changed so that you don't need to create your own variable.
=> 3.141592653589793

t = Time.new(2008, 7, 4) # The time class can be used to calculate specific calendar functions
=> 2008-07-04 00:00:00 -0400
t.monday? 
=> false
t.friday?
=> true
# we used the time function to find out what day of the week it was on July 4th, 2008.

#When using class methods we will have the method's first letter be capitalized Math, Time. These are different from instance methods.

#Variables as Pointers

a = "hi there"
b = a
a = "not here"
b
=> "hi there" # in this example. a and b are both pointing to the same space in computer memory,
# when a changes, it changes where it points to in computer data. B remain pointed to "hi there"

a = "hi there"
b = a
a << ", Bob" #again << is the same as .push
b
=> "hi there, Bob" # a mutated the caller and modified the existing string, which is also pointed to by the variable b.
# because the data that was mutated was shared by a and b, b will also return "hi there, Bob"

a = [1, 2, 3, 3]
b = a
c = a.uniq # uniq will look for repeated elements in an array and remove duplicates.
b
=> [1, 2, 3, 3] # notice that b remains the same. 
c = a.uniq! # adding the bang will now destructively mutate the value assigned to a
b
=> [1, 2, 3]

# variables are pointers to physical space in memory.

# Blocks and Procs

# We can use a &block_name when when we are referencing a block.
  def block_example(&block)
    does block
  end

  block_example do 
    puts "Hello, I am a block in the method!"
  end

# Procs are blocks that we can save as an object to be called upod later within our code.
say_hello = Proc.new do 
  puts "hello"
end

say_hello.call
=> "hello"

#we can also pass arguments through procs

say_hello = Proc.new do |name|
  puts "hello, #{name}."
end

say_hello.call("Bob")
=> "hello, Bob."

# Exception Handling is used to manage errors in a manageble and predictable way.
  # we use the word rescue when referring to this concept.

  begin 
    do something
  rescue
    puts error message
  end

  #or

  do something 
  do something end rescue puts "error"
  do something

  # Exceptions and Stack Traces

=begin
    We can use stack tracing to help us read and understand our code and code errors
=end

