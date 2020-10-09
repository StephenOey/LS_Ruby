x = 0

while x <= 10
  if x == 3
    x += 1 #this is added so that 3 will become 4 and not trigger the elsif command
    next
  elsif x.odd?
    puts x
  end
  x += 1
end

