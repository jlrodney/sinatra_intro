require 'sinatra'
require 'shotgun'

get '/' do
  "Hello World"
end

get '/secret' do
  "Yo yo yo... mike drop"
end

get '/hello' do
  "football"
end

get '/friends' do
  "Bob, jim and fred"
end

get '/cat' do
@names = ["Amigo", "Oscar", "Viking"].sample
erb(:index)

end
