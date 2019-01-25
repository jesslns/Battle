require 'sinatra/base'
require 'shotgun'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
enable :sessions
set :session_secret, "this is a secret...."

get '/' do
  erb(:index)
end

post '/names' do
  player1 = Player.new(params[:player1])
  player2 = Player.new(params[:player2])
  $game = Game.new(player1, player2)
  redirect '/play'
end

get '/play' do
  @game = $game
  erb(:play)
end

get '/attack' do
  @game = $game
  @game.attack(@game.player2)
  erb(:attack)
end
end
