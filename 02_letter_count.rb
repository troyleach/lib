def letter_count(str)
  hash = {}
  array_of_string = str.split("")
  array_of_string.uniq!
  array_of_string.each do |letter|
    if letter != " "
      hash[letter] = str.count(letter)
    end
  end
  return hash
end
