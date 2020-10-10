def caps(string)
    return string = string.upcase unless string.length > 10
    
end

puts caps("pants")
puts caps("photsynthesis")