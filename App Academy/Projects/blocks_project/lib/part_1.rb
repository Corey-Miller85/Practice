def select_even_nums(array)
    new_array = array.select {|num| num % 2 == 0}
    return new_array
end

def reject_puppies(array)
    older_than = []
    older_than = array.reject {|h| h["age"] <= 2}
    return older_than
end

def count_positive_subarrays(array)
    array.count {|subarray| subarray.sum > 0}
end

def aba_translate(word)
    array = word.split("")
    new_word = ""
    vowels = "aeiou"
    array.each do |char| 
        if vowels.include?(char)
            new_word += char + "b" + char
        else
            new_word += char
        end
    end
    return new_word
end

def aba_array(array)
    new_array = array.map do |ele|
        aba_translate(ele)
    end
    new_array
end