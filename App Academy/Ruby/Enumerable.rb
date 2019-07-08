require "byebug"

class Array
    def my_each(&prc)
        self.length.times do |ele|
            prc.call(self[ele])
        end
    self
    end

    def my_select(&prc)
        selection = []
        
        self.my_each do |ele|
            selection << ele if prc.call(ele)  
        end 
        selection
    end

    def my_reject(&prc)
        selects = []
        self.my_each do |ele|
            selects << ele unless prc.call(ele)

        end
    end

    def my_any?(&prc)
        self.my_each do |ele|
            if prc.call(ele) 
                return true
            end
        end
        false
    end

    def my_all?(&prc)
        self.my_each do |ele|
            if !prc.call(ele)
                return false
            end
        end
        true
    end

    def my_flatten
        
        flattened = []
        self.my_each do |ele|
            if ele.is_a?(Array)
                flattened.concat(ele.my_flatten)
            else
                flattened << ele
            end
        end
        flattened
    end

    def my_zip(*arrays)
        debugger
    zipped = []

    self.length.times do |i|
      subzip = [self[i]]

      arrays.my_each do |array|
        subzip << array[i]
      end

      zipped << subzip
    end

    zipped
  end

  def my_rotate(positions = 1)
    alpha = ("a".."z")
    self.my_each do |char|
        puts char
    end

  end


end

