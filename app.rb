require 'sinatra'
require 'sinatra/reloader'

configure :development, :test do
  require 'pry'
end

Dir[File.join(File.dirname(__FILE__), 'lib', '**', '*.rb')].each do |file|
  require file
  also_reload file
end

get '/form' do
  erb :form
end

post '/greetings' do
  @first_name = params[:first_name]
  erb :greetings
end

