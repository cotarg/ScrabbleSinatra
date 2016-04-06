require 'sinatra'
require_relative 'lib/peep'

class MyApp < Sinatra::Base

	get '/' do
		erb :index
	end

	get '/score' do
		erb :score
	end

end