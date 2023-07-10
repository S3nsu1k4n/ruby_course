def bubble_sort(array)
  for i in 0..array.length
    array.each_with_index do |value, index|
      unless array[index+1] == nil
        if value > array[index+1]
          buf = value
          value = array[index+1]
          array[index+1] = buf
          array[index] = value
        end
      end
    end
  end
  array
end

p bubble_sort([0, 9, 8,7 , 6, 5, 4, 3,2 , 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0])