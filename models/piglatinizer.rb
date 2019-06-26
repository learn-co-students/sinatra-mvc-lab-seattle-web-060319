class PigLatinizer

  attr_reader :string

  # def initialize(string)
  #   @string = params[:user_phrase]
  # end

  def piglatinize(string)
    vowels = "aeiouAEIOU"
    words = string.split(" ")
    new_arr = []

    words.each do |word|
      if vowels.include?(word[0])
        new_arr << word + "way"

      else
        word.each_char.with_index do |char, i|
          if vowels.include?(char)
            new_arr << word[i..-1] + word[0...i] + "ay"
            break
          end
        end
      end

    end
    return new_arr.join(" ")
end


end
