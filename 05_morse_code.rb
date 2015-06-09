def morse_encode(str)
  morse_code = {
    "a" => ".-",
    "b" => "-...",
    "c" => "-.-.",
    "d" => "-..",
    "e" => ".",
    "f" => "..-.",
    "g" => "--.",
    "h" => "....",
    "i" => "..",
    "j" => ".---",
    "k" => "-.-",
    "l" => ".-..",
    "m" => "--",
    "n" => "-.",
    "o" => "---",
    "p" => ".--.",
    "q" => "--.-",
    "r" => ".-.",
    "s" => "...",
    "t" => "-",
    "u" => "..-",
    "v" => "...-",
    "w" => ".--",
    "x" => "-..-",
    "y" => "-.--",
    "z" => "--.."
  }

  final_string = ""
  strings_last_letter = str.length - 1

  str.each_char do |letter|
    if letter != str[strings_last_letter]
      final_string += (morse_code[letter] + " ")
    elsif letter == str[strings_last_letter]
      final_string += morse_code[letter]
    end
  end

  return final_string
end
