puts "Enter your name: "
username = gets
puts "Hello, " + username

puts "Enter 'yes' or 'no'" 
response = gets.chomp


p response
# this will get the new line character /n .chomp will delete the \n when you have a return

if response  == "yes"
    puts "you said yes!"
end

# when you do gets you will return a string. You need to convert to interiger when working with njumbsr. you need to use ".to_i"

num = gets.chomp.to_i

puts 2 * num