puts "This is the first (master) program file"
require "./loadee.rb"
puts "And back again to the first file."

print "This ticket is for: "
print ticket.event + ", at "
print ticket.venue
puts ticket.date
print "The performer is "
puts ticket.performer + "."
print "The seat is "
print ticket.seat + ", "
print "and it costs $"
puts "%.2f." % ticket.price