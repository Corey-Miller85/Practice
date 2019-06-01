def even_nums(max)
    evens = []
    i = 0 
    while i <= max 
        if i % 2 == 0 
            evens << i
        end
        i += 1 
    end
    return evens

end




  print even_nums(10) # => [0, 2, 4, 6, 8, 10]
  puts
  print even_nums(5)  # => [0, 2, 4]