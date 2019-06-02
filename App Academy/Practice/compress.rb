def distill(str)
    new_str = ""
    i = 0 
    while i < str.length
        char = str[i]
        count = 0 
        while char == str[i]
            count += 1 
            i += 1 
        end
        if count > 1 
        new_str += count.to_s + char
        else 
            new_str += char
        end
    end
    return new_str
end






p distill("abcaaajjjjiiiiieieieeeeeoooooeeeeooo")
p distill("Maaammaaaajammmaaa")
p distill("teeeeeaaaaalllallalalallllalaaaalallllaaa")