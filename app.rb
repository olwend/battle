require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base
  enable :sessions

  get '/play' do
    @player_1_name = $game.current_player.name
    @player_2_name = $game.opponent.name
    @player_1_points = $game.current_player.points
    @player_2_points = $game.opponent.points
    erb (:play)
  end

  get '/' do
     erb (:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]),Player.new(params[:player_2_name]))
    redirect to('/play')
  end

  post '/attack' do
    $game.attack($game.opponent)
      if $game.opponent.lose
        redirect to('/lose')
      end
    $game.switch
    redirect to('/confirmation')
  end

    get '/confirmation' do
      erb (:confirmation)
    end

    get '/lose' do
      erb (:lose)
    end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
