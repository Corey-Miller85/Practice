
def factors(num)
    array = []
    i = 1 
    while i <= num
        if num % i == 0;
            array << i 
        end
        i += 1
    end
    return array
end

print factors(6)