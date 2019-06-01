

def mine(amount, arg2)


    mex = 25
    tri = 2
    pye = 2
    total = 0
    veld =  0
    rock = amount / 100
    puts amount
    ap = (tri * 118) + (pye * 235) + (mex * 118)

    if arg2 == "RichPla" 
        puts("The total return of Rich Plag is: ")
        total = ap * rock
    end

    return total
end

puts mine(14000, "RichPla")