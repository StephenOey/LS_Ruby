
array.each { |num| puts num } # great for iteration and preferred over a for loop
array.each # with no block, this would return an Enumerator 

=begin 
The map method iterates over an array 
applying a block to each element of the array 
and returns a new array with those results. Collect does the same exact thing.

These methods do not mutate the array but instead return a result of the expression.
=end

array.map { |num| num**2 } # unlike each, map will print and return the result of the iteration. This does not mean that it is destructive though
array.collect { |num| num**2 }

# use .each for iteration and .map for transformation

array.delete_at(1) #this will permanently delete the second element of the array
array.delete("cat") # this would delete all instances of the work "cat" in an array

array.uniq # This iterates through an array, deletes any duplicate values that exist, then returns the result as a new array.
# this one does not mutate the caller. However adding the bang suffix (!) will make permanent changes to this one.


numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.select { |num| num > 4} # This method iterates over an array and returns a new array that includes any items that return true
=> [5, 6, 7, 8, 9, 10]
#this method does not mutate the array either.

array.push("string") #this will add string as the last elemet of the array. array.append would do the same thing. << also works
array.unshift("string") # this will string as the first elemenf to the array
# both of these mutate the array

a = [1, 2, 3]
"It's as easy as #{a}"
=> "It's as easy as [1, 2, 3]"
# Ruby automatically stringifies the array when called into a string!
# you can also call .to_s to make an array into a string as well

a.include?(3) # checks to see if argument is included in the called array. returns boolean values
=> true

b = [1, 2, [3, 4, 5], [6, 7]]
b.flatten # can transform multi-dimensional arrays into one-dimensional arrays.
=> [1, 2, 3, 4, 5, 6, 7]
#! can be used on this to make it a destructive method as well

array.each_index { |i| puts "this is #{i}" } # simmilar to .each except this would return the index number instead of the value
array.each_with_index { |val, idx| puts "#{idx+1}. #{val}" } # similar to above except now you can pass the value and the index in as arguments

array.sort #sorts arrays chronologically, and/or alphabetically. ! can be added to make it destructive


[1, 2, 3].product([4, 5]) # product returns an array that is a combination of all elements from all arrays.
=> [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]

Array(1..3) # returns a nameless array that = [1, 2, 3]

arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last) #we locate the first element which happens to be an array. then we delete last element of the first element.
   # returns 1
   #  arr =  [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]