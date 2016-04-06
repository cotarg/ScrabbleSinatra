require 'sinatra'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

	get '/score' do
		erb :score
	end

	run!
end