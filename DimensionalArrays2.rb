

arr = [
    ["a","b","c"],
    ["d","e"],
    ["f","g","h"],
]

arr.each do |subArray|
    print subArray
    puts
    subArray.each do |ele|
        puts ele
    end
end
