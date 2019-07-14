obj = Object.new
if obj.respond_to?("talk")
    obj.talk
else
    puts "Sorry, the object doesnt understand the talk message."
end