def first_in_array(arr, el1, el2)
if arr.index(el1) < arr.index(el2)
        return el1
    else 
        return el2
    end
end
# end
# print arr.index el1


puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"