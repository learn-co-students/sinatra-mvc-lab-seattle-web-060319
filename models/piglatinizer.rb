class PigLatinizer

    def piglatinize(phrase)
        @phrase = phrase
        new_array = []
        array = @phrase.split(" ")
        array.each do |word|
            if !start_vowel?(word)
                split_word = word.split /([aeiou].*)/
                new_word = split_word[1] + split_word[0] + "ay"
                new_array << new_word
            else
                new_array << (word + "way")
            end
        end
        new_array.join(" ")
    end

    def start_vowel?(string)
        string = string.downcase
        if ["a","e","o","u","i"].include?(string[0])
            true
        else
             false
        end
    end



end