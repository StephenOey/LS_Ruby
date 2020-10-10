def has_a_b?(string)
  if string =~ /b/ # passed as a boolean value
    puts "We have a match!"

  else
    puts "No match here."
  end
end

has_a_b?("jump")
has_a_b?("elephant")
has_a_b?("basketball")
has_a_b?("golf")