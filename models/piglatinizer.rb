class PigLatinizer

    def piglatinize(text)
        output = []
        text = text.split
        translated_array = text.map do |word|
            if "aeiou".include?(word[0].downcase)
                word + "way"
            else
                vowel = word.scan(/[aeiou]/).first
                word[word.index(vowel)..-1] + word[0..word.index(vowel)-1] + "ay"
            end
        end
        translated_array = translated_array.join(" ")
    end

end