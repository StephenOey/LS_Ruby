color = { sky: "blue", lava: "red", banana: "yellow" }
matter = {gasoline: "gas", water: "liquid", phone: "solid" }

p color.merge(matter)
p color
p color.merge!(matter)
p color