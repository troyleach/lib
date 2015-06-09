def nearest_larger(array, index)
  to_the_left_of_index = index - 1
  to_the_right_of_index = index + 1
  
  while true
    if array[index] == array.max
      return nil
    end
    
    if (to_the_left_of_index < 0) || (array[to_the_right_of_index] == nil)
      if to_the_left_of_index < 0
        while true
          if array[to_the_right_of_index] > array[index]
            return array.index(array[to_the_right_of_index])
          end
          to_the_right_of_index += 1
        end
      elsif (array[to_the_right_of_index] == nil)
        while true
          if array[to_the_left_of_index] > array[index]
            return array.index(array[to_the_left_of_index])
          end
          to_the_left_of_index -= 1
        end
      end
    end

    if (array[to_the_left_of_index] > array[index]) ||  (array[to_the_right_of_index] > array[index])
      if array[to_the_left_of_index] > array[index]
        return array.index(array[to_the_left_of_index])
      elsif array[to_the_right_of_index] > array[index]
        return array.index(array[to_the_right_of_index])
      end
    end
    to_the_left_of_index -= 1
    to_the_right_of_index += 1
  end
end