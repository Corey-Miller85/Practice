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

proc_1.call(num)
end


p greater_proc_value(3, times_10, square)