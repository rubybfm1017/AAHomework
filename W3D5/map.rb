class Map 
    def initialize
        @array = []
    end

    def set(key,val)
        idx = @array.index {|ele| ele[0] == key }
        if idx != nil
            @array[idx][1] = val

        else  
            @array << [key,val]
        end
    end

    def get(key)
        idx = @array.index {|ele| ele[0] == key }
        if idx != nil
            return @array[idx][1]
        else  
            return nil
        end
    end

    def delete(key)
        @array.reject!{|ele| ele[0] == key }
    end
end