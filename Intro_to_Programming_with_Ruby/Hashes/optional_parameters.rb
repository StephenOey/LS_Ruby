def greeting(name, options = {})
  if options.empty? # this will check to see if anything was passed into the options parameter
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]} years old and I live in #{options[:city]}."
  end
end

# greeting("Bob")
# greeting("Bob", { age: 62, city: "New York City" })
greeting("Bob", age: 62, city: "New York City") # you can also call the method this way when the hash is the last argument.