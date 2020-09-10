def take_block(number, &block) # we are telling this method that, we are going to be passing in a variable as well as a block as the method's arguments
  block.call(number)
end

number = 42
take_block(number) do |num| # here is where we pass in the created block to the take_block method.
  puts "Block being called in the method! #{num}"
end

