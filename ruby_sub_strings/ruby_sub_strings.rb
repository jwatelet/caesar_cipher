def substrings(string, dictionary)
  dictionary.each_with_object(Hash.new(0)) do |dictionary_word, hash|
    string.split.each do |subword|
      hash[dictionary_word] += 1 if subword.downcase.include?(dictionary_word.downcase)
    end
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

puts substrings('below', dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
