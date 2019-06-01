arr = ["a","b","c","d"]

new_arr = []
arr.each {|ele| new_arr << ele.upcase + "!"}
print new_arr
puts
