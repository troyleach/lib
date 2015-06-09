
# => find the FIRST duplicate number and return that numbers index
def find_duplicate_retrun_index(arr)
  arr.each_with_index do |value1, index1|
    arr.each_with_index do |value2, index2|
      if value1 == value2 && index1 != index2
        return index1
      end
    end
  end
end