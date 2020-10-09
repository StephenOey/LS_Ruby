=begin
when adding onto a hash you need to use hash[:key] = value
when deleting, do hash.delete(:key)
  make sure when deleting you use ()
=end

#you can merge hashes with other hashes
person.merge!(new_hash) # the ! makes this destructive and mutates the original hash. .merge can be done without the bang.

=begin

Hashes vs. Arrays
  How to determine when to use which one:

  1. If you need the data to have a specific label, use a Hash. Otherwise, use an array

  2. If order matters, use an array.

  3. Do I need a "stack" or a "queue" structure? Arrays are good at mimicking simple "first-in-first-out" queues, or "last-in-first-out" stacks.

=end

# In a hash, you can use more than symbols as keys:

person = {
  "name" => "Joe",
  [age] => 25,
  1 => "one",
  4.07 => "float",
  {key: "Key"} => "hash as a key"
}

# Hash Methods

person.has_key?(age) # checks hash for specific key, returns a boolean value.
=> true

person.select { |key, value| key == age }
person.select { |key, value| (key == age) || (value == 25) } # checks for a TRUE key and/or value by plugging in a block.

person.fetch("name") # fetch will find a key and return its value.
=> "Joe"
person.fetch("Larry", "Larry is not a value") #You can also specify an option for return if that key is not present.
=> "Larry is not a value"

person.to_a # this will return an array version of your hash. This is a non-destructive method.

person.keys # returns only the keys back
=>["name" =>[age], 1, 4.07, {key: "Key"}]
person.values # returns onlu the values back
=> ["Joe", 25, "one", "float", "hash as a key"]
# these methods return the hash back as an array. This means that you can also run array methods on them if tagged at the end:

person.values.each { |value| puts value.to_s }

# in Ruby 1.9 and above, hashes maintain order of how they are stored. However, make sure you know which version you are working with because it may suprise you.