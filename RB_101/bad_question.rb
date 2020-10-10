#Can I access constants that are defined outside of a method?

NUMBERS = [1, 2, 3]

def test
  puts NUMBERS.inspect
end

test

#YES