# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    if self.length > 0 
        self.sort!
        self[-1] - self[0]
    end
  end

  def average
    if self.length > 0 
        sum = self.sum * 1.0 
        sum /self.length * 1.0
    end
  end

  def median
    if self.length > 0 
            if self.length % 2 != 0
                middle = self.length / 2.0
                self.sort!
                self[middle] 
             else 
                middle = self.length / 2.0
                self.sort!
                (self[middle -1] + self[middle]) * 1.0 / 2 
            end
        end
    end

    def counts
        count_hash = Hash.new(0)
        self.each {|ele| count_hash[ele] += 1}
        count_hash
    end

    
end


