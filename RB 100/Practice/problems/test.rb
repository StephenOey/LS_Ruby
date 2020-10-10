def factorial(n)
  result = 1
  (1..n).to_a.map do |n|
    result *= n
  end
  result
end

puts factorial(6)
