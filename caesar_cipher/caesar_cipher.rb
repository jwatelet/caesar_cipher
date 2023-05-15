NUMBER_OF_LETTERS = 26

def caesar_cipher(string, shift)
  shift = sanitize(shift)

  string.chars.map do |char|
    if downcase_char?(char)
      shifted_char = shift(char, shift)
      shifted_char = flip(shifted_char, shift) unless downcase_char?(shifted_char)
      shifted_char
    elsif uppercase_char?(char)
      shifted_char = shift(char, shift)
      shifted_char = flip(shifted_char, shift) unless uppercase_char?(shifted_char)
      shifted_char
    else
      char
    end
  end.join
end

def sanitize(shift)
  if shift.negative?
    -(shift.abs % NUMBER_OF_LETTERS)
  else
    shift % NUMBER_OF_LETTERS
  end
end

def downcase_char?(char)
  char.match?(/[a-z]/)
end

def uppercase_char?(char)
  char.match?(/[A-Z]/)
end

def flip(char, shift)
  if shift.positive?
    (char.ord - NUMBER_OF_LETTERS).chr
  else
    (char.ord + NUMBER_OF_LETTERS).chr
  end
end

def shift(char, shift)
  (char.ord + shift).chr
end

puts caesar_cipher("What a string!", -5)
