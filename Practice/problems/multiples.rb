$arr = []
puts "enter your target range"
$x = gets.to_i
puts "enter your first multiple"
y = gets.to_i
puts "enter your second multiple"
z = gets.to_i

def factors(a, b)
  for i in 1..$x 
   $arr.push(i) if i % a == 0 || i % b == 0
  end
end

factors(y, z)
p $arr