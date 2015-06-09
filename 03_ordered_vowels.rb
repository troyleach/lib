def ordered_vowel_words(str)
  array_of_string = str.split(" ")
  alphabetically = {"a" => 1, "e" => 2, "i" => 3, "o" => 4, "u" => 5}
  qualifying_words_array = []
  qualifying_words_string = ""
  
  array_of_string.each do |word|
    all_is_in_alphabetical_order = true
    place_holder = 1

    word.each_char do |letter|
      if alphabetically[letter] && alphabetically[letter] >= place_holder
        place_holder = alphabetically[letter]
      elsif alphabetically[letter] && alphabetically[letter] < place_holder
        all_is_in_alphabetical_order = false
      end
    end
    if all_is_in_alphabetical_order
      qualifying_words_array << word
    end
  end

  qualifying_words_array.each do |word|
    if word != qualifying_words_array.last
    qualifying_words_string += (word + " ")
    else
      qualifying_words_string += word
    end
  end

  return qualifying_words_string
end
