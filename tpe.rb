require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
	erb :index, :layout => :layout
end

get '/tpe' do
	erb :tpe_intro, :layout => :layout
end