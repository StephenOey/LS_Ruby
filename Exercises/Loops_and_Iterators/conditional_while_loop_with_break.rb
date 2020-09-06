x = 0

while x <= 10
  if x == 7
    break
  elsif x.odd?
    puts x
  end
  x += 1
end

#this will return 1, 3, 5 and stop because it reaches 7