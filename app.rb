require 'sinatra'
require 'sinatra/reloader'
require 'json'

get '/' do
    "Hello,World!"
end

get '/hi' do
    erb :show
end

post "/hi" do
  j = JSON.parse(request.body.string)
  j["events"].map{ |e|
    if e["message"]
      "Hi, #{e["message"]["nickname"]}!"
    end
  }.compact.join("\n")+"\n"
end
