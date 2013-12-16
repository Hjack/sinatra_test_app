require 'rubygems'
require 'sinatra'


get '/' do
	"Hello, World!"
end

get '/hello/:name/:city' do
	"Hello there, #{params[:name]}. from #{params[:city]}."
end

get '/more/*' do
	params[:splat]
end

get '/form' do
	erb :form
end

post '/form' do
	# "You said '#{params[:message]}'"
	params[:message].each_char {|i| puts i, '**&&&***' }

end




