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
  "<div style = 'border: medium dashed red'>
    <img src='http://bit.ly/1eze8aE'>
    </div>"
end
