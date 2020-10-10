color = { sky: "blue", lava: "red", banana: "yellow" }


color.each_key { |k| puts k } # only applies .each to the keys in the hash
color.each_value { |v| puts v } # only applies .each to the values in the hash
color.each { |k, v| puts "the color of #{k} is #{v}!" } # .each will always need two parameters for hashes.