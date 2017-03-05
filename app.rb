require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base
  enable :sessions

  get '/play' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_1_points = $game.player_1.points
    @player_2_points = $game.player_2.points
    @comment = session[:comment]
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
    $game.attack($game.player_2)
    session[:comment] = "#{$game.player_2.name} has been struck reducing points by 10 to #{$game.player_2.points}"
    redirect to('/play')
  end
  post '/switch' do
    $game.attack($game.player_1)
    session[:comment] = "#{$game.player_1.name} has been struck reducing points by 10 to #{$game.player_1.points}"
    redirect to('/play')
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
