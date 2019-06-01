# Hint: all keys of a hash are automatically unique

def unique_elements(arr)
    hash = Hash.new(0)
    new_arr = []
    arr.each { |k| hash[k] = true }
    return hash.keys

end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts

# # Correct Answer
# def unique_elements(arr)
#     hash_elements = {}
#     arr.each { |ele| hash_elements[ele] = true }
#     return hash_elements.keys
#   end
  
#   print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
#   puts