require 'sinatra/base'
require 'shotgun'
require 'rspec'

class Battle < Sinatra::Base
get '/' do
  'Testing infrastructure working!'
end
end
