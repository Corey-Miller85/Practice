# Towers of Hanoi game.

# Keep three arrays, which represents the piles of discs. Pick a representation 
# of the discs to store in the arrays; maybe just a number representing their size.

# In a loop, prompt the user (using gets) and ask what pile to select a disc 
# from, and where to put it.

# After each move, check to see if they have succeeded in moving all the discs, 
# to the final pile. If so, they win!
# Here's an example of a one-method solution:

def hanoi
  disks = (1..3).to_a.reverse
  stacks = [disks, [], []]
  until stacks[0].empty? && stacks[1..2].any?(&:empty?)
    max_height = stacks.map(&:count).max
    render_string = (max_height - 1).downto(0).map do |height|
      stacks.map do |stack|
        stack[height] || " "
      end.join("\t")
    end.join("\n")
    puts render_string
    move_hash = { "a" => 0, "b" => 1, "c" => 2 }
    while true
      print "Move From: "
      from_stack_num = move_hash[gets.chomp]
      break unless from_stack_num.nil?
      puts "Invalid move!"
    end
    while true
      print "Move To: "
      to_stack_num = move_hash[gets.chomp]
      break unless to_stack_num.nil?
      puts "Invalid move!"
    end
    from_stack, to_stack = stacks.values_at(from_stack_num, to_stack_num)
    raise "cannot move from empty stack" if from_stack.empty?
    unless (to_stack.empty? || to_stack.last > from_stack.last)
      raise "cannot move onto smaller disk"
    end
    to_stack.push(from_stack.pop)
  end
  puts "You did it!"
end


