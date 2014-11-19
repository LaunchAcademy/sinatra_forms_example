require 'sinatra'
require 'pry'

get '/form' do
  erb :form
end

post '/greetings' do
  @first_name = params[:first_name]
  erb :greetings
end
