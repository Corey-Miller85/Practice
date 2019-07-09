def upcase(str)
    #can only upcase at one letter at a time
    #basecase
    return str.upcase if str <= 1
    puts str
    #inductive step
    p str[0].upcase + upcase(str[1..-1])


end


# iterative method
def iterative_upcase(str)
    str.chars.inject("") do |upcased_str,char|
        upcased_str << char.upcase
    end
end


def reverse(str)
    return str if str.length <= 1 
    str[-1] + str.reverse(str[0..-2])
end
#"hello" => "elloh"
#pretend we have reverse function that works but it doenst work for the tnetire string, only works for part fo the string. What if everything but first letter, what if everything but the last letter


def quick_sort(arr)

return arr if arr.length <= 1 
pivot_arr = [arr.first]
left_side = arr[1..-1].select {|ele| ele < arr.first}
right_side = arr[1..-1].select {|ele| ele >= arr.first}
quick_sort(left_side) + pivot_arr + quick_sort(right_side)
end