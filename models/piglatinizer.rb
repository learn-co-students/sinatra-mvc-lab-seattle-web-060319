class PigLatinizer 

    def piglatinize(inputword)
        ra = []
        word_array = inputword.split(" ")
        word_array.each do |word|
            if "aeiou".include?(word[0].downcase)
                ra << vowelword(word)
            else
                rword = ""
                warr = word.split /([aeiou].*)/
                rword << warr[1]
                rword << warr[0]
                rword << "ay"
                ra << rword
             end
        end
        output = ra.join(" ")
    end
    def vowelword(word)
        word + "way"
    end
end