def caesar_cipher(string, shift)
  string.chars.map do |char|
    if char?(char)
      char = shift(char, shift)
      char = shift(char, -26) unless char?(char)
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
