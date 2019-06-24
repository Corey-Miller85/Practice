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

    def my_count(value)
        count = 0
        self.each do |ele|
            if value.include?(ele)
                count += 1 
            end
        end
        return count
    end

    def my_index(value)
        self.each_with_index do |ele,i|
            if ele == value
                return i
            end
        end
        nil
    end

    def my_uniq
        hash = Hash.new(0)
        new_arr = []
        self.each do |ele|
            hash[ele] += 1
        end
        hash.keys.each do |ele|
            new_arr << ele
        end
        return new_arr
    end

    def my_transpose
        new_arr = []
        (0...self.length).each do |row| 
            new_row = []
            (0...self.length).each do |col|
                new_row << self[col][row]

            end
            new_arr << new_row
        end
        new_arr
    end

end
