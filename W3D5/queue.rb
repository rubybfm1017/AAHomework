class Queue 

    def initialize
        @array = []
    end

    def enqueue(el)
        @array << el  

    end 

    def dequeue
        return @array.shift
    end
    
    def peek
        return @array[0]
    end
end