require "sinatra"
require_relative "addition_function.rb"
require_relative "subtraction_function.rb"
require_relative "multiplication_function.rb"
require_relative "division_function.rb"

enable :sessions

get '/' do 
	erb :first_page
end

post '/operation' do
	session[:option] = params[:option]
	redirect '/numbers' 
end

get '/numbers' do
	erb :numbers
end

post '/numbers' do
	session[:num1] = params[:num1]
	session[:num2] = params[:num2]
	num1 = session[:num1]
	num2 = session[:num2]
	if session[:option] == "+"
		session[:results] = sum(num1.to_i,num2.to_i)
	elsif session[:option] == "-"
		session[:results] = difference(num1.to_i,num2.to_i)
	elsif session[:option] == "*"
		session[:results] = product(num1.to_i,num2.to_i)
	elsif session[:option] == "/"
		session[:results] = quotient(num1.to_i,num2.to_i)
	end
	redirect '/results?num1=' + num1 + '&num2=' + num2 
end

get '/results' do
	num1 = session[:num1]
	num2 = session[:num2]
	results = params[:results]
	erb :results, locals:{num1: num1, num2: num2, option: session[:option], results: results}
end

post '/return' do
	redirect '/'
end