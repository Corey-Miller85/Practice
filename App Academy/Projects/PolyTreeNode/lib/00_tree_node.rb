class PolyTreeNode
    attr_reader :value, :parent, :children, :value 
    attr_accessor 

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(value)
        @parent = value
    
    end


end