family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select { |k, v| (k == :brothers) || k == :sisters }

arr = immediate_family.values.flatten # .values will take the values and return an array. flatten will take a multi-dimensional array and flatten it into one array.

p arr # we should use p instead of puts because we still want to view this in an array format