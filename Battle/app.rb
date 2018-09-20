require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1] = Player.new(params[:player_1_name])
    session[:player_2] = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :play
  end

  post '/player_1_attacks' do
    session[:player_2].lose_hp(20)
    redirect '/play'
  end

  run! if app_file == $0

end
