def frequent_letters(string)
frq_arr = []
new_hash = Hash.new(0)
string.each_char do |char|
    new_hash[char] += 1 
end
new_hash.each do |char, num|
    if num > 2 
        frq_arr << char
    end
end
return frq_arr
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts