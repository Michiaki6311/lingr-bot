require 'sinatra'
require 'sinatra/reloader'

get '/' do
    "Hello,World!"
end

get '/hi' do
    "calling your name"
end

post '/hi' do
    j = JSON.parse(request.body.string)
    j["events"].select{|e| e["message"]}.map{|e|
    text = e["message"]["text"]
    if text == hi
        result = "Hi,#{e["message"]["nickname"]}"
        if result.empty?
            return "Not found"
        else
            return result
        end
    end
    }
    return ""
end