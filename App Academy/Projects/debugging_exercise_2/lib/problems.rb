# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)

end

def is_prime?(num)
    (2...num).each do |ele| 
        return false if num % ele == 0 
    end
return true 
end