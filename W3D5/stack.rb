class Stack
    def initialize
        @array = []
    end

    def push(el)
        @array << el
      # adds an element to the stack
    end

    def pop
        return @array.pop
      # removes one element from the stack
    end

    def peek
        return @array[-1]
      # returns, but doesn't remove, the top element in the stack
    end
  end