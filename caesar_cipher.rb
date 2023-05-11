NUMBER_OF_LETTERS = 26

def caesar_cipher(string, shift)
  shift %= NUMBER_OF_LETTERS

  string.chars.map do |char|
    if char?(char)
      char = shift(char, shift)
      char = shift(char, -NUMBER_OF_LETTERS) unless char?(char)
    end
    char
  end.join
end

def char?(char)
  char.match?(/[A-Za-z]/)
end

def shift(char, shift)
  (char.ord + shift).chr
end

puts caesar_cipher('What a string!', 5)
