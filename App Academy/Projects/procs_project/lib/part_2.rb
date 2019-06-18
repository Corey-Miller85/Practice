require "byebug"


def reverser(string,&prc)
new_string = ""
i = string.length - 1 
while i >= 0 
    new_string += string[i]
    i -= 1 
end

    end_string = prc.call(new_string)
end

def word_changer(string,&prc)
    
new_arr = []
new_string = ""
words = string.split(" ")
new_words = words.map do |word|
    new_arr << prc.call(word) 
end
new_string = new_arr.join(" ")
    
end


def greater_proc_value(num, proc_1, proc_2)

ans1 = proc_1.call(num)
ans2 = proc_2.call(num)

    if ans1 >= ans2 
        ans1
    else
        ans2
    end
end


def and_selector(arr, prc1, prc2)
   new_arr = []
    arr.each do |ele|
        if prc1.call(ele) == true && prc2.call(ele) == true
            new_arr << ele
        end
    end
    new_arr    
end

def alternating_mapper(arr, prc1, prc2)
new_arr = []
arr.each_with_index do |ele, i|
        if i % 2 == 0 
            new_arr << prc1.call(ele)
        else
            new_arr << prc2.call(ele)
        end
    end
    return new_arr
end