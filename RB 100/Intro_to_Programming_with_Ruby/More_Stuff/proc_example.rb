talk = Proc.new do # Proc.new is saying that we are about to create a new proc with the name of the variable that is assigned to.
  puts "I am talking"
end

talk.call

# they also can take arguments as well.

speak = Proc.new do |name|
  puts "I am talking to #{name}"
end

speak.call "Bob" # No need for () like we do for a method