require "pry"
def string_lengths(sentence)
  strings = sentence.split
  lengths = []
  counter = 1
  until counter == strings.size do # in this case 6
    word_length = strings[counter - 1].length
    lengths.push(word_length)
    binding.pry
    counter += 1
  end
  lengths
end
p string_lengths("to be or not to be")