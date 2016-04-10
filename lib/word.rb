# require_relative 'lib/scrabble'

class Scrabble::Word
	attr_reader :score_word

	def initialize(words)
		@score_word = words
	end

end