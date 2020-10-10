def digit_list(num)
  num.to_s.chars.map(&:to_i) # &:to_i is shorthand for blank.map { |char| char.to_i }
end

p digit_list(12345)