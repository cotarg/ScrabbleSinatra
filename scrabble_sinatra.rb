require 'sinatra'
# require '/lib/scrabble'
# require '/lib/scoring'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

	get '/score' do
		erb :score
	end

  post '/score' do
    # @score-word = Peep.new(params["peep"])
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