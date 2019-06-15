# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
    divisors = []
    prime_divisors = []
    (1..num).each do |i|
        if num % i == 0
            divisors << i 
        end
        divisors.each do |ele|
            if is_prime?(ele) == true
                prime_divisors << ele
            end
        end
    end
    prime_divisors[-1]
end


def is_prime?(num)
   return false if num < 2 
    (2...num).each do |ele| 
        return false if num % ele == 0 
    end
return true 
end


