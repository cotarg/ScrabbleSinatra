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
    @score_word = params["word-score"].first.split(' ')
    @score_word = @score_word.first
    @word_score = Scrabble::Scoring.score(@score_word)
    erb :score
  end

	get '/score_many' do
		erb :score_many
	end

	post '/score_many' do
		erb :score_many
	end

	run!
end