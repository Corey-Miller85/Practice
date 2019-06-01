# arr = [1,2,3,4]
# print arr
# puts 
# arr.reverse!
# print arr
# puts

# str = "hello"
# puts str.reverse
# puts str

def is_palindrome(word)
    return word == word.reverse
end

puts is_palindrome("madam") #true
puts is_palindrome("hello") #true

