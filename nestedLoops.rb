# arr = ["a", "b", "c", "d"]


# # belwo we iterate throught all porrisble w/ duplicates
# arr.each do |ele1|  
#     arr.each do |ele2|
#         puts ele1 + ele2 
#     end
# end


# # below we iterate thgough online unique pairs

arr = ["a", "b", "c", "d"]


# belwo we iterate throught all porrisble w/ duplicates

i = 0
j = 0 
arr.each_with_index do |ele1, idx1|  
    if i < 5
        puts ele1
    end
    i += 1 
    arr.each_with_index do |ele2, idx2|
        if j < i + 5
            puts ele1 + ele2
        end
        j += 1 
    end
end
