def odd_range(min, max)
array = []
i = min
    while i <= max
        if i % 2 == 0
        else 
        array << i     
        end
    i += 1
    end
return array
end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]