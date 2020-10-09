def add_three(n)
    new_value = n + 3
    puts new_value #this will print our result but will be returned nil
    new_value  #and this will return our value without it being nil
end

add_three(5).times { puts "will this work?" }
