def fiboncacci(number)
  if number < 2
    number
  else
    fiboncacci(number - 1) + fiboncacci(number - 2)
  end
end

puts fiboncacci(12)
