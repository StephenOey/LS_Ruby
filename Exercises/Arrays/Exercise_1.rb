arr = [1, 3, 5, 7, 9, 11]

def num_checker(array)
  if array.include?(3)
    puts "3 is included" 
  else puts "could not find 3"
  end
end

num_checker(arr)
