VOWELS = ["a", "e", "i", "o", "u"]


class Word
  def initialize(original_word)
    @original_word = original_word
  end

	def piglatinize 
		
		VOWELS.each do |vowel|
			if vowel == @original_word.chars[0]
				return @original_word + "way"
			end		
		end	
		VOWELS.each do |vowel|
			if vowel == @original_word.chars[1]
				return @original_word.chars.rotate.join.to_s + "ay"
			end		
		end	

		return @original_word.chars.rotate(2).join.to_s + "ay"
			
	end


  def original_word
    return @original_word.downcase
  end
end

