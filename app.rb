require 'sinatra/base'
require 'shotgun'
require './lib/player.rb'

class Battle < Sinatra::Base
enable :sessions
set :session_secret, "this is a secret...."

get '/' do
  erb(:index)
end

post '/names' do
  $player1 = Player.new(params[:player1])
  $player2 = Player.new(params[:player2])
  redirect '/play'
end

get '/play' do
  @player1 = $player1
  @player2 = $player2
  erb(:play)
end

get '/attack' do
  @player1 = $player1
  @player2 = $player2
  @player1.attack(@player2)
  erb(:attack)
end
end
