require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_1_HP] = 100
    session[:player_2_name] = params[:player_2_name]
    session[:player_2_HP] = 100
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    @player_1_HP = session[:player_1_HP]
    @player_2_HP = session[:player_2_HP]
    erb :play
  end

  post '/player_1_attacks' do
    session[:player_2_HP] -= 20
    redirect '/play'
  end

  run! if app_file == $0

end
