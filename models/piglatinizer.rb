class PigLatinizer

  def piglatinize(word) 
    piglatin_array = word.split(" ")
    vowel = "aeiou"
    piglatin_array.map do |word|
      if vowel.include?(word[0].downcase)
        word + "way"
      else
        begin_with_con(word)
      end
    end.join(" ")
  end

  def begin_with_con(word)
    vowel = "aeiou"
    string = ''
    word.each_char.with_index do |char, i|
      if vowel.include?(char.downcase)
        string = word[i..-1] + word[0...i] + "ay"
        break
      end
    end
    string
  end

end