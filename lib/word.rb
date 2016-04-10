require_relative './scrabble'

class Scrabble::Word
	attr_accessor :word_to_score

	def initialize(words)
		@word_to_score = words
	end

end