=begin
take a string and convert it into an array
iterate the array to go in backwards order
=end

# def reverse_sentence(string)
#   if string.empty?
#     return string
#   end
#   array = string.split(' ')
#   i = 0
#   result = []
#   loop do
#     result.push(array.pop)
#     break if i > array.length
#     i += 1
#   end
 
#   result.join(' ')
  
# end

#Or we could do this a much simpler way

def reverse_sentence(string)
  string.split.reverse.join(' ') # here we are spliting the string (split will auto split up the words by a space) which will turn the string into an array. we call reverse on the array which will change the order. then we are joining the array together by a space.
end


puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

