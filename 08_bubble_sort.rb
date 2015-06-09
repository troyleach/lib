def bubble_sort(arr)
  how_many_total_changes = 0
  amount_of_comparisons_needed = arr.length - 1
  solved = false
  until solved
    made_a_change = false
    particular_number_within_array = 0
    amount_of_comparisons_needed.times do
          array_copy = arr.dup
      if arr[particular_number_within_array] > arr[particular_number_within_array + 1]
        arr[particular_number_within_array] = array_copy[particular_number_within_array + 1]
        arr[particular_number_within_array + 1] = array_copy[particular_number_within_array]
        made_a_change = true
      end
      particular_number_within_array += 1
    end
    if !made_a_change
      solved = true
    end
  end
  return arr
end
