def sluggish_octopus(arr)
    longest = nil
    arr.each_with_index do |el1,i|
        max_length = true
        arr.each_with_index do |el2,j|
            next if i == j
            max_length = false if el2.length > el1.length
                
            end
        end
    end
    return return el1 if max_length
end