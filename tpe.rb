require 'sinatra'
require 'sinatra/reloader' if development?

configure do 
	enable :sessions
end

get '/' do
	
	erb :index, :layout => :layout
end

get '/tpe' do 
	
	case session[:page]
	when 1
		erb :tpe_intro, :layout => :layout
	when 2
		erb :tpe_amputation, :layout => :layout
	when 3
		erb :tpe_evolution, :layout => :layout
	when 4
		erb :tpe_inegalites, :layout => :layout
	when 5
		erb :tpe_conclusion, :layout => :layout
	end
end

get '/intro' do
	session[:page] = 1
	puts "session : #{session[:page]}"
	redirect to '/tpe'
end

get '/amputation' do
	session[:page] = 2
	redirect to '/tpe'
end

get '/evolution' do
	session[:page] = 3
	redirect to '/tpe'
end

get '/inegalites' do
	session[:page] = 4
	redirect to '/tpe'
end

get '/conclusion' do
	session[:page] = 5
	redirect to '/tpe'
end
