def merge_sort(array)
    return array if array.length < 2
    # sort left half
    left = merge_sort(array[0...array.length/2])
    # sort right half
    right = merge_sort(array[array.length/2..array.length])
    # merge sorted halves
    merge = []
    while left.length != 0 && right.length != 0
        if left.first < right.first
            merge << left.shift
        else
            merge << right.shift
        end
    end
    if left.length == 0
        while right.length > 0
            merge << right.shift
        end
    else
        while left.length > 0
            merge << left.shift
        end
    end
    merge
end

puts "Enter numbers to be sorted, separated by a space"
array = gets.chomp.split(" ").map {|value| value.to_i}

p merge_sort(array)