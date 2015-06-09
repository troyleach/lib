def word_unscrambler(str, words)
  anagrams_of_str_found_in_words_array = []
  words.each do |word|
    if str.split("").sort == word.split("").sort
      anagrams_of_str_found_in_words_array << word
    end
  end
  return anagrams_of_str_found_in_words_array
end
