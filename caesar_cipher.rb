def caesar_cipher(string, shift)
  string.chars.map do |char|
    if char?(char)
      shift.times do
        char = shift_at_the_beginning(char) if last_letter_of_alphabet?(char)
        char = shift(char)
      end
    end
    char
  end.join
end

def char?(char)
  char.match?(/[A-Za-z]/)
end

def shift_at_the_beginning(char)
  (char.ord - 26).chr
end

def last_letter_of_alphabet?(char)
  %w[Z z].include?(char)
end

def shift(char)
  (char.ord + 1).chr
end

p caesar_cipher('What a string!', 5)
