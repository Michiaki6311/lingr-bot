require 'sinatra'
require 'sinatra/reloader'
require 'json'

get '/' do
    "Hello,World!"
end

get '/hi' do
    erb :show
end

