require 'sinatra'
require_relative './lib/scrabble'
require_relative './lib/scoring'
require_relative './lib/word'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

	get '/score' do
		erb :score
	end

  post '/score' do
    @word_to_score = params["word-score"].first.split(' ')
    @word_to_score = @word_to_score.first
    @word_score = Scrabble::Scoring.score(@word_to_score)
    erb :score
  end

	get '/score-many' do
		erb :score_many
	end

	post '/score-many' do
		@words_to_score = params["word-score"].first.split(' ')
		@word_scores = Scrabble::Scoring.score_many(@words_to_score)
		
		erb :score_many
	end

	get '/:word' do
		@word_to_score = params[:word]
		@word_score = Scrabble::Scoring.score(@word_to_score)

		erb :score
	end

	run!
end