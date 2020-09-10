person = { name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown' }

person.each do |key, value| # when iterating over hashes, we can use both key and value as arguments
  puts "Bob's #{key} is #{value}"
end
