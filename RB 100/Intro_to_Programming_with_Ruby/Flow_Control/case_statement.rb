a = 5

answer = case a #storing case as a variable
when 5 # no need to specify a == 5
    "a is 5"
when 6
    "a is 6"
else
    "a is neither 5, nor 6" #we can remove puts because we have stored the case as a variable and will puts the variable later on.
end

puts answer