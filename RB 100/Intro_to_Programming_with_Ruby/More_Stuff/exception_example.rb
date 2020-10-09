# In Exception Handling, we reserve the syntax begin, rescue, and end when handling an exception.

=begin
  # perform some dangerous operatio
rescue
  # do this if operation fails
  # for example, log the error
=end

names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end