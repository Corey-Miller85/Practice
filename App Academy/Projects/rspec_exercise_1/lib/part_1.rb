def average(num1,num2)
    (num1 + num2) / 2.0
end

def average_array(arr)
  1.0 * arr.sum / arr.length 
end

def repeat(str,num)
    new_str = ""
    num.times {new_str += str}
    new_str

end

def yell(string)
    string.upcase + "!"

end

def alternating_case(str)
    words = str.split(" ")
    new_words = words.map.with_index do |word,i|
        if i % 2 == 0 
            word.upcase
        else 
            word.downcase
        end
    end
    return new_words.join(" ")
end

