def countdown(num)
  puts num
  if num <= 0
    num
  else countdown(num - 1)
    
  end
end

countdown(10)