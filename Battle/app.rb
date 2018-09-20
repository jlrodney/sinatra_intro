require 'sinatra/base'
require_relative 'lib/player'
require './lib/game'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:game] = Game.new(params[:player_1_name], params[:player_2_name])
    p session
    redirect '/play'
  end

  get '/play' do
    p session
    @game = session[:game]
    if @game.game_over
      redirect '/game_over'
    end
    erb :play
  end

  post '/player_1_attacks' do
    session[:game].attack(1)
    redirect '/play'
  end

  post '/player_2_attacks' do
    session[:game].attack(0)
    redirect '/play'
  end


  get '/game_over' do
    @game = session[:game]
    erb :game_over
  end

  run! if app_file == $0

end
