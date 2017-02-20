require 'pry'
class PigLatinizer

	attr_accessor :text, :piglatin_word
	def initialize
	end

	def is_vowel?(letter)
		vowels = %w{a e i o u}
		vowels.each{|vowel| return true if vowel == letter.downcase}
		false
	end

	def piglatinize(word)
		if is_vowel?(word.chars.first)
			@piglatin_word = "#{word}way"
		else
			temp_array = word.split(/([aeiou].*)/) #splits at first vowel
			new_end = temp_array.delete_at(0)
			@piglatin_word = "#{temp_array[0]}#{new_end}ay"
		end
		@piglatin_word
	end

	def to_pig_latin(text)
		text.split.collect{|word| piglatinize(word)}.join(" ")
	end

end