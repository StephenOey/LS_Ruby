=begin
Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. 
Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

take string, turn it into an array, iterate over each element, if an element has a length of 5 or more letters, reverse it. Then join the string together by a space.
=end


def reverse_words(string)
  string.split.map do |x| 
    if x.length >= 5
      x.reverse
    else 
      x
    end
  end.join(' ')
end

# A better way is to assign an empty array first and then use each to reverse the words and push them onto the empty array

def reverse_words(string)
  words = []

  string.split.each do |x|
    x.reverse! if x.length >= 5
    words << x
  end

  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS