require 'sinatra/base'
require_relative 'lib/player'
require './lib/game'
require './lib/move'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:game] = Game.new(params[:player_1_name], params[:player_2_name])
    session[:move] = Move.new
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
    session[:move].tackle
    session[:game].attack(1, session[:move])
    redirect '/play'
  end

  post '/player_2_attacks' do
    session[:move].tackle
    session[:game].attack(0, session[:move])
    redirect '/play'
  end

  post '/player_1_attacks_dragon_rage' do
    session[:move].dragon_rage
    session[:game].attack(1, session[:move])
    redirect '/play'
  end

  post '/player_2_attacks_dragon_rage' do
    session[:move].dragon_rage
    session[:game].attack(0, session[:move])
    redirect '/play'
  end

  post '/player_1_attacks_thunderbolt' do
    session[:move].thunderbolt
    session[:game].attack(1, session[:move])
    redirect '/play'
  end

  post '/player_2_attacks_thunderbolt' do
    session[:move].thunderbolt
    session[:game].attack(0, session[:move])
    redirect '/play'
  end

  post '/player_1_attacks_splash' do
    session[:move].splash
    session[:game].attack(1, session[:move])
    redirect '/play'
  end

  post '/player_2_attacks_splash' do
    session[:move].splash
    session[:game].attack(0, session[:move])
    redirect '/play'
  end

  get '/game_over' do
    @game = session[:game]
    erb :game_over
  end

  run! if app_file == $0

end
