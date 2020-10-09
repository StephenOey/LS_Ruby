=begin
Write a method that counts the number of occurrences of each element in a given array.

The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted, print each element alongside the number of occurrences.

method will take an input of array and output lines of strings
take an array of strings and iterate over each element.
For each element that has a duplicate, we will add 1 to the count
Then we will want to print each element next to its count
=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]


def count_occurrences(array)
  count = 0
  array.each { |i| count += 1}
  array.uniq.each { |element| puts "#{element} => #{count}" }
end

count_occurrences(vehicles)