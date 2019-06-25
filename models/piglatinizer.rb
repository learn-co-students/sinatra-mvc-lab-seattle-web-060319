class PigLatinizer

  def piglatinize(word) 
    piglatin_array = word.split(" ")
    vowel = "aeiouAEIOU"
    piglatin_array.map do |word|
      if vowel.include?(word[0])
        word + "way"
      else
        lating(word)
      end
    end.join(" ")
  end

  def lating(word)
    vowel = "aeiouAEIOU"
    string = ''
    word.each_char.with_index do |char, i|
      if vowel.include?(char)
        string = word[i..-1] + word[0...i] + "ay"
        break
      end
    end
    string
  end

end