def get_double_age(hash)
     doubled = hash["age"] * 2
end

puts get_double_age({"name"=>"App Academy", "age"=>5}) # => 10
puts get_double_age({"name"=>"Ruby", "age"=>23})       # => 46


#CORRECT ANSWER
def get_double_age(hash)
    return hash["age"] * 2
  end
  
  puts get_double_age({"name"=>"App Academy", "age"=>5}) # => 10
  puts get_double_age({"name"=>"Ruby", "age"=>23})       # => 46